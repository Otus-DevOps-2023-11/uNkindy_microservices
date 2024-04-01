#!/bin/bash

rm -rf /etc/apt/keyrings/kubernetes-apt-keyring.gpg
curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.28/deb/Release.key | gpg --trust-model always --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
