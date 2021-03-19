
cmake_minimum_required(VERSION 3.0)

project(drone)

set(ELF ${PROJECT_NAME}.elf)

file(GLOB DRONE_SRC "src/*.cpp")

file(GLOB DRONE_C_SRC "src/*.c")

enable_language(ASM)
set(STARTUP_FILE "../system/startup_stm32f103xb.c")

add_executable(${ELF} ${STARTUP_FILE} ${DRONE_SRC} ${DRONE_C_SRC} main.c)

target_include_directories(${ELF} PUBLIC "include")

target_link_libraries(${ELF} hal freertos common)

set_target_properties(${ELF} 
  ${ELF}
  PROPERTIES
  LINK_FLAGS
  "-T${PROJECT_SOURCE_DIR}/../system/linker_stm32f103xb.ld \
   -mthumb -mcpu=cortex-m3 \
   -Wl,--gc-sections \
   -Wl,-Map=${PROJECT_NAME}.map")

target_compile_options(${ELF} PUBLIC ${TARGET_FLAGS} ${COMPILER_FLAGS})

file(COPY
  drone_openocd.cfg
  DESTINATION
  ${CMAKE_BINARY_DIR}
)
