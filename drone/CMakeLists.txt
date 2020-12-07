
cmake_minimum_required(VERSION 3.0)

project(drone)

set(ELF ${PROJECT_NAME}.elf)

enable_language(ASM)
set(STARTUP_FILE "../system/startup_stm32f103xb.c")

# file(GLOB C_SRCS 
#     "lib/*.c"
# )

# file(GLOB CPP_SRCS 
#     "lib/OS/*.cpp"
# )

add_executable(${ELF} ${STARTUP_FILE} main.cpp)

# target_link_libraries(${ELF} ll freertos_cpp freertos)
target_link_libraries(${ELF} ll freertos common)

target_include_directories(ll PUBLIC 
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

set_target_properties(
  ${ELF}
  PROPERTIES
  LINK_FLAGS
  "-T${PROJECT_SOURCE_DIR}/../system/linker_stm32f103xb.ld \
   -mthumb -mcpu=cortex-m3 \
   -Wl,--gc-sections \
   -Wl,-Map=${PROJECT_NAME}.map")

target_compile_options(${ELF} PUBLIC
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

file(COPY
  drone_openocd.cfg
  DESTINATION
  ${CMAKE_BINARY_DIR})
