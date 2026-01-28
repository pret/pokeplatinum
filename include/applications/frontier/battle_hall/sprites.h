#ifndef POKEPLATINUM_APPLICATIONS_BATTLE_HALL_SPRITES_H
#define POKEPLATINUM_APPLICATIONS_BATTLE_HALL_SPRITES_H

#include "struct_defs/pokemon.h"

#include "applications/frontier/battle_hall/sprite_manager.h"

typedef struct BattleHallAppSprite {
    u32 unused[3];
    const u8 *isAlwaysNull;
    Sprite *sprite;
} BattleHallAppSprite;

BattleHallAppSprite *BattleHallAppSprite_New(BattleHallAppSpriteManager *spriteMan, u32 resourceID, u32 animID, u16 x, u16 y, const u8 *null);
void *BattleHallAppSprite_Free(BattleHallAppSprite *sprite);
void BattleHallAppSprite_SetDrawFlag(BattleHallAppSprite *sprite, BOOL draw);
void BattleHallAppSprite_SetPosition(BattleHallAppSprite *sprite, u16 x, u16 y);
void BattleHallAppSprite_SetAnim(BattleHallAppSprite *sprite, u32 animID);
void BattleHallAppSprite_UpdatePalette(BattleHallAppSprite *sprite, Pokemon *mon);

#endif // POKEPLATINUM_APPLICATIONS_BATTLE_HALL_SPRITES_H
