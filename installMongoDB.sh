#!/bin/bash

# Create MongoDB Repository Configuration File

echo << EOF > /etc/yum.repos.d/mongodb.repo
[mongodb-org-3.4]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/3.4/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-3.4.asc
EOF

# List existing Yum Repositories
sudo yum repolist

# Install MongoDB

sudo yum install mongod-org -y

# Startup Mongod
sudo systemctl start mongod
