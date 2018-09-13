#!/bin/bash

echo "This script will locate all media file !"

sudo locate -i *.mp3 *.m4b *.mov *.jpg *.jpeg *.png *.gif *.pdf *.txt *.avi *.mov *.mp4  | tee media.log

echo "Done locating all media files!"
