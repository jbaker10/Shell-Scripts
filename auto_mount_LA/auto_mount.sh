#!/bin/sh

#  auto_mount.sh
#  
#
#  Created by Jeremiah Baker on 5/14/14.
#


## The directory variables are where you specify the different shares you want to mount, this can be as many as you want

dir1=/Volumes/jeremiah.baker
dir2=/Volumes/Shared
dir3=/Volumes/Private
dir4=/Volumes/DOCS

## The mount variables are where you specify the different shares you want to mount, this can be as many as you want

mount1=`mount_smbfs //jeremiah.baker@va1srvgenfs01.dco-intranet.lan/Users/jeremiah.baker /Volumes/jeremiah.baker`
mount2=`mount_smbfs //jeremiah.baker@va1srvgenfs01.dco-intranet.lan/Shared /Volumes/Shared`
mount3=`mount_smbfs //jeremiah.baker@va1srvgenfs01.dco-intranet.lan/Shared/IT/Private /Volumes/Private`
mount4=`mount_smbfs //jeremiah.baker@va1srvgenfs01.dco-intranet.lan/Shared/IT/Private/DOCS /Volumes/DOCS`


## Sets a while loop so if it isn't on the network, it tries for 1 minute by pinging an internal resource

i=1
while [ $i -lt 12 ]
do
    i=`expr $i + 1`
    if ping -q -c dco-intranet.lan; then
        if mount | grep $dir1 > /dev/null; then
            echo "$dir1 is already mounted"
        else
            echo "Share not mounted"
            mounts[$[${#mounts[@]}+1]]=mount1
        fi
        if mount | grep $dir2 > /dev/null; then
            echo "$dir2 is already mounted"
        else
            echo "Share already mounted"
            mounts[$[${#mounts[@]}+1]]=mount2
        fi
        if mount | grep $dir3 > /dev/null; then
            echo "$dir3 is already mounted"
        else
            echo "Share already mounted"
            mounts[$[${#mounts[@]}+1]]=mount3
        fi
        if mount | grep $dir4 > /dev/null; then
            echo "$dir4 is already mounted"
        else
            echo "Share already mounted"
            mounts[$[${#mounts[@]}+1]]=mount4
        fi
echo ${mounts[@]}

count=0
for i in ${mounts[@]}; do
    mounts[$count];
    ((count++))
done

#mount_drives(){
#    1 =
#}
    ## this will break the loop if it was able to successfully ping the internal resource
#    break
#    else
#        sleep 5
#        echo "Could not ping internal resource"
#    fi
#mount_drives($j)
done