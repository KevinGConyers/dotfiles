[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources &
set xkbmap -option caps:escape &
exec i3
