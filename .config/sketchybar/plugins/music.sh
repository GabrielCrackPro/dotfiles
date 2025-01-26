# sleep 0.5

PLAYING=$(~/.config/sketchybar/plugins/spotify.sh)

if [[ $PLAYING != "None" ]]; then
  if [[ $PLAYING == "En Pausa" ]]; then
    sketchybar --set $NAME label.drawing=on icon.drawing=on
  else
    sketchybar --set $NAME label.drawing=on icon.drawing=on
    sketchybar --set $NAME label="$PLAYING"
  fi
else
  sketchybar --set $NAME label.drawing=off icon.drawing=off
fi
