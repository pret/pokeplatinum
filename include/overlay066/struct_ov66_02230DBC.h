#ifndef POKEPLATINUM_STRUCT_OV66_02230DBC_H
#define POKEPLATINUM_STRUCT_OV66_02230DBC_H

#include "trainer_info.h"
#include "overlay066/struct_ov66_0222DFF8_decl.h"
#include "overlay066/struct_ov66_0222E294.h"
#include "overlay066/struct_ov66_02232068.h"

typedef struct {
    u32 unk_00;
    UnkStruct_ov66_0222E294 unk_04;
    UnkStruct_ov66_02232068 unk_08;
    BOOL unk_1C;
    TrainerInfo * unk_20[4];
    UnkStruct_ov66_0222DFF8 * unk_30;
} UnkStruct_ov66_02230DBC;

#endif // POKEPLATINUM_STRUCT_OV66_02230DBC_H
