#ifndef POKEPLATINUM_STRUCT_OV76_0223C398_H
#define POKEPLATINUM_STRUCT_OV76_0223C398_H

#include "struct_decls/font_oam.h"
#include "struct_decls/struct_02012744_decl.h"

#include "battle_anim/struct_ball_rotation_decl.h"
#include "battle_anim/struct_ov12_02235FE0_decl.h"
#include "overlay022/struct_ov22_02258A48.h"

#include "bg_window.h"
#include "char_transfer.h"
#include "g3d_pipeline.h"
#include "menu.h"
#include "palette.h"
#include "pokemon_anim.h"
#include "pokemon_sprite.h"
#include "sprite_system.h"
#include "string_list.h"
#include "touch_screen.h"
#include "touch_screen_actions.h"
#include "yes_no_touch_menu.h"

typedef struct {
    int unk_00;
    BOOL unk_04;
    SpriteSystem *spriteSystem;
    SpriteManager *spriteManager;
    BgConfig *bgConfig;
    PaletteData *palleteData;
    Window windows[11];
    StringList *stringList;
    Menu *menu;
    PokemonSpriteManager *monSpriteManager;
    PokemonSprite *monSprite;
    int unk_D8;
    UnkStruct_ov22_02258A48 unk_DC;
    TouchScreenActions *unk_F8;
    TouchScreenRect touchScreenRect[21];
    YesNoTouchMenu *yesNoTouchMenu;
    BallCapsuleSealEffect *sealEffect;
    BallRotation *ballRotation;
    G3DPipelineBuffers *pipelineBuffers;
    UnkStruct_02012744 *unk_160;
    FontOAM *unk_164[2];
    CharTransferAllocation unk_16C[2];
    BOOL unk_184; // rendered?
    PokemonAnimManager *unk_188;
    BOOL unk_18C;
} UnkStruct_ov76_0223C398;

#endif // POKEPLATINUM_STRUCT_OV76_0223C398_H
