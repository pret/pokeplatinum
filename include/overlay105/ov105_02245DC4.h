#ifndef POKEPLATINUM_APPLICATIONS_BATTLE_FACTORY_SCREEN_SPRITE_H
#define POKEPLATINUM_APPLICATIONS_BATTLE_FACTORY_SCREEN_SPRITE_H

#include "overlay105/ov105_02245AAC.h"

typedef struct BattleFactoryAppPanelSprite {
    int x;
    int y;
    Sprite *sprite;
} BattleFactoryAppPanelSprite;

BattleFactoryAppPanelSprite *BattleFactoryAppPanelSprite_New(BattleFactoryAppSpriteManager *spriteMan, u32 animID, int x, int y, enum HeapID heapID);
void *BattleFactoryAppPanelSprite_Free(BattleFactoryAppPanelSprite *sprite);
BOOL BattleFactoryAppPanelSprite_IsAnimated(BattleFactoryAppPanelSprite *sprite);

#endif // POKEPLATINUM_APPLICATIONS_BATTLE_FACTORY_SCREEN_SPRITE_H
