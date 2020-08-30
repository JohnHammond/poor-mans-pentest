#!/bin/bash

source "/opt/pmp/functions.sh"

hide_guake
call_cmd "python -c 'import pty; pty.spawn(\"/bin/bash\")'"
ctrl Z
call_cmd "stty raw -echo"
call_cmd "fg"
call_cmd "export TERM=xterm"