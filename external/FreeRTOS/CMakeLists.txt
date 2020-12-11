cmake_minimum_required(VERSION 3.0)

file(GLOB FREE_RTOS_SRC "Source/*.c")

file(GLOB FREE_RTOS_PORT_SRC "Source/portable/GCC/ARM_CM3/port.c")

file(GLOB FREE_RTOS_HEAP_SRC "Source/portable/MemMang/heap_1.c")

add_library(freertos STATIC ${FREE_RTOS_SRC} ${FREE_RTOS_PORT_SRC} ${FREE_RTOS_HEAP_SRC})

target_include_directories(freertos PUBLIC 
    ${SYSTEM_INCLUDE}
    ${FREERTOS_INCLUDE}
)

target_compile_options(freertos PUBLIC ${TARGET_FLAGS} ${COMPILER_FLAGS})