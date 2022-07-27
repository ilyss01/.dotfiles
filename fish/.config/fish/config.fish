function fish_greeting
end

export _JAVA_AWT_WM_NONREPARENTING=1
export XDG_CURRENT_DESKTOP=sway
export EDITOR=nvim
export MOZ_ENABLE_WAYLAND=1

# Start X at login
if status --is-interactive
  if test -z "$DISPLAY" -a $XDG_VTNR = 1
    exec sway 
  end
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end
