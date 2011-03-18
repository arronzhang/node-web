#!/bin/sh

DB_ROOT=/opt/db/
mkdir -p ${DB_ROOT}
mongod --fork --logpath /var/log/mongod.log --dbpath ${DB_ROOT} --bind_ip 127.0.0.1
