#!/usr/bin/env bash

ROOT_CONFIG="$HOME/.config"
CONFIG_FOLDERS_TO_SYNC=("polybar" "i3")

for folder in "${CONFIG_FOLDERS_TO_SYNC[@]}"; do    
    path="$ROOT_CONFIG/$folder"
    echo "Syncing $path..."
    rsync -avp --delete $path "../"
done