#!/bin/bash

curl --silent http://10.202.255.252/relay/0?turn=off |jq # Allume la prise
sleep 5					                  # Délai de 5s
echo "La consommation est de : `curl --silent http://10.202.255.252/meter/0 |jq .power` W"   # Voir sa consommation actuelle
curl --silent http://10.202.255.252/relay/0 |jq	  # Voir si la prise est allumée ou non (ison=true ou false)
