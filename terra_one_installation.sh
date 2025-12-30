#!/bin/bash
set -e

echo "Starting terra_one installation..."

# Update system
sudo apt update

# Install Python, IPython, Jupyter
sudo apt install -y python3 python3-pip python3-ipython jupyter-notebook

# Install Pyright via uv (recommended)
curl -LsSf https://astral.sh/uv/install.sh | sh
uv tool install pyright

# Install Docker
sudo apt install -y docker.io
sudo usermod -aG docker $USER

# Install Kubernetes
curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.34/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes.gpg
echo 'deb [signed-by=/etc/apt/keyrings/kubernetes.gpg] https://pkgs.k8s.io/core:/stable:/v1.34/deb/ /' | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt update
sudo apt install -y kubelet kubeadm kubectl

# Install Postman, Slack, FileZilla
sudo snap install postman slack
sudo apt install -y filezilla

# Install MongoDB
curl -fsSL https://www.mongodb.org/static/pgp/server-7.0.asc | sudo gpg -o /usr/share/keyrings/mongodb-server-7.0.gpg --dearmor
echo "deb [ arch=amd64 signed-by=/usr/share/keyrings/mongodb-server-7.0.gpg ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/7.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-7.0.list
sudo apt update
sudo apt install -y mongodb-org

echo "Installation complete. Reboot or log out/in to apply Docker group changes."   
