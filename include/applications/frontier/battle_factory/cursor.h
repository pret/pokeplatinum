#ifndef POKEPLATINUM_APPLICATIONS_BATTLE_FACTORY_CURSOR_H
#define POKEPLATINUM_APPLICATIONS_BATTLE_FACTORY_CURSOR_H

#include "applications/frontier/battle_factory/sprite_manager.h"

#include "coordinates.h"

#define CURSOR_MODE_MON_ONLY     0
#define CURSOR_MODE_MENU_ONLY    1
#define CURSOR_MODE_MON_AND_MENU 2

typedef struct BattleFactoryAppCursorSprite {
    u8 numSlots;
    u8 cursorMode;
    u8 currentSlot;
    u8 selectionActive;
    const CoordinatesS16 *positions;
    const u8 *animIDs;
    Sprite *sprite;
    u8 numBallSlots;
} BattleFactoryAppCursor;

BattleFactoryAppCursor *BattleFactoryAppCursor_New(BattleFactoryAppSpriteManager *spriteMan, u8 numSlots, u8 numBallSlots, u8 cursorMode, u8 startingSlot, const CoordinatesS16 *positions, const u8 *animIDs);
void *BattleFactoryAppCursor_Free(BattleFactoryAppCursor *cursor);
void BattleFactoryAppCursor_SetDrawFlag(BattleFactoryAppCursor *cursor, BOOL draw);
void BattleFactoryAppCursor_ProcessInput(BattleFactoryAppCursor *cursor);
u8 BattleFactoryAppCursor_GetCurrentSlot(BattleFactoryAppCursor *cursor);
void UpdateMonCursorState(BattleFactoryAppCursor *cursor, BOOL selectionActive);
void BattleFactoryAppCursor_UpdatePosition(BattleFactoryAppCursor *cursor, u8 slot);

#endif // POKEPLATINUM_APPLICATIONS_BATTLE_FACTORY_CURSOR_H
