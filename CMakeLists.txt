cmake_minimum_required(VERSION 3.12)

set(CMAKE_TOOLCHAIN_FILE "${CMAKE_SOURCE_DIR}/toolchain.cmake")

project(mv_stm32u585_hal VERSION 0.0.1 DESCRIPTION "Microvisor STM32U585 standard peripheral library")

add_subdirectory(twilio-microvisor-sdk)

add_library(mv_stm32u585_hal STATIC
    mv_prescalers.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_adc.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_adc_ex.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_comp.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_cordic.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_cortex.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_crc.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_crc_ex.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_cryp.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_cryp_ex.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_dac.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_dac_ex.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_dcache.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_dcmi.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_dma2d.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_dma.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_dma_ex.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_exti.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_fdcan.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_flash.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_flash_ex.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_fmac.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_gpio.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_gtzc.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_hash.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_hash_ex.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_hcd.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_i2c.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_i2c_ex.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_icache.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_irda.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_iwdg.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_lptim.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_mdf.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_mmc.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_mmc_ex.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_msp_template.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_nand.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_nor.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_opamp.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_opamp_ex.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_ospi.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_otfdec.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_pcd.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_pcd_ex.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_pka.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_pssi.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_pwr.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_pwr_ex.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_ramcfg.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_rcc.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_rcc_ex.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_rng.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_rng_ex.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_rtc.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_rtc_ex.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_sai.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_sai_ex.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_sd.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_sd_ex.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_smartcard.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_smartcard_ex.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_smbus.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_smbus_ex.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_spi.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_spi_ex.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_sram.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_tim.c
    #Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_timebase_rtc_alarm_template.c
    #Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_timebase_rtc_wakeup_template.c
    #Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_timebase_tim_template.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_tim_ex.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_tsc.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_uart.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_uart_ex.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_usart.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_usart_ex.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_hal_wwdg.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_ll_adc.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_ll_comp.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_ll_cordic.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_ll_crc.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_ll_crs.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_ll_dac.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_ll_dlyb.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_ll_dma2d.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_ll_dma.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_ll_exti.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_ll_fmac.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_ll_fmc.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_ll_gpio.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_ll_i2c.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_ll_icache.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_ll_lpgpio.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_ll_lptim.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_ll_lpuart.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_ll_opamp.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_ll_pka.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_ll_pwr.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_ll_rcc.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_ll_rng.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_ll_rtc.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_ll_sdmmc.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_ll_spi.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_ll_tim.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_ll_ucpd.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_ll_usart.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_ll_usb.c
    Drivers/STM32U5xx_HAL_Driver/Src/stm32u5xx_ll_utils.c
)

set_target_properties(mv_stm32u585_hal PROPERTIES VERSION ${PROJECT_VERSION})

set_target_properties(mv_stm32u585_hal PROPERTIES SOVERSION 1)

set_property(TARGET mv_stm32u585_hal PROPERTY COMPILE_DEFINITIONS USE_FULL_LL_DRIVER)

target_include_directories(mv_stm32u585_hal PRIVATE .)
target_include_directories(mv_stm32u585_hal PRIVATE Drivers/CMSIS/Include)
target_include_directories(mv_stm32u585_hal PRIVATE Drivers/CMSIS/Device/ST/STM32U5xx/Include)
target_include_directories(mv_stm32u585_hal PRIVATE Drivers/STM32U5xx_HAL_Driver/Inc)
target_include_directories(mv_stm32u585_hal PRIVATE Drivers/STM32U5xx_HAL_Driver/Src)

target_link_libraries(mv_stm32u585_hal LINK_PUBLIC twilio-microvisor-sdk)

install(TARGETS ${PROJECT_NAME} 
    LIBRARY DESTINATION lib/${PROJECT_NAME}
    PUBLIC_HEADER DESTINATION include)
