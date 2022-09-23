#!/bin/bash
RAINBOW=("0xFF0000" 
		 "0xFF8000"
		 "0xFFFF00"
		 "0x80FF00"
		 "0x00FF00"
		 "0x00FF80"
		 "0x00FFFF"
		 "0x0080FF"
		 "0x0000FF"
		 "0x8000FF" 
		 "0xFF00FF"
		 "0xFF0080")
for color in "${RAINBOW[@]}"
do
	sudo ./set-keyboard-color.sh $color
	sleep 2
	#echo 0x$handle$handle$handle
done
