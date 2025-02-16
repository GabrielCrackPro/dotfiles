#!/bin/bash

MUSIC=(
  # icon="$SPOTIFY_ICON"
  icon.drawing=on
  label.padding_left=10
  label.padding_right=6
  icon.color="$GREEN"
  background.padding_right=2
  script="$PLUGIN_DIR/music.sh"
  click_script="open -a Spotify"
)

sketchybar --add item music right \
  --set music "${MUSIC[@]}" \
  --subscribe music spotify_change
