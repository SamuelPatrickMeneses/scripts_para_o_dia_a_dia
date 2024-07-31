#!/bin/bash
echo $1
sudo env PORT=$PORT node /home/samuel/scripts/server/index.js $1
