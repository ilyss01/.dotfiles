function fish_greeting
end

export PATH="$HOME/.emacs.d/bin:$PATH"
export _JAVA_AWT_WM_NONREPARENTING=1
set -gx EDITOR nvim

# Start X at login
if status --is-interactive
  if test -z "$DISPLAY" -a $XDG_VTNR = 1
    exec sway 
  end
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end
