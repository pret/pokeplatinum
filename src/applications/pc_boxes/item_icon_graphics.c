#include "applications/pc_boxes/item_icon_graphics.h"

#include <nitro.h>
#include <string.h>

#include "constants/items.h"

#include "applications/pc_boxes/application_manager.h"
#include "applications/pc_boxes/cursor_graphics.h"
#include "applications/pc_boxes/defs.h"
#include "applications/pc_boxes/graphics.h"
#include "applications/pc_boxes/icon_helper.h"
#include "applications/pc_boxes/party_graphics.h"
#include "applications/pc_boxes/view.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "item.h"
#include "sprite.h"
#include "sys_task.h"
#include "sys_task_manager.h"

static const struct {
    u32 vramOffset;
    u32 palette;
} sItemIconVramSlots[ITEM_ICON_SPRITE_COUNT] = {
    { ITEM_ICON_TILE_BASE * TILE_SIZE_4BPP, ITEM_ICON_PLTT_BASE },
    { (ITEM_ICON_TILE_BASE + ITEM_ICON_TILE_COUNT) * TILE_SIZE_4BPP, ITEM_ICON_PLTT_BASE + 1 },
    { (ITEM_ICON_TILE_BASE + 2 * ITEM_ICON_TILE_COUNT) * TILE_SIZE_4BPP, ITEM_ICON_PLTT_BASE + 2 },
};

typedef struct ItemIconMove {
    BoxItemIconGraphics *itemIconGraphics;
    Sprite *sprite;
    VecFx32 pos;
    VecFx32 targetPos;
    fx32 stepX;
    fx32 stepY;
    int landingPriority;
    int framesLeft;
    int state;
} ItemIconMove;

static void BoxItemIconGraphics_CreateSprites(BoxItemIconGraphics *itemIconGraphics);
static void BoxItemIconGraphics_DeleteSprites(BoxItemIconGraphics *itemIconGraphics);
static int BoxItemIconGraphics_ClaimSprite(BoxItemIconGraphics *itemIconGraphics, enum ItemIconRole role);
static int BoxItemIconGraphics_FindSprite(BoxItemIconGraphics *itemIconGraphics, enum ItemIconRole role);
static void BoxItemIconGraphics_SetSpriteRole(BoxItemIconGraphics *itemIconGraphics, int spriteIndex, enum ItemIconRole role);
static void BoxItemIconGraphics_ShowPreviewedMonItem(BoxItemIconGraphics *itemIconGraphics);
static void BoxItemIconGraphics_ShowCursorItem(BoxItemIconGraphics *itemIconGraphics);
static void BoxItemIconGraphics_GetMonItemIconPosition(BoxItemIconGraphics *itemIconGraphics, VecFx32 *pos, u32 *bgPriority);
static void BoxItemIconGraphics_LoadMonItemIcon(BoxItemIconGraphics *itemIconGraphics, int spriteIndex, int heldItem);
static void BoxItemIconGraphics_StartIconMove(BoxItemIconGraphics *itemIconGraphics, int spriteIndex, const VecFx32 *targetPos, int landingPriority, int frames);
static void ItemIconMove_Task(SysTask *task, void *param);

BOOL BoxItemIconGraphics_Init(BoxItemIconGraphics **outItemIconGraphics, BoxGraphics *boxGraphics, const BoxApplication *boxApp, BgConfig *bgConfig, SpriteList *spriteList)
{
    BoxItemIconGraphics *itemIconGraphics = Heap_Alloc(HEAP_ID_BOX_GRAPHICS, sizeof(BoxItemIconGraphics));

    if (itemIconGraphics != NULL) {
        itemIconGraphics->boxGraphics = boxGraphics;
        itemIconGraphics->boxApp = boxApp;
        itemIconGraphics->unusedBgConfig = bgConfig;
        itemIconGraphics->spriteList = spriteList;
        itemIconGraphics->monIconHelper = BoxGraphics_GetMonIconHelper(boxGraphics);
        itemIconGraphics->cursorGraphics = BoxGraphics_GetCursorGraphics(boxGraphics);
        itemIconGraphics->activeMoveCount = 0;
        itemIconGraphics->isMoveItemsMode = (BoxApp_GetBoxMode(boxApp) == PC_MODE_MOVE_ITEMS);

        BoxItemIconGraphics_CreateSprites(itemIconGraphics);
        *outItemIconGraphics = itemIconGraphics;

        return TRUE;
    }

    return FALSE;
}

