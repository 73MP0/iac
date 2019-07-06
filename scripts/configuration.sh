#!/bin/bash

#Exit immediately if a command exits with a non-zero status.
set -e
sudo apt-get update

echo "  ----- install server dependencies -----  "
sudo apt-get install -y postgresql postgresql-contrib
