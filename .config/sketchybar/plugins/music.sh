#!/bin/bash

source "$HOME/.config/sketchybar/icons.sh"

PLAYING=$("$HOME/.config/sketchybar/plugins/spotify.sh")

# Trim text if it's too long
[[ ${#PLAYING} -gt 20 ]] && PLAYING="${PLAYING:0:17}..."

if [[ "$PLAYING" == "None" ]]; then
  sketchybar --set "$NAME" label.drawing=off icon.drawing=off
else
  ICON="$SPOTIFY_ICON"
  [[ "$PLAYING" == "En Pausa" ]] && ICON="$PAUSE_ICON"

  sketchybar --set "$NAME" label.drawing=on icon.drawing=on icon="$ICON" label="$PLAYING"
fi