void BoxItemIconGraphics_Free(BoxItemIconGraphics *itemIconGraphics)
{
    BoxItemIconGraphics_DeleteSprites(itemIconGraphics);
    Heap_Free(itemIconGraphics);
}

static void BoxItemIconGraphics_CreateSprites(BoxItemIconGraphics *itemIconGraphics)
{
    if (itemIconGraphics->isMoveItemsMode) {
        SpriteResourcesHeader srHeader;
        NNSG2dImageProxy imageProxy;
        NNSG2dCharacterData *charData;
        void *charDataBuffer;

        SpriteResourcesHeader_InitFromProxies(&srHeader, &imageProxy, BoxGraphics_GetImagePaletteProxy(itemIconGraphics->boxGraphics), itemIconGraphics->monIconHelper->itemIconCellBank, itemIconGraphics->monIconHelper->itemIconAnimBank, 0);
        charDataBuffer = Graphics_GetCharData(NARC_INDEX_ITEMTOOL__ITEMDATA__ITEM_ICON, Item_FileID(ITEM_MASTER_BALL, ITEM_FILE_TYPE_ICON), FALSE, &charData, HEAP_ID_BOX_GRAPHICS);

        if (charDataBuffer != NULL) {
            charData->mappingType = GX_GetOBJVRamModeChar();

            for (int i = 0; i < ITEM_ICON_SPRITE_COUNT; i++) {
                NNS_G2dInitImageProxy(&imageProxy);
                NNS_G2dLoadImage1DMapping(charData, sItemIconVramSlots[i].vramOffset, NNS_G2D_VRAM_TYPE_2DMAIN, &imageProxy);

                itemIconGraphics->sprites[i] = BoxGraphics_CreateSprite(itemIconGraphics->spriteList, &srHeader, 0, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN);

                Sprite_SetExplicitPalette(itemIconGraphics->sprites[i], sItemIconVramSlots[i].palette);
                Sprite_SetDrawFlag(itemIconGraphics->sprites[i], FALSE);
                Sprite_SetAffineOverwriteMode(itemIconGraphics->sprites[i], AFFINE_OVERWRITE_MODE_NORMAL);

                itemIconGraphics->spriteRoles[i] = ITEM_ICON_ROLE_FREE;
            }

            Heap_Free(charDataBuffer);
        }
    } else {
        for (int i = 0; i < ITEM_ICON_SPRITE_COUNT; i++) {
            itemIconGraphics->sprites[i] = NULL;
            itemIconGraphics->spriteRoles[i] = ITEM_ICON_ROLE_FREE;
        }
    }
}

static void BoxItemIconGraphics_DeleteSprites(BoxItemIconGraphics *itemIconGraphics)
{
    for (int i = 0; i < ITEM_ICON_SPRITE_COUNT; i++) {
        if (itemIconGraphics->sprites[i] != NULL) {
            Sprite_Delete(itemIconGraphics->sprites[i]);
        }
    }
}

static int BoxItemIconGraphics_ClaimSprite(BoxItemIconGraphics *itemIconGraphics, enum ItemIconRole role)
{
    for (int i = 0; i < ITEM_ICON_SPRITE_COUNT; i++) {
        if (itemIconGraphics->spriteRoles[i] == ITEM_ICON_ROLE_FREE) {
            itemIconGraphics->spriteRoles[i] = role;
            return i;
        }
    }

    return -1;
}

static int BoxItemIconGraphics_FindSprite(BoxItemIconGraphics *itemIconGraphics, enum ItemIconRole role)
{
    for (int i = 0; i < ITEM_ICON_SPRITE_COUNT; i++) {
        if (itemIconGraphics->spriteRoles[i] == role) {
            return i;
        }
    }

    return -1;
}

static void BoxItemIconGraphics_SetSpriteRole(BoxItemIconGraphics *itemIconGraphics, int spriteIndex, enum ItemIconRole role)
{
    itemIconGraphics->spriteRoles[spriteIndex] = role;
}

