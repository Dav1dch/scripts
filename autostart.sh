#!/bin/bash

feh --bg-fill ~/Pictures/bigsur.jpg &
/bin/bash ~/scripts/dwm-status.sh &
# /bin/bash ~/scripts/wp-autochange.sh &
/bin/bash ~/scripts/dwm-weather.sh &
# picom -o 0.95 -i 0.88 --detect-rounded-corners --vsync --blur-background-fixed -f -D 5 -c -u &
picom --experimental-backends &
# picom &
/bin/bash ~/scripts/tap-to-click.sh &
/bin/bash ~/scripts/inverse-scroll.sh &
/bin/bash ~/.config/polybar/launch.sh &
nm-applet &
pa-applet &
dunst &
fcitx5 &
xfce4-power-manager &
xfce4-volumed-pulse &
#dwall -s tokyo &
# slstatus &
wmname LG3D
# ~/scripts/autostart_wait.sh &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
