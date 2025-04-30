#!/bin/bash

echo
echo "Deploying the latest updates to the container"
docker stack deploy -c docker-compose.yaml webapp
echo
echo "Deployment is successfully completed."
echo