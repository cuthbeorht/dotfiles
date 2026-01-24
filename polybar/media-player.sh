#!/usr/bin/env bash

# Use playerctl to get the artist and title, or a default string if stopped/paused
# The --format flag uses a Go-like template string
metadata=$(playerctl metadata --format '{{ artist }} - {{ title }}' 2> /dev/null)
status=$(playerctl status 2> /dev/null)

if [[ "$status" == "Playing" || "$status" == "Paused" ]]; then
    echo "$metadata"
else
    # Output an empty string or a default message (e.g., "No media playing")
    echo "" 
fi
