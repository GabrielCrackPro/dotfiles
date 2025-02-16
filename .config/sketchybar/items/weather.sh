#!/bin/bash

WEATHER=(
  update_freq=200
  icon.drawing=on
  icon="$WEATHER_ICON"
  icon.color="$PEACH"
  script="$PLUGIN_DIR/weather.sh"
)

sketchybar --add item weather right \
  --set weather "${WEATHER[@]}"
