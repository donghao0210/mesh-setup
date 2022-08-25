#!/bin/bash
sudo service network-manager stop
sudo ifconfig wlan0 down
sudo modprobe batman-adv

sudo batctl if add wlan0
sudo ifconfig bat0 mtu 1468

#config for wlan0
sudo iwconfig wlan0 mode ad-hoc
sudo iwconfig wlan0 essid MeshPi
sudo iwconfig wlan0 channel 1

sudo batctl gw_mode client

sudo ifconfig wlan0 up
sudo ifconfig bat0 up
