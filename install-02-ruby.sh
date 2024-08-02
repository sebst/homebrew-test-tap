#!/bin/bash

source ~/.bashrc
/home/ubuntu/.asdf/bin/asdf plugin add ruby
/home/ubuntu/.asdf/bin/asdf install ruby 3.3.4
/home/ubuntu/.asdf/bin/asdf global ruby 3.3.4
gem update --system
echo "::endgroup::"

