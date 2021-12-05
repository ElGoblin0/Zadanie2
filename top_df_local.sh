#!/usr/bin/env bash

DIR_NAME=$(date +%F_%H-%M-%S)

mkdir $DIR_NAME

top -b -n 1 >> $DIR_NAME/result.txt
echo "" >> $DIR_NAME/result.txt
df -h >> $DIR_NAME/result.txt

