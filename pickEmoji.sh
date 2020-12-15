#!/bin/sh
grep -v "#" ~/scripts/unicode | dmenu -i -l 20 -fn notocoloremoji-14| awk '{print $1}'| tr -d '\n' | xclip -selection clipboard

notify-send "$(xclip -o -selection clipboard) copied to clipboard."

