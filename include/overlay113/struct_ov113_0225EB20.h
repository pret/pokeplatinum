#ifndef POKEPLATINUM_STRUCT_OV113_0225EB20_H
#define POKEPLATINUM_STRUCT_OV113_0225EB20_H

#include "overlay113/struct_ov113_0225E6B8_decl.h"
#include "overlay113/struct_ov113_0225EB20_sub1.h"
#include "overlay113/struct_ov113_0225EDCC.h"
#include "overlay113/struct_ov113_0225FD80.h"

#include <nnsys.h>

typedef struct {
    UnkStruct_ov113_0225EB20_sub1 unk_00;
    UnkStruct_ov113_0225FD80 unk_B0;
    UnkStruct_ov113_0225E6B8 * unk_B4[128];
    UnkStruct_ov113_0225E6B8 * unk_2B4[128];
    NNSG3dResTex * unk_4B4[32];
    u32 unk_534[2];
    UnkStruct_ov113_0225EDCC unk_53C[128];
    u8 unk_73C;
    u8 unk_73D;
    u8 unk_73E;
    u8 unk_73F;
    u8 unk_740;
    s16 unk_742;
} UnkStruct_ov113_0225EB20;

#endif // POKEPLATINUM_STRUCT_OV113_0225EB20_H
