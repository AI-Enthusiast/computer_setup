#!/bin/bash

# Set working directory as bin
cd ~/bin || exit

# run all the following bash scripts
# install_docker.sh, install_slack.sh, install_tex-live.sh
./install_docker.sh
./install_slack.sh
./install_ssh_key.sh
