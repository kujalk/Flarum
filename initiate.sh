#!/bin/sh

#stop and Remove containers
echo "Removing MariaDB container"
docker-compose rm -fsv mariadb
echo "Removing Flarum container"
docker-compose rm -fsv flarum

#Remove folders
echo "Cleaning up folders"
sudo rm -rf ./mariadb/db ./flarum/assets ./flarum/nginx ./flarum/extensions

#Creating new folders
echo "Creating new folders"
mkdir ./flarum/assets ./flarum/nginx ./flarum/extensions
mkdir ./mariadb/db
