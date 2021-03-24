#!/bin/bash

### Handle input arguments first

# Track whether a clean build is requested or not
clean='false'

# Function to print usage
print_usage() {
  echo
  echo "Invalid Option Supplied."
  echo
  echo "Usage:"
  echo -e ' \t -c for clean build'
}

# Parse input args
while getopts 'c' flag; do
  case "${flag}" in
    c) clean='true' ;;
    *) print_usage
       exit 1 ;;
  esac
done


echo
echo "Starting Picodrone Build"

# Run docker container. If it is already running, stop it
if [ ! "$(docker ps -q -f name=PICODRONE_BUILD)" ]; then
    if [ "$(docker ps -aq -f status=exited -f name=PICODRONE_BUILD)" ]; then
        # Clean up old container if its still running
        docker rm PICODRONE_BUILD
    fi

    docker run -d -it --name PICODRONE_BUILD -v $PWD/../.:/picodrone stm32
fi

# Run build script inside docker container
docker exec -it PICODRONE_BUILD /picodrone/scripts/build.sh $clean