#!/bin/bash



echo "::group::Install Dependencies"
export DEBIAN_FRONTEND=noninteractive
sudo apt-get install -y --no-install-recommends \
    build-essential \
    curl \
    file \
    git \
    sudo \
    unzip \
    wget \
    xz-utils
echo "::endgroup::"



# sudo apt update
# sudo apt install -y build-essential libssl-dev libreadline-dev zlib1g-dev git libffi-dev libyaml-dev


# # Install rbenv
# git clone https://github.com/rbenv/rbenv.git ~/.rbenv
# echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
# echo 'eval "$(rbenv init -)"' >> ~/.bashrc
# exec $SHELL

# # Install ruby-build as an rbenv plugin:
# git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
# echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
# exec $SHELL


# rbenv install  3.3.4


rm -rf ~/.asdf


echo "::group::Ruby Install with asdf"
sudo apt-get update
sudo apt-get install -y --no-install-recommends git-core zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev

cd
git clone https://github.com/excid3/asdf.git ~/.asdf
echo '. "$HOME/.asdf/asdf.sh"' >> ~/.bashrc
echo '. "$HOME/.asdf/completions/asdf.bash"' >> ~/.bashrc
echo 'legacy_version_file = yes' >> ~/.asdfrc
echo 'export EDITOR="code --wait"' >> ~/.bashrc
exec $SHELL

asdf plugin add ruby
asdf install ruby 3.3.4
asdf global ruby 3.3.4
gem update --system
echo "::endgroup::"


echo "::group::Ruby"
which ruby
ruby -v
echo "::endgroup::"



echo "::group::Install Brew"
/bin/bash -c "$(cat install-brew.sh)"
echo "::endgroup::"