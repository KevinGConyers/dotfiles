#!/bin/bash

show=$(ls ~/Media | dmenu -i -b -p "Show:")

cd /home/kevin/Media/"$show"/

episode=$(ls ./ | dmenu -i -b -p "Episode: ")

mpv "$episode" &
