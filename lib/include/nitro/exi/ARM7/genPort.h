#ifndef NITRO_EXI_GENPORT_H_
#define NITRO_EXI_GENPORT_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/types.h>
#include <nitro/memorymap.h>

typedef enum {
    EXI_GPIOIF_SERIAL = 0x0000,
    EXI_GPIOIF_UNDEF = REG_EXI_RCNT0_L_RE0_MASK,
    EXI_GPIOIF_GPIO = REG_EXI_RCNT0_L_RE1_MASK,
    EXI_GPIOIF_JOY = REG_EXI_RCNT0_L_RE1_MASK | REG_EXI_RCNT0_L_RE0_MASK
} EXIGpioIF;

#define EXI_GPIOIF_MASK (REG_EXI_RCNT0_L_RE1_MASK | REG_EXI_RCNT0_L_RE0_MASK)

#define EXI_GPIO_PADX REG_EXI_RCNT0_H_DATA_R0_MASK
#define EXI_GPIO_PADY REG_EXI_RCNT0_H_DATA_R1_MASK
#define EXI_GPIO_PADDEBUG REG_EXI_RCNT0_H_DATA_R3_MASK
#define EXI_GPIO_TOUCHPANEL REG_EXI_RCNT0_H_DATA_R6_MASK
#define EXI_GPIO_GPCOMM_DAT REG_EXI_RCNT0_H_DATA_R7_MASK
#define EXI_GPIO_GPCOMM_CLK REG_EXI_RCNT1_DATA_RB_MASK

#if defined(SDK_TEG)
#define EXI_GPIO_PADFOLD REG_EXI_RCNT0_H_DATA_R2_MASK
#elif defined(SDK_TS)
#define EXI_GPIO_PADFOLD REG_EXI_RCNT0_H_DATA_R7_MASK
#endif

void EXIi_SelectRcnt(EXIGpioIF type);
void EXIi_SetBitRcnt0L(u16 mask, u16 data);
void EXIi_SetBitRcnt0H(u16 mask, u16 data);
void EXIi_SetBitRcnt1(u16 mask, u16 data);
u16 EXIi_GetBitRcnt0L(u16 mask);
u16 EXIi_GetBitRcnt0H(u16 mask);
u16 EXIi_GetBitRcnt1(u16 mask);
void EXIi_SendBitRcnt0L(u16 mask, u16 data);
void EXIi_SendBitRcnt0H(u16 mask, u16 data);
void EXIi_SendBitRcnt1(u16 mask, u16 data);
u16 EXIi_RecvBitRcnt0L(u16 mask);
u16 EXIi_RecvBitRcnt0H(u16 mask);
u16 EXIi_RecvBitRcnt1(u16 mask);

static inline void EXIi_SetRcnt0L (u16 val)
{
    *(REGType16 *)REG_RCNT0_L_ADDR = val;
}

static inline void EXIi_SetRcnt0H (u16 val)
{
    *(REGType16 *)REG_RCNT0_H_ADDR = val;
}

static inline void EXIi_SetRcnt1 (u16 val)
{
    *(REGType16 *)REG_RCNT1_ADDR = val;
}

static inline u16 EXIi_GetRcnt0L (void)
{
    return *(REGType16 *)REG_RCNT0_L_ADDR;
}

static inline u16 EXIi_GetRcnt0H (void)
{
    return *(REGType16 *)REG_RCNT0_H_ADDR;
}

static inline u16 EXIi_GetRcnt1 (void)
{
    return *(REGType16 *)REG_RCNT1_ADDR;
}

#ifdef __cplusplus
}
#endif

#endif
