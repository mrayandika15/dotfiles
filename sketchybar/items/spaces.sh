#!/bin/bash

sketchybar --add event aerospace_workspace_change

# Define static icons for each space (using SketchyBar app font or common SF Symbols)
# 1. Message:  (nf-mdi-message)
# 2. Browser:  (nf-fa-firefox) or 􀍈 (SF Symbol for browser)
# 3. Terminal: 􀌤 (SF Symbol for terminal)
# 4. Code: 􀫦 (SF Symbol for code)
# 5. Player: 􀑪 (SF Symbol for play/music) -- not used, as you requested only 4

# You can adjust the icon values below to match your font and preference
SPACE_ICONS=(
  "💬"   # Message (e.g., chat bubble, try 􀌚 or 􀍍)
  "🌐"   # Browser (e.g., globe, try 􀍈)
  "🛠️"   # Terminal (e.g., terminal, try 􀌤)
  "♫"   # Code (e.g., chevron.left.slash.chevron.right, try 􀫦)
)

for i in {1..4}; do
  sid=$i
  icon="${SPACE_ICONS[$((i-1))]}"

  sketchybar --add item space.$sid left \
    --subscribe space.$sid aerospace_workspace_change \
    --set space.$sid \
      background.color=$ITEM_BG_COLOR \
      background.corner_radius=5 \
      background.height=24 \
      background.drawing=on \
      label="$sid" \
      icon="$icon" \
      icon.font="SF Pro:Semibold:15.0" \
      label.color=$ACCENT_COLOR \
      icon.color=$ACCENT_COLOR \
      click_script="aerospace workspace $sid" \
      script="$HOME/.config/sketchybar/plugins/aerospace.sh $sid"
done

sketchybar --add item space_separator left \
  --set space_separator icon="􀆊" \
    icon.color=$ACCENT_COLOR \
    icon.padding_left=4 \
    label.drawing=off \
    background.drawing=off