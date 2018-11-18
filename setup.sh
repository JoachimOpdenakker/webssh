#!/bin/bash
var=$(pwd)
python3 setup.py install
cp "$var/webssh.service" "/lib/systemd/system/"
systemctl daemon-reload
