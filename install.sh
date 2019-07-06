#!/bin/bash
set -ueo pipefail

###
# Installs Catalina Dynamic Wallpaper.
##

_THEMES_DIR="${HOME}/.local/share/wallpapers"

echo "Installing Catalina Dynamic Wallpaper..."

# Copy theme.
ls $_THEMES_DIR 2> /dev/null || mkdir -p $_THEMES_DIR
cp -r CatalinaDynamic $_THEMES_DIR

# Copy scripts
chmod +x ./bin/*
cp -r ./bin ${HOME}

# Start it.
${HOME}/bin/catalina --start

echo -e "Installation complete. See \e[1m~/bin/catalina --help\e[0m for more information."
