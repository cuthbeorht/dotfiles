#!/usr/bin/env bash

# Exit silently if cmus is not running
cmus-remote -Q >/dev/null 2>&1 || exit 0

status=$(cmus-remote -Q | grep '^status ' | cut -d' ' -f2)

if [[ "$status" == "stopped" ]]; then
  echo ""
  exit 0
fi

artist=$(cmus-remote -Q | grep '^tag artist ' | cut -d' ' -f3-)
title=$(cmus-remote -Q | grep '^tag title ' | cut -d' ' -f3-)

if [[ -n "$artist" && -n "$title" ]]; then
  echo "♪ $artist – $title"
elif [[ -n "$title" ]]; then
  echo "♪ $title"
else
  echo "♪ cmus"
fi
