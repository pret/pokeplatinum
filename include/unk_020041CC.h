#ifndef POKEPLATINUM_UNK_020041CC_H
#define POKEPLATINUM_UNK_020041CC_H

#include <nitro/snd.h>
#include <nitro/spi.h>
#include <nnsys.h>

#include "struct_defs/struct_02004CB4.h"

void sub_020041CC(u8 param0);
u8 sub_020041DC(void);
void sub_020041E8(u16 param0);
u16 sub_020041FC();
void sub_02004208(u16 param0);
u16 sub_02004218();
void sub_02004224(u16 param0);
void sub_02004234(u8 param0);
void sub_02004258(u8 param0);
int sub_0200426C(u8 param0);
BOOL sub_02004550(u8 param0, u16 param1, int param2);
void sub_020047E8(u16 param0, u16 param1);
void sub_02004950(u16 param0);
void sub_02004964(void);
int sub_02004974(int param0);
void sub_020049F4(u8 param0, BOOL param1);
void sub_02004A3C();
void sub_02004A54(int param0, int param1, int param2);
void sub_02004A68(int param0, int param1);
void sub_02004A84(int param0);
void sub_02004AA0(int param0, int param1);
void sub_02004AD4(u16 param0, int param1);
BOOL sub_02004AE8(int param0, int param1, u16 param2);
int sub_02004B04(int param0);
u8 sub_02004B18(u16 param0);
int sub_02004B34(NNSSndHandle *param0);
const NNSSndArcBankInfo *sub_02004B3C(int param0);
u16 sub_02004B48(int param0);
MICResult sub_02004B5C(MICAutoParam *param0);
MICResult sub_02004B64(void);
MICResult sub_02004B70(MICSamplingType param0, void *param1, MICCallback param2, void *param3);
NNSSndWaveOutHandle *sub_02004B78(u32 param0);
BOOL sub_02004BCC(u32 param0);
void sub_02004C4C(u32 param0);
BOOL sub_02004CB4(UnkStruct_02004CB4 *param0, u32 param1);
void sub_02004CF4(u32 param0);
BOOL sub_02004D04(u32 param0);
void sub_02004D14(u32 param0, u8 param1);
void sub_02004D2C(u32 param0, u32 param1);
void sub_02004D40(u32 param0, int param1);
BOOL sub_02004D78(u16 param0, int param1, int param2, u32 param3, int param4);
void sub_02004E84(u32 param0);
BOOL sub_02004EC0(void);
BOOL sub_02004EC8(int param0);
void sub_02004EEC(int param0);
void sub_02004EF4(int param0, int param1);
BOOL sub_02004EFC(void);
void sub_02004F44(void);
void sub_02004F4C(int param0);
void sub_02004F68(int param0, u16 param1, int param2);
void sub_02004F7C(u16 param0, u16 param1, int param2);
void sub_02004F94(int param0, u16 param1, int param2);
void sub_02004FA8(int param0, int param1);
void Sound_SetPlaybackMode(BOOL param0);
void sub_02004FCC(int param0);
void sub_02004FDC(int param0);
int sub_02004FEC(void);
void sub_0200500C(int param0);
void *sub_02005014(void);
void sub_0200501C(int param0);
BOOL sub_0200502C(u8 param0, u16 param1, int param2, int param3, u8 param4, void *param5);
BOOL sub_02005068(u8 param0, u16 param1, int param2, int param3, int param4, u8 param5, void *param6);
const u8 *sub_020050E0(const SNDWaveData *param0);
const u32 sub_020050EC(const SNDWaveData *param0);
const SNDWaveData *sub_020050F8(int param0);
u32 sub_02005188(int param0, const SNDWaveData *param1, int param2);
u32 sub_020051C4(int param0);
void sub_020051D0(const SNDWaveData *param0, u8 *param1, int param2, int param3);
void sub_020053CC(int param0);
void sub_0200544C(int param0, int param1);
void sub_02005454(BOOL param0);
void sub_02005464(BOOL param0);

#endif // POKEPLATINUM_UNK_020041CC_H
