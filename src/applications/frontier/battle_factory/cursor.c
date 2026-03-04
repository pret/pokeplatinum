#include "applications/frontier/battle_factory/cursor.h"

#include <nitro.h>
#include <string.h>

#include "applications/frontier/battle_factory/sprite_manager.h"

#include "heap.h"
#include "sprite.h"
#include "system.h"

BattleFactoryAppCursor *BattleFactoryAppCursor_New(BattleFactoryAppSpriteManager *spriteMan, u8 numSlots, u8 numBallSlots, u8 cursorMode, u8 startingSlot, const CoordinatesS16 *positions, const u8 *animIDs)
{
    BattleFactoryAppCursor *cursor = Heap_Alloc(HEAP_ID_BATTLE_FACTORY_APP, sizeof(BattleFactoryAppCursor));
    memset(cursor, 0, sizeof(BattleFactoryAppCursor));

    cursor->numSlots = numSlots;
    cursor->numBallSlots = numBallSlots;
    cursor->cursorMode = cursorMode;
    cursor->currentSlot = startingSlot;
    cursor->positions = positions;
    cursor->animIDs = animIDs;

    if (animIDs != NULL) {
        cursor->sprite = BattleFactoryApp_InitSprite(spriteMan, 0, cursor->animIDs[startingSlot], 0, 0, FALSE);
    } else {
        if (cursorMode == CURSOR_MODE_MON_ONLY) {
            cursor->sprite = BattleFactoryApp_InitSprite(spriteMan, 0, ANIM_ID_CURSOR, 0, 0, FALSE);
        } else {
            cursor->sprite = BattleFactoryApp_InitSprite(spriteMan, 0, ANIM_ID_MENU_CURSOR, 0, 0, FALSE);
        }
    }

    VecFx32 position;
    position.x = cursor->positions[cursor->currentSlot].x * FX32_ONE;
    position.y = cursor->positions[cursor->currentSlot].y * FX32_ONE;

    Sprite_SetPosition(cursor->sprite, &position);
    return cursor;
}

void *BattleFactoryAppCursor_Free(BattleFactoryAppCursor *cursor)
{
    Sprite_Delete(cursor->sprite);
    Heap_Free(cursor);

    return NULL;
}

void BattleFactoryAppCursor_SetDrawFlag(BattleFactoryAppCursor *cursor, BOOL draw)
{
    Sprite_SetDrawFlag(cursor->sprite, draw);
}

void BattleFactoryAppCursor_ProcessInput(BattleFactoryAppCursor *cursor)
{
    if (cursor->selectionActive == TRUE) {
        return;
    }

    if (gSystem.pressedKeys == 0) {
        return;
    }

    if (cursor->cursorMode == CURSOR_MODE_MON_AND_MENU) {
        if (JOY_NEW(PAD_KEY_LEFT)) {
            if (cursor->currentSlot == 0) {
                cursor->currentSlot = cursor->numSlots - 1;
            } else {
                cursor->currentSlot--;
            }
        } else if (JOY_NEW(PAD_KEY_RIGHT)) {
            if (cursor->currentSlot == cursor->numSlots - 1) {
                cursor->currentSlot = 0;
            } else {
                cursor->currentSlot++;
            }
        } else if (JOY_NEW(PAD_KEY_DOWN)) {
            if (cursor->currentSlot < cursor->numBallSlots) {
                cursor->currentSlot = cursor->numBallSlots;
            } else if (cursor->currentSlot == cursor->numSlots - 1) {
                cursor->currentSlot = 0;
            } else {
                cursor->currentSlot++;
            }
        } else if (JOY_NEW(PAD_KEY_UP)) {
            if (cursor->currentSlot < cursor->numBallSlots) {
                cursor->currentSlot = cursor->numSlots - 1;
            } else {
                cursor->currentSlot--;
            }
        }
    } else {
        u32 nextDir, prevDir;
        if (cursor->cursorMode == CURSOR_MODE_MON_ONLY) {
            nextDir = PAD_KEY_RIGHT;
            prevDir = PAD_KEY_LEFT;
        } else {
            nextDir = PAD_KEY_DOWN;
            prevDir = PAD_KEY_UP;
        }

        if (JOY_NEW(nextDir)) {
            cursor->currentSlot++;

            if (cursor->currentSlot >= cursor->numSlots) {
                cursor->currentSlot = 0;
            }
        } else if (JOY_NEW(prevDir)) {
            if (cursor->currentSlot == 0) {
                cursor->currentSlot = cursor->numSlots;
            }

            cursor->currentSlot--;
        }
    }

    if (cursor->animIDs != NULL) {
        Sprite_SetAnimNoRestart(cursor->sprite, cursor->animIDs[cursor->currentSlot]);
    }

    VecFx32 position = *Sprite_GetPosition(cursor->sprite);
    position.x = cursor->positions[cursor->currentSlot].x * FX32_ONE;
    position.y = cursor->positions[cursor->currentSlot].y * FX32_ONE;

    Sprite_SetPosition(cursor->sprite, &position);
}

u8 BattleFactoryAppCursor_GetCurrentSlot(BattleFactoryAppCursor *cursor)
{
    return cursor->currentSlot;
}

void UpdateMonCursorState(BattleFactoryAppCursor *cursor, BOOL selectionActive)
{
    cursor->selectionActive = selectionActive;

    if (selectionActive == FALSE) {
        Sprite_SetAnimNoRestart(cursor->sprite, ANIM_ID_CURSOR);
    } else {
        Sprite_SetAnimNoRestart(cursor->sprite, ANIM_ID_CURSOR_SELECTED);
    }
}

void BattleFactoryAppCursor_UpdatePosition(BattleFactoryAppCursor *cursor, u8 slot)
{
    cursor->currentSlot = slot;

    if (cursor->animIDs != NULL) {
        Sprite_SetAnimNoRestart(cursor->sprite, cursor->animIDs[cursor->currentSlot]);
    }

    VecFx32 position = *Sprite_GetPosition(cursor->sprite);

    position.x = cursor->positions[cursor->currentSlot].x * FX32_ONE;
    position.y = cursor->positions[cursor->currentSlot].y * FX32_ONE;

    Sprite_SetPosition(cursor->sprite, &position);
}
