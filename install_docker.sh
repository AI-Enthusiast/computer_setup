#!/bin/bash

# Install required packages
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg

# Add Docker's official GPG key
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the Docker repository with the correct Ubuntu code name
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  jammy stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update the package index
sudo apt-get update

# Install Docker
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Create the docker group if it does not exist
sudo groupadd docker

# Add your user to the docker group
sudo usermod -aG docker $USER

# Log in to the new docker group (to avoid having to log out and log in again; but if not enough, try to reboot)
newgrp docker

#Check if Docker can be run without root:
docker run hello-world