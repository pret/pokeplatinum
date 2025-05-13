#ifndef POKEPLATINUM_STRUCT_0207F248_H
#define POKEPLATINUM_STRUCT_0207F248_H

#include "struct_decls/struct_0200C440_decl.h"
#include "struct_decls/struct_02098700_decl.h"
#include "struct_defs/funcptr_0207F248_sub1.h"
#include "struct_defs/struct_0207C690.h"
#include "struct_defs/struct_020831B4.h"
#include "struct_defs/struct_02083D1C.h"
#include "struct_defs/struct_02098C44.h"

#include "functypes/funcptr_0207F248.h"
#include "overlay118/struct_ov118_021D0FDC_decl.h"

#include "bg_window.h"
#include "menu.h"
#include "message.h"
#include "party_menu_cursor.h"
#include "sprite.h"
#include "sprite_system.h"
#include "strbuf.h"
#include "string_list.h"
#include "string_template.h"

typedef struct {
    BgConfig *unk_00;
    Window unk_04[37];
    Window unk_254[1];
    u16 unk_264[96];
    u16 unk_324[96];
    u16 unk_3E4[96];
    u16 unk_4A4[128];
    PartyManagementData *unk_5A4;
    SpriteSystem *unk_5A8;
    SpriteManager *unk_5AC;
    Sprite *unk_5B0[29];
    ManagedSprite *unk_624[29];
    UnkStruct_0200C440 *unk_698;
    MessageLoader *unk_69C;
    StringTemplate *unk_6A0;
    Strbuf *unk_6A4;
    Strbuf *unk_6A8;
    Strbuf *unk_6AC[20];
    StringList *unk_6FC;
    Menu *unk_700;
    StrBufWrapper unk_704[6];
    const PartyMenuCursor *unk_7F4;
    DualArrayShortData unk_7F8;
    GenericFunctionPtr unk_B00;
    FunctionPtrPair unk_B04;
    u8 unk_B0C;
    u8 unk_B0D;
    u8 unk_B0E;
    u8 unk_B0F_0 : 6;
    u8 unk_B0F_6 : 1;
    u8 unk_B0F_7 : 1;
    u8 unk_B10;
    u8 unk_B11;
    u8 unk_B12;
    u8 unk_B13;
    u16 unk_B14[6];
    HeightWeightData *unk_B20;
    OverlayMetadata *unk_B24;
    GenericPointerData *unk_B28;
} GameWindowLayout;

#endif // POKEPLATINUM_STRUCT_0207F248_H
