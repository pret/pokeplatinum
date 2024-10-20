#ifndef POKEPLATINUM_STRUCT_OV79_021D0E1C_H
#define POKEPLATINUM_STRUCT_OV79_021D0E1C_H

#include <nnsys.h>

#include "struct_decls/struct_0200112C_decl.h"
#include "struct_decls/struct_02001AF4_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_02013A04_decl.h"
#include "struct_defs/struct_020158A8.h"
#include "struct_defs/struct_0203D9B8.h"
#include "struct_defs/struct_0209903C.h"
#include "struct_defs/struct_0209916C.h"

#include "overlay079/struct_ov79_021D0E1C_sub1.h"
#include "overlay084/struct_ov84_02240FA8.h"

#include "bg_window.h"
#include "cell_actor.h"
#include "message.h"

typedef struct UnkStruct_ov79_021D0E1C_t {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    u16 unk_14;
    u16 unk_16;
    u16 unk_18;
    u8 unk_1A;
    u8 unk_1B;
    u8 unk_1C;
    u8 unk_1D;
    u8 unk_1E;
    u8 unk_1F;
    UnkStruct_0203D9B8 *unk_20;
    BGL *unk_24;
    UnkStruct_020158A8 *unk_28;
    MessageLoader *unk_2C;
    UnkStruct_ov79_021D0E1C_sub1 unk_30;
    u16 unk_80;
    u16 unk_82;
    UnkStruct_ov84_02240FA8 unk_84;
    UnkStruct_ov84_02240FA8 unk_A4;
    BmpList *unk_C4;
    BmpList *unk_C8;
    ResourceMetadata *unk_CC;
    ResourceMetadata *unk_D0;
    UIControlData *unk_D4;
    void *unk_D8;
    void *unk_DC;
    NNSG2dScreenData *unk_E0;
    NNSG2dScreenData *unk_E4;
    Window unk_E8[13];
    SpriteRenderer *unk_1B8;
    SpriteGfxHandler *unk_1BC;
    CellActor *unk_1C0[3];
    CellActor *unk_1CC[5];
    CellActor *unk_1E0[6];
    UnkStruct_0209903C *unk_1F8;
    UnkStruct_0209916C *unk_1FC;
} UnkStruct_ov79_021D0E1C;

#endif // POKEPLATINUM_STRUCT_OV79_021D0E1C_H
