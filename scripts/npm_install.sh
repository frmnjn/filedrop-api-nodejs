#!/bin/bash
cd /home/ec2-user/api
npm install
npm audit fix
npm install -g pm2