#!/bin/bash

function rcon {
	/opt/ARRCON -H 127.0.0.1 -P 25575 -p rconW "$1"
}
echo "Backup Starting"

rcon "save-off"
rcon "save-all"
tar -cvpzf /home/sys255final/backups/server1/$(date +%F_%R).tar.gz ./
rcon "save-on"

echo "Backup Complete"
