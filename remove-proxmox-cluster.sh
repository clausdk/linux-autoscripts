service pve-cluster stop
service corosync stop
pmxcfs -l
rm /etc/pve/corosync.conf
rm /etc/corosync/* -R
killall pmxcfs
systemctl start pve-cluster
pvecm delnode pve-mini
cd /etc/pve/nodes pve-mini
