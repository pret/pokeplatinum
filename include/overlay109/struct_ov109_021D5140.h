#ifndef POKEPLATINUM_STRUCT_OV109_021D5140_H
#define POKEPLATINUM_STRUCT_OV109_021D5140_H

#include <nnsys.h>

#include "struct_decls/struct_0209C194_decl.h"
#include "struct_defs/struct_0209BDF8.h"

#include "overlay109/struct_ov109_021D5140_sub1.h"
#include "overlay109/struct_ov109_021D5140_sub2.h"
#include "overlay109/struct_ov109_021D5140_sub3.h"

#include "bg_window.h"
#include "cell_actor.h"
#include "menu.h"
#include "message.h"
#include "sprite_resource.h"
#include "sprite_util.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task_manager.h"
#include "trainer_info.h"

typedef struct UnkStruct_ov109_021D5140_t {
    int unk_00;
    int unk_04;
    int unk_08;
    UnkStruct_0209C194 *unk_0C;
    UnkStruct_0209BDF8 *unk_10;
    BgConfig *unk_14;
    BOOL unk_18;
    UnkStruct_ov109_021D5140_sub1 unk_1C;
    SysTask *unk_30;
    StringTemplate *unk_34;
    MessageLoader *unk_38;
    Strbuf *unk_3C[5];
    Strbuf *unk_50;
    Strbuf *unk_54;
    Strbuf *unk_58;
    int unk_5C;
    CellActorCollection *unk_60;
    G2dRenderer unk_64;
    SpriteResourceCollection *unk_1F0[4];
    SpriteResource *unk_200[3][4];
    CellActorResourceData unk_230;
    CellActorResourceData unk_254;
    CellActorResourceData unk_278;
    CellActor *unk_29C[14];
    CellActor *unk_2D4[14];
    Window unk_30C[5];
    Window unk_35C;
    Window unk_36C;
    Window unk_37C;
    Window *unk_38C[2];
    Menu *unk_394;
    void *unk_398[2];
    NNSG2dCharacterData *unk_3A0[2];
    void *unk_3A8[2];
    NNSG2dPaletteData *unk_3B0[2];
    int unk_3B8;
    int unk_3BC;
    int unk_3C0;
    int unk_3C4;
    u8 unk_3C8[8][2];
    TrainerInfo *unk_3D8[5][2];
    int unk_400[5];
    int unk_414;
    u16 unk_418;
    u16 *unk_41C;
    u8 unk_420;
    u8 unk_421;
    UnkStruct_ov109_021D5140_sub2 unk_424;
    UnkStruct_ov109_021D5140_sub2 unk_FE4[5];
    u8 unk_4AA4;
    volatile int unk_4AA8;
    int unk_4AAC;
    u32 unk_4AB0;
    u8 unk_4AB4;
    s8 unk_4AB5;
    u8 unk_4AB6;
    u8 unk_4AB7;
    int unk_4AB8;
    s32 unk_4ABC;
    s16 unk_4AC0;
    UnkStruct_ov109_021D5140_sub3 unk_4AC4[5][2];
} UnkStruct_ov109_021D5140;

#endif // POKEPLATINUM_STRUCT_OV109_021D5140_H
