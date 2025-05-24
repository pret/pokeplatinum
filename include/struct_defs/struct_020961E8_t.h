#ifndef POKEPLATINUM_STRUCT_020961E8_T_H
#define POKEPLATINUM_STRUCT_020961E8_T_H

#include <nnsys.h>

#include "struct_defs/struct_0203DE34.h"
#include "struct_defs/struct_020961E8_sub1.h"

#include "overlay059/struct_ov59_021D109C.h"
#include "overlay059/struct_ov59_021D30E0.h"

#include "bg_window.h"
#include "menu.h"
#include "message.h"
#include "savedata.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_util.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task_manager.h"
#include "trainer_info.h"

struct UnkStruct_020961E8_t {
    BgConfig *unk_00;
    BOOL unk_04;
    UnkStruct_0203DE34 *unk_08;
    UnkStruct_ov59_021D109C unk_0C;
    SysTask *unk_20;
    StringTemplate *unk_24;
    MessageLoader *unk_28;
    Strbuf *unk_2C[5];
    Strbuf *unk_40;
    Strbuf *unk_44;
    Strbuf *unk_48;
    int unk_4C;
    SpriteList *unk_50;
    G2dRenderer unk_54;
    SpriteResourceCollection *unk_1E0[4];
    SpriteResource *unk_1F0[3][4];
    SpriteResourcesHeader unk_220;
    SpriteResourcesHeader unk_244;
    SpriteResourcesHeader unk_268;
    Sprite *unk_28C[14];
    Sprite *unk_2C4[14];
    Window unk_2FC[5];
    Window unk_34C;
    Window unk_35C;
    Window unk_36C;
    Window *unk_37C[2];
    Menu *unk_384;
    void *unk_388[2];
    NNSG2dCharacterData *unk_390[2];
    void *unk_398[2];
    NNSG2dPaletteData *unk_3A0[2];
    int unk_3A8;
    int unk_3AC;
    int unk_3B0;
    int unk_3B4;
    u8 unk_3B8[8][2];
    TrainerInfo *unk_3C8[5][2];
    int unk_3F0[5];
    int unk_404;
    u16 unk_408;
    u16 *unk_40C;
    u8 unk_410;
    u8 unk_411;
    int unk_414;
    UnkStruct_ov59_021D30E0 unk_418;
    UnkStruct_ov59_021D30E0 unk_FD8[5];
    int unk_4A98;
    SaveData *saveData;
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
