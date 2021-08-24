#include <stdint.h>

uint32_t SystemCoreClock = 4000000U;

const uint8_t  AHBPrescTable[16] = {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1U, 2U, 3U, 4U, 6U, 7U, 8U, 9U};
const uint8_t  APBPrescTable[8] =  {0U, 0U, 0U, 0U, 1U, 2U, 3U, 4U};
const uint32_t MSIRangeTable[16] = {48000000U,24000000U,16000000U,12000000U, 4000000U, 2000000U, 1500000U,\
                                    1000000U, 3072000U, 1536000U,1024000U, 768000U, 400000U, 200000U, 150000U, 100000U};
