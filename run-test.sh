#!/bin/bash

export ASDF_DIR=/home/ubuntu/.asdf
export PATH=/home/linuxbrew/.linuxbrew/bin:/home/ubuntu/.asdf/shims:/home/ubuntu/.asdf/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin

# brew --version
# ruby --version


brew test-bot --only-cleanup-before
brew test-bot --only-setup
brew test-bot --only-tap-syntax
# /home/linuxbrew/.linuxbrew/bin/brew test-bot --only-formulae