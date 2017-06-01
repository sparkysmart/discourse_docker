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
#cp samples/standalone.yml containers/app.yml

# scp /var/www/market/deploy/discourse/dev.yml ubuntu@beta.slickblox.com:/var/discourse/containers/app.yml
scp ~/eslam/work/market/deploy/discourse/dev.yml ubuntu@beta.slickblox.com:/var/discourse/containers/app.yml


./discourse-setup
