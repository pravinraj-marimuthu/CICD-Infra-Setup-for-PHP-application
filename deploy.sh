#!/bin/bash

echo "-------------------------------------------------------------"
echo "Deploying the latest updates to the service"
echo "-------------------------------------------------------------"
echo "Proceeding with the deployment..."
echo "-------------------------------------------------------------"
docker stack deploy -c backend.yaml app
echo "-------------------------------------------------------------"
echo "Checking for failure in the deployment, will roll-back if any failure occurs..."
echo "-------------------------------------------------------------"
docker service update --update-failure-action rollback app_php
echo "Waiting for the service to be up and running..."
sleep 10 &
echo "-------------------------------------------------------------"
echo "The service is up and running !!!"
docker service ls
echo "-------------------------------------------------------------"
echo "Updating the containers without downtime..."
sleep 10 &
echo "The container is up and running !!!. The list of containers is as follows:"
echo "-------------------------------------------------------------"
echo " The deployment is successful !!!!"
echo "-------------------------------------------------------------"
docker stack ps app --filter "desired-state=running" 
echo "-------------------------------------------------------------"