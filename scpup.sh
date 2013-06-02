# A convenience script to upload a file to a server using SCP
# 2011 Zafar Iqbal

# Set the user name and server ip address here
userip="zaf@1.2.3.4"

###########################################################

sourcefile=$1

destination="$userip:$sourcefile"

echo "Uploading $sourcefile to $userip"

len=${#sourcefile}

# Check if input file given
if [[ "$len" -eq 0 ]] ; then
	echo "auto zip file required."
	exit
fi

# Check if input gile exists
if [[ ! -f "$sourcefile" ]] ; then
	echo "$sourcefile does not exist!"
	exit
fi

# Upload file to server
scp $sourcefile $destination

# Optional user notification for job done
# tada.sh

