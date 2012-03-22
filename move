#! /usr/bin/env bash

# Define where the files come from
SRC_ROOT="/Volumes/HELMETCAM"
SRC_PATH="/DCIM/100MEDIA"
SRC_FULL_PATH="${SRC_ROOT}${SRC_PATH}"

# Define where the files are moved to
DEST_ROOT=~/Pictures
DEST_PATH="$(date +'%Y-%m-%d')"
DEST_FULL_PATH="${DEST_ROOT}/${DEST_PATH}/"

# Check there are files to be moved
if [ "$(ls -A $SRC_FULL_PATH)" ]; then
	mkdir -p ${DEST_FULL_PATH}

	# for each file to be moved...
	find ${SRC_FULL_PATH} -name '*.mov' | while read file
	do
		#report that the file is being moved and then move it
	     echo "Moving: $file to ${DEST_FULL_PATH}"
	     mv "$file" "${DEST_FULL_PATH}"
	done
else
    echo "$SRC_FULL_PATH has no content - nothing to move."
fi

# show the user the end result
echo ""
ls -la ${DEST_FULL_PATH}

# show the user how much space is on the camera
echo ""
df -h $SRC_ROOT/

# unmount the camera so it can be ejected when it's time to
# ride / jump out of an aeroplane / be fired out of a cannon, etc. 
echo ""
diskutil umount force $SRC_ROOT

echo "done"
