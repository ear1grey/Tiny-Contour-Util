#! /usr/bin/env bash
NOW=$(date +"%Y-%m-%d")
mkdir ~/Pictures/$NOW
mv /Volumes/HELMETCAM/DCIM/100MEDIA/* ~/Pictures/$NOW
echo "done"
