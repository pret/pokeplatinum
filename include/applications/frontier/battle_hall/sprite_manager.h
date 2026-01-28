#ifndef POKEPLATINUM_APPLIcATIONS_BATTLE_HALL_SPRITE_MANAGER_H
#define POKEPLATINUM_APPLIcATIONS_BATTLE_HALL_SPRITE_MANAGER_H

#include "struct_defs/pokemon.h"

#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_util.h"

typedef struct BattleHallAppSpriteManager {
    SpriteList *spriteList;
    G2dRenderer renderer;
    SpriteResourceCollection *resourceCollection[4];
    SpriteResource *resources[2][4];
} BattleHallAppSpriteManager;

void BattleHallApp_InitSpriteManager(BattleHallAppSpriteManager *sprites, Pokemon *mon);
Sprite *BattleHallApp_InitSprite(BattleHallAppSpriteManager *spriteMan, u32 resourceID, u32 animID, u32 priority, u8 onSubScreen);
void BattleHallApp_FreeSprites(BattleHallAppSpriteManager *spriteMan);

#endif // POKEPLATINUM_APPLIcATIONS_BATTLE_HALL_SPRITE_MANAGER_H
