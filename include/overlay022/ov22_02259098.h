#ifndef POKEPLATINUM_OV22_02259098_H
#define POKEPLATINUM_OV22_02259098_H

#include <nnsys.h>

#include "struct_defs/struct_020298D8.h"

#include "overlay022/struct_ov22_022596B0.h"
#include "overlay022/struct_ov22_0225A0E4.h"

#include "pokemon.h"

void ov22_02259098(UnkStruct_ov22_0225A0E4 *param0, PokemonSpriteTemplate *param1);
void ov22_022590C0(DressUpMonSprite *param0, PokemonSpriteManager *param1, Pokemon *param2, PokemonSpriteTemplate *param3, int param4);
void ov22_022590D4(DressUpMonSprite *param0, PokemonSpriteManager *param1, Pokemon *param2, PokemonSpriteTemplate *param3, int param4, BOOL param5);
void ov22_022591B8(DressUpMonSprite *param0);
void ov22_022591D0(DressUpMonSprite *param0, int param1);
int ov22_022591E0(DressUpMonSprite *param0);
void ov22_022591EC(DressUpMonSprite *param0, int param1, int param2);
BOOL ov22_02259238(DressUpMonSprite *param0);
BOOL ov22_02259244(DressUpMonSprite *param0, int param1, int param2);
void ov22_02259250(DressUpMonSprite *param0, int *xCenter, int *yCenter);
void ov22_02259270(DressUpMonSprite *param0, int *param1, int *param2);
BOOL ov22_02259278(DressUpMonSprite *param0, int *param1, int *param2, NNSG2dCharacterData *param3);
BOOL ov22_022592F0(DressUpMonSprite *param0, int param1, int param2, NNSG2dCharacterData *param3);
void ov22_02259358(DressUpMonSprite *param0, SpriteMargins *param1);

#endif // POKEPLATINUM_OV22_02259098_H
