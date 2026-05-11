#!/bin/bash

for i in $(seq 1 50); do
  echo "Commit #$i - $(date -u '+%Y-%m-%d %H:%M:%S UTC')" >> data/log.txt
  git add data/log.txt
  git commit -m "Auto-commit #$i - $(date -u '+%Y-%m-%d %H:%M:%S UTC')"
  sleep $((RANDOM % 3 + 1))
done
