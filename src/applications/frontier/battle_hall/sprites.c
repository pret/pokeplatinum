#include "applications/frontier/battle_hall/sprites.h"

#include <nitro.h>

#include "applications/frontier/battle_hall/sprite_manager.h"

#include "heap.h"
#include "pokemon_icon.h"
#include "sprite.h"

BattleHallAppSprite *BattleHallAppSprite_New(BattleHallAppSpriteManager *spriteMan, u32 resourceID, u32 animID, u16 x, u16 y, const u8 *null)
{
    BattleHallAppSprite *sprite = Heap_Alloc(HEAP_ID_BATTLE_HALL_APP, sizeof(BattleHallAppSprite));
    memset(sprite, 0, sizeof(BattleHallAppSprite));

    sprite->isAlwaysNull = null;
    sprite->sprite = BattleHallApp_InitSprite(spriteMan, resourceID, animID, 0, FALSE);

    VecFx32 position;
    position.x = x * FX32_ONE;
    position.y = y * FX32_ONE;

    Sprite_SetPosition(sprite->sprite, &position);

    return sprite;
}

void *BattleHallAppSprite_Free(BattleHallAppSprite *sprite)
{
    Sprite_Delete(sprite->sprite);
    Heap_Free(sprite);
    return NULL;
}

void BattleHallAppSprite_SetDrawFlag(BattleHallAppSprite *sprite, BOOL draw)
{
    Sprite_SetDrawFlag(sprite->sprite, draw);
}

void BattleHallAppSprite_SetPosition(BattleHallAppSprite *sprite, u16 x, u16 y)
{
    if (sprite->isAlwaysNull != NULL) {
        Sprite_SetAnimNoRestart(sprite->sprite, sprite->isAlwaysNull[0]);
    }

    VecFx32 position = *Sprite_GetPosition(sprite->sprite);

    position.x = x * FX32_ONE;
    position.y = y * FX32_ONE;

    Sprite_SetPosition(sprite->sprite, &position);
}

void BattleHallAppSprite_SetAnim(BattleHallAppSprite *sprite, u32 animID)
{
    Sprite_SetAnimSpeed(sprite->sprite, FX32_ONE);
    Sprite_SetAnimNoRestart(sprite->sprite, animID);
}

void BattleHallAppSprite_UpdatePalette(BattleHallAppSprite *sprite, Pokemon *mon)
{
    Sprite_SetExplicitPaletteOffsetAutoAdjust(sprite->sprite, Pokemon_IconPaletteIndex(mon));
}
