#!/bin/bash

screen -dmS server1 java -Xmx6G -jar server.jar --nogui
echo "Starting Server"
