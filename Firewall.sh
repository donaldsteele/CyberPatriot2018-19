#!/bin/bash

echo "This script will turn on the firewall!"

sudo apt-get install ufw -y

sudo ufw enable

echo "Done turning on the firewall!"
