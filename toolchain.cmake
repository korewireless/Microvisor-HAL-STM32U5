set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR arm)

set(CMAKE_C_COMPILER arm-none-eabi-gcc CACHE FILEPATH "C compiler")
set(CMAKE_CXX_COMPILER arm-none-eabi-g++ CACHE FILEPATH "C++ compiler")
set(CMAKE_C_OUTPUT_EXTENSION .o)

set(CMAKE_C_LINK_EXECUTABLE "<CMAKE_C_COMPILER> -Wl,-Map=<TARGET>.map <CMAKE_C_LINK_FLAGS> <LINK_FLAGS> <OBJECTS>  -o <TARGET> <LINK_LIBRARIES>")
set(CMAKE_ASM_COMPILER arm-none-eabi-gcc CACHE FILEPATH "ASM compiler")
set(CMAKE_ASM_COMPILE_OBJECT "<CMAKE_ASM_COMPILER> <DEFINES> <INCLUDES> <FLAGS> -o <OBJECT> -c <SOURCE>")
set(CMAKE_INCLUDE_FLAG_ASM "-I")
set(CMAKE_OBJCOPY arm-none-eabi-objcopy CACHE FILEPATH "")
set(CMAKE_OBJDUMP arm-none-eabi-objdump CACHE FILEPATH "")
set(CMAKE_SIZE arm-none-eabi-size CACHE FILEPATH "")

set(CMAKE_C_COMPILER_WORKS ON)
set(CMAKE_CXX_COMPILER_WORKS ON)

set(CMAKE_C_FLAGS "-mcpu=cortex-m33 -std=gnu11 -g3 \
  -DUSE_CUSTOM_SYSTICK_HANDLER_IMPLEMENTATION -DUSE_HAL_DRIVER -DSTM32L552xx \
  -DSTM32U585xx -DDEBUG -DCMSIS_device_header=\\\"stm32u585xx.h\\\" \
  -c -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage \
  -MMD -MP --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=soft -mthumb")

set(CMAKE_C_LINK_FLAGS "-mcpu=cortex-m33 --specs=nosys.specs -Wl,--gc-sections -static \
  -Wl,--start-group -lc -lm -Wl,--end-group -mfloat-abi=soft" CACHE INTERNAL "")

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)
