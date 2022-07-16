# extra newline for Outlook.com behavior not to forward email content without one
echo > /tmp/temp_humidity.txt
date >> /tmp/temp_humidity.txt
/home/pi/git/Adafruit_Python_DHT/examples/AdafruitDHT.py 2302 4 >> /tmp/temp_humidity.txt
