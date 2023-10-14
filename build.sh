#!/bin/bash

docker build . -t my-nightscout-image

docker volume create  nightscout-storage 
docker volume create  grafana-storage

docker compose up -d
