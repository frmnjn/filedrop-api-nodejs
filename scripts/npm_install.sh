source /home/ec2-user/.bash_profile
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
cd /home/ec2-user
npm install
npm audit fix
npm install -g pm2