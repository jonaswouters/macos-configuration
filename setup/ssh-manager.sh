#!/usr/bin/env bash

sudo curl -fL https://github.com/omegion/ssh-manager/releases/latest/download/ssh-manager-darwin-arm64 -o /usr/local/bin/ssh-manager
sudo chmod +x /usr/local/bin/ssh-manager

mkdir -p ~/.ssh/keys

