#ifndef POKEPLATINUM_STRUCT_OV17_022476F8_H
#define POKEPLATINUM_STRUCT_OV17_022476F8_H

#include "struct_decls/sprite_decl.h"
#include "struct_decls/struct_02007768_decl.h"
#include "struct_defs/struct_02095C48_sub1.h"

#include "battle/struct_ov16_0223E0C8.h"
#include "overlay017/struct_ov17_0223F6E8.h"

#include "bg_window.h"
#include "message.h"
#include "palette.h"
#include "sprite_system.h"
#include "strbuf.h"
#include "string_template.h"

typedef struct {
    UnkStruct_02095C48_sub1 *unk_00;
    UnkStruct_02007768 *unk_04;
    PokemonSprite *unk_08[4];
    PokemonSprite *unk_18;
    SpriteSystem *unk_1C;
    SpriteManager *unk_20;
    BgConfig *unk_24;
    Window unk_28[1];
    MessageLoader *unk_38;
    StringTemplate *unk_3C;
    Strbuf *unk_40;
    PaletteData *unk_44;
    UnkStruct_ov16_0223E0C8 unk_48[4];
    ManagedSprite *unk_88[8];
    UnkStruct_ov17_0223F6E8 unk_A8;
    u8 unk_C4;
} UnkStruct_ov17_022476F8;

#endif // POKEPLATINUM_STRUCT_OV17_022476F8_H
