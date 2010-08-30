#!/usr/bin/env bash

# move all mp4 files to the Streak video folder
echo "pulling all camcorder video from streak to laptop..."
find /media/STREAK/DCIM/ -name *.mp4 -exec mv -v {} /home/tom/Videos/Home/Streak/ \;
echo "done"
