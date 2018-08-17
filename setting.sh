#!/bin/bash

# this file must be installed at worker node

#edit nameserver 
cat /etc/resolv.conf > resolv_config
echo "nameserver 8.8.8.8">resolv_config
sudo mv resolv_config /etc/resolv.conf

# install python
sudo apt-get update
sudo apt-get -y upgrade
sudo apt install -y python python-pip
sudo apt install -y ceph-common git jq nmap bridge-utils ipcalc
sudo pip install --upgrade pip==9.0.3
sudo pip install 'pyOpenSSL==16.2.0'
sudo pip install 'python-openstackclient'

# remove python3
sudo apt remove python3


