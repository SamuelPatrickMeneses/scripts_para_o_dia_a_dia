#!/bin/bash
docker rm -f $(docker ps -a -q)
docker image rm -f $(docker images -q)
docker volume rm $(docker volume ls)
docker system prune
