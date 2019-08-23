source /home/ec2-user/.bash_profile
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
#cd /home/ubuntu/filedrop-api-nodejs
#rm -rf /home/ec2-user/api/*
#killall node
pm2 stop index
#rm -rf node_modules