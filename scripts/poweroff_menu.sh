#!/bin/bash

# Display the power menu icon
if [ -z "$BLOCK_BUTTON" ]; then
  echo ""  # Unicode for power icon
  exit 0
fi

# Handle click event
if [ "$BLOCK_BUTTON" -eq 1 ]; then
  # Display a menu with options using rofi
  CHOICE=$(echo -e "Shutdown\nRestart\nLogout" | rofi -dmenu -p "Select action:")

  # Perform the action based on the user's choice
  case "$CHOICE" in
      Shutdown)
          systemctl poweroff
          ;;
      Restart)
          systemctl reboot
          ;;
      Logout)
          i3-msg exit
          ;;
      *)
          # Do nothing if the choice is invalid
          ;;
  esac
fi

echo ""
