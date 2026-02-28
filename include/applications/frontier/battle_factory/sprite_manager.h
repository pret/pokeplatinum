#ifndef POKEPLATINUM_APPLICATIONS_BATTLE_FACTORY_SPRITE_MANAGER_H
#define POKEPLATINUM_APPLICATIONS_BATTLE_FACTORY_SPRITE_MANAGER_H

#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_util.h"

enum BattleFactoryAppAnimIDs {
    ANIM_ID_MON_PANEL_OPEN = 0,
    ANIM_ID_MON_PANEL_CLOSE,
    ANIM_ID_PARTNER_PANEL_OPEN,
    ANIM_ID_PARTNER_PANEL_CLOSE,
    ANIM_ID_UNK_4,
    ANIM_ID_UNK_5,
    ANIM_ID_BALL_STATIC,
    ANIM_ID_BALL_SHAKING,
    ANIM_ID_CURSOR,
    ANIM_ID_MENU_CURSOR,
    ANIM_ID_BALL_ONE_SHAKE,
    ANIM_ID_UNK_11,
    ANIM_ID_UNK_12,
    ANIM_ID_CURSOR_SELECTED,
};

typedef struct {
    SpriteList *spriteList;
    G2dRenderer unk_04;
    SpriteResourceCollection *resourceCollection[4];
    SpriteResource *resources[1][4];
} BattleFactoryAppSpriteManager;

void BattleFactoryApp_InitSpriteManager(BattleFactoryAppSpriteManager *sprites);
Sprite *BattleFactoryApp_InitSprite(BattleFactoryAppSpriteManager *spriteMan, u32 resourceID, u32 animID, u32 priority, int resourcePriority, u8 onSubScreen);
void BattleFactoryApp_FreeSprites(BattleFactoryAppSpriteManager *spriteMan);

#endif // POKEPLATINUM_APPLICATIONS_BATTLE_FACTORY_SPRITE_MANAGER_H
