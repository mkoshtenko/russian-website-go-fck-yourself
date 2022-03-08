#!/bin/bash

for session in $(screen -ls | grep -o '[0-9]\{5\}')
do
screen -S "${session}" -X quit;
done

echo "Stop session: Done"

# Suppress output
docker container prune -f >/dev/null

echo "Cleanup docker: Done"

