#!/bin/bash

### Build script

# Navigate to picodrone directory if it exists
if [ ! -d "$PWD/picodrone" ]; then
    echo "Project does not exist in docker container."
    echo "Terminating build process..."
    exit 1;
fi

echo "Navigating to project directory"
cd /picodrone

if [ "$1" == "true" ]; then
    echo "Clean build - removing old build folder"
    rm -r "$PWD/build"
fi

# If the build directory does not exist, create it. This supercedes the clean flag
if [ ! -d "$PWD/build" ]; then
    echo "Creating build folder"

    mkdir "$PWD/build"
fi

# Navigate to build directory
cd build

# Run CMAKE
cmake -DCMAKE_TOOLCHAIN_FILE=../system/toolchain.cmake ../ || exit 1

# Run MAKE
make || exit 1

# Track elf size for drone
arm-none-eabi-size drone/drone.elf | python ../scripts/track_size.py "drone.elf" || exit 1

arm-none-eabi-size transmitter/transmitter.elf | python ../scripts/track_size.py "transmitter.elf" || exit 1