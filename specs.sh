modelid=`sysctl hw.model`
processor=`system_profiler | grep Processor`
ram=`system_profiler | grep Memory | grep GB`
hdd=`system_profiler | grep Capacity | grep GB | cut -d ':' -f2`

echo "Your processor information is: $processor"
echo "Your Memory information is: $ram"
echo "Your Storage information is: $hdd"
