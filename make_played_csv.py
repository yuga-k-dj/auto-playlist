import csv
import os, glob

track_list = glob.glob('./track_in_number/*.wav')
songnames = []
for song in track_list:
    root, extra = os.path.splitext(song)
    songname = os.path.basename(root)
    songnames.append(songname)
    print(songnames)

header = ['','track', 'selected']
with open('./played_tracks.csv', 'w') as f:
    writer = csv.writer(f)
    writer.writerow(header)
    for i, name in enumerate(songnames, 1):
        writer.writerow([i] + [name] + ['false'])