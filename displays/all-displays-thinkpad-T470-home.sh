#!/bin/bash
LEFT_ROTATED="HDMI-A-2"
MIDDLE="DP-1"
LAPTOP="eDP-1"

# Sizes in logical pixels; adjust to your screens
ROT_W=1200   # rotated monitor's width = its native height
MID_W=3440

swaymsg output $LEFT_ROTATED transform 270 position 0 0
swaymsg output $MIDDLE position $ROT_W 0
swaymsg output $LAPTOP position $((ROT_W + MID_W)) 0

#swaymsg 'rename workspace 1 to 4'
#swaymsg 'rename workspace 3 to 1'
#swaymsg 'rename workspace 4 to 3'

swaymsg output '*' bg /home/mo/Pictures/solar_punk.jpg stretch
