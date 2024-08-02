#!/bin/bash


export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"

if command -v brew &> /dev/null
then
    echo "brew is already installed"
    exit 0
fi

./install-01-dependencies.sh
./install-02-ruby.sh
./install-03-brew.sh

