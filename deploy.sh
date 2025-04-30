#!/bin/bash

echo "-------------------------------------------------------------"
echo "Deploying the latest updates to the container"
echo "-------------------------------------------------------------"
docker stack deploy -c docker-compose.yaml app
echo "-------------------------------------------------------------"
echo "Deployment is successfully completed!!"
echo "-------------------------------------------------------------"