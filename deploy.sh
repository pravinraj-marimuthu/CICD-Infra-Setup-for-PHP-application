#!/bin/bash

# Navigate to the project directory

echo
echo "Deploying the latest updates to the container"
echo
docker stack deploy -c docker-compose.yaml webapp
echo

sleep 10

# List the serving container

running_container=$(docker ps | awk '{print $11}' | tail -1)
echo

# Print the container

echo "The serving container is $running_container"
echo
docker ps 
echo
echo "Deployment is successfully completed."
echo
docker logs $running_container
echo
echo "To access the web application, visit "http://15.206.90.151/" in your web browser."
echo