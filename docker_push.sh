#!/bin/bash
docker build -f ./sample-application-db-changelog-job/Dockerfile -t postgres:v0.1
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker push aladeen92i/full-stack-repo
docker build -f ./sample-application-http-api-server/Dockerfile -t api-server:v0.1
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker push aladeen92i/full-stack-repo