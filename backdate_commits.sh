#!/bin/bash

echo "[🔁] Starting fresh backdated commits..."
for day in {1..12}; do
  export GIT_AUTHOR_DATE="2025-03-$(printf "%02d" $day)T12:00:00"
  export GIT_COMMITTER_DATE="2025-03-$(printf "%02d" $day)T12:00:00"
  echo "Commit $day" >> log.txt
  git add log.txt
  git commit -m "Backdated commit on 2025-03-$(printf "%02d" $day)"
done
