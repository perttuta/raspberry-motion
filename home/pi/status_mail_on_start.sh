# Sleep a bit for network service to come up
sh -e /home/pi/temp_humidity_read.sh; sleep 30; mpack -s "Daily picture" -d /tmp/temp_humidity.txt /tmp/status.jpg email@outlook.com > /home/pi/open/daily_mail.output 2>&1 &
