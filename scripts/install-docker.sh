#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

echo "📦 Updating the system..."
sudo apt-get update

echo "🔒 Installing required packages..."
sudo apt-get install -y ca-certificates curl gnupg

echo "🔑 Adding Docker's GPG key..."
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo tee /etc/apt/keyrings/docker.asc > /dev/null
sudo chmod a+r /etc/apt/keyrings/docker.asc

echo "📋 Adding Docker's repository..."
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

echo "📦 Updating package lists..."
sudo apt-get update

echo "🐳 Installing Docker and plugins..."
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

echo "🚀 Verifying Docker installation..."
docker --version
docker compose version

echo "✅ Installation completed successfully!"
