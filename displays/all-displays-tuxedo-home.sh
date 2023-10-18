#!/bin/bash
DISPLAY_LEFT="DisplayPort-1"
DISPLAY_TOP="DisplayPort-0"


xrandr --auto
xrandr --output $DISPLAY_LEFT --rotate left
xrandr --output $DISPLAY_TOP --rotate normal
xrandr --output $DISPLAY_TOP --above eDP
xrandr --output $DISPLAY_LEFT --left-of  $DISPLAY_TOP

