#!/usr/bin/sh

cd temp
rm -rf *
echo '$1'
yt-dlp -f bestaudio -x "$1"
beet im .
