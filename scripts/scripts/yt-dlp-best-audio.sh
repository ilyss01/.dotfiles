#!/usr/bin/sh
# Download youtube music in best audio quality

# https://write.corbpie.com/downloading-youtube-videos-as-audio-with-yt-dlp/
yt-dlp -f 'ba' --output ~/media/music/ $1 &
