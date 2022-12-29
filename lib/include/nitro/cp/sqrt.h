#ifndef NITRO_CP_SQRT_H_
#define NITRO_CP_SQRT_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/cp/context.h>

#define CP_SQRT_32BIT_MODE (0UL << REG_CP_SQRTCNT_MODE_SHIFT)
#define CP_SQRT_64BIT_MODE (1UL << REG_CP_SQRTCNT_MODE_SHIFT)

static inline void CP_SetSqrtControl (u16 param)
{
    reg_CP_SQRTCNT = param;
}

static inline void CP_SetSqrtImm64_NS_ (u64 param)
{
    *((REGType64 *)REG_SQRT_PARAM_ADDR) = param;
}
static inline void CP_SetSqrtImm32_NS_ (u32 param)
{
    *((REGType32 *)REG_SQRT_PARAM_ADDR) = param;
}

static inline void CP_SetSqrtImm64 (u64 param)
{
    *((REGType64 *)REG_SQRT_PARAM_ADDR) = param;
}

static inline void CP_SetSqrtImm32 (u32 param)
{
    *((REGType32 *)REG_SQRT_PARAM_ADDR) = param;
}

static inline void CP_SetSqrt64 (u64 param)
{
    reg_CP_SQRTCNT = CP_SQRT_64BIT_MODE;
    CP_SetSqrtImm64_NS_(param);
}

static inline void CP_SetSqrt32 (u32 param)
{
    reg_CP_SQRTCNT = CP_SQRT_32BIT_MODE;
    CP_SetSqrtImm32_NS_(param);
}

static inline s32 CP_IsSqrtBusy (void)
{
    return (reg_CP_SQRTCNT & REG_CP_SQRTCNT_BUSY_MASK);
}

static inline void CP_WaitSqrt (void)
{
    while (CP_IsSqrtBusy()) {
    }
}

static inline u32 CP_GetSqrtResultImm32 (void)
{
    return (u32)(*((REGType32 *)REG_SQRT_RESULT_ADDR));
}
static inline u16 CP_GetSqrtResultImm16 (void)
{
    return (u16)(*((REGType16 *)REG_SQRT_RESULT_ADDR));
}
static inline u8 CP_GetSqrtResultImm8 (void)
{
    return (u8)(*((REGType8 *)REG_SQRT_RESULT_ADDR));
}

static inline u32 CP_GetSqrtResult32 (void)
{
    CP_WaitSqrt();
    return CP_GetSqrtResultImm32();
}
static inline u16 CP_GetSqrtResult16 (void)
{
    CP_WaitSqrt();
    return CP_GetSqrtResultImm16();
}
static inline u8 CP_GetSqrtResult8 (void)
{
    CP_WaitSqrt();
    return CP_GetSqrtResultImm8();
}

#ifdef __cplusplus
}
#endif

#endif
