#!/bin/bash

# Get the current brightness level
current_brightness=$(xrandr --verbose | grep -i brightness | awk '{print $2}' | head -n1)

# Define the decrement value
decrement=0.1

# Calculate the new brightness
new_brightness=$(echo "$current_brightness - $decrement" | bc)

# Ensure the new brightness does not go below 0.1
if (( $(echo "$new_brightness < 0.1" | bc -l) )); then
    new_brightness=0.1
fi

# Set the new brightness
xrandr --output eDP-1 --brightness $new_brightness

