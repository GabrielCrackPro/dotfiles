#!/bin/bash

SPACE_ICONS=("󰋜" "" "󰖟" "")
SPACE_LABELS=("1" "2" "3" "4")

SPACE=(
  icon.padding_left=18
  icon.padding_right=18
  label.padding_right=8
  label.padding_left=0
  icon.color="$WHITE"
  icon.font="$FONT:ExtraBold:16.0"
  icon.highlight_color="$LAVENDER"
  icon.background.draw=on
  background.padding_right=3
  background.color=$BG_SEC_COLR
  background.corner_radius=10
  background.drawing=on
  background.padding_left=0
  background.highlight_color=$BLUE
)

sketchybar --add event aerospace_workspace_change

sid=0
for i in "${!SPACE_ICONS[@]}"; do
  sid=$(($i))
  sketchybar --add item space.$sid left \
    --subscribe space.$sid aerospace_workspace_change \
    --set space.$sid "${SPACE[@]}" \
    script="$PLUGIN_DIR/space.sh $sid" \
    click_script="aerospace workspace $sid" \
    --set space.$sid icon=${SPACE_ICONS[i]} \
    --set space.$sid label=${SPACE_LABELS[i]}
done

sketchybar --add item space_separator_left left \
  --set space_separator_left icon="$SEPARATOR_ICON" \
  icon.font="$FONT:Bold:22.0" \
  background.padding_left=3 \
  background.padding_right=3 \
  label.drawing=off \
  icon.color=$DARK_WHITE
