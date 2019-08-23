#!/bin/bash
cd /home/ubuntu/filedrop-api-nodejs
#killall node
pm2 delete all
rm -rf node_modules