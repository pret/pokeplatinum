#ifndef POKEPLATINUM_STRUCT_OV13_02227244_H
#define POKEPLATINUM_STRUCT_OV13_02227244_H

#include "struct_decls/struct_0200C440_decl.h"

#include "battle/struct_ov16_0226DEEC_decl.h"
#include "overlay013/struct_ov13_022264F4.h"
#include "overlay013/struct_ov13_02228A50_decl.h"

#include "bag.h"
#include "bg_window.h"
#include "message.h"
#include "palette.h"
#include "sprite_system.h"
#include "strbuf.h"
#include "string_template.h"

typedef struct {
    UnkStruct_ov13_022264F4 *unk_00;
    BgConfig *unk_04;
    PaletteData *unk_08;
    UnkStruct_0200C440 *unk_0C;
    MessageLoader *unk_10;
    StringTemplate *unk_14;
    Strbuf *unk_18;
    Window unk_1C;
    Window *unk_2C;
    u8 unk_30;
    u8 unk_31;
    u8 unk_32;
    UnkStruct_ov13_02228A50 *unk_34;
    UnkStruct_ov16_0226DEEC *unk_38;
    BagItem battleBagItems[5][36];
    SpriteManager *unk_30C;
    ManagedSprite *unk_310[6];
    u16 unk_328[3][144];
    u16 unk_688[4][130];
    u16 unk_A98[3][25];
    u16 unk_B2E[4][96];
    u16 unk_E2E[4][25];
    u16 unk_EF6[4][25];
    u16 unk_FBE[3][16];
    u16 unk_101E[3][16];
    u16 unk_107E[3][16];
    u16 unk_10DE[3][16];
    u8 unk_113E;
    u8 unk_113F;
    u8 unk_1140;
    u8 unk_1141_0 : 4;
    u8 unk_1141_4 : 4;
    u8 unk_1142[8];
    u8 unk_114A;
    u8 unk_114B;
    u8 unk_114C;
    u8 currentBattleBagPocket;
    s8 unk_114E;
    u8 numBattleBagPocketItems[5];
    u8 numBattleBagPocketPages[5];
    u8 unk_1159;
    u8 unk_115A;
} UnkStruct_ov13_02227244;

#endif // POKEPLATINUM_STRUCT_OV13_02227244_H
