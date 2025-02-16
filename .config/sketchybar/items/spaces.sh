#!/bin/bash

SPACE_ICONS=("1" "2" "3" "4") # Íconos de espacios de trabajo (puedes cambiarlo)

SPACE=(
  icon.padding_left=14
  icon.padding_right=14
  label.padding_right=6
  label.padding_left=2
  icon.font="$ICON_FONT:ExtraBold:18.0"
  icon.background.draw=on
  background.corner_radius=8
  background.drawing=on
  background.padding_left=2
  background.padding_right=2
)

sketchybar --add event aerospace_workspace_change

# Loop para agregar espacios en la barra
for i in "${!SPACE_ICONS[@]}"; do
  sid=$((i))

  sketchybar --add item space.$sid left \
    --subscribe space.$sid aerospace_workspace_change \
    --set space.$sid "${SPACE[@]}" \
    script="$PLUGIN_DIR/space.sh $sid" \
    click_script="aerospace workspace $sid" \
    icon=${SPACE_ICONS[i]} \
    icon.font="$FONT:Regular:15.0"
done

SEPARATOR=(
  icon="$SEPARATOR_ICON"
  icon.font="$FONT:Bold:18.0"
  icon.color="$LAVENDER"
  background.padding_left=5
  background.padding_right=5
  background.border_width=0
  label.drawing=off
)

sketchybar --add item separator left \
  --set separator "${SEPARATOR[@]}"
