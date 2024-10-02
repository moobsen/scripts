#!/bin/bash
LEFT_ROTATED="HDMI-2"
TOP="DP-1"

xrandr --auto
xrandr --output $LEFT_ROTATED --rotate left
xrandr --output $TOP --above eDP-1
xrandr --output $LEFT_ROTATED --left-of $TOP
xrandr --output $TOP --primary
i3-msg 'rename workspace 1 to 4'
i3-msg 'rename workspace 3 to 1'
i3-msg 'rename workspace 4 to 3'
feh --bg-scale  /home/mo/Pictures/solar_punk.jpg
