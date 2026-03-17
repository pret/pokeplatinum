#include "applications/frontier/battle_factory/panel_sprite.h"

#include <nitro.h>
#include <string.h>

#include "applications/frontier/battle_factory/sprite_manager.h"

#include "heap.h"
#include "sprite.h"

static void SetSpritePosition(BattleFactoryAppPanelSprite *sprite, int x, int y);

BattleFactoryAppPanelSprite *BattleFactoryAppPanelSprite_New(BattleFactoryAppSpriteManager *spriteMan, u32 animID, int x, int y, enum HeapID heapID)
{
    BattleFactoryAppPanelSprite *panelSprite = Heap_Alloc(heapID, sizeof(BattleFactoryAppPanelSprite));
    memset(panelSprite, 0, sizeof(BattleFactoryAppPanelSprite));

    panelSprite->x = x;
    panelSprite->y = y;
    panelSprite->sprite = BattleFactoryApp_InitSprite(spriteMan, 0, animID, 0, 1, FALSE);

    SetSpritePosition(panelSprite, x, y);

    return panelSprite;
}

void *BattleFactoryAppPanelSprite_Free(BattleFactoryAppPanelSprite *panelSprite)
{
    Sprite_Delete(panelSprite->sprite);
    Heap_Free(panelSprite);

    return NULL;
}

static void SetSpritePosition(BattleFactoryAppPanelSprite *panelSprite, int x, int y)
{
    VecFx32 position;

    position.x = x * FX32_ONE;
    position.y = y * FX32_ONE;

    Sprite_SetPosition(panelSprite->sprite, &position);
}

BOOL BattleFactoryAppPanelSprite_IsAnimated(BattleFactoryAppPanelSprite *panelSprite)
{
    return Sprite_IsAnimated(panelSprite->sprite);
}
