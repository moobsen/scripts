#!/bin/bash
xrandr --auto
xrandr --output HDMI-1 --rotate left
xrandr --output DP-2 --above eDP-1
xrandr --output HDMI-1 --right-of DP-2
