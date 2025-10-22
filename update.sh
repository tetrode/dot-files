#!/bin/bash
cd "$(dirname "$0")/"  || exit
/opt/homebrew/bin/brew update && \
  /opt/homebrew/bin/brew upgrade &&
  /opt/homebrew/bin/brew bundle --file ./Brewfile > /tmp/dotfile-update.txt
cat /tmp/dotfile-update.txt

# Function key without the fn
defaults write "Apple Global Domain" "com.apple.keyboard.fnState" "1"

# fast key repeat
defaults write NSGlobalDomain KeyRepeat -int 1

# auto hide the dock
defaults write com.apple.dock autohide-delay -float 0.5;

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# enables indirect GLX, allowing some OpenGL applications to render using the GPU even when running over X11
defaults write org.xquartz.X11 enable_iglx -bool true

 # Safari download path in /tmp
defaults write com.apple.Safari DownloadsPath -string "/tmp"
