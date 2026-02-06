#ifndef POKEPLATINUM_APPLICATIONS_BATTLE_CASTLE_SPRITES_H
#define POKEPLATINUM_APPLICATIONS_BATTLE_CASTLE_SPRITES_H

#include "struct_defs/pokemon.h"

#include "overlay107/battle_castle_app_sprite_manager.h"

#include "sprite.h"

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
void ov107_02249C1C(BattleCastleAppSprite *sprite, u8 param1);
void ov107_02249C28(BattleCastleAppSprite *sprite, u8 param1);
BOOL BattleCastleAppSprite_IsAnimated(BattleCastleAppSprite *sprite);
void BattleCastleAppSprite_SetPriority(BattleCastleAppSprite *sprite, u8 priority);
void ov107_02249C58(BattleCastleAppSprite *sprite, s16 x, s16 y);
void ov107_02249C60(BattleCastleAppSprite *sprite, u16 x, u16 y);

#endif // POKEPLATINUM_APPLICATIONS_BATTLE_CASTLE_SPRITES_H
