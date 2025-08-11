#ifndef POKEPLATINUM_STRUCT_OV16_02264408_H
#define POKEPLATINUM_STRUCT_OV16_02264408_H

#include "constants/battle.h"

#include "struct_defs/chatot_cry.h"

#include "battle/battle_background_reference.h"
#include "battle/pokemon_sprite_data.h"

#include "bg_window.h"
#include "palette.h"
#include "pokemon_sprite.h"
#include "sprite_system.h"

typedef struct {
    SpriteSystem *spriteSystem;
    BgConfig *bgConfig;
    PaletteData *paletteData;
    PokemonSpriteData *pokemonSpriteData[MAX_BATTLERS];
    u8 battlerTypes[MAX_BATTLERS];
    PokemonSprite *pokemonSprites[MAX_BATTLERS];
    u32 battleType;
    u16 battlerSpecies[MAX_BATTLERS];
    u8 battlerGenders[MAX_BATTLERS];
    u8 battlerShinyFlags[MAX_BATTLERS];
    u8 battlerForms[MAX_BATTLERS];
    u32 battlerPersonalities[MAX_BATTLERS];
    u32 battlerMoveEffects[MAX_BATTLERS];
    int moveArcID;
    BattleBackgroundReference battleBgRefs;
    ChatotCry *chatotCry;
    u8 *bgTiles;
    u16 *bgPaletteBuffer;
} BattleAnimBattlerContext;

#endif // POKEPLATINUM_STRUCT_OV16_02264408_H
