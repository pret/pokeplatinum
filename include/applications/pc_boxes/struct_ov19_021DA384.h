#ifndef POKEPLATINUM_STRUCT_OV19_021DA384_H
#define POKEPLATINUM_STRUCT_OV19_021DA384_H

#include <nnsys.h>

#include "applications/pc_boxes/box_application.h"
#include "applications/pc_boxes/struct_ov19_021D61B0_decl.h"

#include "narc.h"
#include "sprite.h"

typedef struct {
    void *unk_00;
    NNSG2dAnimBankData *unk_04;
    void *unk_08;
    u8 padding_0C;
    NNSG2dCellDataBank *unk_10;
    void *unk_14;
    void *unk_18;
    NNSG2dCellDataBank *unk_1C;
    NNSG2dAnimBankData *unk_20;
    SpriteList *unk_24;
    u8 padding_28[24];
    const BoxApplication *unk_40;
    UnkStruct_ov19_021D61B0 *unk_44;
    NARC *unk_48;
    u8 unk_4C[640];
} UnkStruct_ov19_021DA384;

#endif // POKEPLATINUM_STRUCT_OV19_021DA384_H
