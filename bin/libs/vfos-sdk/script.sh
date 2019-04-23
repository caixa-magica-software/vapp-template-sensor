#/bin/bash

##This script is for download the repo from opensource project we need to fix an issues in opensource projects to be able to install depencies within package.json

path="components"

#check if the folder not exist
if [ ! -d "$path" ]; then
  echo "folder didnt exist should create"
  mkdir $path
fi


 #messaging 
messaging="https://masterviana@opensourceprojects.eu/git/p/vfos/middleware/msg/code vfos-messaging"
cd $path
git clone $messaging

 #restheart client
restheart="https://github.com/masterviana/restheart-js-client.git"
cd $path
git clone -b vfos $restheart

#enablers framework
# enablersf="--recurse-submodules http://git-gris.uninova.pt/vfos/enablers-framework.git vfos-enablers-framework"
# cd $path
# git clone $enablersf