#!/bin/bash

# Define the path to the torrc file
TORRC_PATH="/usr/local/etc/tor/torrc"

# Use sudo to ensure we have the necessary permissions to edit the file
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root or with sudo."
  exit
fi

# Ensure the file has read permissions (chmod u+rw gives read and write permissions)
sudo chmod u+rw "$TORRC_PATH"

# Make backup of the original file just in case
cp "$TORRC_PATH" "$TORRC_PATH.bak"

# Edit the file to uncomment the ControlPort 9051 line (line 57)
# and CookieAuthentication 1 (line 61) automatically using sed

# Uncomment ControlPort 9051
sed -i.bak '57s/^#//' "$TORRC_PATH"

# Uncomment and change CookieAuthentication 0 to CookieAuthentication 1 (4 lines after line 57)
sed -i.bak '61s/^#//' "$TORRC_PATH"
sed -i.bak '61s/CookieAuthentication 0/CookieAuthentication 1/' "$TORRC_PATH"


#VERIFY CONFIGURATION FILE
tor -f /usr/local/etc/tor/torrc --verify-config



echo "Changes applied to $TORRC_PATH. Backup created at $TORRC_PATH.bak."
