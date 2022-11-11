#!/bin/bash
xrandr --auto
xrandr --output DP-2 --rotate left
xrandr --output HDMI-1 --above eDP-1
xrandr --output DP-2 --left-of HDMI-1
xrandr --output HDMI-1 --primary
feh --bg-scale /home/mo/Pictures/fractal.png

