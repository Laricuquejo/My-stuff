# Installing Docker on Ubuntu

Docker is a platform for developing, shipping, and running applications inside containers. This guide will help you install Docker on an Ubuntu system.

## Prerequisites

- An Ubuntu machine with a user that has `sudo` privileges.

## Installation Steps

Follow these steps to install Docker on Ubuntu:

```sh
# Step 1: Update your package database
sudo apt-get update

# Step 2: Install required packages
sudo apt-get install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

# Step 3: Add Docker’s official GPG key
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# Step 4: Set up the Docker repository
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Step 5: Update the package database
sudo apt-get update

# Step 6: Install Docker Engine, CLI, and Containerd
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Step 7: Verify the installation
sudo docker --version

# Optional Step: Manage Docker as a non-root user
sudo usermod -aG docker $USER
newgrp docker

# Optional Step: Enable Docker to start on boot
sudo systemctl enable docker
