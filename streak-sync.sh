#!/usr/bin/env bash

# this header MUST NOT be removed
echo "DellStreak/Ubuntu - Sync Script"
echo "Author: Tom Medhurst <tom@tommed.co.uk>"
echo "Details: http://github.com/tommed/dellstreak-sync"
echo "License: GPL v3"
echo "---------"

echo -e "\n===Syncing Music==="
streak-pull-amazonmp3.sh
streak-push-music.sh

echo -e "\n===Syncing Video==="
streak-pull-video.sh

echo "---------"
