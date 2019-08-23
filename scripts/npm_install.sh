#!/bin/bash
cd /home/ubuntu/api/filedrop-api-nodejs
npm install
npm audit fix
npm install -g pm2