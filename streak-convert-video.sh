#!/usr/bin/env bash
echo "Converting '$1' to '$1'"
ffmpeg -i $1 -target pal-dvd -r 40 $2
