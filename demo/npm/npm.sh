#!/bin/bash
CHECK="\xe2\x9c\x94"
NOCHECK="\xe2\x9c\x97"

echo "cleaning directory and cache.."
cp ../package.json .
rm -rf node_modules
npm cache clear

clear

echo -e "1/3 $NOCHECK cache - $NOCHECK node_modules"
time npm install

echo -e "2/3 $CHECK cache - $NOCHECK node_modules"
rm -rf node_modules
time npm install

echo -e "3/3 $CHECK cache - $CHECK node_modules"
time npm install
