#ifndef POKEPLATINUM_STRUCT_OV19_021D8318_H
#define POKEPLATINUM_STRUCT_OV19_021D8318_H

#include "overlay019/struct_ov19_021D4DF0.h"
#include "overlay019/struct_ov19_021D61B0_decl.h"
#include "overlay019/struct_ov19_021DA384.h"
#include "overlay019/struct_ov19_021DCD18.h"

#include "bg_window.h"

typedef struct {
    u8 box;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    u32 unk_04;
    s32 unk_08;
    s32 unk_0C;
    s32 unk_10;
    s32 unk_14;
    u8 padding_18[24];
    u32 unk_30;
    u32 unk_34;
    fx32 unk_38[2][6];
    fx32 unk_68[2][6];
    u32 unk_98;
    BOOL unk_9C;
    u16 unk_A0;
    u8 unk_A2;
    u8 unk_A3;
    u8 unk_A4;
    u8 padding_A5[3];
    UnkStruct_ov19_021DCD18 unk_A8[2][30];
    u8 unk_CD8[30][640];
    u16 unk_57D8[30];
    u16 unk_5814[30];
    u8 padding_5850[4];
    int unk_5854;
    int unk_5858;
    int unk_585C;
    u16 unk_5860[9][16];
    UnkStruct_ov19_021DA384 *unk_58F0;
    BgConfig *unk_58F4;
    const UnkStruct_ov19_021D4DF0 *unk_58F8;
    UnkStruct_ov19_021D61B0 *unk_58FC;
} UnkStruct_ov19_021D8318;

#endif // POKEPLATINUM_STRUCT_OV19_021D8318_H
