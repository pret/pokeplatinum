#include "applications/frontier/battle_factory/panel_sprite.h"

#include <nitro.h>
#include <string.h>

#include "applications/frontier/battle_factory/sprite_manager.h"

#include "heap.h"
#include "sprite.h"

static void SetSpritePosition(BattleFactoryAppPanelSprite *sprite, int x, int y);

BattleFactoryAppPanelSprite *BattleFactoryAppPanelSprite_New(BattleFactoryAppSpriteManager *spriteMan, u32 animID, int x, int y, enum HeapID heapID)
{
    BattleFactoryAppPanelSprite *sprite = Heap_Alloc(heapID, sizeof(BattleFactoryAppPanelSprite));
    memset(sprite, 0, sizeof(BattleFactoryAppPanelSprite));

    sprite->x = x;
    sprite->y = y;
    sprite->sprite = BattleFactoryApp_InitSprite(spriteMan, 0, animID, 0, 1, FALSE);

    SetSpritePosition(sprite, x, y);

    return sprite;
}

void *BattleFactoryAppPanelSprite_Free(BattleFactoryAppPanelSprite *sprite)
{
    Sprite_Delete(sprite->sprite);
    Heap_Free(sprite);

    return NULL;
}

static void SetSpritePosition(BattleFactoryAppPanelSprite *sprite, int x, int y)
{
    VecFx32 position;

    position.x = x * FX32_ONE;
    position.y = y * FX32_ONE;

    Sprite_SetPosition(sprite->sprite, &position);
}

BOOL BattleFactoryAppPanelSprite_IsAnimated(BattleFactoryAppPanelSprite *sprite)
{
    return Sprite_IsAnimated(sprite->sprite);
}
