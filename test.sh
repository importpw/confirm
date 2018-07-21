#!/bin/sh
set -eu
test -f "$HOME/.import.sh" || curl -sfS https://import.pw > "$HOME/.import.sh"
source "$HOME/.import.sh"

source "./confirm.sh"

if confirm "Do you like bash?"; then
  echo "Yay!"
else
  echo "Boo..."
fi
