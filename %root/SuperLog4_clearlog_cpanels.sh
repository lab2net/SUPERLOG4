#!/bin/bash
EMAIL="lukasz.napierala@uk2group.com"

for i in $(seq 1 54)
do
echo "Doing $i..."
> /var/log/network/cpanel$i.uk2.net <<EOT

EOT
done

#Send alert email
   MSG="SuperLog4 /var/log/network/ : all Cpanels logs have been cleared"
   echo -e ${MSG}|mail -s "Log Sanitazing alert from SuperLog4" ${EMAIL}



