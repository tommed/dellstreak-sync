#!/usr/bin/env bash
. ./settings

# check that the streak is mounted
if [ ! -d "$REMOTE_PATH" ]; then
	echo "ERR: You must first mount the streak"
	exit 1
fi

echo "syncing music to streak.."

echo "--Collection--"
rsync -ruv $LOCAL_PATH/ $REMOTE_PATH/Music/

echo "--UbuntuOne--"
rsync -ruv "~/.local/share/ubuntuone/Purchased from Ubuntu One/" "$REMOTE_PATH/Music/"

echo "done"
