#!/bin/bash

EMAIL="lukasz.napierala@uk2group.com"

LIST_RESELLER="aphrodite apollo athena ares artemis atlas chronos demeter dionysus hera hestia hephaestus persephone poseidon hermes zeus hyperion mercury prometheus eos oceanus tethys phoebe pontus nike atl-nyx lon-aether slc-eros rhea gaia"


for i in $LIST_RESELLER
do
echo "Doing $i..."

> /var/log/network/$i.log <<EOT

EOT
done

#Send alert email
   MSG="SuperLog4 /var/log/network/ : all Resellers logs have been cleared"
   echo -e ${MSG}|mail -s "Log Sanitazing alert from SuperLog4" ${EMAIL}
