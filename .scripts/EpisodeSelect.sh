#!/bin/bash

show=$(cat /home/kevin/Media/medialist | dmenu -i -b -p "Show:")

if ["$show" = "medialist"]; then
	exit
fi

episode=$(cat /home/kevin/Media/$show/episodes | dmenu -i -b -p "Episode: ")

if ["$episode" = "episode"]; then
	exit
fi

mpv /home/kevin/Media/$show/$episode &
