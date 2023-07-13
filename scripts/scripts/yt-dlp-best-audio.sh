#!/usr/bin/sh

# https://write.corbpie.com/downloading-youtube-videos-as-audio-with-yt-dlp/
yt-dlp -f 'ba' --output ~/media/music/ $1 &
