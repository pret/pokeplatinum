#ifndef POKEPLATINUM_UNK_02003B60_H
#define POKEPLATINUM_UNK_02003B60_H

#include <nnsys.h>

#include "struct_defs/chatot_cry.h"
#include "game_options.h"

typedef struct SoundSystem {
    NNSSndArc unk_00;
    NNSSndHeapHandle unk_F8;
    u8 unk_FC[769024];
    NNSSndHandle unk_BBCFC[9];
    NNSSndWaveOutHandle unk_BBD20[2];
    const NNSSndArcBankInfo *unk_BBD28;
    u8 unk_BBD2C[4096] ATTRIBUTE_ALIGN(32);
    UnkStruct_020052C8 unk_BCD2C;
    u16 unk_BCD48;
    u8 unk_BCD4A;
    u8 unk_BCD4B;
    int unk_BCD4C;
    int unk_BCD50;
    int unk_BCD54;
    u16 unk_BCD58;
    u16 unk_BCD5A;
    u8 unk_BCD5C;
    u8 unk_BCD5D;
    u16 unk_BCD5E;
    u8 unk_BCD60;
    u8 unk_BCD61;
    u8 unk_BCD62;
    u8 unk_BCD63;
    u8 unk_BCD64;
    u8 unk_BCD65;
    u8 unk_BCD66;
    u8 unk_BCD67;
    int unk_BCD68[7];
    u8 unk_BCD84;
    u8 unk_BCD85;
    u16 unk_BCD86;
    const SNDWaveData *unk_BCD88;
    void *unk_BCD8C;
    int unk_BCD90;
    SysTask *unk_BCD94;
    ChatotCry *unk_BCD98;
    ChatotCry *unk_BCD9C[4];
    int unk_BCDAC[2];
    int unk_BCDB4[2];
    int unk_BCDBC[2];
    int unk_BCDC4[2];
    u16 unk_BCDCC[2];
    u8 unk_BCDD0[2];
    u8 unk_BCDD2;
    u8 unk_BCDD3;
} SoundSystem;

void sub_02003B60(ChatotCry *param0, Options *param1);
void UpdateSound(void);
void sub_02003D0C(int param0);
SoundSystem *sub_02003D54(void);
void *sub_02003D5C(int param0);
int sub_02004014(int *param0);
void sub_0200403C(int param0);
BOOL sub_02004050(u16 param0);
BOOL sub_02004068(u16 param0);
BOOL sub_02004080(u16 param0, u32 param1);
BOOL sub_0200409C(u16 param0);
BOOL sub_020040B4(u16 param0);
NNSSndHandle *sub_020040CC(int param0);
int sub_020040F0(int param0);

#endif // POKEPLATINUM_UNK_02003B60_H
