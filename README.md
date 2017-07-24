# designate_upgrade_testing

* topo:

![alt tag](https://github.com/trungnvfet/designate_upgrade_testing/blob/master/pics/designate_topo.png)

* ip_topo:

![alt tag](https://github.com/trungnvfet/designate_upgrade_testing/blob/master/pics/designate_ip.png)


* HOW TO UPGRADE:

This is a scenario which testing upgrade and count downtime during upgrade time.

Let's following below steps:

Step 1: Preparing whole ocata packages on designate-node 1 and designate-node 2

 ``bash designate_script_download.s``
 
Note: This step just download files on the both nodes

Step 2: Push requests via script

  ``python designate.py``

Step 3: Starting upgrade for both designate nodes

  ``bash designate_script_testing.sh`` 

Step 4: Drinking a coffee cup with wait until finish.
