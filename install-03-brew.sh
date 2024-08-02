#!/bin/bash


source ~/.bashrc

export PATH="$HOME/.asdf/shims:$PATH"

echo "::group::Install Brew"
/bin/bash -c "$(cat install-brew.sh)"
echo "::endgroup::"