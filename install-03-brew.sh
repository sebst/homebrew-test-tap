#!/bin/bash


echo "::group::Install Brew"
/bin/bash -c "$(cat install-brew.sh)"
echo "::endgroup::"