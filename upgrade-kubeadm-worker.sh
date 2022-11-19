#!/bin/sh

# drain the worker from master node
# kubectl drain <node-name> --ignore-daemonsets --force

sudo apt-get update

sudo apt-get install -y --allow-change-held-packages kubeadm=<version number>

kubeadm version

sudo kubeadm upgrade node

sudo apt-get update

sudo apt-get install -y --allow-change-held-packages kubelet=<version number> kubectl=<version number>

sudo systemctl daemon-reload

sudo systemctl restart kubelet

# uncordon the worker node from master node
# kubectl uncordon k8s-control
# kubectl get nodes
