#!/usr/bin/env bash

BOARD_IP=192.168.56.123
BOARD_NAME="OUT_TARGET"

scp top_df_local.sh $BOARD_IP:

ssh $BOARD_IP "chmod +x top_df_local.sh; ./top_df_local.sh"

NAME=$(ssh $BOARD_IP "ls -td -- */ | head -n 1 | cut -d'/' -f1")
scp -r $BOARD_IP:/home/dev/$NAME /home/dev/code/
# wiem, że ścieżka absolutna, ale inaczej nie chciało dobrze kopiować