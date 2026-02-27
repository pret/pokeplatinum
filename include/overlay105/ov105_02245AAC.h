#ifndef POKEPLATINUM_APPLICATIONS_BATTLE_FACTORY_SPRITE_MANAGER_H
#define POKEPLATINUM_APPLICATIONS_BATTLE_FACTORY_SPRITE_MANAGER_H

#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_util.h"

#define ANIM_ID_MON_PANEL_OPEN      0
#define ANIM_ID_MON_PANEL_CLOSE     1
#define ANIM_ID_PARTNER_PANEL_OPEN  2
#define ANIM_ID_PARTNER_PANEL_CLOSE 3
#define ANIM_ID_UNK_4               4
#define ANIM_ID_UNK_5               5
#define ANIM_ID_BALL_STATIC         6
#define ANIM_ID_BALL_SHAKING        7
#define ANIM_ID_CURSOR              8
#define ANIM_ID_MENU_CURSOR         9
#define ANIM_ID_BALL_ONE_SHAKE      10
#define ANIM_ID_UNK_11              11
#define ANIM_ID_UNK_12              12
#define ANIM_ID_CURSOR_SELECTED     13

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
