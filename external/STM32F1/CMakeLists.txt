cmake_minimum_required(VERSION 3.0)

project(hal)

file(GLOB STM32_LL_HAL_SRC "Drivers/STM32F1xx_HAL_Driver/Src/*.c")

file(GLOB STM32_DEVICE_SRC "Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/system_stm32f1xx.c")

add_library(hal STATIC ${STM32_LL_HAL_SRC} ${STM32_DEVICE_SRC})

set(STM32_DEVICE_GROUP "STM32F103xB" CACHE STRING
 "Chip configuration as defined in stm32f1xx.h (default value for the bluepill)")

target_compile_definitions(hal PUBLIC ${STM32_DEVICE_GROUP})
target_compile_definitions(hal PUBLIC "USE_FULL_LL_DRIVER")

target_include_directories(hal PUBLIC 
    ${SYSTEM_INCLUDE}
    ${STM32_INCLUDE}
)

target_compile_options(hal PUBLIC ${TARGET_FLAGS} ${COMPILER_FLAGS})