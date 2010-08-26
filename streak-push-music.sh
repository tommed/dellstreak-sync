#!/usr/bin/env bash
. ./settings

# check that the streak is mounted
if [ ! -d "$REMOTE_PATH" ]; then
	echo "ERR: You must first mount the streak"
	exit 1
fi

echo "syncing music to streak.."

# main music collection
echo "--Collection--"
rsync $RSYNC_ARGS "$LOCAL_PATH/" "$REMOTE_PATH/Music/"

# ubuntu one collection
if [ "$INCLUDE_UBUNTU_ONE" = "yes" ]; then
	echo "--UbuntuOne--"
	rsync $RSYNC_ARGS "~/.local/share/ubuntuone/Purchased from Ubuntu One/" "$REMOTE_PATH/Music/"
else
	echo "WARN: Skipping Ubuntu One purchases"
fi

echo "done"
