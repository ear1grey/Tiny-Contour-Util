#! /usr/bin/env bash
DRIVE="/Volumes/HELMETCAM"
FOLDER="/DCIM/100MEDIA"
FULLPATH=$DRIVE$FOLDER
DEST="~/Pictures"
NOW=$(date +"%Y-%m-%d")


if [ "$(ls -A $FULLPATH)" ]; then
	mkdir $DEST/$NOW
	mv $FULLPATH/* $DEST/$NOW
else
    echo "$DRIVE has no content - nothing to move."
fi

df -h $DRIVE/
sudo umount $DRIVE

echo "done"
