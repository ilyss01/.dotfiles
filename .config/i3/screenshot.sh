#!/usr/bin/sh

# open screenshot tool
scrot -s -q 100 -o ~/Pictures/screenshot.png

# copy to clipboard
xclip -sel clip -t image/png -i ~/Pictures/screenshot.png
