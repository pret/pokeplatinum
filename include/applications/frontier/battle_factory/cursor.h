#ifndef POKEPLATINUM_APPLICATIONS_BATTLE_FACTORY_CURSOR_H
#define POKEPLATINUM_APPLICATIONS_BATTLE_FACTORY_CURSOR_H

#include "applications/frontier/battle_factory/sprite_manager.h"

typedef struct BattleFactoryAppCursorPosition {
    s16 x;
    s16 y;
} BattleFactoryAppCursorPosition;

typedef struct BattleFactoryAppCursorSprite {
    u8 unk_00;
    u8 unk_01;
    u8 currentSlot;
    u8 unk_03;
    const BattleFactoryAppCursorPosition *positions;
    const u8 *animIDs;
    Sprite *sprite;
    u8 unk_10;
} BattleFactoryAppCursor;

BattleFactoryAppCursor *BattleFactoryAppCursor_New(BattleFactoryAppSpriteManager *spriteMan, u8 param1, u8 param2, u8 param3, u8 startingSlot, const BattleFactoryAppCursorPosition *positions, const u8 *animIDs);
void *BattleFactoryAppCursor_Free(BattleFactoryAppCursor *sprite);
void BattleFactoryAppCursor_SetDrawFlag(BattleFactoryAppCursor *sprite, BOOL draw);
void ov105_02246080(BattleFactoryAppCursor *sprite);
u8 BattleFactoryAppCursor_GetCurrentSlot(BattleFactoryAppCursor *sprite);
void ov105_022461A4(BattleFactoryAppCursor *sprite, int param1);
void BattleFactoryAppCursor_UpdatePosition(BattleFactoryAppCursor *sprite, u8 slot);

#endif // POKEPLATINUM_APPLICATIONS_BATTLE_FACTORY_CURSOR_H
