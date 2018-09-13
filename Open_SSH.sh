#!/bin/bash

echo "This script will install and configure open_ssh!"

sudo apt-get -y install openssh-server

sudo sed -i '/^PermitRootLogin/ c\PermitRootLogin no' /etc/ssh/sshd_config

sudo sed -i '/^LoginGraceTime/ c\LoginGraceTime 5' /etc/ssh/sshd_config

sudo sed -i '/^LogLevel/ c\LogLevel VERBOSE' /etc/ssh/sshd_config

sudo sed -i '/^PermitEmptyPasswords/ c\PermitEmptyPasswords no' /etc/ssh/sshd_config

echo "Done configuring Open_SSH!"
