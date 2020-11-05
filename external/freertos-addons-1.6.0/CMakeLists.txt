cmake_minimum_required(VERSION 3.0)

file(GLOB FREE_RTOS_SRC 
    "c++/Source/*.cpp"
)

add_library(freertos_cpp STATIC ${FREE_RTOS_SRC})

target_include_directories(freertos_cpp PUBLIC 
    "${PROJECT_SOURCE_DIR}/system"
    "${PROJECT_SOURCE_DIR}/external/FreeRTOSv10.4.1/FreeRTOS/Source/portable/GCC/ARM_CM3/"
    "${PROJECT_SOURCE_DIR}/external/FreeRTOSv10.4.1/FreeRTOS/Source/include/"
    "c++/Source/include/"
)

# target_compile_options(freertos PUBLIC
#   -Wall 
#   -g 
#   # -std=gnu99 
#   -Os
#   -mthumb
#   -mcpu=cortex-m3
#   -mfloat-abi=soft
#   -mno-thumb-interwork
#   -mfpu=vfp 
#   -msoft-float 
#   -mfix-cortex-m3-ldrd
#   -mlittle-endian
#   -fno-exceptions # Delete exceptions so newlib functions arent required
#   -ffunction-sections 
#   -fdata-sections
#   -Werror 
#   # -Wstrict-prototypes 
#   -Warray-bounds 
#   -fno-strict-aliasing 
#   -Wno-unused-const-variable 
#   -specs=nano.specs 
#   -specs=nosys.specs)