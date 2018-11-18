#!/bin/bash
var=$(pwd)
python3 setup.py install --record files.txt
cp "$var/webssh.service" "/lib/systemd/system/"
systemctl daemon-reload
