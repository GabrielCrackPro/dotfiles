#!/bin/bash

COUNT=$(brew outdated | wc -l | tr -d ' ')

COLOR=$RED

case "$COUNT" in
[3-5][0-9])
  COLOR=$PEACH
  ;;
[1-2][0-9])
  COLOR=$YELLOW
  ;;
[1-9])
  COLOR=$WHITE
  ;;
0)
  COLOR=$MAUVE
  COUNT=0
  ;;
esac

BREW=(
  update_freq=100
  icon="$BREW_ICON"
  icon.font="$ICON_FONT:Regular:20:0"
  icon.color="$COLOR"
  background.color="$BG_SEC_COLR"
  label="$COUNT"
)

sketchybar --add item brew right --set brew "${BREW[@]}"
