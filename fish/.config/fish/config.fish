function fish_greeting
end

export _JAVA_AWT_WM_NONREPARENTING=1
export EDITOR=nvim
export MOZ_ENABLE_WAYLAND=1
export QT_QPA_PLATFORMTHEME="qt5ct"

# Start X at login
if status --is-interactive
  if test -z "$DISPLAY" -a $XDG_VTNR = 1
    exec sway 
  end
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end
