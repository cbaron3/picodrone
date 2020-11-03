cmake_minimum_required(VERSION 3.0)

file(GLOB FREE_RTOS_SRC 
    "FreeRTOS/Source/*.c"
)

file(GLOB FREE_RTOS_PORT_SRC
    "FreeRTOS/Source/portable/GCC/ARM_CM3/port.c"
)

file(GLOB FREE_RTOS_HEAP_SRC
    "FreeRTOS/Source/portable/MemMang/heap_1.c"
)

add_library(freertos STATIC ${FREE_RTOS_SRC} ${FREE_RTOS_PORT_SRC} ${FREE_RTOS_HEAP_SRC})

target_include_directories(freertos PUBLIC 
    "${PROJECT_SOURCE_DIR}/system"
    "FreeRTOS/Source/portable/GCC/ARM_CM3/"
    "FreeRTOS/Source/include/"
)
target_compile_options(freertos PUBLIC
  -Wall 
  -g 
  # -std=gnu99 
  -Os
  -mthumb
  -mcpu=cortex-m3
  -mfloat-abi=soft
  -mno-thumb-interwork
  -mfpu=vfp 
  -msoft-float 
  -mfix-cortex-m3-ldrd
  -mlittle-endian
  -fno-exceptions # Delete exceptions so newlib functions arent required
  -ffunction-sections 
  -fdata-sections
  -Werror 
  # -Wstrict-prototypes 
  -Warray-bounds 
  -fno-strict-aliasing 
  -Wno-unused-const-variable 
  -specs=nano.specs 
  -specs=nosys.specs)