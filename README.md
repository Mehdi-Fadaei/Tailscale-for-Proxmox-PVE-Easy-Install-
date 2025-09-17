Tailscale-for-Proxmox-PVE-Easy-Install-
This repository provides a simple script to install **Tailscale** directly on your Proxmox PVE nodes and connect them securely to your own private network (Tailnet).   Once installed, all your nodes can be reached over Tailscale with free HTTPS 

Tailscale for Proxmox PVE (Easy Install)

This repository provides a simple script to install **Tailscale** directly on your Proxmox PVE nodes and connect them securely to your own private network (Tailnet).  
Once installed, all your nodes can be reached over Tailscale with **free HTTPS subdomains** and MagicDNS — no VPN configuration, no port forwarding, and no extra cost.

---

✨ Features

- 🔒 **Secure private network** between all your Proxmox nodes  
- 🌐 **Free HTTPS subdomains** like `https://pve1.yourtailnet.ts.net`  
- 🎯 **Direct web UI access** over Tailscale (no reverse proxy needed)  
- 🔁 Works across NAT, CGNAT, and multiple locations  
- 🖥️ Works with PVE 7.x, 8.x, 9.x (Debian-based systems)  

---

Requirements

- A free [Tailscale account](https://tailscale.com/) (Google, GitHub, or Microsoft login works)
- SSH access to your Proxmox nodes (root user)
- Debian/Proxmox host with internet connection

---

🚀 Installation

1. Clone this repository (or just download the script):

   bash
   git clone https://github.com/Mehdi-Fadaei/Tailscale-for-Proxmox-PVE-Easy-Install-.git
   cd tailscale-proxmox

   Upload this script to each node:

scp install-tailscale.sh root@192.xxx.xxx.xxx:/root/
ssh root@192.xxx.xxx.xxx "bash /root/install-tailscale.sh"


Repeat for all nodes.

Run the installer on each node:

bash
Code kopieren
bash install-tailscale.sh
Follow the login link that appears, sign in with your Tailscale account, and approve the node.

Enable MagicDNS & HTTPS once (only needs to be done once for your network):

Go to https://login.tailscale.com/admin/dns

Enable MagicDNS

Enable HTTPS Certificates

Access your nodes securely:

php-template
Code kopieren
https://<nodename>.<yourtailnet>.ts.net:8006
Example:

arduino
Code kopieren
https://pve1.tail12345.ts.net:8006
Recommended Setup
Give each node a unique hostname before running the script:

bash
Code kopieren
hostnamectl set-hostname pve1
systemctl restart tailscaled
Repeat for pve2, pve3, etc. so that each one has a unique subdomain.

Notes
Free plan friendly: Works even on Tailscale’s free plan.

Persistent: Survives Proxmox reboots and upgrades.

No port forwarding required: Perfect for home labs or remote datacenters.

Contributing
Feel free to fork and improve!
Pull requests for:

Auto-approving nodes with auth keys

Automatic hostname detection

ACL and tag examples
are very welcome.

License
MIT License – use, share, and modify freely.
