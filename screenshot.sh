#!/bin/sh
grim -g "$(slurp)" /home/cappuccino/Pictures/ScreenShot/$(date +'screenshot_%Y-%m-%d-%H%M%S.png') | wl-copy
