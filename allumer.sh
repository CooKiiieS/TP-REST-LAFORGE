#!/bin/bash

curl http://10.202.255.252/relay/0?turn=on |jq # Allume la prise
sleep 5 				       # Délai de 5s
curl http://10.202.255.252/meter/0 |jq .power  # Voir sa consommation actuelle
curl http://10.202.255.252/relay/0 |jq         # Voir si la prise est allumée ou non (ison=true ou false)

