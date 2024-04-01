#!/bin/bash

# Update package index
sudo apt update

# Install dependencies to enable Docker repository
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

# Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add Docker repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Update package index again
sudo apt update

# Install Docker Engine
sudo apt install -y docker-ce docker-ce-cli containerd.io

# Verify Docker installation
sudo docker --version

# Start and enable Docker service
sudo systemctl start docker
sudo systemctl enable docker
