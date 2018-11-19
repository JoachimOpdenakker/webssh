var=$(pwd)
rm $var/webssh.service
touch $var/webssh.service
echo "[Unit]" >> webssh.service
echo "Description=Webssh service" >> webssh.service
echo "After=multi-user.agent" >> webssh.service
echo "" >> webssh.service
echo "[Service]" >> webssh.service
echo "Type=simple" >> webssh.service
echo "ExecStart=$var/websshvenv/bin/wssh" >> webssh.service
echo "" >> webssh.service
echo "[Install]" >> webssh.service
echo "WantedBy=multi-user.target" >> webssh.service
