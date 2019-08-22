#!/bin/bash
cd /var/www
npm install
npm audit fix
npm install -g pm2