#!/bin/bash
# install-tailscale.sh - Install and configure Tailscale on Proxmox node

set -e

echo "Installing Tailscale..."
apt update && apt install -y curl
curl -fsSL https://tailscale.com/install.sh | sh

echo "Starting and enabling Tailscale..."
systemctl enable --now tailscaled

echo "Authenticating this node..."
tailscale up

echo "Done! Open the login URL above, authorize this node, and repeat for all nodes."
echo "Once all nodes are connected, enable MagicDNS & HTTPS in Tailscale admin panel.
