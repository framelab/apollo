#!/bin/bash
# INSTALL NODE.JS

# install build essentials (required for NPM package compilation)
sudo apt install -y build-essential libssl-dev python

# install NVM (node version manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

# immediate use
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source ~/.bashrc

# install node.js
nvm install 12.10.0
nvm use 12.10.0
nvm alias default 12.10.0

# check node versions
node --version
npm --version
