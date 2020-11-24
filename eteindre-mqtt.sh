#!/bin/bash

mosquitto_pub -h 10.202.0.107 -t shellies/shellyplug-s-6A6534/relay/0/command -m "off" # Envoi l'ordre pour allumer la prise
sleep 5                                                                               # On attend 5 secondes
echo "La consommation actuelle est de : `mosquitto_sub -h 10.202.0.107 -t shellies/shellyplug-s-6A6534/relay/0/power -C 1` W" # On récupère le consommation actuelle

