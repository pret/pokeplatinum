#include "applications/frontier/battle_factory/pokeball_sprite.h"

#include <nitro.h>
#include <string.h>

#include "applications/frontier/battle_factory/sprite_manager.h"

#include "heap.h"
#include "sprite.h"

static void BattleFactoryAppPokeballSprite_SetSelected(BattleFactoryAppPokeballSprite *sprite, u8 isSelected);

BattleFactoryAppPokeballSprite *BattleFactoryAppPokeballSprite_New(BattleFactoryAppSpriteManager *spriteMan, int x, int y, u32 heapID)
{
    BattleFactoryAppPokeballSprite *sprite = Heap_Alloc(heapID, sizeof(BattleFactoryAppPokeballSprite));
    memset(sprite, 0, sizeof(BattleFactoryAppPokeballSprite));

    sprite->isSelected = 0;
    sprite->x = x;
    sprite->y = y;
    sprite->sprite = BattleFactoryApp_InitSprite(spriteMan, 0, ANIM_ID_BALL_STATIC, 0, 0, FALSE);

    BattleFactoryAppPokeballSprite_SetPosition(sprite, x, y);
    Sprite_SetExplicitPalette(sprite->sprite, 1);

    return sprite;
}

void *BattleFactoryAppPokeballSprite_Free(BattleFactoryAppPokeballSprite *sprite)
{
    Sprite_Delete(sprite->sprite);
    Heap_Free(sprite);

    return NULL;
}

void BattleFactoryAppPokeballSprite_SetDrawFlag(BattleFactoryAppPokeballSprite *sprite, int draw)
{
    Sprite_SetDrawFlag(sprite->sprite, draw);
}

VecFx32 BattleFactoryAppPokeballSprite_SetAndGetPosition(BattleFactoryAppPokeballSprite *sprite, int x, int y)
{
    VecFx32 position = *Sprite_GetPosition(sprite->sprite);
    position.x += x * FX32_ONE;
    position.y += y * FX32_ONE;

    Sprite_SetPosition(sprite->sprite, &position);
    return *Sprite_GetPosition(sprite->sprite);
}

void BattleFactoryAppPokeballSprite_SetPosition(BattleFactoryAppPokeballSprite *sprite, int x, int y)
{
    VecFx32 position;

    position.x = x * FX32_ONE;
    position.y = y * FX32_ONE;

    Sprite_SetPosition(sprite->sprite, &position);
}

const VecFx32 *BattleFactoryAppPokeballSprite_GetPosition(BattleFactoryAppPokeballSprite *sprite)
{
    return Sprite_GetPosition(sprite->sprite);
}

static void BattleFactoryAppPokeballSprite_SetSelected(BattleFactoryAppPokeballSprite *sprite, u8 isSelected)
{
    sprite->isSelected = isSelected;
}

u8 BattleFactoryAppPokeballSprite_IsSelected(BattleFactoryAppPokeballSprite *sprite)
{
    return sprite->isSelected;
}

void BattleFactoryAppPokeballSprite_SelectMon(BattleFactoryAppPokeballSprite *sprite)
{
    BattleFactoryAppPokeballSprite_SetSelected(sprite, TRUE);
}

void BattleFactoryAppPokeballSprite_UnselectMon(BattleFactoryAppPokeballSprite *sprite)
{
    BattleFactoryAppPokeballSprite_SetSelected(sprite, FALSE);
}

void ov105_02245F5C(BattleFactoryAppPokeballSprite *sprite)
{
    const VecFx32 *oldPos = BattleFactoryAppPokeballSprite_GetPosition(sprite);

    VecFx32 newPos;
    newPos.x = ((oldPos->x / FX32_ONE) + 248) * FX32_ONE;
    newPos.y = oldPos->y;

    Sprite_SetPosition(sprite->sprite, &newPos);
}

int BattleFactoryAppPokeballSprite_GetX(BattleFactoryAppPokeballSprite *sprite)
{
    return sprite->x;
}

int BattleFactoryAppPokeballSprite_GetY(BattleFactoryAppPokeballSprite *sprite)
{
    return sprite->y;
}

void BattleFactoryAppPokeballSprite_SetAnim(BattleFactoryAppPokeballSprite *sprite, u32 animID)
{
    Sprite_SetAnimSpeed(sprite->sprite, FX32_ONE);
    Sprite_SetAnim(sprite->sprite, animID);
}

void BattleFactoryAppPokeballSprite_UpdatePalette(BattleFactoryAppPokeballSprite *sprite, u32 palette)
{
    Sprite_SetExplicitPalette(sprite->sprite, palette);
}
