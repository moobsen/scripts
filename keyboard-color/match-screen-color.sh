#!/bin/bash
BASEDIR=$(dirname "$0")
cd $BASEDIR
scrot -f screenshot.png
RGB_COLOR=$(convert screenshot.png -resize 1x1\! \
	-format "%[fx:int(255*r+.5)],%[fx:int(255*g+.5)],%[fx:int(255*b+.5)]" info:-)
rm screenshot.png
R=$(echo $RGB_COLOR | cut --delimiter=, -f1)
G=$(echo $RGB_COLOR | cut --delimiter=, -f2)
B=$(echo $RGB_COLOR | cut --delimiter=, -f3)

R_HEX=$(printf '%X' $R)
G_HEX=$(printf '%X' $G)
B_HEX=$(printf '%X' $B)

sudo ./set-color.sh 0x$R_HEX$G_HEX$B_HEX
