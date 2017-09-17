#!/usr/bin/env bash

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.4/install.sh | bash

nvm install 4
npm install -g gulp-cli grunt-cli bower yo
nvm install 6 --reinstall-packages-from=4
nvm install 8 --reinstall-packages-from=4

nvm alias default 6
