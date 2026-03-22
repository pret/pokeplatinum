#include "applications/frontier/battle_arcade/sprites.h"

#include <nitro.h>
#include <string.h>

#include "applications/frontier/battle_arcade/sprite_manager.h"

#include "heap.h"
#include "pokemon_icon.h"
#include "sprite.h"

BattleArcadeAppSprite *BattleArcadeAppSprite_New(BattleArcadeAppSpriteManager *spriteMan, u32 charResourceID, u32 plttResourceID, u32 cellResourceID, u32 animID, u16 x, u16 y, u32 priority, int resourcePriority, u8 onSubScreen)
{
    BattleArcadeAppSprite *appSprite = Heap_Alloc(HEAP_ID_BATTLE_ARCADE_APP, sizeof(BattleArcadeAppSprite));
    memset(appSprite, 0, sizeof(BattleArcadeAppSprite));

    appSprite->sprite = BattleArcadeApp_InitSprite(spriteMan, charResourceID, plttResourceID, cellResourceID, animID, priority, resourcePriority, onSubScreen);
    appSprite->x = x;
    appSprite->y = y;
    appSprite->onSubScreen = onSubScreen;

    VecFx32 pos;
    pos.x = x * FX32_ONE;
    pos.y = y * FX32_ONE;

    if (onSubScreen == TRUE) {
        pos.y += FX32_CONST(HW_LCD_HEIGHT);
    }

    Sprite_SetPosition(appSprite->sprite, &pos);

    return appSprite;
}

void *BattleArcadeAppSprite_Free(BattleArcadeAppSprite *appSprite)
{
    Sprite_Delete(appSprite->sprite);
    Heap_Free(appSprite);

    return NULL;
}

void BattleArcadeAppSprite_SetDrawFlag(BattleArcadeAppSprite *appSprite, BOOL draw)
{
    Sprite_SetDrawFlag(appSprite->sprite, draw);
}

void BattleArcadeAppSprite_SetPosition(BattleArcadeAppSprite *appSprite, u16 x, u16 y)
{
    VecFx32 pos = *Sprite_GetPosition(appSprite->sprite);

    pos.x = x * FX32_ONE;
    pos.y = y * FX32_ONE;

    if (appSprite->onSubScreen == TRUE) {
        pos.y += FX32_CONST(HW_LCD_HEIGHT);
    }

    Sprite_SetPosition(appSprite->sprite, &pos);
}

void BattleArcadeAppSprite_SetAnim(BattleArcadeAppSprite *appSprite, u32 animID)
{
    Sprite_SetAnimSpeed(appSprite->sprite, FX32_ONE);
    Sprite_SetAnimNoRestart(appSprite->sprite, animID);
}

void BattleArcadeAppSprite_UpdatePalette(BattleArcadeAppSprite *appSprite, Pokemon *mon)
{
    Sprite_SetExplicitPaletteOffsetAutoAdjust(appSprite->sprite, Pokemon_IconPaletteIndex(mon));
}

void BattleArcadeAppSprite_SetAnimateFlag(BattleArcadeAppSprite *appSprite, u8 animate)
{
    Sprite_SetAnimateFlag(appSprite->sprite, animate);
}
