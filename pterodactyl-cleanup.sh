#!/bin/bash
echo "Printing text with newline"
service wings stop
service docker stop
rm -rf /var/lib/docker/containers/*
rm -rf /var/lib/docker/vfs/dir/*
rm /var/lib/pterodactyl -R
service docker start
