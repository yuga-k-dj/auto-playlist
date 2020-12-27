# Auto-Playlist
AI-based automatic DJ setlist maker.
* **If you use this system for DJ, please cite [this page](https://github.com/yuga-k-dj/auto-playlist) or one of my socials below.**
* **このシステムをDJで使用した場合、こちらの[ページのリンク](https://github.com/yuga-k-dj/auto-playlist)、又は、以下にある私のSNSをタグ付けしてください。**
* Yuga SNS Links - [Instagram](https://www.instagram.com/yuga_k_dj/), [Twitter](https://twitter.com/yuga_k_dj), [Facebook](https://www.facebook.com/profile.php?id=100011611293394)

## First of all...(Citation)
* This work uses 'Kapre' from [this paper](https://arxiv.org/abs/1706.05781).
*Much love and appreciation to [Keunwoo Choi](https://github.com/keunwoochoi) for making such a wonderful API!*
* [Kapre GitHub](https://github.com/keunwoochoi/kapre)

# How to use
*It may be better to make a new python environment for using this.*
* This will be worked with **Standalone Max 8.1.3 or later** (checked with Max 8.1.3).
* It may be a little long preparation but I hope you'd try!

## Preparation
### 0. Please copy all the tracks you have to a new empty directory

### 1. Installing python requirements
```sh
pip install -r requirements.txt
```

### 2. Make your tracks avialable for Auto-Playlist
* NOTE! You will have 30sec ".wav" files each tracks after this step and your tracks in the direcotory will be changed into ".wav" files. Please be sure to have enough storage (e.g. 5523tracks == you would need 29.54GB empty storage, and another bigger storage for the original directory) before using the code below.
* Please try this code with ~1000 tracks if you don't have enough storage.
```sh
cd auto-playlist
python scanplaylist_for_auto.py 'Path to the directory where you copied all the tracks at step 0'
```
If this worked succesfully, you would have a directory named 'track_in_number' with 30s ".wav" files and one ".csv" file named 'tracknames.csv' at current directory.
* If the error "wave.Error: unknown format: 3" happens, please delete the "NOW" track and try the code above again.

Next, you have to make your own Annoy model for extracting features of the tracks.
```sh
python make_your_annoy.py
```
If this worked succesfully, you would have a file named 'auto_playlist_annoy.ann' at 'models' directory.

### 3. Making another ".csv" for avoiding choosing same tracks
```sh
python make_played_csv.py
```
You would have a ".csv" file named 'played_tracks.csv' at current directory.

### 4. Node.js (In case the Auto-Playlist doesn't work with only the steps above)
#### 4.1. Installing nodebrew
```sh
curl -L git.io/nodebrew | perl – setup
export PATH=$HOME/.nodebrew/current/bin:$PATH
```
Checking nodebrew installed succesfully or not
```sh
nodebrew -v
```

#### 4.2. Install Node.js using nodebrew
```sh
nodebrew install-binary stable
```

#### 4.3 Make node.js usable
```sh
nodebrew use v*
```
(* == "the node.js version which you downloaded at 4.2")

#### 4.4 Install npm
```sh
npm install -g npm@6.14.8
```
Checking npm installed succesfully or not
```sh
npm -v
```
## Finally you are ready to make a setlist
You need to type your python path at python.js file (showing below)
Editting.....
