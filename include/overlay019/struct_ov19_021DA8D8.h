#ifndef POKEPLATINUM_STRUCT_OV19_021DA8D8_H
#define POKEPLATINUM_STRUCT_OV19_021DA8D8_H

#include <nnsys.h>

#include "overlay019/struct_ov19_021D4DF0.h"
#include "overlay019/struct_ov19_021D61B0_decl.h"

#include "cell_actor.h"

typedef struct {
    CellActorCollection *unk_00;
    CellActor *unk_04;
    void *unk_08;
    void *unk_0C;
    NNSG2dCellDataBank *unk_10;
    NNSG2dAnimBankData *unk_14;
    NNSG2dImageProxy unk_18;
    CellActorCollection *unk_3C;
    const UnkStruct_ov19_021D4DF0 *unk_40;
    UnkStruct_ov19_021D61B0 *unk_44;
} UnkStruct_ov19_021DA8D8;

#endif // POKEPLATINUM_STRUCT_OV19_021DA8D8_H
