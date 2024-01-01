#!/usr/bin/sh
# Choosing best mirror for pacman

doas reflector
doas pacman -Syyu
