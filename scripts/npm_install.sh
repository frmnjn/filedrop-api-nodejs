#!/bin/bash
cd /home/ec2-user
npm install
npm audit fix
npm install -g pm2