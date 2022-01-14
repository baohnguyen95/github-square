#!/bin/bash
NUMBER=$(($RANDOM % 23))

for ((run=1; run <= NUMBER + 1; run++))
do
  echo `/usr/games/fortune` > ~/greenery/file.txt
  /usr/bin/git -C ~/greenery/ add . -A
  /usr/bin/git -C ~/greenery/ commit -m "`/usr/games/fortune -sn 32`"
done