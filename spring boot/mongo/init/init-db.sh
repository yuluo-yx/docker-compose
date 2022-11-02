#!/usr/bin/env bash
echo "Creating mongo users..."
mongo admin --host localhost -u root -p mongo.ROOT --eval "db.createUser({user: 'admin', pwd: 'admin.HQF', roles: [{role: 'userAdminAnyDatabase', db: 'admin'}, 'readWriteAnyDatabase']});"
mongo admin --host localhost -u admin -p admin.HQF << EOF
use brick;
db.createUser({user: 'hqf', pwd: 'mongo.HQF', roles:[{role:'dbOwner', db:'hqf'}]});
db.auth('hqf', 'mongo.HQF');
db.createCollection('users');
EOF
echo "Mongo users created."
