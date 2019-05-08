#!/usr/bin/env bash

#Mimeapp script for adding torrent to transmission-deamon, will start the daemon if not running

pgrep -x transmission-da >/dev/null || (transmission-daemon && notify-send "Started transmission daemon..." && sleep 3 && pkill -RTMIN+7 i3blocks)

transmission-remote -a "$@" && notify-send "v Transmission-deamon" "Torrent added" 
