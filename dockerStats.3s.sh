#!/usr/bin/env bash

echo "docker stats"
echo "---"

if [ "$ARGOS_MENU_OPEN" == "true" ]; then
 DOCKER_STATS=$(docker stats --all --format "table {{.Name}}\t{{.CPUPerc}}\t{{.MemUsage}}\t{{.NetIO}}" --no-stream )
 echo "$DOCKER_STATS | font=monospace bash=top"
else
  echo "Loading..."
fi
