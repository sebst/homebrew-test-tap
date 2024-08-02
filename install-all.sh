#!/bin/bash


if command -v brew &> /dev/null
then
    echo "brew is already installed"
    exit 0
fi

./install-01-dependencies.sh
./install-02-ruby.sh
./install-03-brew.sh

