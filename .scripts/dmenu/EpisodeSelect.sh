#!/bin/bash

cd /home/kevin/mnt/media/

media=$(ls ./ | dmenu -i -b -p "What to Open")

cd ./$media
if [[ $media == "Shows"  ]]
then
	genre=$(ls ./ | dmenu -i -b -p "Which type of $(media)")

	cd ./$genre
	
	season=$(ls ./ | dmenu -i -b -p "Which $(genre)")

	episode=$(ls ~/mnt/media/$media/$genre/$season | dmenu -i -b -p "Which Episode: ")

	mpv "$episode" &
fi
if [[ $media == "Movies" ]]
then
	cd ./$media
	episode=$(ls ./ | dmenu -i -b -p "Which Movie: ")

	mpv "$episode" &
fi
