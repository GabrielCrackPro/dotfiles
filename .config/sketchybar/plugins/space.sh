#!/bin/bash

source "$HOME/.config/sketchybar/colors.sh"
source "$HOME/.config/sketchybar/plugins/icon_map_fn.sh"

windows_json=$(aerospace list-windows --all --format '%{app-name} %{workspace}' --json)
apps_in_workspace=$(echo "$windows_json" | jq -r ".[] | select(.workspace == \"$1\") | .\"app-name\"")

label=""
if [ -n "$apps_in_workspace" ]; then
  IFS=$'\n'
  for app in $apps_in_workspace; do
    icon_map "$app"
    label+="$icon_result "
  done
  label=${label%" "}
  unset IFS
else
  label="-"
fi

WIDTH="dynamic"
SELECTED="false"
BACKGROUND_COLOR="$TRANSPARENT"
ICON_COLOR="$LAVENDER"
LABEL_COLOR="$LAVENDER"

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
  SELECTED="true"
  BACKGROUND_COLOR="$LAVENDER"
  LABEL_COLOR="$BG_PRI_COLR"
fi

sketchybar --animate tanh 10 --set $NAME \
  icon.highlight=$SELECTED \
  background.highlight=$SELECTED \
  background.color=$BACKGROUND_COLOR \
  label.font="sketchybar-app-font:Regular:16.0" \
  icon.color=$ICON_COLOR \
  label.color=$LABEL_COLOR \
  label.width=$WIDTH \
  label="$label"
