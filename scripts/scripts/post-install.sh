#!/usr/bin/bash

pS="doas pacman -S"

mkdir -p $HOME/.local/{share/{applications,gnupg},state} $HOME/.config/ .cache/
mkdir -p $HOME/media/{.desktop,.templates,share,music} $HOME/downloads $HOME/pictures/wallpapers

# desktop
$pS hyprland wireplumber waybar foot \
xdg-desktop-portal-{hyprland,wlr} xdg-{user-dirs,utils} \
bluez{,-libs,-utils} tlp acpi acpid swaylock swayidle ttf-fira-code \
pipewire{,-alsa,-audio,-docs,-jack,-pulse,-session-manager} gammastep \
wl-clipboard wlroots polkit-kde-agent udiskie hyprpaper \
xorg-xwayland adobe-source-han-{sans-jp-fonts,serif-jp-fonts} \
noto-fonts-cjk otf-ipafont otf-ipaexfont ttf-hanazono \
ttf-sazanami noto-fonts ttf-firacode-nerd noto-fonts-emoji \
gnu-free-fonts ttf-arphic-uming ttf-indic-otf otf-latin-modern \
otf-latinmodern-math

# programs
$pS lf zathura{,-pdf-poppler} bat light mpv fish helix \
keepassxc qutebrowser wofi chromium lazygit ytfzf taskwarrior-tui stow \
imv telegram-desktop libreoffice-fresh texlive diskonaut reflector yt-dlp \
fwupd{,-efi} pulsemixer chafa lynx poppler mediainfo atool \
odt2txt texlive-lang kvantum wine-staging wine-nine wine-mono 


#virtualization
$pS qemu-desktop virt-manager libvirt dnsmasq

# programming
$pS rustup clang gcc lldb llvm-libs ghc python rust-analyzer \
valgrind texlab taplo python-lsp-server haskell-language-server 

# codecs
$pS flac wavpack a52dec libdca libmad libmpcdec \
opencore-amr opus speex libvorbis faac faad2 libfdk-aac \
jasper libwebp libavif libheif libjxl aom dav1d rav1e svt-av1 \
schroedinger libdv x265 libde265 x264 libmpeg2 xvidcore \
libtheora libvpx ffmpeg gst-libav gstreamer gst-libav \
gst-plugins-{bad,base,good,ugly} gst-plugin-{va,pipewire} \
intel-media-driver libva-intel-driver

# daemons
systemctl enable {fstrim.timer,acpid.service,libvirtd.service,NetworkManager.service,systemd-timesyncd.service,tlp.service}

