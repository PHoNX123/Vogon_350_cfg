#!/bin/bash
# Adjust control options for /dev/video0

# Specify the control option to adjust and the step size
ctrl="tilt_absolute"  # replace with the desired control option
step=-3600            # replace with the desired step size

# Get the current value of the control option
value=$(v4l2-ctl -d /dev/video0 -C $ctrl | awk -F ":" '{print $2}')

# Calculate the new value of the control option
new_value=$((value + step))

# Set the new value of the control option
v4l2-ctl -d /dev/video0 -c $ctrl=$new_value

