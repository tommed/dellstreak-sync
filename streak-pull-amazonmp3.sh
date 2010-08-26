#!/usr/bin/env bash
. ./settings

# check that the streak is mounted
if [ ! -d "$REMOTE_PATH" ]; then
	echo "ERR: You must first mount the streak"
	exit 1
fi

echo "pulling purchases from streak to computer..."
rsync -ruv $REMOTE_PATH/amazonmp3/ $LOCAL_PATH/Amazon\ MP3/
rm -rf $REMOTE_PATH/amazonmp3/*
echo "done"
