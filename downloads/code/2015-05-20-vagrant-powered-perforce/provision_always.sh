#!/bin/bash -x
export P4PORT=tcp4:127.0.0.1:1666
sudo p4d -r /usr/local/p4root &
sleep 3
p4 info
