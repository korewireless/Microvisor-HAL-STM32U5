# Twilio Microvisor HAL 


This is the STM32 standard peripheral library, ported for Twilio Microvisor running on an STM32U585.
It is a repackaging and expansion upon ST Microelectronics' [STM32CubeU5](https://github.com/STMicroelectronics/STM32CubeU5).
Code authored by Twilio is licensed under [Apache 2.0](LICENSE), all other code is licensed [as follows](LICENSE-STM32CubeU5.md).

The Microvisor specific changes in this repository bring compatibility of the STM32CubeU5's
hardware abstraction layer (HAL) to Twilio's Microvisor platform.

## STM32 Standard Peripheral library Microvisor port

The key differences are that accesses to RCC are intercepted, so that the standard library calls such
as __HAL_RCC_GPIOA_CLK_ENABLE() LL_RCC_WriteReg, etc can be used as if they were running without
Microvisor - The intention is to make it easy to port code to Microvisor from a 'bare metal' implementation.

For supported peripherals, the accesses call through to the Microvisor non-secure API (mv_api.h) functions
mvPeriphPeek32(...) and mvPeriphPoke32(...) which enable certain registers withing supported peripherals
read/write access to certain bits of those registers. This is particularly important for RCC, as without
such support, non-secure code would not be able to determine bus and clock frequencies which are needed
to configure other peripherals. For example UARTs.

Currently supported peripherals:
RCC

## Building with Docker

Building the image:

        docker build --build-arg UID=$(id -u) --build-arg GID=$(id -g) -t twilio-microvisor-hal-stm32u5 .

Running the build:

        docker run -it --rm -v $(pwd)/:/home/ --name twilio-microvisor-hal-stm32u5 twilio-microvisor-hal-stm32u5

## Building in Ubuntu

Dependencies:

- cmake
- gcc-arm-none-eabi (tested with 9-2019-q4)

Getting ready to build:

- Generate the Makefiles and project:

        cmake -S . -B build/

- Build the executable:

        cmake --build build --clean-first

The library will be built into `build/libtwilio-microvisor-hal-stm32u5.a`.

NB: The included CMakeFiles.txt is a "kitchen sink" inclusion of the HAL.  You can also restrict the included
files from the HAL to just those your project may need.  An example of this approach can be found in our
[FreeRTOS sample](https://github.com/twilio/twilio-microvisor-freertos/)

You can then link your code against the microvisor port of the standard peripheral library, rather
than the standard peripheral library itself.

Alternatively, you can import the entire repository instead of importing the standard peripheral library.

Note that the file mv_prescalers.c is not required if you already have a target defined in your project
that defines the relevant prescaler values.

