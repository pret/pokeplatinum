#ifndef NITRO_FX_CP_H_
#define NITRO_FX_CP_H_

#include <nitro/fx/fx.h>
#include <nitro/fx/fx_const.h>
#include <nitro/cp/divider.h>
#include <nitro/cp/sqrt.h>

#ifdef __cplusplus
extern "C" {
#endif

fx32 FX_Div(fx32 numer, fx32 denom);
fx64c FX_DivFx64c(fx32 numer, fx32 denom);
SDK_DECL_INLINE fx32 FX_Mod(fx32 numer, fx32 denom);
fx32 FX_Sqrt(fx32 x);
fx32 FX_Inv(fx32 denom);
fx64c FX_InvFx64c(fx32 denom);
fx32 FX_InvSqrt(fx32 x);

void FX_DivAsync(fx32 numer, fx32 denom);
SDK_DECL_INLINE void FX_DivAsyncImm(fx32 numer, fx32 denom);
fx64c FX_GetDivResultFx64c(void);
fx32 FX_GetDivResult(void);
fx64c FX_GetDivRemainderFx64c(void);
fx32 FX_GetDivRemainder(void);

void FX_InvAsync(fx32 denom);
SDK_DECL_INLINE void FX_InvAsyncImm(fx32 denom);
SDK_DECL_INLINE fx64c FX_GetInvResultFx64c(void);
SDK_DECL_INLINE fx32 FX_GetInvResult(void);

void FX_SqrtAsync(fx32 x);
void FX_SqrtAsyncImm(fx32 x);
fx32 FX_GetSqrtResult(void);

s32 FX_DivS32(s32 a, s32 b);
s32 FX_ModS32(s32 a, s32 b);

#define FX_DIVISION_BY_ZERO(a, b) \
    SDK_WARNING(b != 0, "Division by zero(%d / %d)", a, b)

SDK_INLINE void FX_InvAsyncImm (fx32 denom)
{
    SDK_ASSERT(!CP_IsDivBusy());
    FX_DIVISION_BY_ZERO(FX32_ONE, denom);

    CP_SetDivImm64_32((u64)FX32_ONE << 32, (u32)denom);
}

SDK_INLINE fx64c FX_GetInvResultFx64c (void)
{
    return FX_GetDivResultFx64c();
}

SDK_INLINE fx32 FX_GetInvResult (void)
{
    return FX_GetDivResult();
}

SDK_INLINE void FX_DivAsyncImm (fx32 numer, fx32 denom)
{
    SDK_ASSERT(!CP_IsDivBusy());
    FX_DIVISION_BY_ZERO(numer, denom);

    CP_SetDivImm64_32((u64)numer << 32, (u32)denom);
}

SDK_INLINE fx32 FX_Mod (fx32 numer, fx32 denom)
{
    return (fx32)FX_ModS32(numer, denom);
}

#ifdef __cplusplus
}
#endif

#endif
