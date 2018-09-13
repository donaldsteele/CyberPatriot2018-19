#!/bin/bash

echo "This script will list all services!"

service --status-all | tee services.log

echo "Done listing services!"
