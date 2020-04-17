#! /bin/bash

echo "######### update ##############"

sudo apt-get update
echo "########## install docker #########"

sudo apt-get remove docker docker-engine docker.io -y
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker
docker --version
sudo apt install docker-compose -y
echo "################## Pulling github repo ###################"
### including vm.mac.count in systemctl.conf file ###

echo "vm.max_map_count=262144" >> /etc/sysctl.conf
sysctl -w vm.max_map_count=262144
git clone https://github.com/SulaymanSaleem/elastic-cluster

#cd elastic-cluster

#sudo docker-compose up -d
