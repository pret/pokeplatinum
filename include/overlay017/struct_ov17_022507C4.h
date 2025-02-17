#ifndef POKEPLATINUM_STRUCT_OV17_022507C4_H
#define POKEPLATINUM_STRUCT_OV17_022507C4_H

#include "struct_decls/struct_02012744_decl.h"
#include "struct_defs/pokemon_sprite.h"
#include "struct_defs/struct_02095C48_sub1.h"

#include "battle/struct_ov16_0223E0C8.h"
#include "overlay017/struct_ov17_0223F6E8.h"

#include "bg_window.h"
#include "message.h"
#include "palette.h"
#include "sprite_system.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task_manager.h"

typedef struct {
    UnkStruct_02095C48_sub1 *unk_00;
    PokemonSpriteManager *unk_04;
    PokemonSprite *unk_08[4];
    SpriteSystem *unk_18;
    SpriteManager *unk_1C;
    BgConfig *unk_20;
    Window unk_24[9];
    MessageLoader *unk_B4;
    StringTemplate *unk_B8;
    Strbuf *unk_BC;
    PaletteData *unk_C0;
    UnkStruct_02012744 *unk_C4;
    UnkStruct_ov16_0223E0C8 unk_C8[4];
    UnkStruct_ov17_0223F6E8 unk_108;
    SysTask *unk_124;
    ManagedSprite *unk_128[4];
    ManagedSprite *unk_138[4];
    ManagedSprite *unk_148[4][12];
    ManagedSprite *unk_208[4][12];
    ManagedSprite *unk_2C8[4][12];
    u8 unk_388;
} UnkStruct_ov17_022507C4;

#endif // POKEPLATINUM_STRUCT_OV17_022507C4_H
