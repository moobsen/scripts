#!/bin/bash
RAINBOW=("255 000 000"
           "255 128 000"
           "255 255 000"
           "128 255 000"
           "000 255 000"
           "000 255 128"
           "000 255 255"
           "000 128 255"
           "000 000 255"
           "128 000 255"
           "255 000 255"
           "255 000 128")
for color in "${RAINBOW[@]}"
do
	sudo ./set-keyboard-color.sh $color
	sleep 0.1
	#echo 0x$handle$handle$handle
done
