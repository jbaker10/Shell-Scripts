#!/bin/sh

#  ad_join_bare.sh
#  
#
#  Created by Jeremiah Baker on 4/7/14.
#
compName=`sudo scutil --get ComputerName`
/usr/sbin/dsconfigad -f -a $compName -domain dco-intranet.lan -ou "ou=Macs,dc=dco-intranet,dc=lan" -groups "domain admins,enterprise admins" -u ADusername -p ********* –lu localusername –lp *********