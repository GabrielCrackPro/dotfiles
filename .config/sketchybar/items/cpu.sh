#!/bin/bash
CPU=(
  update_freq=2
  icon=
  icon.color=$RED
  script="$PLUGIN_DIR/cpu.sh"
)

sketchybar --add item cpu right \
  --set cpu "${CPU[@]}"
