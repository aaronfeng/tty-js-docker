#!/bin/bash

apt-get install -y python-software-properties python g++ make
echo "deb http://archive.ubuntu.com/ubuntu precise universe" >> /etc/apt/sources.list
add-apt-repository -y ppa:chris-lea/node.js
apt-get update
apt-get install -y nodejs
npm install tty.js
