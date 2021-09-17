#!/bin/bash

#EXPORT DEBIAN_FRONTEND=noninteractive

echo Installing required packages
DEBIAN_FRONTEND=noninteractive sudo apt-get update
DEBIAN_FRONTEND=noninteractive sudo apt-get install -y vim curl wget make git python3.7 python3-venv
#curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
#DEBIAN_FRONTEND=noninteractive apt-get install -y nodejs
#npm install -g npm@latest
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.7 1
sudo update-alternatives --config python
DEBIAN_FRONTEND=noninteractive sudo apt-get install python3-venv
#runuser -l vagrant -c "eval `ssh-agent -s`"
#runuser -l vagrant -c 'ssh-add /home/vagrant/.ssh/AWS-Aicor-CodeCommit-ISADevOpsR1'
#runuser -l vagrant -c 'git clone ssh://APKA2BHGYBHS4ACIMPET@git-codecommit.eu-central-1.amazonaws.com/v1/repos/isa-devops-r1-apps /home/vagrant'
git clone ssh://APKA2BHGYBHS4ACIMPET@repo/v1/repos/isa-devops-r1-apps
cd ~/isa-devops-r1-apps/services/backend/
cd /home/vagrant && python3 -m venv venv
source venv/bin/activate
cd /home/vagrant/isa-devops-r1-apps/services/backend/
python -m pip install -r requirements.txt
python scripts/setup_dev.py
source config.sh && python app.py

echo Done
