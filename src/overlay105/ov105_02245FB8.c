#include "overlay105/ov105_02245FB8.h"

#include <nitro.h>
#include <string.h>

#include "overlay105/ov105_02245AAC.h"

#include "heap.h"
#include "sprite.h"
#include "system.h"

BattleFactoryAppCursor *BattleFactoryAppCursor_New(BattleFactoryAppSpriteManager *spriteMan, u8 param1, u8 param2, u8 param3, u8 startingSlot, const BattleFactoryAppCursorPosition *positions, const u8 *animIDs)
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

void *BattleFactoryAppCursor_Free(BattleFactoryAppCursor *sprite)
{
    Sprite_Delete(sprite->sprite);
    Heap_Free(sprite);

    return NULL;
}

void BattleFactoryAppCursor_SetDrawFlag(BattleFactoryAppCursor *sprite, BOOL draw)
{
    Sprite_SetDrawFlag(sprite->sprite, draw);
}

void ov105_02246080(BattleFactoryAppCursor *sprite)
{
    if (sprite->unk_03 == 1) {
        return;
    }

    if (gSystem.pressedKeys == 0) {
        return;
    }

    if (sprite->unk_01 == 2) {
        if (JOY_NEW(PAD_KEY_LEFT)) {
            if (sprite->currentSlot == 0) {
                sprite->currentSlot = (sprite->unk_00 - 1);
            } else {
                sprite->currentSlot--;
            }
        } else if (JOY_NEW(PAD_KEY_RIGHT)) {
            if (sprite->currentSlot == (sprite->unk_00 - 1)) {
                sprite->currentSlot = 0;
            } else {
                sprite->currentSlot++;
            }
        } else if (JOY_NEW(PAD_KEY_DOWN)) {
            if (sprite->currentSlot < (sprite->unk_10)) {
                sprite->currentSlot = sprite->unk_10;
            } else if (sprite->currentSlot == (sprite->unk_00 - 1)) {
                sprite->currentSlot = 0;
            } else {
                sprite->currentSlot++;
            }
        } else if (JOY_NEW(PAD_KEY_UP)) {
            if (sprite->currentSlot < (sprite->unk_10)) {
                sprite->currentSlot = (sprite->unk_00 - 1);
            } else {
                sprite->currentSlot--;
            }
        }
    } else {
        u32 v1, v2;
        if (sprite->unk_01 == 0) {
            v1 = PAD_KEY_RIGHT;
            v2 = PAD_KEY_LEFT;
        } else {
            v1 = PAD_KEY_DOWN;
            v2 = PAD_KEY_UP;
        }

        if (JOY_NEW(v1)) {
            sprite->currentSlot++;

            if (sprite->currentSlot >= sprite->unk_00) {
                sprite->currentSlot = 0;
            }
        } else if (JOY_NEW(v2)) {
            if (sprite->currentSlot == 0) {
                sprite->currentSlot = sprite->unk_00;
            }

            sprite->currentSlot--;
        }
    }

    if (sprite->animIDs != NULL) {
        Sprite_SetAnimNoRestart(sprite->sprite, sprite->animIDs[sprite->currentSlot]);
    }

    VecFx32 position = *Sprite_GetPosition(sprite->sprite);
    position.x = sprite->positions[sprite->currentSlot].x * FX32_ONE;
    position.y = sprite->positions[sprite->currentSlot].y * FX32_ONE;

    Sprite_SetPosition(sprite->sprite, &position);
}

u8 BattleFactoryAppCursor_GetCurrentSlot(BattleFactoryAppCursor *sprite)
{
    return sprite->currentSlot;
}

void ov105_022461A4(BattleFactoryAppCursor *sprite, int param1)
{
    sprite->unk_03 = param1;

    if (param1 == 0) {
        Sprite_SetAnimNoRestart(sprite->sprite, ANIM_ID_CURSOR);
    } else {
        Sprite_SetAnimNoRestart(sprite->sprite, ANIM_ID_CURSOR_SELECTED);
    }
}

void BattleFactoryAppCursor_UpdatePosition(BattleFactoryAppCursor *sprite, u8 slot)
{
    sprite->currentSlot = slot;

    if (sprite->animIDs != NULL) {
        Sprite_SetAnimNoRestart(sprite->sprite, sprite->animIDs[sprite->currentSlot]);
    }

    VecFx32 position = *Sprite_GetPosition(sprite->sprite);

    position.x = sprite->positions[sprite->currentSlot].x * FX32_ONE;
    position.y = sprite->positions[sprite->currentSlot].y * FX32_ONE;

    Sprite_SetPosition(sprite->sprite, &position);
}