void BoxItemIconGraphics_ShowInitialIcons(BoxItemIconGraphics *itemIconGraphics)
{
    if (itemIconGraphics->isMoveItemsMode == FALSE) {
        return;
    }

    BoxItemIconGraphics_ShowPreviewedMonItem(itemIconGraphics);
    BoxItemIconGraphics_ShowCursorItem(itemIconGraphics);
}

static void BoxItemIconGraphics_ShowPreviewedMonItem(BoxItemIconGraphics *itemIconGraphics)
{
    u32 heldItem = BoxApp_GetPreviewedMonHeldItem(itemIconGraphics->boxApp);

    if (heldItem != ITEM_NONE) {
        int spriteIndex = BoxItemIconGraphics_ClaimSprite(itemIconGraphics, ITEM_ICON_ROLE_PREVIEW);

        BoxItemIconGraphics_LoadMonItemIcon(itemIconGraphics, spriteIndex, heldItem);
        Sprite_SetAnim(itemIconGraphics->sprites[spriteIndex], ITEM_ICON_ANIM_SHOWN);
        Sprite_SetDrawFlag(itemIconGraphics->sprites[spriteIndex], TRUE);
    }
}

static void BoxItemIconGraphics_ShowCursorItem(BoxItemIconGraphics *itemIconGraphics)
{
    u32 item = BoxApp_GetCursorItem(itemIconGraphics->boxApp);

    if (item != ITEM_NONE) {
        VecFx32 pos;
        u32 bgPriority;
        int spriteIndex = BoxItemIconGraphics_ClaimSprite(itemIconGraphics, ITEM_ICON_ROLE_HELD);

        BoxCursorGraphics_GetPosition(itemIconGraphics->cursorGraphics, &pos);

        pos.x += ITEM_ICON_CURSOR_OFFSET_X << FX32_SHIFT;
        pos.y += ITEM_ICON_CURSOR_OFFSET_Y << FX32_SHIFT;

        if (BoxApp_GetCursorLocation(itemIconGraphics->boxApp) == CURSOR_IN_PARTY) {
            bgPriority = ITEM_ICON_PARTY_BG_PRIORITY;
        } else {
            bgPriority = ITEM_ICON_BOX_BG_PRIORITY;
        }

        Graphics_LoadObjectTiles(NARC_INDEX_ITEMTOOL__ITEMDATA__ITEM_ICON, Item_FileID(item, ITEM_FILE_TYPE_ICON), DS_SCREEN_MAIN, sItemIconVramSlots[spriteIndex].vramOffset, 0, FALSE, HEAP_ID_BOX_GRAPHICS);
        Graphics_LoadPalette(NARC_INDEX_ITEMTOOL__ITEMDATA__ITEM_ICON, Item_FileID(item, ITEM_FILE_TYPE_PALETTE), PAL_LOAD_MAIN_OBJ, PLTT_OFFSET(sItemIconVramSlots[spriteIndex].palette), PALETTE_SIZE_BYTES, HEAP_ID_BOX_GRAPHICS);
        Sprite_SetExplicitPriority(itemIconGraphics->sprites[spriteIndex], bgPriority);

        BoxGraphics_SetSpritePriority(itemIconGraphics->sprites[spriteIndex], ITEM_ICON_CURSOR_SPRITE_PRIORITY);

        Sprite_SetPosition(itemIconGraphics->sprites[spriteIndex], &pos);
        Sprite_SetAnim(itemIconGraphics->sprites[spriteIndex], ITEM_ICON_ANIM_HELD);
        Sprite_SetDrawFlag(itemIconGraphics->sprites[spriteIndex], TRUE);
    }
}

