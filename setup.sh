#!/bin/bash
script_name=$0
script_path=$(dirname "$0")
$script_path/generateservicefile.sh
python3 -m venv websshvenv
source websshvenv/bin/activate
python3 setup.py install --record files.txt
cp "$script_path/webssh.service" "/lib/systemd/system/"
systemctl daemon-reload
