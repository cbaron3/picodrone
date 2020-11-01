
cmake_minimum_required(VERSION 3.0)
project(picodrone)

set(ELF ${PROJECT_NAME}.elf)

enable_language(ASM)
set(STARTUP_FILE "system/startup_stm32f103xb.c")

add_subdirectory(external)

add_executable(${ELF} ${STARTUP_FILE}
  src/main.c)

target_link_libraries(${ELF} ll )

target_include_directories(ll PUBLIC 
    "${PROJECT_SOURCE_DIR}/system"
    "${PROJECT_SOURCE_DIR}/inc"
    "${PROJECT_SOURCE_DIR}/external/STM32CubeF1-1.8.2/Drivers/STM32F1xx_HAL_Driver/Inc"
    "${PROJECT_SOURCE_DIR}/external/STM32CubeF1-1.8.2/Drivers/CMSIS/Include"
    "${PROJECT_SOURCE_DIR}/external/STM32CubeF1-1.8.2/Drivers/CMSIS/Core/Include"
    "${PROJECT_SOURCE_DIR}/external/STM32CubeF1-1.8.2/Drivers/CMSIS/Device/ST/STM32F1xx/Include"
)

set_target_properties(
  ${ELF}
  PROPERTIES
  LINK_FLAGS
  "-T${PROJECT_SOURCE_DIR}/system/linker_stm32f103xb.ld \
   -mthumb -mcpu=cortex-m3 \
   -Wl,--gc-sections \
   -Wl,-Map=${PROJECT_NAME}.map")

target_compile_options(${ELF} PUBLIC
  -Wall 
  -g 
  -std=gnu99 
  -Os
  -mthumb
  -mcpu=cortex-m3
  -mfloat-abi=soft
  -mlittle-endian
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
  scripts/openocd.cfg
  DESTINATION
  ${CMAKE_BINARY_DIR})
