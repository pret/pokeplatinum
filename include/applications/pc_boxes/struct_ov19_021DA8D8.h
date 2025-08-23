#ifndef POKEPLATINUM_STRUCT_OV19_021DA8D8_H
#define POKEPLATINUM_STRUCT_OV19_021DA8D8_H

#include <nnsys.h>

#include "applications/pc_boxes/box_application.h"
#include "applications/pc_boxes/struct_ov19_021D61B0_decl.h"

#include "sprite.h"

typedef struct {
    SpriteList *unk_00;
    Sprite *unk_04;
    void *unk_08;
    void *unk_0C;
    NNSG2dCellDataBank *unk_10;
    NNSG2dAnimBankData *unk_14;
    NNSG2dImageProxy unk_18;
    SpriteList *unk_3C;
    const BoxApplication *unk_40;
    UnkStruct_ov19_021D61B0 *unk_44;
} UnkStruct_ov19_021DA8D8;

#endif // POKEPLATINUM_STRUCT_OV19_021DA8D8_H
