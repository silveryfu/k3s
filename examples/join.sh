#!/usr/bin/env bash

if [ $# -eq 0 ]; then
    echo "Usage: ./join.sh \$TOKEN"
    exit 1
fi

# On a different node run the below. NODE_TOKEN comes from /var/lib/rancher/k3s/server/node-token
# on your server
sudo k3s agent --server https://myserver:6443 --token $1
