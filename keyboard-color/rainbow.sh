#!/bin/bash
for((i=1;i<=255;i++))
do
	handle=$(printf '%X' $i) 
	sudo ./set-color.sh 0xFF$handle
	#echo 0x$handle$handle$handle
	echo 
done
