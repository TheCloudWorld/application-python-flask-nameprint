#!/bin/bash
echo 'tcw.James.725' | docker login --username thecloudworld --password-stdin
docker run -dit -p 5000:5000 --name nameprint 667481606687.dkr.ecr.us-east-1.amazonaws.com/thecloudworld:a632b7e