static void BoxItemIconGraphics_GetMonItemIconPosition(BoxItemIconGraphics *itemIconGraphics, VecFx32 *pos, u32 *bgPriority)
{
    pos->z = 0;

    if (BoxApp_GetCursorLocation(itemIconGraphics->boxApp) == CURSOR_IN_PARTY) {
        s32 slotX, slotY;

        BoxPartyGraphics_GetCursorSlotPosition(BoxGraphics_GetPartyGraphics(itemIconGraphics->boxGraphics), BoxApp_GetCursorPartyPosition(itemIconGraphics->boxApp), &slotX, &slotY);

        pos->x = (slotX + ITEM_ICON_MON_OFFSET_X) << FX32_SHIFT;
        pos->y = (slotY + ITEM_ICON_MON_OFFSET_Y) << FX32_SHIFT;
        *bgPriority = ITEM_ICON_PARTY_BG_PRIORITY;
    } else {
        pos->x = BOX_GRID_LEFT + BoxGraphics_GetCompareModeXOffset(itemIconGraphics->boxGraphics) + BoxApp_GetCursorBoxCol(itemIconGraphics->boxApp) * BOX_GRID_CELL_SIZE + ITEM_ICON_MON_OFFSET_X;
        pos->y = BOX_GRID_TOP + BoxApp_GetCursorBoxRow(itemIconGraphics->boxApp) * BOX_GRID_CELL_SIZE + ITEM_ICON_MON_OFFSET_Y;
        pos->x <<= FX32_SHIFT;
        pos->y <<= FX32_SHIFT;
        *bgPriority = ITEM_ICON_BOX_BG_PRIORITY;
    }
}

static void BoxItemIconGraphics_LoadMonItemIcon(BoxItemIconGraphics *itemIconGraphics, int spriteIndex, int heldItem)
{
    if (spriteIndex >= 0) {
        VecFx32 pos;
        u32 bgPriority;

        BoxItemIconGraphics_GetMonItemIconPosition(itemIconGraphics, &pos, &bgPriority);

        Graphics_LoadObjectTiles(NARC_INDEX_ITEMTOOL__ITEMDATA__ITEM_ICON, Item_FileID(heldItem, ITEM_FILE_TYPE_ICON), DS_SCREEN_MAIN, sItemIconVramSlots[spriteIndex].vramOffset, 0, FALSE, HEAP_ID_BOX_GRAPHICS);
        Graphics_LoadPalette(NARC_INDEX_ITEMTOOL__ITEMDATA__ITEM_ICON, Item_FileID(heldItem, ITEM_FILE_TYPE_PALETTE), PAL_LOAD_MAIN_OBJ, PLTT_OFFSET(sItemIconVramSlots[spriteIndex].palette), PALETTE_SIZE_BYTES, HEAP_ID_BOX_GRAPHICS);
        Sprite_SetExplicitPriority(itemIconGraphics->sprites[spriteIndex], bgPriority);

        BoxGraphics_SetSpritePriority(itemIconGraphics->sprites[spriteIndex], ITEM_ICON_MON_SPRITE_PRIORITY);
        Sprite_SetPosition(itemIconGraphics->sprites[spriteIndex], &pos);
    }
}

void BoxItemIconGraphics_UpdatePreviewIcon(BoxItemIconGraphics *itemIconGraphics)
{
    if (itemIconGraphics->isMoveItemsMode) {
        int spriteIndex, heldItem;

        spriteIndex = BoxItemIconGraphics_FindSprite(itemIconGraphics, ITEM_ICON_ROLE_PREVIEW);

        if (spriteIndex >= 0) {
            BoxItemIconGraphics_SetSpriteRole(itemIconGraphics, spriteIndex, ITEM_ICON_ROLE_HIDING);
            Sprite_SetAnim(itemIconGraphics->sprites[spriteIndex], ITEM_ICON_ANIM_HIDE);
        }

        heldItem = BoxApp_GetPreviewedMonHeldItem(itemIconGraphics->boxApp);

        if (heldItem != ITEM_NONE) {
            spriteIndex = BoxItemIconGraphics_ClaimSprite(itemIconGraphics, ITEM_ICON_ROLE_PREVIEW);

            if (spriteIndex >= 0) {
                BoxItemIconGraphics_LoadMonItemIcon(itemIconGraphics, spriteIndex, heldItem);
                Sprite_SetAnim(itemIconGraphics->sprites[spriteIndex], ITEM_ICON_ANIM_APPEAR);
                Sprite_SetDrawFlag(itemIconGraphics->sprites[spriteIndex], TRUE);
            }
        }
    }
}

