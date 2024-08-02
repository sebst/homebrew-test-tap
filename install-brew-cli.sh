#!/bin/bash



export DEBIAN_FRONTEND=noninteractive

apt-get install -y --no-install-recommends \
    build-essential \
    curl \
    file \
    git \
    sudo \
    unzip \
    wget \
    xz-utils

/bin/bash -c "$(cat install-brew.sh)"