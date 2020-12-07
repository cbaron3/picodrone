cmake_minimum_required(VERSION 3.0)

file(GLOB SRC "lib/OS/*.cpp")

project(common)

add_library(common STATIC ${SRC})

target_include_directories(common PUBLIC 
    "include/"
    "${PROJECT_SOURCE_DIR}/../system"
    "${PROJECT_SOURCE_DIR}/../common/include"
    "${PROJECT_SOURCE_DIR}/../external/STM32CubeF1/Drivers/STM32F1xx_HAL_Driver/Inc"
    "${PROJECT_SOURCE_DIR}/../external/STM32CubeF1/Drivers/CMSIS/Include"
    "${PROJECT_SOURCE_DIR}/../external/STM32CubeF1/Drivers/CMSIS/Core/Include"
    "${PROJECT_SOURCE_DIR}/../external/STM32CubeF1/Drivers/CMSIS/Device/ST/STM32F1xx/Include"

    "${PROJECT_SOURCE_DIR}/../external/FreeRTOS/FreeRTOS/Source/portable/GCC/ARM_CM3/"
    "${PROJECT_SOURCE_DIR}/../external/FreeRTOS/FreeRTOS/Source/include/"

    "${PROJECT_SOURCE_DIR}/../external/freertos-addons.4.1/c++/Source/include/"
)

target_compile_options(common PUBLIC
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