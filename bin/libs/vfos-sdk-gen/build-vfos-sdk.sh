#!/bin/bash

npm install yeoman-gen-run

echo "fetching vfos-sdk code!"
sudo chmod 777 -R /home/user/.config/
cd ..
git clone https://mstavares@opensourceprojects.eu/git/p/vfos/oak/sdk/lib/code vfos-oak-sdk-lib-code
sudo mkdir -p /home/user/.config/insight-nodejs
sudo touch /home/user/.config/insight-nodejs/insight-yo.json
sudo chmod 777 -R /home/user/.config/
cd vfos-oak-sdk-lib-code
sudo npm link
cd ..
node ./node_modules/yeoman-gen-run/cli.js --name vfos-sdk --config ./vfos-sdk-gen/answers.json --out ./vfos-sdk
sudo rm -rf vfos-oak-sdk-lib-code/

