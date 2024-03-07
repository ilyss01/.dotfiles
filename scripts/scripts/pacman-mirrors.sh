#!/usr/bin/sh
# Choosing best mirror for pacman

doas reflector --sort rate --save /etc/pacman.d/mirrorlist
doas pacman -Syyu