BOOL BoxItemIconGraphics_IsPreviewUpdateDone(BoxItemIconGraphics *itemIconGraphics)
{
    if (itemIconGraphics->isMoveItemsMode == FALSE) {
        return TRUE;
    } else {
        int spriteIndex = BoxItemIconGraphics_FindSprite(itemIconGraphics, ITEM_ICON_ROLE_PREVIEW);

        if (spriteIndex >= 0) {
            if (Sprite_IsAnimated(itemIconGraphics->sprites[spriteIndex])) {
                return FALSE;
            }
        }

        spriteIndex = BoxItemIconGraphics_FindSprite(itemIconGraphics, ITEM_ICON_ROLE_HIDING);

        if (spriteIndex >= 0) {
            if (Sprite_IsAnimated(itemIconGraphics->sprites[spriteIndex])) {
                return FALSE;
            }

            BoxItemIconGraphics_SetSpriteRole(itemIconGraphics, spriteIndex, ITEM_ICON_ROLE_FREE);
        }

        return TRUE;
    }
}

static void BoxItemIconGraphics_StartIconMove(BoxItemIconGraphics *itemIconGraphics, int spriteIndex, const VecFx32 *targetPos, int landingPriority, int frames)
{
    ItemIconMove *iconMove = Heap_Alloc(HEAP_ID_BOX_GRAPHICS, sizeof(ItemIconMove));

    if (iconMove != NULL) {
        iconMove->itemIconGraphics = itemIconGraphics;
        iconMove->sprite = itemIconGraphics->sprites[spriteIndex];
        iconMove->pos = *(Sprite_GetPosition(iconMove->sprite));
        iconMove->targetPos = *targetPos;
        iconMove->stepX = (iconMove->targetPos.x - iconMove->pos.x) / frames;
        iconMove->stepY = (iconMove->targetPos.y - iconMove->pos.y) / frames;
        iconMove->framesLeft = frames;
        iconMove->landingPriority = landingPriority;
        iconMove->state = ITEM_ICON_MOVE_STATE_MOVE;

        if (BoxGraphics_StartVBlankTask(ItemIconMove_Task, iconMove, 0)) {
            itemIconGraphics->activeMoveCount++;
        } else {
            Heap_Free(iconMove);
        }
    }
}

static void ItemIconMove_Task(SysTask *task, void *param)
{
    ItemIconMove *iconMove = param;

    switch (iconMove->state) {
    case ITEM_ICON_MOVE_STATE_MOVE:
        if (iconMove->framesLeft) {
            iconMove->pos.x += iconMove->stepX;
            iconMove->pos.y += iconMove->stepY;
            Sprite_SetPosition(iconMove->sprite, &iconMove->pos);
            iconMove->framesLeft--;
        } else {
            Sprite_SetPosition(iconMove->sprite, &iconMove->targetPos);
            iconMove->state++;
        }
        break;
    case ITEM_ICON_MOVE_STATE_WAIT_ANIM:
        if (Sprite_IsAnimated(iconMove->sprite) == FALSE) {
            BoxGraphics_SetSpritePriority(iconMove->sprite, iconMove->landingPriority);
            iconMove->itemIconGraphics->activeMoveCount--;
            SysTask_Done(task);
            BoxGraphics_DeferFree(iconMove, NULL, NULL);
        }
        break;
    }
}

void BoxItemIconGraphics_StartTakeItem(BoxItemIconGraphics *itemIconGraphics)
{
    if (itemIconGraphics->isMoveItemsMode) {
        int spriteIndex = BoxItemIconGraphics_FindSprite(itemIconGraphics, ITEM_ICON_ROLE_PREVIEW);

        if (spriteIndex >= 0) {
            VecFx32 targetPos;

            BoxCursorGraphics_GetPosition(itemIconGraphics->cursorGraphics, &targetPos);

            targetPos.x += ITEM_ICON_CURSOR_OFFSET_X << FX32_SHIFT;
            targetPos.y += ITEM_ICON_CURSOR_OFFSET_Y << FX32_SHIFT;

            BoxItemIconGraphics_SetSpriteRole(itemIconGraphics, spriteIndex, ITEM_ICON_ROLE_HELD);
            Sprite_SetAnim(itemIconGraphics->sprites[spriteIndex], ITEM_ICON_ANIM_PICK_UP);
            BoxItemIconGraphics_StartIconMove(itemIconGraphics, spriteIndex, &targetPos, ITEM_ICON_CURSOR_SPRITE_PRIORITY, ITEM_ICON_MOVE_FRAMES);
        }
    }
}

