# Create new tunnel from Raspberry

0. Create new ec2 instance
0. Create user and add key
   ```
   sudo adduser pitunnel
   sudo su - pitunnel
   mkdir .ssh
   chmod go-rwx .ssh
   cp /tmp/pitunnel_id_rsa.pub .ssh/
   mv .ssh/pitunnel_id_rsa.pub .ssh/authorized_keys
   chmod go-rwx .ssh/authorized_keys
   ```
0. Modify Google Drive document and change the IP address to the new IP address
0. Login to new ec2 instance
0. Login to Raspberry: ssh pi@localhost -p 10022

