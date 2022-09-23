# e.g.>  ./set-color.sh 0xFF0000 to set keyboard to red
# 0xRRGGBB
#!/bin/bash
echo -n $1 > /sys/devices/platform/tuxedo_keyboard/color_left
