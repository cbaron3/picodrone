
set(CMAKE_SYSTEM_NAME Generic) # 'Generic' is used for embedded systems

set(CMAKE_C_COMPILER arm-none-eabi-gcc)
set(CMAKE_CXX_COMPILER arm-none-eabi-g++)
set(CMAKE_ASM_COMPILER arm-none-eabi-gcc)

# tells CMake not to try to link executables during its interal checks
# things are not going to link properly without a linker script
set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)

set(CMAKE_OBJCOPY arm-none-eabi-objcopy)
set(CMAKE_OBJDUMP arm-none-eabi-objdump)
set(CMAKE_SIZE arm-none-eabi-size)
set(CMAKE_DEBUGGER arm-none-eabi-gdb)
set(CMAKE_DEBUGGER arm-none-eabi-gdb)
set(CMAKE_CPPFILT arm-none-eabi-c++filt)

set(FREERTOS_INCLUDE 
    "${CMAKE_SOURCE_DIR}/external/FreeRTOS/Source/portable/GCC/ARM_CM3/"
    "${CMAKE_SOURCE_DIR}/external/FreeRTOS/Source/include/"
)

set(STM32_INCLUDE 
    "${CMAKE_SOURCE_DIR}/external/STM32F1/Drivers/STM32F1xx_HAL_Driver/Inc"
    "${CMAKE_SOURCE_DIR}/external/STM32F1/Drivers/CMSIS/Include"
    "${CMAKE_SOURCE_DIR}/external/STM32F1/Drivers/CMSIS/Core/Include"
    "${CMAKE_SOURCE_DIR}/external/STM32F1/Drivers/CMSIS/Device/ST/STM32F1xx/Include"
)

set(SYSTEM_INCLUDE
    "${CMAKE_SOURCE_DIR}/system"
)

set(COMPILER_FLAGS
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
    -Warray-bounds 
    -fno-strict-aliasing 
    -Wno-unused-const-variable 
    -specs=nano.specs 
    -specs=nosys.specs
)

set(TARGET_FLAGS 
    -mcpu=cortex-m3
    -mfloat-abi=soft
    -mlittle-endian
    -fno-exceptions
    -specs=nano.specs 
    -specs=nosys.specs
)