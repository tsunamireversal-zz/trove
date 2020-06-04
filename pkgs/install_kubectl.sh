#!/bin/bash
sudo rm /etc/apt/sources.list.d/kube.list 2>/dev/null
sudo apt-get update && sudo apt-get install -y apt-transport-https
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kube.list
sudo apt-get update
sudo apt-get install -y kubectl
