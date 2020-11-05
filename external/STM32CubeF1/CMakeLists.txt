
cmake_minimum_required(VERSION 3.0)

file(GLOB STM32_LL_HAL_SRC 
    "Drivers/STM32F1xx_HAL_Driver/Src/*.c"
)

file(GLOB STM32_DEVICE_SRC
    "Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/system_stm32f1xx.c"
)

add_library(ll STATIC ${STM32_LL_HAL_SRC} ${STM32_DEVICE_SRC})

set(STM32_DEVICE_GROUP "STM32F103xB" CACHE STRING
 "Chip configuration as defined in stm32f1xx.h (default value for the bluepill)")

target_compile_definitions(ll PUBLIC ${STM32_DEVICE_GROUP})
target_compile_definitions(ll PUBLIC "USE_FULL_LL_DRIVER")
target_compile_definitions(ll PUBLIC "USE_FULL_HAL_DRIVER")

target_include_directories(ll PUBLIC 
    "${PROJECT_SOURCE_DIR}/external/STM32CubeF1/Drivers/STM32F1xx_HAL_Driver/Inc"
    "${PROJECT_SOURCE_DIR}/external/STM32CubeF1/Drivers/CMSIS/Include"
    # "${PROJECT_SOURCE_DIR}/external/STM32CubeF1/Drivers/CMSIS/Core/Include"
    "${PROJECT_SOURCE_DIR}/external/STM32CubeF1/Drivers/CMSIS/Device/ST/STM32F1xx/Include"
)

target_compile_options(ll PUBLIC
  -mthumb
  -mcpu=cortex-m3
  -fno-exceptions
  -mfloat-abi=soft
  -mlittle-endian)
