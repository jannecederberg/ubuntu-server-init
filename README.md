# Server initialization for Ubuntu

## Tested on

- Ubuntu 12.04 LTS (Precise)
- Ubuntu 14.04 LTS (Trusty)

## In a nutshell

The purpose of this Ansible playbook combo is to initialize a new Debian/Ubuntu based server by performing the following configurations:

- run apt-get update and upgrade
- deny SSH login as root
- allow SSH login only using public key
- set SSH port to other than 22 if desired
- install and configure fail2ban
- configure iptables to only allow SSH (22 or custom), HTTP (80) and HTTPS (443) from outside
- install and configure LogWatch to monitor server and send email notifications
- create admin user with sudo permission
- install basic tools such as git, vim, screen, curl and others
- set some basic bash aliases and create ~/.aliases folder for more
- set name and email in ~/.gitconfig
- set server timezone