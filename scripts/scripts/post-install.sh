#!/usr/bin/bash

pS="doas pacman -S"

mkdir -p $HOME/{.local/{share/{applications,gnupg,wineprefixes},state},.config,.cache}
mkdir -p $HOME/media/{.desktop,.templates,share,music} $HOME/{downloads,pictures/wallpapers}

# desktop
$pS hyprland wireplumber waybar foot \
xdg-desktop-portal-{hyprland,wlr} xdg-{user-dirs,utils} \
bluez{,-libs,-utils} tlp acpi acpid swaylock swayidle \
pipewire{,-alsa,-audio,-docs,-jack,-pulse,-session-manager} gammastep \
wl-clipboard wlroots polkit-kde-agent udiskie hyprpaper \
xorg-xwayland 

# programs
$pS light fish \
keepassxc qutebrowser wofi chromium lazygit ytfzf taskwarrior-tui stow \
imv telegram-desktop libreoffice-fresh texlive diskonaut reflector yt-dlp \
fwupd{,-efi} pulsemixer texlive-lang kvantum wine-{staging,nine,mono} \
jrnl


# lf
$pS lf zathura{,-pdf-poppler} bat mpv helix chafa lynx poppler \
mediainfo atool odt2text 

# fonts
$pS ttf-fira-code adobe-source-han-{sans-jp-fonts,serif-jp-fonts} \
noto-fonts{,-cjk,-emoji} otf-{ipafont,ipaexfont,latin-modern{,-math}} ttf-hanazono \
ttf-sazanami ttf-firacode-nerd \
gnu-free-fonts ttf-arphic-uming ttf-indic-otf 

#virtualization
$pS qemu-desktop virt-manager libvirt dnsmasq

# programming
$pS rustup clang gcc lldb llvm-libs ghc rust-analyzer \
valgrind texlab taplo haskell-language-server \
python yapf autopep8 flake8 \
python-{lsp-server,mccabe,pycodestyle,pydocstyle,pyflakes,pylint,rope,whatthepatch}

# codecs
$pS flac wavpack a52dec libdca libmad libmpcdec \
opencore-amr opus speex libvorbis faac faad2 libfdk-aac \
jasper libwebp libavif libheif libjxl aom dav1d rav1e svt-av1 \
schroedinger libdv x265 libde265 x264 libmpeg2 xvidcore \
libtheora libvpx ffmpeg gst-libav gstreamer gst-libav \
gst-plugins-{bad,base,good,ugly} gst-plugin-{va,pipewire} \
intel-media-driver libva-intel-driver

# daemons
doas systemctl enable {fstrim.timer,acpid.service,libvirtd.service,NetworkManager.service,systemd-timesyncd.service,tlp.service}

# system things
echo "permit nopass :wheel" > /etc/doas.conf
echo "vm.swappiness = 3" > /etc/sysctl.d/99-swappiness.conf
