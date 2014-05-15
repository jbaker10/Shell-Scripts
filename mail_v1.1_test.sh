#!/bin/sh

#  mail_v1.1.sh
#  
#
#  Created by Jeremiah Baker on 3/19/14.
#

####################################
## Global Variables
####################################

#hostname=`hostname`
#model=`sysctl hw.model | awk '/hw.model/ {print $2}'`
#serial=`system_profiler SPHardwareDataType | awk '/Serial/ {print $4}'`
#ram=`system_profiler | grep Memory | grep GB | awk '/Memory/ {print $2, $3}'`
#processorName=`system_profiler | grep Processor | awk '/Processor Name/ {print $3, $4, $5}'`
#processorSpeed=`system_profiler | grep Processor | awk '/Processor Speed/ {print $3, $4}'`

####################################
## To get an all inclusive output, use the command below.
## The above output will be cleaner, but the command below gives more info and is just one command
####################################

#compInfo=`system_profiler SPHardwareDataType`


####################################
## Output
####################################

#echo "The computer hostname is" $hostname
#echo "Computer model is" $model
#echo "Serial number is" $serial
#echo $ram
#echo $processorName
#echo $processorSpeed


####################################
## Email Message
####################################
i=0

while [ $i -lt 100 ];
    do
        echo "Hello"

        mail -s "Computer Imaged in DeployStudio" jerbaker8065@gmail.com <<EOF
        A computer with the name $hostname was just imaged.

        Serial Number:  serial
        Computer Model: model
        Processor Information: processorSpeed processorName
        Memory: ram


        EOF
        let i=i+1
    done
echo "Sent Email Notification to jeremiah.baker@dean.com"