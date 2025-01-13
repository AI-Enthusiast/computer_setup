#!/bin/bash

# Set working directory
cd ~/Downloads || exit

# Download the TeX Live installer
curl -L -o install-tl-unx.tar.gz https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz

# Extract the installer
zcat < install-tl-unx.tar.gz | tar xf -

# Change to the installer directory
cd install-tl-20* || exit

# Run the installer non-interactively
sudo perl ./install-tl --no-interaction

# Add TeX Live to the PATH
echo "export PATH=/usr/local/texlive/2024/bin/x86_64-linux:\$PATH" >> ~/.profile
source ~/.profile