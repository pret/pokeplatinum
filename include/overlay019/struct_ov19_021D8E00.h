#ifndef POKEPLATINUM_STRUCT_OV19_021D8E00_H
#define POKEPLATINUM_STRUCT_OV19_021D8E00_H

#include <nnsys.h>

#include "overlay019/struct_ov19_021D4DF0.h"
#include "overlay019/struct_ov19_021D61B0_decl.h"
#include "overlay019/struct_ov19_021D8318.h"
#include "overlay019/struct_ov19_021DA384.h"
#include "overlay019/struct_ov19_021DC680.h"
#include "overlay019/struct_ov19_021DCD18.h"
#include "overlay019/struct_ov19_021DE3E8_decl.h"

#include "cell_actor.h"

typedef struct {
    CellActorCollection *unk_00;
    CellActor *unk_04;
    CellActor *unk_08;
    CellActor *unk_0C;
    CellActor *unk_10;
    void *unk_14;
    void *unk_18;
    NNSG2dCellDataBank *unk_1C;
    NNSG2dAnimBankData *unk_20;
    NNSG2dImageProxy unk_24;
    UnkStruct_ov19_021DA384 *unk_48;
    UnkStruct_ov19_021DCD18 unk_4C[30];
    struct {
        fx32 unk_00;
        fx32 unk_04;
    } unk_664[30];
    u32 unk_754;
    UnkStruct_ov19_021D8318 *unk_758;
    UnkStruct_ov19_021DC680 *unk_75C;
    UnkStruct_ov19_021DE3E8 *unk_760;
    s32 unk_764;
    s32 unk_768;
    s32 unk_76C;
    s32 unk_770;
    s32 unk_774;
    s32 unk_778;
    s32 unk_77C;
    s32 unk_780;
    u8 unk_784;
    u8 unk_785;
    u8 unk_786;
    u8 unk_787;
    u8 unk_788;
    s8 unk_789;
    s8 unk_78A;
    s8 unk_78B;
    u8 unk_78C;
    u8 unk_78D;
    u8 unk_78E;
    u8 padding_78F;
    const UnkStruct_ov19_021D4DF0 *unk_790;
    UnkStruct_ov19_021D61B0 *unk_794;
} UnkStruct_ov19_021D8E00;

#endif // POKEPLATINUM_STRUCT_OV19_021D8E00_H
