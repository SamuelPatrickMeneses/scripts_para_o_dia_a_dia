#!/bin/bash
sudo apt remove lightdm -y
cd /home/samuel
rm -f .Xauthority
sudo apt --fix-broken install lightdm -y
sudo service lightdm restart


