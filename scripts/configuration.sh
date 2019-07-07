#!/bin/bash

#Exit immediately if a command exits with a non-zero status.
set -e
#adding cassandra repo
curl -L http://debian.datastax.com/debian/repo_key | sudo apt-key add -
echo "deb http://debian.datastax.com/community stable main" | sudo tee -a /etc/apt/sources.list.d/cassandra.sources.list
sudo add-apt-repository ppa:reddit/ppa
sudo apt-get update

echo "  ----- install library dependencies -----  "
sudo apt-get install -y python2.7-dev
sudo apt-get install -y python-setuptools
sudo apt-get install -y libmemcached-dev
sudo apt-get install -y libpq-dev
sudo apt-get install -y libxml2-dev
sudo apt-get install -y libxslt1-dev
sudo apt-get install -y python-imaging
sudo apt-get install -y openjdk-8-jre

echo "  ----- install server dependencies -----  "
sudo apt-get install -y postgresql postgresql-contrib
sudo apt-get install -y cassandra=1.2.19
sudo apt-get install -y memcached
sudo apt-get install -y rabbitmq-server
sudo apt-get install -y stunnel

echo "  ----- install misc dependencies -----  "
sudo apt-get install -y git-core
sudo apt-get install -y gcc
sudo apt-get install -y optipng
sudo apt-get install -y jpegoptim
sudo apt-get install -y postgresql-client
sudo apt-get install -y make
sudo apt-get install -y gettext
sudo apt-get install -y nodejs
sudo apt-get install -y node-less
sudo apt-get install -y node-uglify