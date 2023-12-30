#!/usr/bin/bash

mkdir -p $HOME/.local/{share/{applications,gnupg},state} $HOME/.config/ .cache/
mkdir -p $HOME/media/{.desktop,.templates,share,music} $HOME/downloads $HOME/pictures/wallpapers

# desktop
sudo pacman -S hyprland wireplumber waybar foot \
xdg-desktop-portal-{hyprland,wlr} xdg-{user-dirs,utils} \
bluez{,-libs,-utils} tlp acpi acpid swaylock swayidle ttf-fira-code \
pipewire{,-alsa,-audio,-docs,-jack,-pulse,-session-manager} gammastep \
wl-clipboard wlroots polkit-kde-agent udiskie hyprpaper \
xorg-xwayland

# programs
sudo pacman -S lf zathura{,-pdf-poppler} bat light mpv fish helix \
keepassxc qutebrowser wofi chromium keepassxc lazygit ytfzf taskwarrior stow \
imv telegram-desktop libreoffice-fresh texlive diskonaut reflector yt-dlp \
fwupd{,-efi} pulsemixer

#virtualization
sudo pacman -S qemu-desktop virt-manager libvirt dnsmasq

# programming
sudo pacman -S rustup clang gcc lldb llvm-libs ghc python rust-analyzer

# daemons
systemctl enable {fstrim.timer,acpid.service,libvirtd.service,NetworkManager.service,systemd-timesyncd.service,tlp.service}

