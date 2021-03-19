#!/bin/bash

echo
echo "Starting Picodrone Build"

if [ ! "$(docker ps -q -f name=PICODRONE_BUILD)" ]; then
    if [ "$(docker ps -aq -f status=exited -f name=PICODRONE_BUILD)" ]; then
        # cleanup
        docker rm PICODRONE_BUILD
    fi

    docker run -d -it --name PICODRONE_BUILD -v $PWD/../.:/picodrone stm32
fi

# docker exec -it PICODRONE_BUILD bash -c “sh /home/picodrone/scripts/test.sh”


docker exec -it PICODRONE_BUILD /picodrone/scripts/test.sh