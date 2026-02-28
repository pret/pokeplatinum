#include "applications/frontier/battle_factory/cursor.h"

#include <nitro.h>
#include <string.h>

#include "applications/frontier/battle_factory/sprite_manager.h"

#include "heap.h"
#include "sprite.h"
#include "system.h"

BattleFactoryAppCursor *BattleFactoryAppCursor_New(BattleFactoryAppSpriteManager *spriteMan, u8 param1, u8 param2, u8 param3, u8 startingSlot, const CoordinatesS16 *positions, const u8 *animIDs)
{
    BattleFactoryAppCursor *cursor = Heap_Alloc(HEAP_ID_BATTLE_FACTORY_APP, sizeof(BattleFactoryAppCursor));
    memset(cursor, 0, sizeof(BattleFactoryAppCursor));

    cursor->unk_00 = param1;
    cursor->unk_10 = param2;
    cursor->unk_01 = param3;
    cursor->currentSlot = startingSlot;
    cursor->positions = positions;
    cursor->animIDs = animIDs;

    if (animIDs != NULL) {
        cursor->sprite = BattleFactoryApp_InitSprite(spriteMan, 0, cursor->animIDs[startingSlot], 0, 0, FALSE);
    } else {
        if (param3 == 0) {
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

void ov105_02246080(BattleFactoryAppCursor *cursor)
{
    if (cursor->unk_03 == 1) {
        return;
    }

    if (gSystem.pressedKeys == 0) {
        return;
    }

    if (cursor->unk_01 == 2) {
        if (JOY_NEW(PAD_KEY_LEFT)) {
            if (cursor->currentSlot == 0) {
                cursor->currentSlot = (cursor->unk_00 - 1);
            } else {
                cursor->currentSlot--;
            }
        } else if (JOY_NEW(PAD_KEY_RIGHT)) {
            if (cursor->currentSlot == (cursor->unk_00 - 1)) {
                cursor->currentSlot = 0;
            } else {
                cursor->currentSlot++;
            }
        } else if (JOY_NEW(PAD_KEY_DOWN)) {
            if (cursor->currentSlot < (cursor->unk_10)) {
                cursor->currentSlot = cursor->unk_10;
            } else if (cursor->currentSlot == (cursor->unk_00 - 1)) {
                cursor->currentSlot = 0;
            } else {
                cursor->currentSlot++;
            }
        } else if (JOY_NEW(PAD_KEY_UP)) {
            if (cursor->currentSlot < (cursor->unk_10)) {
                cursor->currentSlot = (cursor->unk_00 - 1);
            } else {
                cursor->currentSlot--;
            }
        }
    } else {
        u32 v1, v2;
        if (cursor->unk_01 == 0) {
            v1 = PAD_KEY_RIGHT;
            v2 = PAD_KEY_LEFT;
        } else {
            v1 = PAD_KEY_DOWN;
            v2 = PAD_KEY_UP;
        }

        if (JOY_NEW(v1)) {
            cursor->currentSlot++;

            if (cursor->currentSlot >= cursor->unk_00) {
                cursor->currentSlot = 0;
            }
        } else if (JOY_NEW(v2)) {
            if (cursor->currentSlot == 0) {
                cursor->currentSlot = cursor->unk_00;
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

void ov105_022461A4(BattleFactoryAppCursor *cursor, int param1)
{
    cursor->unk_03 = param1;

    if (param1 == 0) {
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
