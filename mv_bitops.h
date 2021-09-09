#ifndef MV_BITOPS_H
#define MV_BITOPS_H
#include "mv_syscalls.h"

inline static uint32_t ReadRegisterOrZeroOnError(uint32_t reg)
{
    uint32_t tmp = 0;
    mvPeriphPeek32(reg, &tmp);
    return tmp;
}

#define MV_SET_BIT(REG, BIT) mvPeriphPoke32((uint32_t) &REG, BIT, BIT)
#define MV_CLEAR_BIT(REG, BIT) mvPeriphPoke32((uint32_t) &REG, BIT, 0)
#define MV_READ_BIT(REG, BIT) (ReadRegisterOrZeroOnError((uint32_t) &REG) & (BIT))
#define MV_CLEAR_REG(REG) mvPeriphPoke32((uint32_t) &REG, 0xffffffff, 0)
#define MV_WRITE_REG(REG, VAL) mvPeriphPoke32((uint32_t) &REG, 0xffffffff, VAL)
#define MV_READ_REG(REG) ReadRegisterOrZeroOnError((uint32_t) &REG)
#define MV_MODIFY_REG(REG, CLEARMASK, SETMASK)  MV_WRITE_REG((REG), (((MV_READ_REG(REG)) & (~(CLEARMASK))) | (SETMASK)))
#endif
