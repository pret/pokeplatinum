#ifndef POKEPLATINUM_STRUCT_OV119_021D17B8_H
#define POKEPLATINUM_STRUCT_OV119_021D17B8_H

#include "struct_decls/pokemon_animation_sys_decl.h"

#include "overlay119/struct_ov119_021D14DC.h"

#include "bg_window.h"
#include "g3d_pipeline_state.h"
#include "menu.h"
#include "narc.h"
#include "palette.h"
#include "pokemon_sprite.h"
#include "sprite_system.h"
#include "string_list.h"

typedef struct {
    BgConfig *unk_00;
    PaletteData *unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    Window unk_14[2];
    G3DPipelineState *unk_34;
    PokemonSpriteManager *unk_38;
    NARC *unk_3C;
    UnkStruct_ov119_021D14DC *unk_40;
    StringList *unk_44;
    Menu *unk_48;
    SpriteManager *unk_4C;
    SpriteSystem *unk_50;
    PokemonAnimationSys *unk_54;
} UnkStruct_ov119_021D17B8;

#endif // POKEPLATINUM_STRUCT_OV119_021D17B8_H
