#!/bin/bash
cd /var/www
pm2 start index.js
pm2 startup