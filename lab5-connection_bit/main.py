#!/usr/bin/env python

from pynotifier import Notification

from packages.connection import *
from packages.network_detection import *
from packages.network_protection import *
from packages.restrict import *
from packages.scan import *


# default variables :
wifiIface = "wlan0"
wiredIface = "eth0"

class ConnectNetworkion_manager:
    def __init__(self, method, network ):
        self.__method = method
        self.__networkName = networkName

# Part 1 : Network Detection 

if wiredUp(interface):
    #@TODO get the network name
    networkName = "test"
    network = Network("wired", networkName)
else:
    wifiSsidList = Search_wifi_network(interface=wifiIface)
    networkName = get_best_wifi_networks(wifiSsidList)
    network = Network("wifi", networkName)
    print("best wifi network is : " + network)

print("connecting to the network with : " + network.method)

# Notification(
# 	title="network connection"
# 	description="connecting to the network with : " + network.method,
# 	#icon_path='path/to/image/file/icon.png', # On Windows .ico is required, on Linux - .png
# 	duration=5,                              # Duration in seconds
# 	urgency=Notification.URGENCY_CRITICAL
# ).send()

# Part 2 : Scan

if network.method is "wired":
    print("scan wired network")

else:
    print("scan wifi network")
    sniff(iface=wifiIface, prn=PacketHandler)
    # Layer 1 scan :

    # Get full 802.11 packages

    # Get all accesspoint (SSID + BSSID) arround me

    # Get all clients (with managment frame) arround me

    # client mac
    # client OS
    # client hostname


# Part 3 : Network Protection Level


# Part 4 : Connection



# Layer 2 scan :

# get my IP

# get my default gateway 

# if different : get my web portal address

## Part 4.1 : normal connection 

# import config for : 

# captive portal

# 802.1x 

# PSK

## Part 4.2 : forced connection 

# force to connect to : Captive Portal 

# DNS tunnel

# mac stealing 

# Part 5 : Restrict

