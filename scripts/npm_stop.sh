#!/bin/bash
#cd /home/ubuntu/filedrop-api-nodejs
rm -rf /home/ubuntu/api/*
#killall node
pm2 stop index
#rm -rf node_modules