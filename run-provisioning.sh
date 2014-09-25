#!/bin/bash

echo ""
echo "=======[ INITIALIZING SERVER ]======="
echo ""
echo "  - When prompted for SSH password, give root password on target host"
echo ""
ansible-playbook --inventory-file=hosts --ask-pass --connection=paramiko 01-server-init.yml

echo ""
echo "=======[ ACTIVATING IPTABLES FIREWALL RULES ]========"
echo ""
echo "  - When prompted for SSH password, give private key password"
echo "  - When prompted for sudo password, give the password defined in admin.password"
echo ""
ansible-playbook --inventory-file=hosts --ask-pass --ask-sudo-pass --connection=paramiko -e ansible_ssh_port=2222 02-activate-firewall.yml
