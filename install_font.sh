#!/bin/bash

# error handling
set -euo pipefail

# color
reset=$'\e[0m'
cyan=$'\e[36m'

# Create the fonts directory if it doesn't exist
INSTALL_DIR_FOR_FONT=~/.local/share/fonts
mkdir -p $INSTALL_DIR_FOR_FONT

# Choose custom fonts which you intend to install
CUSTOMFONTS_DIR=$(cd "$(dirname "$0")" && pwd )/CustomFonts/

echo "${cyan}The following are available fonts list:${reset}"
ls "$CUSTOMFONTS_DIR"
read -p "${cyan}Please choose customfonts from the above:${reset}" FONT_TYPE

#raise error when there is an same directory in the target
if [ -d "$INSTALL_DIR_FOR_FONT/$FONT_TYPE/" ]; then
    echo "Error: The directory $INSTALL_DIR_FOR_FONT/$FONT_TYPE already exists."
    exit 1
fi

# Copy all font files from the fonts directory to the local fonts directory
SOURCE_DIR="$CUSTOMFONTS_DIR/$FONT_TYPE"
cp -r $SOURCE_DIR $INSTALL_DIR_FOR_FONT

# Update the font cache
fc-cache -fv

echo "Fonts installed successfully."
exit 0