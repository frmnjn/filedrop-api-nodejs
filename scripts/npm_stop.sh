#!/bin/bash
cd /home/ubuntu/filedrop-api-nodejs
pm2 stop all
pm2 delete all
pm2 kill