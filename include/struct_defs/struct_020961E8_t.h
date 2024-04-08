#ifndef POKEPLATINUM_STRUCT_020961E8_T_H
#define POKEPLATINUM_STRUCT_020961E8_T_H

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
#include "struct_defs/struct_0203DE34.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_020961E8_sub1.h"
#include "savedata.h"
#include "overlay019/struct_ov19_021DA864.h"
#include "overlay059/struct_ov59_021D109C.h"
#include "overlay059/struct_ov59_021D30E0.h"

#include <nnsys.h>

struct UnkStruct_020961E8_t {
    BGL * unk_00;
    BOOL unk_04;
    UnkStruct_0203DE34 * unk_08;
    UnkStruct_ov59_021D109C unk_0C;
    SysTask * unk_20;
    StringTemplate * unk_24;
    MessageLoader * unk_28;
    Strbuf* unk_2C[5];
    Strbuf* unk_40;
    Strbuf* unk_44;
    Strbuf* unk_48;
    int unk_4C;
    GraphicElementManager * unk_50;
    UnkStruct_0200C738 unk_54;
    UnkStruct_02009714 * unk_1E0[4];
    UnkStruct_02009DC8 * unk_1F0[3][4];
    UnkStruct_ov19_021DA864 unk_220;
    UnkStruct_ov19_021DA864 unk_244;
    UnkStruct_ov19_021DA864 unk_268;
    GraphicElementData * unk_28C[14];
    GraphicElementData * unk_2C4[14];
    Window unk_2FC[5];
    Window unk_34C;
    Window unk_35C;
    Window unk_36C;
    Window * unk_37C[2];
    UIControlData * unk_384;
    void * unk_388[2];
    NNSG2dCharacterData * unk_390[2];
    void * unk_398[2];
    NNSG2dPaletteData * unk_3A0[2];
    int unk_3A8;
    int unk_3AC;
    int unk_3B0;
    int unk_3B4;
    u8 unk_3B8[8][2];
    TrainerInfo * unk_3C8[5][2];
    int unk_3F0[5];
    int unk_404;
    u16 unk_408;
    u16 * unk_40C;
    u8 unk_410;
    u8 unk_411;
    int unk_414;
    UnkStruct_ov59_021D30E0 unk_418;
    UnkStruct_ov59_021D30E0 unk_FD8[5];
    int unk_4A98;
    SaveData * unk_4A9C;
    int unk_4AA0;
    u8 unk_4AA4;
    volatile int unk_4AA8;
    int unk_4AAC;
    int unk_4AB0;
    u32 unk_4AB4;
    u8 unk_4AB8;
    s8 unk_4AB9;
    u8 unk_4ABA;
    u8 unk_4ABB;
    s32 unk_4ABC;
    u16 unk_4AC0;
    s16 unk_4AC2;
    int unk_4AC4;
    UnkStruct_020961E8_sub1 unk_4AC8[5][2];
};

#endif // POKEPLATINUM_STRUCT_020961E8_T_H
