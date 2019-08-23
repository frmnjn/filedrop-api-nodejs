#!/bin/bash
cd /home/ec2-user/api
#node index.js
pm2 stop index
pm2 start index.js
#pm2 startup
