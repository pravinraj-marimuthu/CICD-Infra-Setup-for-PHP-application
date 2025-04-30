#!/bin/bash

# Navigate to the project directory

echo

echo "Deploying the latest updates to the container"

echo

docker stack deploy -c docker-compose.yaml webapp

echo

# List the serving container

running_container=$(docker ps | awk '{print $11}' | tail -1)

echo

# Print the container

echo "The serving container is $running_container"

docker ps 

echo

docker logs $running_container

