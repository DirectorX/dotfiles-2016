#!/bin/bash
rofi -width `xrandr | head -n 1 | sed -r 's/.*current\s([0-9]+)\sx\s([0-9]+).*/\1x\2/g' | cut -d 'x' -f 1` \
     -color-window "#273238, #273238, #1e2529" \
     -color-normal "#273238, #c1c1c1, #273238, #394249, #ffffff" \
     -color-active "#273238, #80cbc4, #273238, #394249, #80cbc4" \
     -color-urgent "#273238, #ff1844, #273238, #394249, #ff1844" \
     -location 0 -lines 8 -bw 0 -font "Source Code Pro Bold 16" \
     -padding 400 -separator-style none -opacity 85 "$@"
