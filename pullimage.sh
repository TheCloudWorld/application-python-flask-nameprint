#!/bin/bash
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 667481606687.dkr.ecr.us-east-1.amazonaws.com
docker pull 667481606687.dkr.ecr.us-east-1.amazonaws.com/thecloudworld:a632b7e
