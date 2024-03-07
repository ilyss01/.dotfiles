#!/bin/bash

# DISCLAIMER: I have learnt after publishing this script that it is much easier to run
# pacman -D --asexplicit <packages you wish to keep>

# This script is used to individually check
# and remove orphaned packages from the system.

# Optional depedencies: rg       (replaces grep),
#                       doas     (replaces sudo)
#                       paru     (replaces pacman and yay)
#                       yay      (replaces pacman)

[ -x "$(command -v paru)" ] && pkg_cmd=paru || ( [ -x "$(command -v yay)" ] && pkg_cmd=yay || pkg_cmd=pacman )
orphans=($($pkg_cmd -Qtdq))
orphans_size=${#orphans[@]}
orphans_idx=0

for i in "${orphans[@]}"
do
    orphans_idx=$((orphans_idx+1))
    raw_pkg_info=$($pkg_cmd -Qi $i)
    set -o noglob
    IFS=$'\n' pkg_info=($raw_pkg_info)
    set +o noglob
    # Print first 5 elements and the element starting with 'Installed Size' with newlines in between
    echo "${pkg_info[*]:0:5}"
    [ -x "$(command -v rg)" ] && grep_cmd=rg || grep_cmd=grep
    echo $($grep_cmd -m 1 'Installed Size' <<< "$raw_pkg_info")

    read -p "($orphans_idx/$orphans_size) Remove $i? [y/n] " -n 1 -r
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
        echo
        echo "Removing $i"
    elif [[ $REPLY =~ ^[Qq]$ ]]
    then
        echo $'\nExiting.'
        exit
    else
        echo
        echo "Keeping $i"
        orphans=(${orphans[@]/$i})
    fi

    echo
done

if [ ${#orphans[@]} -gt 0 ]
then
    if [ "$pkg_cmd" = "pacman" ]
    then
        echo "Removing orphaned packages..."
        [ -x "$(command -v doas)" ] && su_cmd=doas || su_cmd=sudo
        $su_cmd pacman -Rns ${orphans[@]}
    else
        echo "Removing orphaned packages..."
        $pkg_cmd -Rsn ${orphans[@]}
    fi
    echo "Finished, exiting."
else
    echo "No orphans to remove, exiting."
fi
