#!/bin/bash

echo "Hello from container"

cd picodrone/

ls

cd build/


cmake -DCMAKE_TOOLCHAIN_FILE=../system/toolchain.cmake ../

make