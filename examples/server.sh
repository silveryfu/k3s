#!/usr/bin/env bash

sudo k3s server &

sleep 2
# Kubeconfig is written to /etc/rancher/k3s/k3s.yaml
sudo k3s kubectl get node
echo token: $(cat /var/lib/rancher/k3s/server/node-token)
