# Microvisor STM32U585 HAL

This repo provides a version of ST Microelectronics’ STM32 Standard Peripheral Library that has been modified to support Microvisor running on an STM32U585 microcontroller.

It is a repackaging and expansion of ST Microelectronics’ [STM32CubeU5](https://github.com/STMicroelectronics/STM32CubeU5) hardware abstraction layer (HAL).

## About the Microvisor port

The key difference between the STM32CubeU5 HAL and the Microvisor version is that direct accesses to `RCC` by non-secure code, which are not permitted under Microvisor, are here intercepted and actioned by Microvisor.

This ensures that standard library functions such as `__HAL_RCC_GPIOA_CLK_ENABLE()`, `LL_RCC_WriteReg()`, etc. can continue to be called as if they were running without Microvisor present. The intention is to make it as easy as possible to port a “bare metal” implementation to Microvisor.

For supported peripherals, accesses are mediated by the Microvisor non-secure system call functions [`mvPeriphPeek32()`](https://www.twilio.com/docs/iot/microvisor/syscalls/device#mvperiphpeek32) and [`mvPeriphPoke32()`](https://www.twilio.com/docs/iot/microvisor/syscalls/device#mvperiphpoke32). These functions are declared in `mv_syscalls.h` and allow certain registers within supported peripherals to have read/write access to defined bits within those registers.

This is particularly important for `RCC` as without such support, non-secure code would not be able to determine the bus and clock frequencies which are needed to configure other peripherals, such as UARTs.

### Currently supported peripherals

* `RCC`

### Documentation

To make use of the HAL, you should follow ST Microelectronics’ [HAL documentation](https://www.st.com/content/ccc/resource/technical/document/user_manual/group2/17/c1/76/07/05/1c/4e/fb/DM00813340/files/DM00813340.pdf/jcr:content/translations/en.DM00813340.pdf) (PDF).

**Note** Access to this document may require signing in to the [ST Microelectronics website](https://www.st.com/).

## Build with Docker

Build the image:

```shell
docker build --build-arg UID=$(id -u) --build-arg GID=$(id -g) -t microvisor-hal-stm32u5 .
```

Run the build:

```shell
docker run -it --rm -v $(pwd)/:/home/ --name lib-microvisor-hal-stm32u5 microvisor-hal-stm32u5
```

## Build in Ubuntu

This build mode has the following dependencies:

- `cmake`
- `gcc-arm-none-eabi` — tested with 9-2019-q4

Prepare to build:

- Generate the Makefiles and project:

```shell
cmake -S . -B build
```

- Build the executable:

```shell
cmake --build build --clean-first
```

The library will be built into `build/libmicrovisor-hal-stm32u5.a`.

**Note** The included `CMakeFiles.txt` is a “kitchen sink“ inclusion of the HAL. However, you can restrict the included files from the HAL to just those your project may need. An example of this approach is demonstrated in our [FreeRTOS sample](https://github.com/korewireless/Microvisor-Demo-CMSIS-Freertos).

You can then link your code against the Microvisor port of the Standard Peripheral Library, rather than the Standard Peripheral Library itself.

Alternatively, you can import the entire repository instead of importing the Standard Peripheral Library.

**Note** The file `mv_prescalers.c` is not required if you already have a target in your project that defines the relevant prescaler values.

## Support and Feedback

[Please contact Microvisor Support](mailto:support@microvisor.com).

## License

Code authored by KORE Wireless is made available under the terms of the [Apache 2.0](LICENSE) license and is
© 2021-23, KORE Wireless.

All other code is licensed [as described in the linked file](LICENSE-STM32CubeU5.md) and is
© 2021, [STMicroelectronics and affiliates](LICENSE-STM32CubeU5.md).
