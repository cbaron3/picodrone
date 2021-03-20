#!/bin/bash

clean='false'

print_usage() {
  echo
  echo "Invalid Option Supplied."
  echo
  echo "Usage:"
  echo -e ' \t -c for clean build'
}

while getopts 'c' flag; do
  case "${flag}" in
    c) clean='true' ;;
    *) print_usage
       exit 1 ;;
  esac
done


echo
echo "Starting Picodrone Build"

if [ ! "$(docker ps -q -f name=PICODRONE_BUILD)" ]; then
    if [ "$(docker ps -aq -f status=exited -f name=PICODRONE_BUILD)" ]; then
        # cleanup
        docker rm PICODRONE_BUILD
    fi

    docker run -d -it --name PICODRONE_BUILD -v $PWD/../.:/picodrone stm32
fi

docker exec -it PICODRONE_BUILD /picodrone/scripts/build.sh $clean