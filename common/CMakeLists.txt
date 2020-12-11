cmake_minimum_required(VERSION 3.0)

file(GLOB SRC "lib/*.cpp")

project(common)

add_library(common STATIC ${SRC})

target_include_directories(common PUBLIC 
    "include"
    ${STM32_INCLUDE}
    ${FREERTOS_INCLUDE}
)

target_compile_options(common PUBLIC ${COMPILER_FLAGS})