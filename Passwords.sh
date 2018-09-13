#!/bin/bash

echo "This script will configure passwords!"

sudo apt-get install libpam-cracklib -y

echo "Done installing PAM cracklib!"


#Configure Password Aging Controls

sudo cp /etc/login.defs /etc/login.defs_old

sudo sed -i '/^PASS_MAX_DAYS/ c\PASS_MAX_DAYS   90' /etc/login.defs

sudo sed -i '/^PASS_MIN_DAYS/ c\PASS_MIN_DAYS   10'  /etc/login.defs

sudo sed -i '/^PASS_WARN_AGE/ c\PASS_WARN_AGE   7' /etc/login.defs

echo "Done changing password aging!"


#Force strong passwords

sudo cp /etc/pam.d/common-password /etc/pam.d/common-password_old

sudo sed -i -e 's/try_first_pass sha512/try_first_pass sha512 remember=5 minlen=8/' /etc/pam.d/common-password

sudo sed -i -e 's/difok=3/difok=3 ucredit=-1 lcredit=-1 dcredit=-1 ocredit=-1/' /etc/pam.d/common-password


# Password Authentication

sudo cp /etc/pam.d/common-auth /etc/pam.d/common-auth_old

sudo sed -i '$a auth required pam_tally2.so deny=5 onerr=fail unlock_time=1800' /etc/pam.d/common-auth

echo "Done changing password authentication!"
