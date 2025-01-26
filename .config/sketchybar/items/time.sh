#!/bin/bash

TIME=(
  update_freq=10
  icon="$CLOCK_ICON"
  icon.drawing=on
  label.padding_left=10
  label.padding_right=6
  icon.font="$ICON_FONT:Regular:15.0"
  icon.color="$PINK"
  background.padding_right=2
  background.color="$BG_SEC_COLR"
  script="$PLUGIN_DIR/time.sh"
)

sketchybar --add item time right \
  --set time "${TIME[@]}"
