APPLE=(
  icon="$APPLE_ICON"
  icon.color="$LAVENDER"
  icon.font="$ICON_FONT:Regular:18.0"
  icon.padding_left=0
  label.drawing=off
  background.padding_left=0
  background.padding_right=8
  click_script="sketchybar --set apple popup.drawing=toggle"
  popup.background.color="$BG_PRI_COLR"
)

MENU_PREFS=(
  icon="$PREFS_ICON"
  label="System Settings"
  click_script="open -a 'System Settings'; sketchybar --set apple popup.drawing=off"
)

sketchybar --add item apple left \
  --set apple "${APPLE[@]}"

sketchybar --add item apple.menu popup.apple \
  --set apple.menu "${MENU_PREFS[@]}"
