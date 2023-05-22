#!/bin/bash

set -e

# Prompt to update Chrome
function prompt_chrome_update() {
  read -p "Update Chrome? (Y/N): " confirm_chrome
  if [[ $confirm_chrome == "y" || $confirm_chrome == "Y" ]]; then
    echo "Updating Chrome..."
    run-chrome-update.sh
  fi
}

# Prompt for a reboot
function prompt_reboot() {
  read -p "Reboot the system? (Y/N): " confirm_reboot
  if [[ $confirm_reboot == "y" || $confirm_reboot == "Y" ]]; then
    echo "Rebooting the system..."
    reboot
  fi
}

# Prompt for system upgrade
function prompt_upgrade() {
  read -p "Perform system upgrade? (Y/N): " perform_upgrade
  if [[ $perform_upgrade == "y" || $perform_upgrade == "Y" ]]; then
    sudo apt dist-upgrade -y
    sudo apt autoremove --purge -y
    sudo apt clean

    echo "Upgrade completed."
    prompt_reboot
  fi
}

sudo apt update
prompt_chrome_update
prompt_upgrade
exit 0
