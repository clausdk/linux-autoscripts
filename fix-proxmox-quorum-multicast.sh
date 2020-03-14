#!/bin/bash
echo "This is the automated restart cluster script, you will need to run this on the other nodes."
echo "Start: Checking that multicast is set properly"
eval 'echo 0 >/sys/class/net/vmbr0/bridge/multicast_snooping'
echo "Done"
echo "Start: Running the cluster restart script"
eval 'systemctl start pve-cluster'
echo "Done"