#!/bin/sh

echo "Download package..."

git submodule update --init

echo "Start install nodeJS..."

ROOT_PATH=$(cd "$(dirname "$0")"; pwd)
cd ${ROOT_PATH}/node
git checkout master
git pull
git checkout v0.4.2
./configure
make
make install

echo "Install node complete."

echo "Start install MongoDB..."

cd ${ROOT_PATH}/mongo
git checkout master
git pull
git checkout r1.8.0
scons all
scons install

echo "Install mongoDB complete."

echo "Start install npm..."

curl http://npmjs.org/install.sh | sudo sh

echo "Install npm complete."
