#!/bin/bash

curl --silent http://10.202.255.252/relay/0?turn=off |jq # Allume la prise
sleep 5					                  # Délai de 5s
curl --silent http://10.202.255.252/meter/0 |jq .power   # Voir sa consommation actuelle
curl --silent http://10.202.255.252/relay/0 |jq	  # Voir si la prise est allumée ou non (ison=true ou false)
