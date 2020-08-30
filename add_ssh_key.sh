#!/bin/bash

source "/opt/pmp/functions.sh"

yes y | ssh-keygen -f $(pwd)/sshkey -N ""
upload_file.sh $(pwd)/sshkey.pub         # this will call hide_guake
call_cmd "mkdir -p ~/.ssh/"
call_cmd "cat /dev/shm/sshkey.pub >> ~/.ssh/authorized_keys"