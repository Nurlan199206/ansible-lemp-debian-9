#!/bin/bash
apt update && apt install git mc -y
mkdir /etc/ansible/roles
git clone https://github.com/Nurlan199206/ansible-lemp-debian-9 /etc/ansible/roles/ansible-lemp-debian-9
###########updating Ansible to latest version##################
echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" >> /etc/apt/source.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
sudo apt-get update
sudo apt-get install ansible