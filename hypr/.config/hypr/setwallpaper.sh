#!/bin/env zsh

hyprctl hyprpaper unload all
# Sets a random wallpaper with hyprpaper

wall=$( find "$HOME/walls/" -type f -print0 | shuf -z -n 1 )

hyprctl hyprpaper preload $wall
hyprctl hyprpaper wallpaper ,$wall
