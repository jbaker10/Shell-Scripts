#!/bin/sh

#  create_archive_dmg.sh
#  
#
#  Created by Jeremiah Baker on 3/25/14.
#
hostname=`hostname`
logname=`logname`
date=`date +%Y%m%d`
model=`sysctl hw.model | awk '/hw.model/ {print $2}'`
hdiutil create -srcfolder /Users/ -encryption AES-128 /Volumes/Legal\ Hold\ -\ Miller\ Case\ Archives/$logname-archive-$date.dmg