# designate_upgrade_testing

* topo:

![alt tag](https://github.com/trungnvfet/designate_upgrade_testing/blob/master/pics/designate_topo.png)

* ip_topo:

![alt tag](https://github.com/trungnvfet/designate_upgrade_testing/blob/master/pics/designate_ip.png)

* HOW TO UPGRADE:
================

This is a scenario which testing upgrade and count downtime during upgrade time.

Let's following below steps:

step 1: Preparing whole ocata packages on designate-node 1 and designate-node 2

# bash designate_script_download.sh

step 2: Push requests via script

# python designate.py

step 2: Starting upgrade for both designate nodes

# bash designate_script_testing.sh 

step 3: Drinking a coffee cup with girlfriend and wait.
