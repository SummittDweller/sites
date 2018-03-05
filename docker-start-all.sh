#!/bin/bash
# Stop all containers
docker stop $(docker ps -a -q)

# Now start 'em all back up
cd ~/Projects/Docker/sites/mailhog
docker-compose up -d
cd ~/Projects/Docker/sites/portainer
docker-compose up -d
cd ~/Projects/Docker/sites/site1
docker-compose up -d
cd ~/Projects/Docker/sites/site2
docker-compose up -d
cd ~/Projects/Docker/sites
docker-compose up -d --remove-orphans
