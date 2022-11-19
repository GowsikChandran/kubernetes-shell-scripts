#!/bin/sh

sudo apt-get update

sudo apt-get install -y --allow-change-held-packages kubeadm=<version number>

kubeadm version

kubectl drain k8s-control --ignore-daemonsets

sudo kubeadm upgrade plan <version number>

sudo kubeadm upgrade apply <version number>

sudo apt-get update

sudo apt-get install -y --allow-change-held-packages kubelet=<version number> kubectl=<version number>

sudo systemctl daemon-reload

sudo systemctl restart kubelet

kubectl uncordon k8s-control

kubectl get nodes
