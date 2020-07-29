#!/usr/bin/env bash
mkdir -p ./.docker
sudo chmod 777 -R ./.docker
docker-compose build
docker-compose up
