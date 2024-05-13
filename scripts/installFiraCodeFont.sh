#!/bin/bash

# Dependencies checking

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

if ! [ -f ~/Downloads/FiraCode.zip ]; then
	echo "Downloading FiraCode Font..."
	wget -P ~/Downloads/ https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/FiraCode.zip
fi

unzip ~/Downloads/FiraCode.zip -d ~/Downloads/FiraCode/

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

mv ~/Downloads/FiraCode/*.ttf ~/.local/share/fonts

echo "FiraCode font is installed now.\n\n\n"

echo "Clearing and regenerating font cache..."
fc-cache -f -v

echo "Verify the installation------------------------------------"
fc-list | grep "FiraCode"

echo "Cleanup Started..."
echo "Removing FiraCode.zip file..."
rm ~/Downloads/FiraCode.zip
echo "Removing FiraCode folder..."
rm -rf ~/Downloads/FiraCode/
