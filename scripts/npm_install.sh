#!/bin/bash
cd /home/ubuntu/filedrop-api-nodejs
npm install
npm audit fix
npm install -g pm2