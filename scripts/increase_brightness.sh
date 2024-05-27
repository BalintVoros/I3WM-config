#!/bin/bash

# Get the current brightness level
current_brightness=$(xrandr --verbose | grep -i brightness | awk '{print $2}' | head -n1)

# Define the increment value
increment=0.1

# Calculate the new brightness
new_brightness=$(echo "$current_brightness + $increment" | bc)

# Ensure the new brightness does not exceed 1.0
if (( $(echo "$new_brightness > 1.0" | bc -l) )); then
    new_brightness=1.0
fi

# Set the new brightness
xrandr --output eDP-1 --brightness $new_brightness

