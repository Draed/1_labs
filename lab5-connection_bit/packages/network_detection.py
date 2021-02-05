#!/usr/bin/env python

from scapy.all import *

# get all networks interfaces

# detect if wired interface is connected 
#@TODO
def wiredUp(interface):
    if interface is "up":
        return True
    else:
        return False

# else detect all network avalaible on wifi

def Search_wifi_network(interface='wlan0'):
    wifilist = []

    cells = wifi.Cell.all(interface)

    for cell in cells:
        wifilist.append(cell)

    return 
    

def PacketHandler(pkt) :
    ap_list = []
    # if pkt.haslayer (Dot11ProbeReq):
    if pkt.haslayer(Dot11) :
        if pkt.type == 0 and pkt.subtype == 8 :
            if pkt.addr2 not in ap_list :
                ap = {
                    "apName" : pkt.addr2,
                    'apSSID' : pkt.info
                }
                ap_list.append(ap)
                #print "AP MAC: %s with SSID: %s " %(pkt.addr2, pkt.info)

