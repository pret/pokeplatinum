#ifndef POKEPLATINUM_UNK_0201D15C_H
#define POKEPLATINUM_UNK_0201D15C_H


#include <nitro/fx/fx.h>

fx32 sub_0201D15C(u16 param0);
fx32 sub_0201D1D4(u16 param0);
fx32 sub_0201D250(u16 param0);
fx32 sub_0201D264(u16 param0);
u16  sub_0201D278(u16 param0);
u16  sub_0201D2A4(u16 param0);
fx32 sub_0201D2B8(fx32 param0);
fx32 sub_0201D2C4(fx32 param0);
u32  LCRNG_GetSeed(void);
void LCRNG_SetSeed(u32 seed);
u16  LCRNG_Next(void);
u32  ARNG_Next(u32 seed);
void MTRNG_SetSeed(u32 seed);
u32  MTRNG_Next(void);
void sub_0201D470(MtxFx22 * param0, u16 param1, fx32 param2, fx32 param3, u8 param4);
s32  sub_0201D4CC(s32 param0, s32 param1, s32 param2, s32 param3, u32 param4);
s32  sub_0201D580(u16 param0, s32 param1);
u32  sub_0201D5B8(const void * param0, u32 param1);
void sub_0201D5D4(void * param0, u32 param1, u32 param2);
void sub_0201D600(void * param0, u32 param1, u32 param2);
u16  sub_0201D628(const void * param0, u32 param1);
void sub_0201D640(int param0);

#endif // POKEPLATINUM_UNK_0201D15C_H
