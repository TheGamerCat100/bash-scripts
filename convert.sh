#!/bin/bash
cd ~/Videos
read -p "Please point to the file you want to convert (ends in .MP4) :" FILE1
read -p "Please specifiy the final name (ends in .MOV) :" FILE2
ffmpeg -i "$FILE1" -c:v mpeg4 -q:v 5 -c:a pcm_s16le "$FILE2"
