#ifndef POKEPLATINUM_STRUCT_DEF_WI_FI_LIST_H
#define POKEPLATINUM_STRUCT_DEF_WI_FI_LIST_H

#include <dwc.h>

typedef struct {
    u16 unk_00[8];
    u16 unk_10[8];
    u32 unk_20;
    u16 unk_24;
    u16 unk_26;
    u16 unk_28;
    u16 unk_2A;
    u8 unk_2C;
    u8 unk_2D;
    u8 unk_2E;
    u8 unk_2F;
    u16 unk_30;
    u16 unk_32;
    u16 unk_34;
    u16 unk_36;
} UnkStruct_0202B370_sub1;

typedef struct WiFiList {
    DWCUserData unk_00;
    DWCFriendData unk_40[32];
    UnkStruct_0202B370_sub1 unk_1C0[32];
} WiFiList;

#endif // POKEPLATINUM_STRUCT_DEF_WI_FI_LIST_H
