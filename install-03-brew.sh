#!/bin/bash


source ~/.bashrc

export PATH="$HOME/.asdf/shims:$PATH"

echo "::group::Install Brew"
/bin/bash -c "$(cat install-brew.sh)"
echo "::endgroup::"

export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"

sudo ln -s /home/linuxbrew/.linuxbrew/bin/brew /usr/bin/brew