#ifndef POKEPLATINUM_STRUCT_02072014_H
#define POKEPLATINUM_STRUCT_02072014_H

#include "playtime.h"
#include "struct_defs/struct_02072014_sub1.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04_0 : 1;
    u8 unk_04_1 : 1;
    u8 unk_04_2 : 1;
    u8 unk_04_3 : 1;
    u8 padding_04_4 : 4;
    u8 unk_05;
    u8 padding_06[2];
    u16 unk_08[8];
    const PlayTime *playTime;
    u32 unk_1C;
    u32 unk_20;
    u32 unk_24;
    u16 unk_28;
    u16 playtimeHours;
    u16 unk_2C;
    u8 playtimeMinutes;
    u8 unk_2F;
    u8 unk_30;
    u8 unk_31;
    u8 unk_32;
    u8 unk_33;
    u8 unk_34;
    u8 unk_35;
    u8 padding_36[2];
    u32 unk_38;
    u32 unk_3C;
    u32 unk_40;
    u32 unk_44;
    UnkStruct_02072014_sub1 unk_48[8];
    u8 unk_68[1536];
    u16 unk_668;
    u16 unk_66A;
} TrainerCard;

#endif // POKEPLATINUM_STRUCT_02072014_H
