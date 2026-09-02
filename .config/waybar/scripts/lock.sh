#!/bin/bash

WALLPAPER_DIR="$HOME/Pictures/Wallpapers"

WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( \
    -iname "*.jpg" \
    -o -iname "*.jpeg" \
    -o -iname "*.png" \
\) | shuf -n 1)

if [ -z "$WALLPAPER" ]; then
    echo "No wallpapers found in $WALLPAPER_DIR" >&2
    exit 1
fi

swaylock \
    --config "$HOME/.config/swaylock/swaylock.config" \
    --image "$WALLPAPER"
