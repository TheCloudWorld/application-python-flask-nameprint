#!/bin/bash
echo 'tcw.James.725' | docker login --username thecloudworld --password-stdin
docker stack deploy --compose-file docker-compose.yml stackdemo
