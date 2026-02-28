#include "applications/frontier/battle_factory/pokeball_sprite.h"

#include <nitro.h>
#include <string.h>

#include "applications/frontier/battle_factory/sprite_manager.h"

#include "heap.h"
#include "sprite.h"

static void BattleFactoryAppPokeballSprite_SetSelected(BattleFactoryAppPokeballSprite *ballSprite, u8 isSelected);

BattleFactoryAppPokeballSprite *BattleFactoryAppPokeballSprite_New(BattleFactoryAppSpriteManager *spriteMan, int x, int y, u32 heapID)
{
    BattleFactoryAppPokeballSprite *ballSprite = Heap_Alloc(heapID, sizeof(BattleFactoryAppPokeballSprite));
    memset(ballSprite, 0, sizeof(BattleFactoryAppPokeballSprite));

    ballSprite->isSelected = 0;
    ballSprite->x = x;
    ballSprite->y = y;
    ballSprite->sprite = BattleFactoryApp_InitSprite(spriteMan, 0, ANIM_ID_BALL_STATIC, 0, 0, FALSE);

    BattleFactoryAppPokeballSprite_SetPosition(ballSprite, x, y);
    Sprite_SetExplicitPalette(ballSprite->sprite, 1);

    return ballSprite;
}

void *BattleFactoryAppPokeballSprite_Free(BattleFactoryAppPokeballSprite *ballSprite)
{
    Sprite_Delete(ballSprite->sprite);
    Heap_Free(ballSprite);

    return NULL;
}

void BattleFactoryAppPokeballSprite_SetDrawFlag(BattleFactoryAppPokeballSprite *ballSprite, BOOL draw)
{
    Sprite_SetDrawFlag(ballSprite->sprite, draw);
}

VecFx32 BattleFactoryAppPokeballSprite_SetAndGetPosition(BattleFactoryAppPokeballSprite *ballSprite, int x, int y)
{
    VecFx32 position = *Sprite_GetPosition(ballSprite->sprite);
    position.x += x * FX32_ONE;
    position.y += y * FX32_ONE;

    Sprite_SetPosition(ballSprite->sprite, &position);
    return *Sprite_GetPosition(ballSprite->sprite);
}

void BattleFactoryAppPokeballSprite_SetPosition(BattleFactoryAppPokeballSprite *ballSprite, int x, int y)
{
    VecFx32 position;

    position.x = x * FX32_ONE;
    position.y = y * FX32_ONE;

    Sprite_SetPosition(ballSprite->sprite, &position);
}

const VecFx32 *BattleFactoryAppPokeballSprite_GetPosition(BattleFactoryAppPokeballSprite *ballSprite)
{
    return Sprite_GetPosition(ballSprite->sprite);
}

static void BattleFactoryAppPokeballSprite_SetSelected(BattleFactoryAppPokeballSprite *ballSprite, u8 isSelected)
{
    ballSprite->isSelected = isSelected;
}

u8 BattleFactoryAppPokeballSprite_IsSelected(BattleFactoryAppPokeballSprite *ballSprite)
{
    return ballSprite->isSelected;
}

void BattleFactoryAppPokeballSprite_SelectMon(BattleFactoryAppPokeballSprite *ballSprite)
{
    BattleFactoryAppPokeballSprite_SetSelected(ballSprite, TRUE);
}

void BattleFactoryAppPokeballSprite_UnselectMon(BattleFactoryAppPokeballSprite *ballSprite)
{
    BattleFactoryAppPokeballSprite_SetSelected(ballSprite, FALSE);
}

void ov105_02245F5C(BattleFactoryAppPokeballSprite *ballSprite)
{
    const VecFx32 *oldPos = BattleFactoryAppPokeballSprite_GetPosition(ballSprite);

    VecFx32 newPos;
    newPos.x = ((oldPos->x / FX32_ONE) + 248) * FX32_ONE;
    newPos.y = oldPos->y;

    Sprite_SetPosition(ballSprite->sprite, &newPos);
}

int BattleFactoryAppPokeballSprite_GetX(BattleFactoryAppPokeballSprite *ballSprite)
{
    return ballSprite->x;
}

int BattleFactoryAppPokeballSprite_GetY(BattleFactoryAppPokeballSprite *ballSprite)
{
    return ballSprite->y;
}

void BattleFactoryAppPokeballSprite_SetAnim(BattleFactoryAppPokeballSprite *ballSprite, u32 animID)
{
    Sprite_SetAnimSpeed(ballSprite->sprite, FX32_ONE);
    Sprite_SetAnim(ballSprite->sprite, animID);
}

void BattleFactoryAppPokeballSprite_UpdatePalette(BattleFactoryAppPokeballSprite *ballSprite, u32 palette)
{
    Sprite_SetExplicitPalette(ballSprite->sprite, palette);
}
