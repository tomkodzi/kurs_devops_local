#!/bin/bash

ARG DEBIAN_FRONTEND=noninteractive

echo Installing required packages
DEBIAN_FRONTEND=noninteractive sudo apt-get update
DEBIAN_FRONTEND=noninteractive sudo apt-get install -y vim curl wget make git nginx nodejs
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
DEBIAN_FRONTEND=noninteractive sudo apt-get install -y nodejs
sudo npm install -g npm@latest
git clone ssh://APKA2BHGYBHS4ACIMPET@repo/v1/repos/isa-devops-r1-apps
cd /home/vagrant/isa-devops-r1-apps/services/frontend
echo Build NPM
npm i
npm run build
echo Done

echo Config nginx
# copy files from `build/` directory to the nginx share directory
sudo cp -a build/. /usr/share/nginx/html

# remove existing nginx conf
#sudo rm /etc/nginx/conf.d/default.conf

# put your own nginx configuration to the desired location
sudo cp /home/vagrant/tmp/nginx.conf /etc/nginx/sites-available/default

# restart nginx server
sudo service nginx restart

