#ifndef POKEPLATINUM_APPICATIONS_BATTLE_ARCADE_SPRITE_MANAGER_H
#define POKEPLATINUM_APPICATIONS_BATTLE_ARCADE_SPRITE_MANAGER_H

#include "constants/battle_frontier.h"

#include "party.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_util.h"

#define RESOURCE_ID_SUB_SPRITES   0
#define RESOURCE_ID_MAIN_SPRITES  1
#define RESOURCE_ID_ITEM_SPRITES  2
#define RESOURCE_ID_MON_SPRITES   3
#define RESOURCE_ID_OPP_MON_ANIMS 7

#define NUM_MON_SPRITES MATH_MAX(ARCADE_PARTY_SIZE_SOLO, ARCADE_PARTY_SIZE_MULTI * 2)

typedef struct {
    SpriteList *spriteList;
    G2dRenderer renderer;
    SpriteResourceCollection *resourceCollection[MAX_SPRITE_RESOURCE_GEN4];
    SpriteResource *resources[11][MAX_SPRITE_RESOURCE_GEN4];
} BattleArcadeAppSpriteManager;

void BattleArcadeApp_InitSpriteManager(BattleArcadeAppSpriteManager *spriteMan, Party *party, Party *opponentParty, u8 isMultiPlayerChallenge);
Sprite *BattleArcadeApp_InitSprite(BattleArcadeAppSpriteManager *spriteMan, u32 charResourceID, u32 plttResourceID, u32 cellResourceID, u32 animID, u32 priority, int resourcePriority, u8 onSubScreen);
void BattleArcadeApp_FreeSprites(BattleArcadeAppSpriteManager *spriteMan);

#endif // POKEPLATINUM_APPICATIONS_BATTLE_ARCADE_SPRITE_MANAGER_H
