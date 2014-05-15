#!/bin/sh

#  enable_sharing.sh
#  
#
#  Created by Jeremiah Baker on 2/7/14.
#
sudo launchctl load -w /System/Library/LaunchDaemons/ssh.plist
sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.AppleFileServer.plist