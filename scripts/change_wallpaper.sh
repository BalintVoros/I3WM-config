#!/bin/bash

# Directory containing your wallpapers
WALLPAPER_DIR="/home/balint/Wallpapers/"


# Get a random wallpaper from the directory
WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

# Command to change the wallpaper, for example using feh
feh --bg-scale "$WALLPAPER"

# Print something to indicate the block, e.g., an icon or text
echo ""

