autoload -Uz compinit promptinit
compinit
promptinit

# Autosuggestions
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Export global variables
export _JAVA_AWT_WM_NONREPARENTING=1
export EDITOR=nvim
export MOZ_ENABLE_WAYLAND=1
export QT_QPA_PLATFORMTHEME="qt5ct"

# Export application files
export EDITOR="nvim"

# Alias
# Dirs
alias ls=exa
alias cdc="cd ~/.config/"
alias cdd="cd ~/dotfiles/"
# Paru aliases
alias pS="sudo paru -S"
alias pR="sudo paru -R"
alias pSyu="sudo paru -Syu"
alias pOrphan="sudo paru -Qtdq | sudo paru -Rns -"
# Comfortable access to configs
alias alacc="nvim ~/.config/alacritty/alacritty.yml"
alias envvc="nvim ~/.config/environment.d/envvars.conf"
alias swayc="nvim ~/.config/sway/config"
alias waybarc="nvim ~/.config/waybar/config"
alias zshc="nvim ~/.zshrc"
alias n=nvim
alias py=python
# Swayhide aliases
alias imv="swayhide imv"
#alias mpv="swayhide mpv"
alias zathura="swayhide zathura"
alias lofi="mpv 'https://www.youtube.com/watch?v=jfKfPfyJRdk' --no-video"

# Autoexec sway
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
	exec sway
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
bindkey -v

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ilyss/.zshrc'

autoload -Uz compinit
compinit

# Prompt
PROMPT='%n@%m %~ '

# Vi mode
function zle-line-init zle-keymap-select {
    RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
    RPS2=$RPS1
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

# End of lines added by compinstall
