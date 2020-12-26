from pydub import AudioSegment
import os, csv, argparse, glob, wave, contextlib

parser = argparse.ArgumentParser(description='Scan Your Playlist')

parser.add_argument('arg1', help='Playlist Path')

args = parser.parse_args()

#Here's a path to your playlist folder & outputfolder for save 30s clips.
original_dir = args.arg1

made_dir = './track_in_number'
os.makedirs(made_dir, exist_ok=True)

#1. Change all into wav files.
formats = ['.mp3', '.m4a', '.MP3', '.aiff']

for convert_format in formats:
    for (dirpath, dirnames, filenames) in os.walk(original_dir):
        for filename in filenames:
            if filename.endswith(tuple(convert_format)):

                filepath = dirpath + '/' + filename
                (path, file_extension) = os.path.splitext(filepath)
                file_extension_final = file_extension.replace('.', '')
                try:
                    track = AudioSegment.from_file(filepath,
                            file_extension_final)
                    wav_filename = filename.replace(file_extension_final, 'wav')
                    wav_path = dirpath + '/' + wav_filename
                    print('Converting: ' + str(filepath))
                    file_handle = track.export(wav_path, format='wav')
                    os.remove(filepath)
                except:
                    print("ERROR Converting " + str(filepath))

#2. Write csv file with cutting tracks into 30s clips.
csv_file = open('./tracknames.csv', 'w')
writer = csv.writer(csv_file)

songs = glob.glob(original_dir + '/' + '*')
print(songs)

clip = 0
sec = 1000
for song in songs:
    if os.path.isfile(song):
        
        print('NOW:' + song)
        root, extra = os.path.splitext(song)
        print(extra)
        songcheck = bool(extra == '.mp3')
        songcheck2 = bool(extra == '.aif')
        exist_check = os.path.getsize(song)
        songchecksum = bool(songcheck == False and songcheck2 == False and exist_check != 0)
        print(songchecksum)

        if songchecksum == True:
            with contextlib.closing(wave.open(song,'r')) as f:
                songcheck3 = bool(wave.Error == 'unknown format: 3')
                print(songcheck3)
                if songcheck3 == False:
                    frames = f.getnframes()
                    rate = f.getframerate()
                    duration = frames / int(rate)
                    print(duration)
                elif songcheck3 == True:
                    continue
            
            clip = clip + 1

            # songcheckall = bool(songcheck3 == False)
            # print(songcheckall)

            if duration > 60:
                trackmiddle = duration / 2
                starttime = trackmiddle - 15
                endtime = trackmiddle + 15

                audio = AudioSegment.from_file(song)

                AudioLen = audio.duration_seconds

                sound = AudioSegment.from_file(song, format="wav")

                sound1 = sound[starttime * sec :  endtime * sec]
                clipname = str(clip)
                sound1.export(made_dir + '/' + clipname + '.wav', format='wav')

                songname = os.path.basename(song)
                writer.writerow([songname, clipname + '.wav'])


csv_file.close()