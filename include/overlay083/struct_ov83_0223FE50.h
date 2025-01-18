#ifndef POKEPLATINUM_STRUCT_OV83_0223FE50_H
#define POKEPLATINUM_STRUCT_OV83_0223FE50_H

#include "overlay083/struct_ov83_0223D2E8.h"
#include "overlay083/struct_ov83_0223DB4C.h"
#include "overlay083/struct_ov83_0223DB4C_sub1.h"
#include "overlay083/struct_ov83_022401AC.h"

#include "poffin.h"
#include "trainer_info.h"

typedef struct {
    UnkStruct_ov83_0223DB4C_sub1 unk_00;
    UnkStruct_ov83_0223D2E8 unk_04;
    UnkStruct_ov83_022401AC unk_20;
    UnkStruct_ov83_0223DB4C unk_34;
    UnkStruct_ov83_022401AC unk_58;
    UnkStruct_ov83_0223DB4C unk_6C;
    UnkStruct_ov83_0223D2E8 unk_90[4];
    Poffin *unk_100;
    u32 unk_104[4];
    UnkStruct_ov83_0223DB4C_sub1 unk_114[4];
    u8 unk_124[4];
    u8 unk_128[4];
    u8 unk_12C[4];
    u8 unk_130[4];
    const TrainerInfo *unk_134[4];
    u8 unk_144;
    u8 unk_145;
} UnkStruct_ov83_0223FE50;

#endif // POKEPLATINUM_STRUCT_OV83_0223FE50_H
