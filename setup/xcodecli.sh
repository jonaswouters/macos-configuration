#!/usr/bin/env bash

echo "Install Xcode Command Line Tools."

if ! xcode-select --print-path &> /dev/null; then
  xcode-select --install &> /dev/null

  # Wait until the XCode Command Line Tools are installed
  until xcode-select --print-path &> /dev/null; do
    sleep 5
  done

  # Point the `xcode-select` developer directory to
  # the appropriate directory from within `Xcode.app`
  # https://github.com/alrra/dotfiles/issues/13
  sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer
  
  sudo xcodebuild -license

else
  echo "Xcode Command Line Tools already installed."
fi