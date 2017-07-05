#!/bin/bash
echo "Starting Only download packages"

apt-get install -d designate-pool-manager -y
apt-get install -d designate-zone-manager -y
apt-get install -d designate-api -y
apt-get install -d designate-central -y
apt-get install -d designate-mdns -y
apt-get install -d designate-agent -y

echo "=========Finish========="
