#!/bin/bash
echo "Starting upgrade ..............."

service designate-* stop
apt-get install --upgrade python-oslo.middleware -y
apt-get -o Dpkg::Options::="--force-confold" -y install --only-upgrade designate-pool-manager
apt-get -o Dpkg::Options::="--force-confold" -y install --only-upgrade designate-zone-manager
apt-get -o Dpkg::Options::="--force-confold" -y install --only-upgrade designate-mdns
apt-get -o Dpkg::Options::="--force-confold" -y install --only-upgrade designate-central
apt-get -o Dpkg::Options::="--force-confold" -y install --only-upgrade designate-api
apt-get -o Dpkg::Options::="--force-confold" -y install --only-upgrade designate-agent
service designate-pool-manager restart
service designate-zone-manager restart
service designate-agent restart
service designate-mdns restart
service designate-central restart
service designate-api restart

echo "NEXT TO DONE"
