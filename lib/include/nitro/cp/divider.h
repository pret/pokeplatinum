#ifndef NITRO_CP_DIVIDER_H_
#define NITRO_CP_DIVIDER_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/ioreg.h>

#define CP_DIV_32_32BIT_MODE (0UL << REG_CP_DIVCNT_MODE_SHIFT)
#define CP_DIV_64_32BIT_MODE (1UL << REG_CP_DIVCNT_MODE_SHIFT)
#define CP_DIV_64_64BIT_MODE (2UL << REG_CP_DIVCNT_MODE_SHIFT)

static inline void CP_SetDivControl (u16 parameter)
{
    reg_CP_DIVCNT = parameter;
}

static inline void CP_SetDivImm32_32_NS_ (u32 numer, u32 denom)
{
    *(REGType32 *)REG_DIV_NUMER_ADDR = numer;
    *(REGType64 *)REG_DIV_DENOM_ADDR = denom;
}

static inline void CP_SetDivImm64_32_NS_ (u64 numer, u32 denom)
{
    *(REGType64 *)REG_DIV_NUMER_ADDR = numer;
    *(REGType64 *)REG_DIV_DENOM_ADDR = denom;
}

static inline void CP_SetDivImm64_64_NS_ (u64 numer, u64 denom)
{
    *(REGType64 *)REG_DIV_NUMER_ADDR = numer;
    *(REGType64 *)REG_DIV_DENOM_ADDR = denom;
}

static inline void CP_SetDivImm32_32 (u32 numer, u32 denom)
{
    CP_SetDivImm32_32_NS_(numer, denom);
}

static inline void CP_SetDivImm64_32 (u64 numer, u32 denom)
{
    CP_SetDivImm64_32_NS_(numer, denom);
}

static inline void CP_SetDivImm64_64 (u64 numer, u64 denom)
{
    CP_SetDivImm64_64_NS_(numer, denom);
}

static inline void CP_SetDiv32_32 (u32 numer, u32 denom)
{
    reg_CP_DIVCNT = CP_DIV_32_32BIT_MODE;
    CP_SetDivImm32_32_NS_(numer, denom);
}

static inline void CP_SetDiv64_32 (u64 numer, u32 denom)
{
    reg_CP_DIVCNT = CP_DIV_64_32BIT_MODE;
    CP_SetDivImm64_32_NS_(numer, denom);
}

static inline void CP_SetDiv64_64 (u64 numer, u64 denom)
{
    reg_CP_DIVCNT = CP_DIV_64_64BIT_MODE;
    CP_SetDivImm64_64_NS_(numer, denom);
}

static inline s32 CP_IsDivBusy ()
{
    return (reg_CP_DIVCNT & REG_CP_DIVCNT_BUSY_MASK);
}

static inline void CP_WaitDiv ()
{
    while (CP_IsDivBusy()) {
    }
}

static inline s64 CP_GetDivResultImm64 ()
{
    return (s64)(*(REGType64 *)REG_DIV_RESULT_ADDR);
}

static inline s32 CP_GetDivResultImm32 ()
{
    return (s32)(*(REGType32 *)REG_DIV_RESULT_ADDR);
}

static inline s16 CP_GetDivResultImm16 ()
{
    return (s16)(*(REGType16 *)REG_DIV_RESULT_ADDR);
}

static inline s8 CP_GetDivResultImm8 ()
{
    return (s8)(*(REGType8 *)REG_DIV_RESULT_ADDR);
}

static inline s64 CP_GetDivResult64 ()
{
    CP_WaitDiv();
    return CP_GetDivResultImm64();
}

static inline s32 CP_GetDivResult32 ()
{
    CP_WaitDiv();
    return CP_GetDivResultImm32();
}

static inline s16 CP_GetDivResult16 ()
{
    CP_WaitDiv();
    return CP_GetDivResultImm16();
}

static inline s8 CP_GetDivResult8 ()
{
    CP_WaitDiv();
    return CP_GetDivResultImm8();
}

static inline s64 CP_GetDivRemainderImm64 ()
{
    return (s64)(*(REGType64 *)REG_DIVREM_RESULT_ADDR);
}

static inline s32 CP_GetDivRemainderImm32 ()
{
    return (s32)(*(REGType32 *)REG_DIVREM_RESULT_ADDR);
}

static inline s16 CP_GetDivRemainderImm16 ()
{
    return (s16)(*(REGType16 *)REG_DIVREM_RESULT_ADDR);
}

static inline s8 CP_GetDivRemainderImm8 ()
{
    return (s8)(*(REGType8 *)REG_DIVREM_RESULT_ADDR);
}

static inline s64 CP_GetDivRemainder64 ()
{
    CP_WaitDiv();
    return CP_GetDivRemainderImm64();
}

static inline s32 CP_GetDivRemainder32 ()
{
    CP_WaitDiv();
    return CP_GetDivRemainderImm32();
}

static inline s16 CP_GetDivRemainder16 ()
{
    CP_WaitDiv();
    return CP_GetDivRemainderImm16();
}

static inline s8 CP_GetDivRemainder8 ()
{
    CP_WaitDiv();
    return CP_GetDivRemainderImm8();
}

#ifdef __cplusplus
}
#endif

#endif
