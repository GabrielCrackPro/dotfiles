#!/bin/bash

UPTIME=(
  update_freq=10
  icon="$UPTIME_ICON"
  icon.drawing=on
  label.padding_left=10
  label.padding_right=6
  icon.color="$BLUE"
  background.padding_right=2
  script="$PLUGIN_DIR/uptime.sh"
)

sketchybar --add item uptime right \
  --set uptime "${UPTIME[@]}"
