#!/bin/bash

case $1 in
  start)
    /home/schopra/Apps/Blather/blather/language_updater.sh
    /home/schopra/Apps/Blather/blather/Blather.py -i g -c
    ;;
  stop)
    blather_pid=$(ps -ef | grep -i blather.py | grep python2 | awk '{ print $2 }')
    kill -9 $blather_pid
    ;;
  restart)
    $0 stop
    $0 start
    ;;
esac
