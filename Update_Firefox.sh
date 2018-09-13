#!/bin/bash

echo "This script will update firefox!"

sudo apt-get -y purge firefox

sudo apt-get install firefox -y

echo "Done updating firefox!"
