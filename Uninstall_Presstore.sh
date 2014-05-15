#!/bin/sh

#  Uninstall_Presstore.sh
#  
#
#  Created by Jeremiah Baker on 5/5/14.
#
sudo /usr/local/aw/stop-server;
sleep 5;
sudo sh /usr/local/aw/uninstall.sh;
sleep 8;
sudo rm -rf /usr/local/aw;

exit 0