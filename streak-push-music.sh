#!/usr/bin/env bash

# check that the streak is mounted
if [ ! -d "/media/STREAK" ]; then
	echo "ERR: You must first mount the streak"
	exit 1
fi

echo "syncing music to streak.."

echo "--Collection--"
rsync -ruv ~/Music/Collection/ /media/STREAK/Music/

echo "--UbuntuOne--"
rsync -ruv ~/.local/share/ubuntuone/Purchased\ from\ Ubuntu\ One/ /media/STREAK/Music/

echo "done"
