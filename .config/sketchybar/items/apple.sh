#!/bin/bash

APPLE=(
  icon="$APPLE_ICON"
  icon.color="$LAVENDER"
  icon.font="$ICON_FONT:Regular:18.0"
  icon.padding_left=0
  label.drawing=off
  background.padding_left=0
  background.padding_right=4
  background.color="$BG_PRI_CLOR"
)

sketchybar --add item apple left \
  --set apple "${APPLE[@]}"
