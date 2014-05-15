#!/bin/sh

#  ad_join.sh
#  
#
#  Created by Jeremiah Baker on 4/7/14.
#
#!/bin/sh

# start here
compType=`sysctl hw.model`
#compName=`/usr/sbin/scutil --get LocalHostName`
if [[ $compType == *MacBook* ]];
then
    echo “Macbook”
    # echo $compName
    echo $DS_HOSTNAME
    /usr/sbin/dsconfigad -f -a $DS_HOSTNAME -domain dco-intranet.lan -ou "ou=Macs,dc=dco-intranet,dc=lan" -groups "domain admins,enterprise admins" -u ADusername -p ********* –lu localusername –lp *********
exit 0
else
    echo “Not Macbook”
    # echo $compName
    echo $DS_HOSTNAME
    /usr/sbin/dsconfigad -f -a $DS_HOSTNAME -domain dco-intranet.lan -ou "ou=Macs,dc=dco-intranet,dc=lan" -u ADusername -p ********* –lu localusername –lp *********
exit 0
fi