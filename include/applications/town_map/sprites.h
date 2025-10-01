#ifndef POKEPLATINUM_APPLICATIONS_TOWN_MAP_SPRITES_H
#define POKEPLATINUM_APPLICATIONS_TOWN_MAP_SPRITES_H

#include "applications/town_map/defs.h"

void TownMap_InitSpriteSystem(TownMapAppData *param0);
void TownMap_FreeSpriteSystem(TownMapAppData *param0);
void TownMap_DrawSprites(TownMapAppData *param0);
void TownMap_TransferOam(TownMapAppData *param0);

#endif // POKEPLATINUM_APPLICATIONS_TOWN_MAP_SPRITES_H
