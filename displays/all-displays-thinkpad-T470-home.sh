#!/bin/bash
xrandr --auto
xrandr --output HDMI-2 --rotate left
xrandr --output DP-1 --above eDP-1
xrandr --output HDMI-2 --left-of DP-1
xrandr --output DP-1 --primary
i3-msg 'rename workspace 3 to 4'
i3-msg 'rename workspace 1 to 3'
i3-msg 'rename workspace 4 to 1'
feh --bg-scale /home/mo/Pictures/fractal.png