BOOL BoxItemIconGraphics_IsTakeItemDone(BoxItemIconGraphics *itemIconGraphics)
{
    return itemIconGraphics->activeMoveCount == 0;
}

void BoxItemIconGraphics_HidePreviewIcon(BoxItemIconGraphics *itemIconGraphics)
{
    if (itemIconGraphics->isMoveItemsMode) {
        int spriteIndex = BoxItemIconGraphics_FindSprite(itemIconGraphics, ITEM_ICON_ROLE_PREVIEW);

        if (spriteIndex >= 0) {
            BoxItemIconGraphics_SetSpriteRole(itemIconGraphics, spriteIndex, ITEM_ICON_ROLE_HIDING);
            Sprite_SetAnim(itemIconGraphics->sprites[spriteIndex], ITEM_ICON_ANIM_HIDE);
        }
    }
}

BOOL BoxItemIconGraphics_IsPreviewIconHidden(BoxItemIconGraphics *itemIconGraphics)
{
    if (itemIconGraphics->isMoveItemsMode) {
        int spriteIndex = BoxItemIconGraphics_FindSprite(itemIconGraphics, ITEM_ICON_ROLE_HIDING);

        if (spriteIndex >= 0) {
            if (Sprite_IsAnimated(itemIconGraphics->sprites[spriteIndex])) {
                return FALSE;
            }

            BoxItemIconGraphics_SetSpriteRole(itemIconGraphics, spriteIndex, ITEM_ICON_ROLE_FREE);
        }
    }

    return TRUE;
}

void BoxItemIconGraphics_StartGiveItem(BoxItemIconGraphics *itemIconGraphics)
{
    if (itemIconGraphics->isMoveItemsMode) {
        int spriteIndex = BoxItemIconGraphics_FindSprite(itemIconGraphics, ITEM_ICON_ROLE_HELD);

        if (spriteIndex >= 0) {
            VecFx32 targetPos;
            u32 bgPriority;

            BoxItemIconGraphics_GetMonItemIconPosition(itemIconGraphics, &targetPos, &bgPriority);
            BoxItemIconGraphics_SetSpriteRole(itemIconGraphics, spriteIndex, ITEM_ICON_ROLE_PREVIEW);
            Sprite_SetAnim(itemIconGraphics->sprites[spriteIndex], ITEM_ICON_ANIM_PUT_DOWN);
            BoxItemIconGraphics_StartIconMove(itemIconGraphics, spriteIndex, &targetPos, ITEM_ICON_MON_SPRITE_PRIORITY, ITEM_ICON_MOVE_FRAMES);
        }
    }
}

BOOL BoxItemIconGraphics_IsTakeItemDone2(BoxItemIconGraphics *itemIconGraphics)
{
    return itemIconGraphics->activeMoveCount == 0;
}

void BoxItemIconGraphics_StartSwapItems(BoxItemIconGraphics *itemIconGraphics)
{
    if (itemIconGraphics->isMoveItemsMode) {
        int heldSpriteIndex = BoxItemIconGraphics_FindSprite(itemIconGraphics, ITEM_ICON_ROLE_HELD);
        int previewSpriteIndex = BoxItemIconGraphics_FindSprite(itemIconGraphics, ITEM_ICON_ROLE_PREVIEW);

        if (heldSpriteIndex >= 0 && previewSpriteIndex >= 0) {
            VecFx32 targetPos;
            u32 bgPriority;

            BoxItemIconGraphics_GetMonItemIconPosition(itemIconGraphics, &targetPos, &bgPriority);
            BoxItemIconGraphics_SetSpriteRole(itemIconGraphics, heldSpriteIndex, ITEM_ICON_ROLE_PREVIEW);
            Sprite_SetAnim(itemIconGraphics->sprites[heldSpriteIndex], ITEM_ICON_ANIM_PUT_DOWN);

            BoxItemIconGraphics_StartIconMove(itemIconGraphics, heldSpriteIndex, &targetPos, ITEM_ICON_MON_SPRITE_PRIORITY, ITEM_ICON_MOVE_FRAMES);
            BoxCursorGraphics_GetPosition(itemIconGraphics->cursorGraphics, &targetPos);

            targetPos.x += ITEM_ICON_CURSOR_OFFSET_X << FX32_SHIFT;
            targetPos.y += ITEM_ICON_CURSOR_OFFSET_Y << FX32_SHIFT;

            BoxItemIconGraphics_SetSpriteRole(itemIconGraphics, previewSpriteIndex, ITEM_ICON_ROLE_HELD);
            Sprite_SetAnim(itemIconGraphics->sprites[previewSpriteIndex], ITEM_ICON_ANIM_PICK_UP);
            BoxItemIconGraphics_StartIconMove(itemIconGraphics, previewSpriteIndex, &targetPos, ITEM_ICON_CURSOR_SPRITE_PRIORITY, ITEM_ICON_MOVE_FRAMES);
        }
    }
}

