#ifndef POKEPLATINUM_STRUCT_OV80_021D2A08_H
#define POKEPLATINUM_STRUCT_OV80_021D2A08_H

#include <nnsys.h>

#include "struct_decls/cell_actor_data.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_defs/struct_0203D8AC.h"

#include "overlay080/struct_ov80_021D259C.h"
#include "overlay080/struct_ov80_021D2AF4.h"
#include "overlay080/struct_ov80_021D2C1C.h"
#include "overlay080/struct_ov80_021D2E10.h"

#include "bg_window.h"
#include "map_matrix.h"
#include "message.h"
#include "strbuf.h"

typedef struct UnkStruct_ov80_021D2A08_t {
    u8 unk_00;
    u8 unk_01;
    u16 unk_02;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    int unk_20;
    int unk_24;
    BgConfig *unk_28;
    UnkStruct_0203D8AC *unk_2C;
    MainMapMatrixData *unk_30;
    void *unk_34;
    int (*unk_38)(struct UnkStruct_ov80_021D2A08_t *);
    UnkStruct_ov80_021D2C1C *unk_3C;
    UnkStruct_ov80_021D2E10 *unk_40;
    UnkStruct_ov80_021D259C unk_44[5];
    MessageLoader *unk_80;
    MessageLoader *unk_84;
    Strbuf *unk_88;
    int unk_8C;
    int unk_90;
    UnkStruct_ov80_021D2AF4 *unk_94;
    void *unk_98;
    void *unk_9C;
    void *unk_A0;
    void *unk_A4;
    void *unk_A8;
    void *unk_AC;
    void *unk_B0;
    void *unk_B4;
    NNSG2dScreenData *unk_B8;
    NNSG2dScreenData *unk_BC;
    NNSG2dScreenData *unk_C0;
    NNSG2dScreenData *unk_C4;
    NNSG2dScreenData *unk_C8;
    NNSG2dScreenData *unk_CC;
    NNSG2dScreenData *unk_D0;
    NNSG2dScreenData *unk_D4;
    SpriteRenderer *unk_D8;
    SpriteGfxHandler *unk_DC;
    CellActorData *unk_E0;
} UnkStruct_ov80_021D2A08;

#endif // POKEPLATINUM_STRUCT_OV80_021D2A08_H
