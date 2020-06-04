#!/bin/bash
ALREADY=`file /usr/bin/docker|grep ELF|wc -l`
if [ $ALREADY -eq 0 ];then
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update

sudo apt-get install -y docker-ce docker-ce-cli containerd.io


sudo systemctl start docker
sudo systemctl enable docker
else
  echo "[*] DOCKER already installed."
fi



