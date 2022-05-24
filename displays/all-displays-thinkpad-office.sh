#!/bin/bash
xrandr --auto
xrandr --output DP-1-8 --right-of eDP-1
xrandr --output DP-1-1 --right-of DP-1-8
xrandr --output DP-1-1 --rotate left
xrandr --output DP-1-8 --primary

