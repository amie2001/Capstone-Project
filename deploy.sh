#!/bin/bash

# Log in to Docker Hub
echo "Logging in to Docker Hub..."
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin docker.io
if [[ $GIT_BRANCH == "origin/dev" ]]; then 
docker tag capstone  pavi2244/dev
docker push pavi2244/dev
elif [[ $GIT_BRANCH == "main" ]]; then 
docker tag capstone  pavi2244/prod
docker push pavi2244/prod
fi 


