#!/bin/bash

echo "Disablin the guest user!"

sudo cp /etc/lightdm/lightdm.conf /etc/lightdm/lightdm.conf_old 

sudo sed -i '$a allow-guest=false' /etc/lightdm/lightdm.conf

sudo mkdir /etc/lightdm/lightdm.conf.d

sudo sh -c 'printf "[SeatDefaults]\nallow-guest=false\n" > /etc/lightdm/lightdm.conf.d/50-no-guest.conf'

echo "Done disabling guest!"
