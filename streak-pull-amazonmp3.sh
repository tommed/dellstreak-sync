#!/usr/bin/env bash

# check that the streak is mounted
if [ ! -d "/media/STREAK" ]; then
	echo "ERR: You must first mount the streak"
	exit 1
fi

echo "pulling purchases from streak to computer..."
rsync -ruv /media/STREAK/amazonmp3/ ~/Music/Collection/Amazon\ MP3/
rm -rf /media/STREAK/amazonmp3/*
echo "done"
