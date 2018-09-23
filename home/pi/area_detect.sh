#!/bin/bash
sleep 15 
for picfile in $(ls /var/lib/motion/$1*.jpg)
do
	mpack -s "Motion detected" -d /tmp/temp_humidity.txt $picfile your_account@gmail.com
	echo "Sent email with $picfile as attachment" >> /home/pi/area_detect_result.txt
done

