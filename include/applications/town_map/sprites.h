#ifndef POKEPLATINUM_APPLICATIONS_TOWN_MAP_SPRITES_H
#define POKEPLATINUM_APPLICATIONS_TOWN_MAP_SPRITES_H

#include "applications/town_map/defs.h"

void TownMap_InitSpriteSystem(TownMapAppData *appData);
void TownMap_FreeSpriteSystem(TownMapAppData *appData);
void TownMap_DrawSprites(TownMapAppData *appData);
void TownMap_TransferOam(TownMapAppData *appData);

#endif // POKEPLATINUM_APPLICATIONS_TOWN_MAP_SPRITES_H
