#!/bin/bash
# Decrease brightness of /dev/video0 by 10

brightness=$(v4l2-ctl -d /dev/video0 -C brightness | awk -F ":" '{print $2}')
new_brightness=$((brightness - 10))
v4l2-ctl -d /dev/video0 -c brightness=$new_brightness
