#ifndef POKEPLATINUM_STRUCT_OV79_021D0E1C_H
#define POKEPLATINUM_STRUCT_OV79_021D0E1C_H

#include <nnsys.h>

#include "struct_defs/struct_020158A8.h"
#include "struct_defs/struct_0203D9B8.h"
#include "struct_defs/struct_0209903C.h"
#include "struct_defs/struct_0209916C.h"

#include "overlay079/struct_ov79_021D0E1C_sub1.h"

#include "bg_window.h"
#include "list_menu.h"
#include "menu.h"
#include "message.h"
#include "sprite.h"
#include "sprite_system.h"
#include "string_list.h"

typedef struct UnkStruct_ov79_021D0E1C_t {
    int heapID;
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
    BgConfig *unk_24;
    UnkStruct_020158A8 *unk_28;
    MessageLoader *unk_2C;
    UnkStruct_ov79_021D0E1C_sub1 unk_30;
    u16 unk_80;
    u16 unk_82;
    ListMenuTemplate unk_84;
    ListMenuTemplate unk_A4;
    ListMenu *unk_C4;
    ListMenu *unk_C8;
    StringList *unk_CC;
    StringList *unk_D0;
    Menu *unk_D4;
    void *unk_D8;
    void *unk_DC;
    NNSG2dScreenData *unk_E0;
    NNSG2dScreenData *unk_E4;
    Window unk_E8[13];
    SpriteSystem *unk_1B8;
    SpriteManager *unk_1BC;
    Sprite *unk_1C0[3];
    Sprite *unk_1CC[5];
    Sprite *unk_1E0[6];
    UnkStruct_0209903C *unk_1F8;
    UnkStruct_0209916C *unk_1FC;
} UnkStruct_ov79_021D0E1C;

#endif // POKEPLATINUM_STRUCT_OV79_021D0E1C_H
