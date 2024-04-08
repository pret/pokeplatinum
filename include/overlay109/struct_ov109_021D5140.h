#ifndef POKEPLATINUM_STRUCT_OV109_021D5140_H
#define POKEPLATINUM_STRUCT_OV109_021D5140_H

#include "struct_decls/struct_02001AF4_decl.h"
#include "struct_decls/struct_02009714_decl.h"
#include "struct_decls/struct_02009DC8_decl.h"
#include "message.h"
#include "string_template.h"
#include "struct_defs/struct_0200C738.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/sys_task.h"
#include "struct_decls/struct_020218BC_decl.h"
#include "struct_decls/struct_02022550_decl.h"
#include "strbuf.h"
#include "trainer_info.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_0209BDF8.h"
#include "struct_decls/struct_0209C194_decl.h"
#include "overlay019/struct_ov19_021DA864.h"
#include "overlay109/struct_ov109_021D5140_sub1.h"
#include "overlay109/struct_ov109_021D5140_sub2.h"
#include "overlay109/struct_ov109_021D5140_sub3.h"

#include <nnsys.h>

typedef struct UnkStruct_ov109_021D5140_t {
    int unk_00;
    int unk_04;
    int unk_08;
    UnkStruct_0209C194 * unk_0C;
    UnkStruct_0209BDF8 * unk_10;
    BGL * unk_14;
    BOOL unk_18;
    UnkStruct_ov109_021D5140_sub1 unk_1C;
    SysTask * unk_30;
    StringTemplate * unk_34;
    MessageLoader * unk_38;
    Strbuf* unk_3C[5];
    Strbuf* unk_50;
    Strbuf* unk_54;
    Strbuf* unk_58;
    int unk_5C;
    GraphicElementManager * unk_60;
    UnkStruct_0200C738 unk_64;
    UnkStruct_02009714 * unk_1F0[4];
    UnkStruct_02009DC8 * unk_200[3][4];
    UnkStruct_ov19_021DA864 unk_230;
    UnkStruct_ov19_021DA864 unk_254;
    UnkStruct_ov19_021DA864 unk_278;
    GraphicElementData * unk_29C[14];
    GraphicElementData * unk_2D4[14];
    Window unk_30C[5];
    Window unk_35C;
    Window unk_36C;
    Window unk_37C;
    Window * unk_38C[2];
    UIControlData * unk_394;
    void * unk_398[2];
    NNSG2dCharacterData * unk_3A0[2];
    void * unk_3A8[2];
    NNSG2dPaletteData * unk_3B0[2];
    int unk_3B8;
    int unk_3BC;
    int unk_3C0;
    int unk_3C4;
    u8 unk_3C8[8][2];
    TrainerInfo * unk_3D8[5][2];
    int unk_400[5];
    int unk_414;
    u16 unk_418;
    u16 * unk_41C;
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
