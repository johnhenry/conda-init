#!/bin/bash
ONE=$1
DESTINATION="$HOME/bin"
DESTINATION="${ONE:-$DESTINATION}"

read -p "Install to: (${DESTINATION})" IMMEDIATE_INPUT
DESTINATION="${IMMEDIATE_INPUT:-$DESTINATION}"

TARGET="${DESTINATION}/conda-init"

# cat ./conda-init.sh
echo $TARGET
cp ./conda-init.sh $TARGET
chmod +x $TARGET