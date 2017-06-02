#!/bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install git
wget -qO- https://get.docker.com/ | sh
sudo usermod -aG docker ubuntu
sudo -s
mkdir /var/discourse
git clone https://github.com/sparkysmart/discourse_docker.git /var/discourse/
cd /var/discourse
sudo chmod 777 -R /var/discourse/containers/
echo 'we finshed preparing environment of discourse , grap app.yml file and start Bootstrab'
