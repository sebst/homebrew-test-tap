#!/bin/bash

export ASDF_DIR=/home/ubuntu/.asdf
export PATH=/home/ubuntu/.asdf/shims:/home/ubuntu/.asdf/bin:/home/linuxbrew/.linuxbrew/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin

# brew --version
# ruby --version

alias ruby="/home/ubuntu/.asdf/shims/ruby"
alias brew="/home/linuxbrew/.linuxbrew/bin/brew"


PATH=$PATH brew test-bot --only-cleanup-before
PATH=$PATH brew test-bot --only-setup
PATH=$PATH brew test-bot --only-tap-syntax
# /home/linuxbrew/.linuxbrew/bin/brew test-bot --only-formulae