BOOL BoxItemIconGraphics_IsTakeItemDone3(BoxItemIconGraphics *itemIconGraphics)
{
    return itemIconGraphics->activeMoveCount == 0;
}

void BoxItemIconGraphics_StartShrinkItem(BoxItemIconGraphics *itemIconGraphics)
{
    if (itemIconGraphics->isMoveItemsMode) {
        int spriteIndex = BoxItemIconGraphics_FindSprite(itemIconGraphics, ITEM_ICON_ROLE_HELD);

        if (spriteIndex >= 0) {
            Sprite_SetAnim(itemIconGraphics->sprites[spriteIndex], ITEM_ICON_ANIM_SHRINK);
            itemIconGraphics->shrinkingSprite = spriteIndex;
            return;
        }

        spriteIndex = BoxItemIconGraphics_FindSprite(itemIconGraphics, ITEM_ICON_ROLE_PREVIEW);

        if (spriteIndex >= 0) {
            Sprite_SetAnim(itemIconGraphics->sprites[spriteIndex], ITEM_ICON_ANIM_HIDE);
            itemIconGraphics->shrinkingSprite = spriteIndex;
            return;
        }

        itemIconGraphics->shrinkingSprite = -1;
    }
}

BOOL BoxItemIconGraphics_IsShrinkItemDone(BoxItemIconGraphics *itemIconGraphics)
{
    if (itemIconGraphics->isMoveItemsMode) {
        if (itemIconGraphics->shrinkingSprite != -1) {
            if (Sprite_IsAnimated(itemIconGraphics->sprites[itemIconGraphics->shrinkingSprite])) {
                return FALSE;
            }

            BoxItemIconGraphics_SetSpriteRole(itemIconGraphics, itemIconGraphics->shrinkingSprite, ITEM_ICON_ROLE_FREE);
            itemIconGraphics->shrinkingSprite = -1;
        }
    }

    return TRUE;
}

void BoxItemIconGraphics_SetHeldIconPosition(BoxItemIconGraphics *itemIconGraphics, const VecFx32 *cursorPos)
{
    if (itemIconGraphics->isMoveItemsMode) {
        int spriteIndex = BoxItemIconGraphics_FindSprite(itemIconGraphics, ITEM_ICON_ROLE_HELD);

        if (spriteIndex >= 0) {
            VecFx32 pos = *cursorPos;

            pos.x += ITEM_ICON_CURSOR_OFFSET_X << FX32_SHIFT;
            pos.y += ITEM_ICON_CURSOR_OFFSET_Y << FX32_SHIFT;

            Sprite_SetPosition(itemIconGraphics->sprites[spriteIndex], &pos);
        }
    }
}

void BoxItemIconGraphics_SetHeldIconBgPriority(BoxItemIconGraphics *itemIconGraphics, u32 bgPriority)
{
    if (itemIconGraphics->isMoveItemsMode) {
        int spriteIndex = BoxItemIconGraphics_FindSprite(itemIconGraphics, ITEM_ICON_ROLE_HELD);

        if (spriteIndex >= 0) {
            Sprite_SetExplicitPriority(itemIconGraphics->sprites[spriteIndex], bgPriority);
        }
    }
}
