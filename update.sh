#!/bin/bash
cd $(dirname "$0") || exit
/opt/homebrew/bin/brew update && /opt/homebrew/bin/brew tap homebrew/bundle && /opt/homebrew/bin/brew bundle --file ./Brewfile > /tmp/dotfile-update.txt
