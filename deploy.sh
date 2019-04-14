#!/usr/bin/env bash
HOSTNAME = 192.168.1.38
USERNAME = pi
PASSWORD = ****

ssh $USERNAME@$HOSTNAME 'mkdir ~/raspberry-pi-apps'
scp ./video_server.py $USERNAME@$HOSTNAME:~/raspberry-pi-apps

ssh $USERNAME@$HOSTNAME 'python3 ~/raspberry-pi-apps/video_server.py'