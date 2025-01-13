#!/bin/bash

# install openssh-server
sudo apt update
sudo apt install openssh-server

# verify ssh service is running
sudo systemctl status ssh

# allow ssh through firewall
sudo ufw allow ssh


