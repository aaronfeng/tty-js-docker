#!/bin/bash

#set -x
set -e

sudo apt-get update

sudo apt-get install -y curl

# Add the Docker repository key to your local keychain
# using apt-key finger you can check the fingerprint matches 36A1 D786 9245 C895 0F96 6E92 D857 6A8B A88D 21E9
sudo sh -c "curl https://get.docker.io/gpg | apt-key add -"

# Add the Docker repository to your apt sources list.
sudo sh -c "echo deb http://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list"

# Update your sources
sudo apt-get update

# Install, you will see another warning that the package cannot be authenticated. Confirm install.
sudo apt-get install -y lxc-docker

# build docker image using vagrant
cd /vagrant
sudo docker build -t tty-js .
echo "*********************************************"
echo "Start up tty-js inside a container run:"
echo "sudo docker run -p :7777:7777 tty-js"
echo "*********************************************"
