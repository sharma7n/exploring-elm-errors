# Installs nvm, nodejs, npm, and create-elm-app on a fresh c9.io instance
# To run, execute: bash dev-bootstrap.sh

# Download NVM install script
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

# Use NVM in the same terminal session
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Install Node JS
nvm install node

# Switch over to the latest version of nodejs
nvm use node

# Install create-elm-app
npm i -g create-elm-app