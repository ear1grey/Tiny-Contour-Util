#! /usr/bin/env bash
SRC_ROOT="/Volumes/HELMETCAM"
SRC_PATH="/DCIM/100MEDIA"
SRC_FULL_PATH="${SRC_ROOT}${SRC_PATH}"

DEST_ROOT=~/Pictures
DEST_PATH="$(date +'%Y-%m-%d')"
DEST_FULL_PATH="${DEST_ROOT}/${DEST_PATH}/"

if [ "$(ls -A $SRC_FULL_PATH)" ]; then
	mkdir -p ${DEST_FULL_PATH}

	find ${SRC_FULL_PATH} -name '*.mov' | while read file
	do
	     echo "Moving: $file to ${DEST_FULL_PATH}"
	     mv "$file" "${DEST_FULL_PATH}"
	done
else
    echo "$SRC_FULL_PATH has no content - nothing to move."
fi

echo ""
ls -la ${DEST_FULL_PATH}
echo ""
df -h $SRC_ROOT/
echo ""
diskutil umount -force $SRC_ROOT

echo "done"
