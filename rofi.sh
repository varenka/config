#!/bin/bash

# Window color definitions
bgcolor=$"#2f343f"
inactivebgcolor=$"#2f343f"
textcolor=$"#f3f4f5"
inactivetextcolor=$"#676E7D"
highlight=$"#f48042"

screenSize=$(xrandr | awk 'BEGIN {foundOutput=0}
/ '$output' / {foundOutput=1}
/\*\+/ {print $1}
/^[^ ]/ {if(foundOutput) exit 0}')

if [ "$screenSize" != "" ]; then
        # we are currently using the laptop screen
        padding=300
else
        # we are not using the laptop LCD screen
        padding=400
fi

rofi -show run -lines 10 -eh 1 -width 100 -padding $padding -bw 0 -opacity "85" -bc $bgcolor -bg $bgcolor -fg $textcolor -hlbg $bgcolor -hlfg $highlight -font "Ubuntu 14"
