#!/usr/bin/env bash
sudo apt install docker.io -y
sudo systemctl enable docker
sudo systemctl start docker
sudo apt install apt-transport-https curl -y
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" >> ~/kubernetes.list
sudo mv ~/kubernetes.list /etc/apt/sources.list.d
sudo apt update -y
sudo apt-get install kubeadm kubelet kubectl -y
sudo apt-mark hold kubeadm kubelet kubectl
sudo swapoff -a
