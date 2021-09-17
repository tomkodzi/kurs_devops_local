#!/bin/bash

#EXPORT DEBIAN_FRONTEND=noninteractive

echo Installing required packages
DEBIAN_FRONTEND=noninteractive apt-get update
DEBIAN_FRONTEND=noninteractive apt-get install -y vim curl wget make git nginx python3.7 nodejs
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
DEBIAN_FRONTEND=noninteractive apt-get install -y nodejs
npm install -g npm@latest
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.7 1
sudo update-alternatives --config python
runuser -l vagrant -c "eval `ssh-agent -s`"
runuser -l vagrant -c 'ssh-add /home/vagrant/.ssh/AWS-Aicor-CodeCommit-ISADevOpsR1'
runuser -l vagrant -c 'git clone ssh://APKA2BHGYBHS4ACIMPET@git-codecommit.eu-central-1.amazonaws.com/v1/repos/isa-devops-r1-apps /home/vagrant'
echo Done
