#ifndef POKEPLATINUM_POKEDEX_GRAPHIC_DATA_H
#define POKEPLATINUM_POKEDEX_GRAPHIC_DATA_H

#include "struct_decls/struct_02015064_decl.h"

#include "applications/pokedex/pokedex_text_manager.h"
#include "applications/pokedex/struct_ov21_021D22F8.h"
#include "applications/pokedex/struct_ov21_021D23F8.h"
#include "applications/pokedex/struct_ov21_021D2584.h"
#include "applications/pokedex/struct_ov21_021D3124.h"

#include "bg_window.h"
#include "narc.h"
#include "pokemon_sprite.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_util.h"
#include "sys_task_manager.h"

typedef struct PokedexGraphicData {
    BgConfig *bgConfig;
    Window window;
    G2dRenderer g2Renderer;
    SpriteList *spriteList;
    SpriteResourceCollection *spriteResourceCollection[4];
    PokedexTextManager *unk_14C;
    PokemonSpriteManager *unk_150;
    PokemonSprite *pokemonSprite[4];
    UnkStruct_02015064 *unk_164;
    UnkStruct_ov21_021D23F8 unk_168;
    UnkStruct_ov21_021D23F8 unk_18C;
    UnkStruct_ov21_021D22F8 unk_1B0;
    UnkStruct_ov21_021D2584 unk_1E0;
    UnkStruct_ov21_021D3124 unk_218;
    SysTask *unk_270;
    SysTask *unk_274;
    NARC *pokedexGraphics;
} PokedexGraphicData;

#endif // POKEPLATINUM_POKEDEX_GRAPHIC_DATA_H
