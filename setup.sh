#!/usr/bin/env bash

# https://github.com/jonaswouters/macos-configuration

# ==============
# Xcode CLI
# ==============
source ./setup/xcodecli.sh

# ==============
# Homebrew
# ==============
source ./setup/brew.sh

# ==============
# SSH & git
# ==============
source ./setup/ssh-manager.sh

# TODO
# - ssh config
# - asdf config http://asdf-vm.com/guide/getting-started.html#_3-install-asdf
```
asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
asdf install golang latest
asdf global golang latest
```
# - .zprofile
# - aliasses like 1password login
# - Fish "default" shell
