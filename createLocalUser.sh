#!/bin/sh

#  test_user.sh
#  
#
#  Created by Jeremiah Baker on 1/23/14.
#

/usr/bin/dscl . -create /Users/sysadmin

/usr/bin/dscl . -create /Users/sysadmin UserShell /bin/bash

/usr/bin/dscl . -create /Users/sysadmin RealName "Systems Administrator"

/usr/bin/dscl . -create /Users/sysadmin picture /Library/User\ Pictures/Fun/Medal.tif

/usr/bin/dscl . -create /Users/sysadmin UniqueID "997"

/usr/bin/dscl . -create /Users/sysadmin PrimaryGroupID 80

/usr/bin/dscl . -create /Users/sysadmin NFSHomeDirectory /Users/sysadmin

/usr/bin/dscl . -passwd /Users/sysadmin **********

/usr/bin/dscl . -append /Groups/admin GroupMembership sysadmin


#sleep after this

sleep 10

exit 0