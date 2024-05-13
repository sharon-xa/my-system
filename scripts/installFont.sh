#!/bin/bash

# Dependencies checking
# -----------------------------------------------------------------------------
RED='\033[0;31m'
NC='\033[0m' # No Color

if ! command -v wget &>/dev/null; then
	echo -e "${RED}wget could not be found"
	echo -e "${RED}please install wget and try again."
	exit 1
fi

if ! command -v unzip &>/dev/null; then
	echo -e "${RED}unzip could not be found"
	echo -e "${RED}please install unzip and try again."
	exit 1
fi

if ! command -v fc-cache &>/dev/null; then
	echo -e "${RED}unzip could not be found"
	echo -e "${RED}please install fc-cahce and try again."
	exit 1
fi

# Make sure that the font folder exists
# -----------------------------------------------------------------------------
if ! [ -d ~/.local/ ]; then
	mkdir ~/.local/
	echo "~/.local/ created."
else
	echo "~/.local/ folder already exist."
fi

if ! [ -d ~/.local/share/ ]; then
	mkdir ~/.local/share/
	echo "~/.local/share/ created."
else
	echo "~/.local/share/ folder already exist."
fi

if ! [ -d ~/.local/share/fonts ]; then
	mkdir ~/.local/share/fonts
	echo "~/.local/share/fonts created."
else
	echo "~/.local/share/fonts folder already exist."
fi

# Download font
# -----------------------------------------------------------------------------
if ! [ -f ~/Downloads/Font.zip ]; then
	echo "Downloading Font..."
	wget $1 -O Font.zip
	mv Font.zip ~/Downloads/
fi

# unzip the font
# -----------------------------------------------------------------------------
unzip ~/Downloads/Font.zip -d ~/Downloads/Font/

# move the font into the default fonts directory
# -----------------------------------------------------------------------------
mv ~/Downloads/Font/*.ttf ~/.local/share/fonts

# Regenerate cache
# -----------------------------------------------------------------------------
echo "Clearing and regenerating font cache..."
fc-cache -f -v

echo -e "The font is installed now.\n\n\n"

# Cleanup
# -----------------------------------------------------------------------------
echo "Cleanup Started..."
echo "Removing Font.zip file..."
rm ~/Downloads/Font.zip
echo "Removing Font folder..."
rm -rf ~/Downloads/Font/
