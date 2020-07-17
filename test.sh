#!/bin/sh
set -eu
eval "$(curl -sfLS https://import.pw)"

source "./confirm.sh"

if confirm "Do you like bash?"; then
  echo "Yay!"
else
  echo "Boo..."
fi


confirm_exec 'Run command? $* [yn]' echo foo
