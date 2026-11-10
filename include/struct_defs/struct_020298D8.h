#ifndef POKEPLATINUM_STRUCT_020298D8_H
#define POKEPLATINUM_STRUCT_020298D8_H

#include "overlay022/struct_ov22_022596B0.h"

#include "pokemon.h"
#include "pokemon_sprite.h"
#include "touch_screen.h"

typedef struct DressUpMonSprite {
    PokemonSprite *sprite;
    TouchScreenHitTable hitTable;
    SpriteMargins margins;
    Pokemon *mon;
} DressUpMonSprite;

#endif // POKEPLATINUM_STRUCT_020298D8_H
