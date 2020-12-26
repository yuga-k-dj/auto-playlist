import os, kapre, librosa, glob
import numpy as np
import pandas as pd
import tensorflow as tf
from annoy import AnnoyIndex

import sys
from pythonosc import udp_client
import numpy
import warnings
warnings.filterwarnings('ignore')

start_path = sys.argv[1]
goal_path = sys.argv[2]
play_tracks_num = sys.argv[3]

base_model = tf.keras.models.load_model('./models/auto_playlist_model.h5', 
    custom_objects={'get_melspectrogram_layer':kapre.composed.get_melspectrogram_layer, 
    'STFT':kapre.STFT, 'Magnitude':kapre.Magnitude, 'ApplyFilterbank': kapre.ApplyFilterbank})

model = tf.keras.models.Model(inputs=base_model.input, outputs=base_model.get_layer('dense_2').output)

# importing annoy
dim = 128
annoy_model = AnnoyIndex(dim)
annoy_model.load('./models/auto_playlist_annoy.ann')

# importing avoid_csv
played_tracks = pd.read_csv('./played_tracks.csv')

# print('python started succesfully')
def search_tracks(_start_path, _goal_path, _play_tracks_num):
    # start_path = sys.argv[1]
    start_target, sr = librosa.core.load(start_path, sr=16000, mono=True, offset=0.0, duration=30.0, dtype=float, res_type='kaiser_best')
    start_target.reshape([1, 480000])
    start_target = start_target[np.newaxis, :]
    start_features = model.predict(start_target)

    # goal_path = sys.argv[2]
    goal_target, goal_sr = librosa.core.load(goal_path, sr=16000, mono=True, offset=0.0, duration=30.0, dtype=float, res_type='kaiser_best')
    goal_target.reshape([1, 480000])
    goal_target = goal_target[np.newaxis, :]
    goal_features = model.predict(goal_target)

    start_only_name = os.path.basename(os.path.splitext(start_path)[0])
    goal_only_name = os.path.basename(os.path.splitext(goal_path)[0])

    # preparing for suggesting
    two_distance = goal_features - start_features
    # play_tracks_num = sys.argv[3]
    bunbo = int(play_tracks_num) - 1
    suggest_num = bunbo - 1
    next_track_list = [int(start_only_name)]

    # suggest part
    for i in range(suggest_num):
        i = i + 1
        bunsuu = i / bunbo
        plus = two_distance * bunsuu
        the_track_feature = start_features + plus
        # proposed tracks as a list
        sub_next_track_list = annoy_model.get_nns_by_vector(the_track_feature[0], int(play_tracks_num), search_k=-1, include_distances=False)
        # avoid same track
        p = 0
        for next_track in sub_next_track_list:
            track_info = played_tracks[played_tracks['track'] == next_track]
            yes_start = bool(str(next_track) == str(start_only_name))
            yes_goal = bool(str(next_track) == str(goal_only_name))
            if yes_start == True:
                # print('search again')
                p = p + 1
                continue
            elif yes_goal == True:
                # print('search again')
                p = p + 1
                continue
            elif track_info['selected'].values[0] != 'True':
                break
            else:
                # print('search again')
                p = p + 1
        next_track = sub_next_track_list[p]

        played_tracks.at[played_tracks['track'] == next_track, 'selected'] = 'True'
        played_tracks.to_csv('./played_tracks.csv')
        # final result (out of if sentence)
        next_track_list.append(next_track)

    # reset avoid_csv
    played_tracks.at[played_tracks['selected'] == 'True', 'selected'] = 'False'
    played_tracks.to_csv('./played_tracks.csv', index=False)
    next_track_list.append(int(goal_only_name))


    # tracknames_csv part
    df = pd.read_csv('./tracknames.csv', header=None, names=['original', 'test'])
    name_list = []
    get = 0
    for num in next_track_list:
        get = get + 1
        num = str(num) + '.wav'
        info = df[df['test'] == num]
        path = info['original'].values[0]
        name = os.path.splitext(os.path.basename(path))[0]
        if get == int(play_tracks_num):
            name_list.append(str(get) + '. ' + name + ' /No. ' + str(num))
        else:
            name_list.append(str(get) + '. ' + name + ' /No. ' + str(num) + '\n' + ';')
    
    return name_list

# search_tracks(start_path, goal_path, play_tracks_num)

GO = search_tracks(start_path, goal_path, play_tracks_num)
# print(GO)

for track in GO:
    print(track)