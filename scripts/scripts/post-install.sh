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
fwupd{,-efi} pulsemixer texlive-lang kvantum jrnl

# wine
$pS wine-{staging,nine,mono} giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls \ mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse libgpg-error \ lib32-libgpg-error alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo \ sqlite lib32-sqlite libxcomposite lib32-libxcomposite libxinerama lib32-libgcrypt libgcrypt lib32-libxinerama \ ncurses lib32-ncurses ocl-icd lib32-ocl-icd libxslt lib32-libxslt libva lib32-libva gtk3 \ lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader

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
python-{lsp-server,mccabe,pycodestyle,pydocstyle,pyflakes,pylint,rope,whatthepatch} \
meson

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
#echo "permit nopass :wheel" > /etc/doas.conf
#echo "vm.swappiness = 3" > /etc/sysctl.d/99-swappiness.conf
#echo if [[ -z "$XDG_CONFIG_HOME" ]]
#then
        #export XDG_CONFIG_HOME="$HOME/.config/"
#fi

#if [[ -d "$XDG_CONFIG_HOME/zsh" ]]
#then
        #export ZDOTDIR="$XDG_CONFIG_HOME/zsh/"
#fi
#echo "ZDOTDIR=$HOME/.config/zsh" > /etc/zsh/zshenv
