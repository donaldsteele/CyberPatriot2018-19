#!/bin/bash

echo "This script will uninstall bad programs!"

sudo apt-get -y purge pure-ftpd*

sudo apt-get -y purge ftp*

sudo apt-get -y purge samba*

sudo apt-get -y purge nmap*

sudo apt-get -y purge zenmap*

sudo apt-get -y purge hydra*

sudo apt-get -y purge john*

sudo apt-get -y purge nikto*

sudo apt-get -y purge netcat*

sudo apt-get -y purge wireshark*

sudo apt-get -y purge weplab*

sudo apt-get -y purge pyrit*

sudo apt-get -y purge ophcrack*

sudo apt-get -y purge wesnoth*

sudo apt-get -y purge minetest*

echo "Done uninstalling bad programs!"
