#!/bin/bash

# Navigate to the project directory

echo "Entering the project folder..."

cd ./php

echo
# Update the service file

echo "Deplying the latest updates to the container"

docker service update webapp_php

echo

# List the serving container

running_container=$(docker ps | awk '{print $11}' | tail -1)

# Print the container

echo "The serving container is $running_container"