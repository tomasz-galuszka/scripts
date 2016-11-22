#!/bin/bash

PORT_NUMBER=":99" #To start browser in headless mode run export DISPLAY=":99"

if [ -z "$1" ]; then
  echo "`basename $0` {start|stop}"
  exit
fi

case "$1" in
start)
  /usr/bin/Xvfb $PORT_NUMBER -ac -screen 0 1024x768x8 &
;;
stop)
  killall Xvfb
;;
esac
