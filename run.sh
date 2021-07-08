#!/bin/bash

if [ ! -e "/var/run/docker.sock" ]; then
  echo "No Docker socket, check permissions!"
  exit 1
fi

while [ true ]; do
echo "Waiting ${DELAY} seconds before next run"
  docker system prune -af
  docker volume prune -f
  sleep ${DELAY} & wait
done
