#!/usr/bin/env bash

echo "Deploy started!!!!"

cd /root/apps/docker-prod-nrn
git checkout release
git pull
docker-compose down --volumes
docker-compose build --parallel
docker-compose up -d
