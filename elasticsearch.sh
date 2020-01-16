#! /bin/bash

echo "######### update ##############"

sudo apt-get update

echo "################## Pulling github repo ###################"
### including vm.mac.count in systemctl.conf file ###

echo "vm.max_map_count=262144" >> /etc/sysctl.conf
git clone https://github.com/SulaymanSaleem/elastic-cluster

cd elastic-cluster

docker-compose up -d
