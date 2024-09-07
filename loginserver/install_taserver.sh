#!/bin/bash
# DO NOT RUN
# This script installs taserver during docker build
set -ex

# Get taserver
if [ ! -f taserver.zip ]; then
  wget -q -O taserver.zip "https://github.com/Griffon26/taserver/archive/refs/heads/master.zip"
  unzip -q taserver.zip
  mv "$(ls | grep taserver-*)" "taserver" 
else
  unzip -q taserver.zip
fi
