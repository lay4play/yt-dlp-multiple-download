#! /bin/bash

#Download every url content from a .txt file, write one URL for raw

filename="URLs.txt"                 #File where URLs are stored
flag=""                             #insert here flag like --extract-audio ecc...
#yt-dlp flag 

raws=$(wc -l $filename | awk '{print $1}')

raw=0

while [ $raw -lt $raws ]; do
let raw+=1
current=$(head -$raw $filename | tail -1)
yt-dlp $current $flag                   #comment this line if you prefer using youtube-dl
#youtube-dl $current $flag              #use youtube-dl instead of yt-dlp, uncomment this line if you prefer using youtube-dl
done
