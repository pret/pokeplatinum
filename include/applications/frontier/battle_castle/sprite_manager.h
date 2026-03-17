#ifndef POKEPLATINUM_APPLICATIONS_BATTLE_CASTLE_SPRITE_MANAGER_H
#define POKEPLATINUM_APPLICATIONS_BATTLE_CASTLE_SPRITE_MANAGER_H

#include "party.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_util.h"

#define NUM_SPRITES 7

typedef struct BattleCastleAppSpriteManager {
    SpriteList *spriteList;
    G2dRenderer renderer;
    SpriteResourceCollection *resourceCollection[MAX_SPRITE_RESOURCE_GEN4];
    SpriteResource *resources[NUM_SPRITES][MAX_SPRITE_RESOURCE_GEN4];
} BattleCastleAppSpriteManager;

void BattleCastleApp_InitSpriteManager(BattleCastleAppSpriteManager *spriteMan, Party *party, u8 challengeType);
Sprite *BattleCastleApp_InitSprite(BattleCastleAppSpriteManager *spriteMan, u32 charResourceID, u32 plttResourceID, u32 cellResourceID, u32 animID, u32 priority, int resourcePriority, u8 onSubScreen);
void BattleCastleApp_FreeSprites(BattleCastleAppSpriteManager *spriteMan);
void BattleCastleApp_SetItemGraphic(BattleCastleAppSpriteManager *spriteMan, u16 item);
void BattleCastleApp_SetItemPalette(BattleCastleAppSpriteManager *spriteMan, u16 item);

#endif // POKEPLATINUM_APPLICATIONS_BATTLE_CASTLE_SPRITE_MANAGER_H
