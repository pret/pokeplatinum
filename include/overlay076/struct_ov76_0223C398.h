#ifndef POKEPLATINUM_STRUCT_OV76_0223C398_H
#define POKEPLATINUM_STRUCT_OV76_0223C398_H

#include "struct_decls/font_oam.h"
#include "struct_decls/pokemon_animation_sys_decl.h"
#include "struct_decls/struct_02007768_decl.h"
#include "struct_decls/struct_02012744_decl.h"
#include "struct_decls/struct_02015920_decl.h"
#include "struct_decls/struct_02023FCC_decl.h"
#include "struct_defs/pokemon_sprite.h"
#include "struct_defs/struct_0207C690.h"

#include "overlay012/struct_ball_rotation_decl.h"
#include "overlay012/struct_ov12_02235FE0_decl.h"
#include "overlay022/struct_ov22_02258A48.h"

#include "bg_window.h"
#include "char_transfer.h"
#include "menu.h"
#include "palette.h"
#include "sprite_system.h"
#include "string_list.h"
#include "touch_screen.h"

typedef struct {
    int unk_00;
    BOOL unk_04;
    SpriteSystem *unk_08;
    SpriteManager *unk_0C;
    BgConfig *unk_10;
    PaletteData *unk_14;
    Window unk_18[11];
    StringList *unk_C8;
    Menu *unk_CC;
    PokemonSpriteManager *unk_D0;
    PokemonSprite *unk_D4;
    int unk_D8;
    UnkStruct_ov22_02258A48 unk_DC;
    UnkStruct_02023FCC *unk_F8;
    TouchScreenRect unk_FC[21];
    UnkStruct_02015920 *unk_150;
    UnkStruct_ov12_02235FE0 *unk_154;
    BallRotation *unk_158;
    GenericPointerData *unk_15C;
    UnkStruct_02012744 *unk_160;
    FontOAM *unk_164[2];
    CharTransferAllocation unk_16C[2];
    BOOL unk_184;
    PokemonAnimationSys *unk_188;
    BOOL unk_18C;
} UnkStruct_ov76_0223C398;

#endif // POKEPLATINUM_STRUCT_OV76_0223C398_H
