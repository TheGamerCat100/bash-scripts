#!/bin/bash
cd ~/Videos
FILE1=${1?Error: Please point to the file in /home/Videos you want to convert (./convert.sh [FILENAME])}
espeak "converting $FILE1"
ffmpeg -i "$FILE1" -c:v mpeg4 -q:v 5 -c:a pcm_s16le "$FILE1_converted_to.mov"
espeak "done!"
espeak "may the lord be with you!"
