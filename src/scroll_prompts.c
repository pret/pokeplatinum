#include "scroll_prompts.h"

#include <nitro.h>
#include <string.h>

#include "overlay005/sprite_resource_manager.h"

#include "heap.h"
#include "narc.h"
#include "sprite.h"
#include "sprite_system.h"

#include "res/graphics/scroll_prompts/fld_comact.naix"

static const SpriteTemplate sArrowSpriteTemplates[] = {
    {
        .x = 80,
        .y = 16,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .resources = { 0x34D8, 0x34D8, 0x34D8, 0x34D8, 0x0, 0x0 },
        .bgPriority = 0,
        .vramTransfer = FALSE,
    },
    {
        .x = 80,
        .y = 224,
        .z = 0,
        .animIdx = 1,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .resources = { 0x34D8, 0x34D8, 0x34D8, 0x34D8, 0x0, 0x0 },
        .bgPriority = 0,
        .vramTransfer = FALSE,
    },
};

ScrollPrompts *ScrollPrompts_New(enum HeapID heapID)
{
    SpriteResourceCapacities capacities = {
        .asStruct = {
            .charCapacity = 1,
            .plttCapacity = 1,
            .cellCapacity = 1,
            .animCapacity = 1,
            .mcellCapacity = 0,
            .manimCapacity = 0,
        }
    };
    ScrollPrompts *prompts = Heap_Alloc(heapID, sizeof(ScrollPrompts));
    MI_CpuClear8(prompts, sizeof(ScrollPrompts));

    SpriteResourceManager_SetCapacities(&prompts->spriteManager, &capacities, 2, HEAP_ID_FIELD2);

    NARC *narc = NARC_ctor(NARC_INDEX_GRAPHIC__FLD_COMACT, heapID);

    SpriteResourceManager_LoadPalette(&prompts->spriteManager, narc, scroll_prompts_NCLR, FALSE, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 13528);
    SpriteResourceManager_LoadCell(&prompts->spriteManager, narc, scroll_prompts_cell_NCER, FALSE, 13528);
    SpriteResourceManager_LoadAnimation(&prompts->spriteManager, narc, scroll_prompts_anim_NANR, FALSE, 13528);
    SpriteResourceManager_LoadTiles(&prompts->spriteManager, narc, scroll_prompts_NCGR, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 13528);

    for (u32 i = 0; i < SCROLL_PROMPT_ARROW_COUNT; i++) {
        prompts->arrowSprites[i] = SpriteResourceManager_CreateManagedSprite(&prompts->spriteManager, &sArrowSpriteTemplates[i]);
    }

    NARC_dtor(narc);
    return prompts;
}

void ScrollPrompts_Free(ScrollPrompts *prompts)
{
    for (int i = 0; i < SCROLL_PROMPT_ARROW_COUNT; i++) {
        if (prompts->arrowSprites[i] != NULL) {
            Sprite_DeleteAndFreeResources(prompts->arrowSprites[i]);
        }
    }

    SpriteResourceManager_Cleanup(&prompts->spriteManager);
    Heap_Free(prompts);
}

void ScrollPrompts_UpdateAnim(ScrollPrompts *prompts)
{
    for (int i = 0; i < SCROLL_PROMPT_ARROW_COUNT; i++) {
        if (prompts->arrowSprites[i] != NULL) {
            Sprite_UpdateAnim(prompts->arrowSprites[i]->sprite, FX32_ONE);
        }
    }

    SpriteList_Update(prompts->spriteManager.spriteList);
}

void ScrollPrompts_SetPosition(ScrollPrompts *prompts, s16 x, s16 topArrowY, s16 bottomArrowY)
{
    ManagedSprite_SetPositionXY(prompts->arrowSprites[SCROLL_PROMPT_TOP_ARROW], x, topArrowY);
    ManagedSprite_SetPositionXY(prompts->arrowSprites[SCROLL_PROMPT_BOTTOM_ARROW], x, bottomArrowY);
}

void ScrollPrompts_SetDrawFlag(ScrollPrompts *prompts, u16 arrowIndex, BOOL draw)
{
    if (arrowIndex >= SCROLL_PROMPT_ARROW_COUNT) {
        return;
    }

    ManagedSprite_SetDrawFlag(prompts->arrowSprites[arrowIndex], draw);
}
