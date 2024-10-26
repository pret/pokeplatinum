#ifndef POKEPLATINUM_STRUCT_OV119_021D17B8_H
#define POKEPLATINUM_STRUCT_OV119_021D17B8_H

#include "struct_decls/pokemon_animation_sys_decl.h"
#include "struct_decls/struct_02007768_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_defs/struct_0207C690.h"

#include "overlay119/struct_ov119_021D14DC.h"

#include "bg_window.h"
#include "menu.h"
#include "narc.h"
#include "palette.h"
#include "string_list.h"

typedef struct {
    BgConfig *unk_00;
    PaletteData *unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    Window unk_14[2];
    GenericPointerData *unk_34;
    UnkStruct_02007768 *unk_38;
    NARC *unk_3C;
    UnkStruct_ov119_021D14DC *unk_40;
    StringList *unk_44;
    UIControlData *unk_48;
    SpriteGfxHandler *unk_4C;
    SpriteRenderer *unk_50;
    PokemonAnimationSys *unk_54;
} UnkStruct_ov119_021D17B8;

#endif // POKEPLATINUM_STRUCT_OV119_021D17B8_H
