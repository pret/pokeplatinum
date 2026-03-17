#ifndef POKEPLATINUM_APPLICATIONS_BATTLE_CASTLE_SPRITES_H
#define POKEPLATINUM_APPLICATIONS_BATTLE_CASTLE_SPRITES_H

#include "struct_defs/pokemon.h"

#include "applications/frontier/battle_castle/sprite_manager.h"

#include "sprite.h"

#define ANIM_ID_EXIT_CURSOR           0
#define ANIM_ID_MON_CURSOR            1
#define ANIM_ID_PARTNER_MON_CURSOR    2
#define ANIM_ID_ITEM_SELECT_CURSOR    3
#define ANIM_ID_MENU_UP_ARROW         4
#define ANIM_ID_MENU_DOWN_ARROW       5
#define ANIM_ID_POKE_BALL             6
#define ANIM_ID_SHAKING_POKE_BALL     7
#define ANIM_ID_HEAL_SPARKLES         8
#define ANIM_ID_LEVEL_UP_ARROW        9
#define ANIM_ID_LEVEL_DOWN_ARROW      10
#define ANIM_ID_OPEN_SUMMARY_SPARKLES 11
#define ANIM_ID_FLAG                  12
#define ANIM_ID_RED_BAR               13
#define ANIM_ID_YELLOW_BAR            14
#define ANIM_ID_GREEN_BAR             15
#define ANIM_ID_RENTAL_SPARKLES       16
#define ANIM_ID_PARTNER_EXIT_CURSOR   17

typedef struct BattleCastleAppSprite {
    s16 x;
    s16 y;
    Sprite *sprite;
} BattleCastleAppSprite;

BattleCastleAppSprite *BattleCastleAppSprite_New(BattleCastleAppSpriteManager *spriteMan, u32 charResourceID, u32 plttResourceID, u32 cellResourceID, u32 animID, s16 x, s16 y, int priority, const u8 *unused);
void *BattleCastleAppSprite_Free(BattleCastleAppSprite *sprite);
void BattleCastleAppSprite_SetDrawFlag(BattleCastleAppSprite *sprite, BOOL draw);
void BattleCastleAppSprite_SetPosition(BattleCastleAppSprite *sprite, u16 x, u16 y);
void BattleCastleAppSprite_SetAnim(BattleCastleAppSprite *sprite, u32 animID);
void BattleCastleAppSprite_UpdatePalette(BattleCastleAppSprite *sprite, Pokemon *mon);
void BattleCastleAppSprite_UpdateMonSpriteAnim(BattleCastleAppSprite *sprite, u8 animID);
void BattleCastleAppSprite_UpdateMonPosition(BattleCastleAppSprite *sprite, u8 isSelected);
BOOL BattleCastleAppSprite_IsAnimated(BattleCastleAppSprite *sprite);
void BattleCastleAppSprite_SetPriority(BattleCastleAppSprite *sprite, u8 priority);
void BattleCastleAppSprite_UpdateCoords(BattleCastleAppSprite *sprite, s16 x, s16 y);
void BattleCastleAppSprite_PlaySparkleAnim(BattleCastleAppSprite *sprite, u16 x, u16 y);

#endif // POKEPLATINUM_APPLICATIONS_BATTLE_CASTLE_SPRITES_H
