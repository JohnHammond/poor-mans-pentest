#!/bin/bash

source "/opt/pmp/functions.sh"

$(pwd)/upload_file_nc.sh /opt/LinEnum/LinEnum.sh # this will call hide_guake
command "chmod +x /dev/shm/LinEnum.sh"
command "/dev/shm/LinEnum.sh | tee /dev/shm/linlog.txt"