#!/bin/bash


asdf plugin add ruby
asdf install ruby 3.3.4
asdf global ruby 3.3.4
gem update --system
echo "::endgroup::"

