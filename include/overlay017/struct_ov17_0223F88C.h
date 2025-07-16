#ifndef POKEPLATINUM_STRUCT_OV17_0223F88C_H
#define POKEPLATINUM_STRUCT_OV17_0223F88C_H

#include "struct_decls/struct_02012744_decl.h"
#include "struct_defs/struct_02095C48_sub1.h"

#include "battle/struct_ov16_0223E0C8.h"
#include "overlay012/battle_anim_system.h"
#include "overlay017/struct_ov17_0223F2E4.h"

#include "bg_window.h"
#include "message.h"
#include "palette.h"
#include "pokemon_sprite.h"
#include "sprite_system.h"
#include "strbuf.h"
#include "string_template.h"

typedef struct {
    UnkStruct_02095C48_sub1 *unk_00;
    PokemonSpriteManager *unk_04;
    PokemonSprite *unk_08[4];
    SpriteSystem *unk_18;
    SpriteManager *unk_1C;
    BattleAnimSystem *unk_20;
    BgConfig *unk_24;
    Window unk_28[1];
    MessageLoader *unk_38;
    MessageLoader *unk_3C;
    MessageLoader *unk_40;
    MessageLoader *unk_44;
    StringTemplate *unk_48;
    Strbuf *unk_4C;
    PaletteData *unk_50;
    UnkStruct_02012744 *unk_54;
    UnkStruct_ov16_0223E0C8 unk_58[4];
    UnkStruct_ov16_0223E0C8 unk_98;
    ManagedSprite *unk_A8[3];
    ManagedSprite *unk_B4[3];
    ManagedSprite *unk_C0;
    ManagedSprite *unk_C4[4][6];
    ManagedSprite *unk_124[3][5];
    ManagedSprite *unk_160[4];
    ManagedSprite *unk_170[3];
    ManagedSprite *unk_17C;
    UnkStruct_ov17_0223F2E4 unk_180[4];
    UnkStruct_ov17_0223F2E4 unk_1C8[4];
    u8 unk_210;
} UnkStruct_ov17_0223F88C;

#endif // POKEPLATINUM_STRUCT_OV17_0223F88C_H
