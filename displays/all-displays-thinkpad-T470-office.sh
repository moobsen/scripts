#!/bin/bash

LEFT="eDP-1"
MID="DP-5"
RIGHT_ROTATED="DP-6"


LEFT_W="1920"
MID_W="1920"

swaymsg output $LEFT position 0 0
swaymsg output $MID position $LEFT_W 0
swaymsg output $RIGHT_ROTATED transform 270 position $((LEFT_W + MID_W )) 0

swaymsg output '*' bg /home/mo/Pictures/solar_punk.jpg stretch

swaymsg 'rename workspace 1 to 4'
swaymsg 'rename workspace 3 to 1'
swaymsg 'rename workspace 4 to 3'

