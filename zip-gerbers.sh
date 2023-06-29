#!/bin/sh

find . -type d -depth 1 ! -name .git | while read -r board ; do
  rm -f "$board.zip"
  ( cd "$board/gerbers" && zip -v9 "../../$board.zip" ./* )
done
