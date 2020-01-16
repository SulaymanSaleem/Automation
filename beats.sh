#! /bin/bash

echo "######## Pulling from github repo ########"
git clone https://github.com/SulaymanSaleem/ElasticBeats-Installs

cd ElasticBeats-Installs/centos

./filebeatyumInstall.sh
./metricbeatyumInstall.sh

