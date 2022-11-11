#!/bin/bash
IP=$1
pactl load-module module-null-sink sink_name=rtp
pactl load-module module-rtp-send source=rtp.monitor destination_ip=$IP
# you still need to select the correct interface as output. for me it is called "Null Output"
