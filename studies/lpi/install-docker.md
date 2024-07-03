# Installing Docker on Ubuntu

This guide will walk you through the process of installing Docker on an Ubuntu server.

## Step-by-Step Installation

```sh
# Step 1: Update Package Database
sudo apt update

# Step 2: Install Prerequisite Packages
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common

# Step 3: Add Docker’s GPG Key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Step 4: Verify the GPG Key
sudo apt-key fingerprint 0EBFCD88

# Step 5: Add Docker Repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Step 6: Update Package Database Again
sudo apt update

# Step 7: Install Docker Packages
sudo apt install -y docker-ce docker-ce-cli containerd.io

# Step 8: Add User to Docker Group
sudo usermod -aG docker cloud_user
