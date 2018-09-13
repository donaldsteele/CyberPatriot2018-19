#!/bin/bash

echo "This script will run updates!"

sudo apt-get purge crack*

sudo apt-get update

sudo apt-get upgrade

sudo apt-get install --only-upgrade bash

echo "Finished installing updates!"
