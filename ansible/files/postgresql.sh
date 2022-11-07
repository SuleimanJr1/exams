#!/bin/bash

echo "Installing ca-certificates"

echo "---"

sudo apt install wget ca-certificates

echo "---"

echo "getting certificate"

echo "---"

wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

echo "---"

echo "Creating new configuration file with Official PostgreSQL"

echo "---"

sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'

echo "---"

echo "Updating cache..."

echo "---"

sudo apt update

echo "---"

echo "Installing Latest PostgreSQL and Extensions "
sudo apt install -y postgresql postgresql-contrib

echo "Done---"