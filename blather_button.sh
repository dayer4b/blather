#!/bin/bash

blather_pid=$(ps -ef | grep -i blather.py | grep python2 | awk '{ print $2 }')

# if blather_pid is empty.  start blather.  otherwise, stop blather
if [ -z "$blather_pid" ]; then
  /home/schopra/Apps/Blather/blather/blather_control.sh start
else
  /home/schopra/Apps/Blather/blather/blather_control.sh stop
fi

