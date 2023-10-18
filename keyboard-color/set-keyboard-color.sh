#!/bin/bash
echo $1 $2 $3 | sudo tee  /sys/class/leds/rgb:kbd_backlight/multi_intensity
