autoload -U compinit colors
setopt autocd interactive_comments 
# stty stop undef # Disable ctrl-s to freeze terminal.
PROMPT='%n@%m %~ '
colors

# Load aliases and shortcuts 
source "$HOME/.config/zsh/aliasrc"
source "$HOME/.config/zsh/profile"

# History in cache directory
HISTSIZE=10000000
SAVEHIST=10000000

# Basic auto/tab complete
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit 
_comp_options+=(globdots) # Include hidden files

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Change cursor shape for different vi modes.
function zle-keymap-select () {
    case $KEYMAP in
        vicmd) echo -ne '\e[1 q';;      # block
        viins|main) echo -ne '\e[5 q';; # beam
    esac
}
zle -N zle-keymap-select
echo -ne '\e[5 q' # Use beam shape cursor on startup.

# zoxide
eval "$(zoxide init zsh)"

# Autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=gray,bg=dark,underline"
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
