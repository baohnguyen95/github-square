#!/bin/bash
NUMBER=$(($RANDOM % 23))

for ((run=1; run <= NUMBER + 1; run++))
do
  echo `/usr/games/fortune` > ~/github-square/file.txt
  /usr/bin/git -C ~/github-square/ add . -A
  /usr/bin/git -C ~/github-square/ commit -m "`/usr/games/fortune -sn 32`"
done