#!/bin/sh
cat ./*.pub >> ~/.ssh/authorized_keys
echo "keyring update done. Here is keyring lists..."
cat ~/.ssh/authorized_keys | awk '{print $3}'
