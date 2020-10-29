#!/bin/bash

# /bin/bash ~/scripts/dwm-status.sh &
/bin/bash ~/scripts/wp-change.sh 
#picom -o 0.95 -i 0.88 --detect-rounded-corners --vsync --blur-background-fixed -f -D 5 -c -u
picom --experimental-backends -o 0.9 -i 0.8 &
/bin/bash ~/scripts/tap-to-click.sh &
/bin/bash ~/scripts/inverse-scroll.sh &
nm-applet &
fcitx &
slstatus &
~/scripts/autostart_wait.sh &
