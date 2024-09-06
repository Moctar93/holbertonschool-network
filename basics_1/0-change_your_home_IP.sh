#!/bin/bash

# Define the changes we want to make
LOCALHOST_ENTRY="127.0.0.2 localhost"
FACEBOOK_ENTRY="8.8.8.8 facebook.com"

# Backup the current /etc/hosts file before making any changes
sudo cp /etc/hosts /etc/hosts.backup

# Remove any existing entries for localhost and facebook.com to avoid duplicates
sudo sed -i '/localhost/d' /etc/hosts
sudo sed -i '/facebook.com/d' /etc/hosts

# Add the new entries to /etc/hosts
echo "$LOCALHOST_ENTRY" | sudo tee -a /etc/hosts
echo "$FACEBOOK_ENTRY" | sudo tee -a /etc/hosts

echo "Updated /etc/hosts successfully."

