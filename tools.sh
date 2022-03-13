#!/bin/bash
echo "*********** Install K3D ***************"
curl -L https://github.com/k3d-io/k3d/releases/download/v5.3.0/k3d-linux-amd64 -0 k3d
chmod +x k3d
mv k3d /usr/local/bin

echo "*********** Install Kubectl ************"
curl -L https://dl.k8s.io/release/v1.23.0/bin/linux/amd64/kubectl
chmod +x kubectl
mv kubectl /usr/local/bin