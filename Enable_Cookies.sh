#!/bin/bash

echo "This script will enable cookies!"

sudo sed -i '$a net.ipv4.tcp_syncookies=1' /etc/sysctl.conf

sudo sed -i '/^net/ipv4/tcp_syncookies/ c\net/ipv4/tcp_syncookies=1'  /etc/login.defs

echo "Done enabling cookies!"
