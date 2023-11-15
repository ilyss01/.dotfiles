if not status is-interactive
    exit
end

function fish_user_key_bindings
    fish_default_key_bindings -M insert
    fish_vi_key_bindings --no-erase insert
end

set fish_cursor_default block
set fish_cursor_insert line
set fish_cursor_replace_one underscore
set fish_cursor_visual block

source ~/.config/zsh/aliasrc
source ~/.config/zsh/profile
fish_add_path -m "$HOME/.local/share/cargo/bin"
