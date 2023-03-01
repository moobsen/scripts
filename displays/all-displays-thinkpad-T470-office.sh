#!/bin/bash

MIDDLE="DP-2-2-8"
RIGHT_ROTATED="DP-2-2-1"

xrandr --auto
xrandr --output $MIDDLE --right-of eDP-1
xrandr --output $RIGHT_ROTATED --right-of $MIDDLE
xrandr --output $RIGHT_ROTATED --rotate left
xrandr --output $MIDDLE --primary
feh --bg-scale /home/mo/Pictures/fractal.png


