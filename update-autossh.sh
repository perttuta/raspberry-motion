curl -L -o /tmp/ip.txt 'https://drive.google.com/uc?export=download&id=1nJcaXStFQlDKZER_0987Na6y9pblVce4'
IP=$(cat /tmp/ip.txt)
if [[ $IP =~ ^\#.* ]]
then
    REPLACEMENT=ExecStart=\#
    systemctl stop autossh-generated
else
    systemctl stop autossh-generated
    REPLACEMENT="ExecStart=/usr/bin/autossh -M 0 -o \"StrictHostKeyChecking=no\" -o \"ExitOnForwardFailure=yes\" -o \"ServerAliveInterval 30\" -o \"ServerAliveCountMax 3\" -NR 10022:localhost:22 pitunnel@$IP -i /home/pi/pitunnel_id_rsa"
    cat /home/pi/autossh-template.service | sed -e "s!EDIT_HERE!$REPLACEMENT!" > /etc/systemd/system/autossh-generated.service
    systemctl daemon-reload
    systemctl restart autossh-generated
fi

