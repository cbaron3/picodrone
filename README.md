# picodrone

Micro drone project using STM32

cmake -DCMAKE_TOOLCHAIN_FILE=../system/toolchain.cmake ../

To generate pcb images and schematic images, execute this command in docker container
kibot -d Generated/default -g variant=default -s all -c ../../yamlfile

run the command within the final design v2 folder
