source /home/ec2-user/.bash_profile
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
cd /home/ec2-user
#node index.js
pm2 start index.js
#pm2 startup
