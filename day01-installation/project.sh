#!/bin/bash
# Day 2: What is Docker? Install Docker on Linux
# Author: <Nahid Hasan>
# Date: $(17/08/2025)
echo "Updating system..."
sudo apt-get update -y

echo "Installing prerequisites..."
sudo apt-get install ca-certificates curl gnupg lsb-release -y

echo "Adding Docker GPG key..."
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo "Adding Docker repository..."
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

echo "Installing Docker..."
sudo apt-get update -y
sudo apt-get install docker-ce docker-ce-cli containerd.io -y

echo "Verifying Docker installation..."
docker --version
