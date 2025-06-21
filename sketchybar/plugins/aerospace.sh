#!/bin/bash

source "$HOME/.config/sketchybar/colors.sh"

# $NAME is the SketchyBar item name, e.g., space.1
# $FOCUSED_WORKSPACE is the id of the focused workspace (e.g., 1, 2, ...)

# Extract workspace id from $NAME (remove 'space.' prefix)
workspace_id="${NAME#space.}"

if [ "$workspace_id" = "$FOCUSED_WORKSPACE" ]; then
  sketchybar --set "$NAME" \
    background.color=$ACCENT_COLOR \
    background.drawing=on \
    icon.color=$BAR_COLOR \
    label.color=$BAR_COLOR
else
  sketchybar --set "$NAME" \
    background.color=$ITEM_BG_COLOR \
    background.drawing=on \
    icon.color=$WHITE \
    label.color=$WHITE
fi 