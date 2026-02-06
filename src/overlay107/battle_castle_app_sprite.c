#include "overlay107/battle_castle_app_sprite.h"

#include <nitro.h>
#include <string.h>

#include "overlay104/ov104_0222DCE0.h"
#include "overlay107/battle_castle_app_sprite_manager.h"

#include "heap.h"
#include "pokemon_icon.h"
#include "sound_playback.h"
#include "sprite.h"

BattleCastleAppSprite *BattleCastleAppSprite_New(BattleCastleAppSpriteManager *spriteMan, u32 charResourceID, u32 plttResourceID, u32 cellResourceID, u32 animID, s16 x, s16 y, int priority, const u8 *unused)
{
    BattleCastleAppSprite *sprite = Heap_Alloc(HEAP_ID_BATTLE_CASTLE_APP, sizeof(BattleCastleAppSprite));
    memset(sprite, 0, sizeof(BattleCastleAppSprite));

    sprite->x = x;
    sprite->y = y;
    sprite->sprite = BattleCastleApp_InitSprite(spriteMan, charResourceID, plttResourceID, cellResourceID, animID, 0, priority, FALSE);

    VecFx32 position;
    position.x = x * FX32_ONE;
    position.y = y * FX32_ONE;

    Sprite_SetPosition(sprite->sprite, &position);
    return sprite;
}

void *BattleCastleAppSprite_Free(BattleCastleAppSprite *sprite)
{
    if (sprite == NULL) {
        GF_ASSERT(0);
        return NULL;
    }

    Sprite_Delete(sprite->sprite);
    Heap_Free(sprite);

    return NULL;
}

void BattleCastleAppSprite_SetDrawFlag(BattleCastleAppSprite *sprite, BOOL draw)
{
    Sprite_SetDrawFlag(sprite->sprite, draw);
}

void BattleCastleAppSprite_SetPosition(BattleCastleAppSprite *sprite, u16 x, u16 y)
{
    VecFx32 position = *Sprite_GetPosition(sprite->sprite);
    position.x = x * FX32_ONE;
    position.y = y * FX32_ONE;

    Sprite_SetPosition(sprite->sprite, &position);
}

void BattleCastleAppSprite_SetAnim(BattleCastleAppSprite *sprite, u32 animID)
{
    Sprite_SetAnimSpeed(sprite->sprite, FX32_ONE);
    Sprite_SetAnim(sprite->sprite, animID);
}

void BattleCastleAppSprite_UpdatePalette(BattleCastleAppSprite *sprite, Pokemon *mon)
{
    Sprite_SetExplicitPaletteOffsetAutoAdjust(sprite->sprite, Pokemon_IconPaletteIndex(mon));
}

void ov107_02249C1C(BattleCastleAppSprite *sprite, u8 param1)
{
    ov104_0222E1D8(sprite->sprite, param1);
}

void ov107_02249C28(BattleCastleAppSprite *sprite, u8 param1)
{
    ov104_0222E204(sprite->sprite, sprite->x, sprite->y, param1);
}

BOOL BattleCastleAppSprite_IsAnimated(BattleCastleAppSprite *sprite)
{
    return Sprite_IsAnimated(sprite->sprite);
}

void BattleCastleAppSprite_SetPriority(BattleCastleAppSprite *sprite, u8 priority)
{
    Sprite_SetExplicitPriority(sprite->sprite, priority);
}

void ov107_02249C58(BattleCastleAppSprite *sprite, s16 x, s16 y)
{
    sprite->x = x;
    sprite->y = y;
}

void ov107_02249C60(BattleCastleAppSprite *sprite, u16 x, u16 y)
{
    BattleCastleAppSprite_SetAnim(sprite, 11);
    BattleCastleAppSprite_SetPosition(sprite, x, y);
    BattleCastleAppSprite_SetDrawFlag(sprite, TRUE);

    Sound_PlayEffect(SEQ_SE_DP_PIRORIRO2);
    Sound_PlayEffect(SEQ_SE_DP_DANSA4);
}
