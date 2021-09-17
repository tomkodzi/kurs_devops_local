#!/bin/bash

#EXPORT DEBIAN_FRONTEND=noninteractive

echo Installing required packages
DEBIAN_FRONTEND=noninteractive sudo apt-get update
DEBIAN_FRONTEND=noninteractive sudo apt-get install -y vim curl wget make git mysql-server
#sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.7 1
#sudo update-alternatives --config python
sudo mysql -h localhost -u root -e "CREATE database TasksDB;"
sudo mysql -h localhost -u root -e "GRANT ALL PRIVILEGES ON TasksDB.* TO 'tasksdb'@'localhost' IDENTIFIED BY 'vagrant123';"

echo Done
