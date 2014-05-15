#!/bin/sh

#  FV2_DCO.sh
#  
#
#  Created by Jeremiah Baker on 1/24/14.
#
sudo /usr/bin/fdesetup enable -inputplist < /Library/Keychains/fdesetup_admin_DCO.plist -keychain -norecoverykey -authrestart

sleep 5

exit 0
