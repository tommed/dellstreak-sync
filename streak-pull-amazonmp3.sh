#!/usr/bin/env bash
. ./settings

# check that the streak is mounted
if [ ! -d "$REMOTE_PATH" ]; then
	echo "ERR: You must first mount the streak"
	exit 1
fi

echo "pulling purchases from streak to computer..."
rsync $RSYNC_ARGS "$REMOTE_PATH/amazonmp3/" "$LOCAL_PATH/Amazon\ MP3/"

if [ "$CLEAR_AMAZONMP3" = "yes" ]; then
	rm -rf $REMOTE_PATH/amazonmp3/*
fi

echo "done"
