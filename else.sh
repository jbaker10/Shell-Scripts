updates=`softwareupdate -l`

if [[ $updates == *No new software available.* ]]; then
	echo "None";
else
	echo "Some";
fi;