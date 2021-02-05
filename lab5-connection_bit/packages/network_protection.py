#!/usr/bin/env python

# Decide what kind of network is more secure 
# wired > wifi > 802.1x > WPA2-PSK > captive portal 

def get_best_wifi_networks(wifiSsidList):
    ''' return the network name (ssid to connect)
    '''
    #@TODO define the best wifi SSID to choose