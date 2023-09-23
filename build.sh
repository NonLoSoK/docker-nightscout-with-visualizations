#!/bin/bash

docker build . -t my-nightscout-image

docker volume create  nightscout-storage grafana-storage

docker compose up -d
