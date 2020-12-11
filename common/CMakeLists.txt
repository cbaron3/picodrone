cmake_minimum_required(VERSION 3.0)

file(GLOB SRC "lib/*.cpp")

project(common)

add_library(common STATIC ${SRC})

target_link_libraries(common hal freertos )

target_include_directories(common PUBLIC 
    "include/"
    ${SYSTEM_INCLUDE}
    ${STM32_INCLUDE}
    
    ${FREERTOS_INCLUDE}
)

target_compile_options(common PUBLIC ${COMPILER_FLAGS})