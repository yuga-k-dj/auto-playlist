#from yuga_similar_kapre.ipynb
import tensorflow as tf
from tensorflow.keras.models import Model
import kapre
import librosa
import numpy as np
import os
import glob
from annoy import AnnoyIndex

base_model = tf.keras.models.load_model('./models/auto_playlist_model.h5', 
    custom_objects={'get_melspectrogram_layer':kapre.composed.get_melspectrogram_layer, 
    'STFT':kapre.STFT, 'Magnitude':kapre.Magnitude, 'ApplyFilterbank': kapre.ApplyFilterbank})

model = Model(inputs=base_model.input, outputs=base_model.get_layer('dense_2').output)

dim = 128
annoy_model = AnnoyIndex(dim, metric='angular')

track_list = glob.glob('./track_in_number/*.wav')
track_list_number = len(track_list)

# Now, we are ready to make the annoy model
# index = 1
for file in track_list:

    target_audio_path = file
    print(target_audio_path)

    y, sr = librosa.core.load(target_audio_path, sr=16000, mono=True, offset=0.0, duration=None, dtype=float, res_type='kaiser_best')

    #reshaping loaded data

    target_x = y
    shape_check = str(target_x.shape)
    print(shape_check)

    if shape_check == str((480000,)):
        print('Loading...')
        target_x = target_x.reshape([480000, 1])
        target_x = target_x[np.newaxis, :]
        print(target_x.shape)

        #analysing which genre
        dense_1_features = model.predict(target_x)
        index = os.path.splitext(os.path.basename(target_audio_path))[0]

        annoy_model.add_item(int(index), dense_1_features[0])

    else:
        print('Pass')
        continue

annoy_model.build(track_list_number)
annoy_model.save('./models/auto_playlist_annoy.ann')