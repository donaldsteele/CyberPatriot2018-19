#!/bin/bash

echo "This script will look in files!"

sudo cat /etc/hosts | tee hosts.log

sudo cat /etc/passwd | tee UIDs.log

echo "Done looking in files!"
