#!/bin/sh

#  add_search_domains.sh
#  
#
#  Created by Jeremiah Baker on 3/25/14.
#
networksetup -setsearchdomains Thunderbolt\ Ethernet dco-intranet.lan dce-intranet.lan
networksetup -setsearchdomains USB\ Ethernet dco-intranet.lan dce-intranet.lan
networksetup -setsearchdomains Wi-Fi dco-intranet.lan dce-intranet.lan