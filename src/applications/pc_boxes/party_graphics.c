#include "applications/pc_boxes/party_graphics.h"

#include <nitro.h>
#include <string.h>

#include "applications/pc_boxes/application_manager.h"
#include "applications/pc_boxes/defs.h"
#include "applications/pc_boxes/graphics.h"
#include "applications/pc_boxes/icon_helper.h"
#include "applications/pc_boxes/view.h"

#include "bg_window.h"
#include "coordinates.h"
#include "graphics.h"
#include "heap.h"
#include "narc.h"
#include "party.h"
#include "pokemon.h"
#include "sprite.h"
#include "sys_task.h"
#include "sys_task_manager.h"

static const CoordinatesU16 sPartyIconPositions[MAX_PARTY_SIZE] = {
    { 144, 28 },
    { 192, 36 },
    { 144, 68 },
    { 192, 76 },
    { 144, 108 },
    { 192, 116 },
};

static void BoxPartyGraphics_SlideInTask(SysTask *task, void *param);
static void BoxPartyGraphics_SlideOutTask(SysTask *task, void *param);
static void BoxPartyGraphics_ShiftIconsTask(SysTask *task, void *param);
static void BoxPartyGraphics_GlideIconTask(SysTask *task, void *param);
static void BoxPartyGraphics_DrawPanel(BoxPartyGraphics *partyGraphics, u32 hiddenRows);
static void BoxPartyGraphics_InitShiftPositions(BoxPartyGraphics *partyGraphics, VecFx32 *positions);
static void BoxPartyGraphics_MoveIconsY(BoxPartyGraphics *partyGraphics, fx32 dy);
static void BoxPartyGraphics_CreateIcons(BoxPartyGraphics *partyGraphics, BOOL visible);
static void BoxPartyGraphics_DeleteIcons(BoxPartyGraphics *partyGraphics);

BOOL BoxPartyGraphics_Init(BoxPartyGraphics *partyGraphics, BoxGraphics *boxGraphics, const BoxApplication *boxApp, BgConfig *bgConfig, SpriteList *spriteList, NARC *narc)
{
    partyGraphics->boxGraphics = boxGraphics;
    partyGraphics->boxApp = boxApp;
    partyGraphics->unusedSpriteList = spriteList;
    partyGraphics->bgConfig = bgConfig;
    partyGraphics->monIconHelper = BoxGraphics_GetMonIconHelper(boxGraphics);
    partyGraphics->boxView = BoxGraphics_GetBoxView(boxGraphics);

    if (BoxApp_GetBoxMode(boxApp) != PC_MODE_COMPARE) {
        partyGraphics->tilemapLeft = PARTY_PANEL_TILEMAP_LEFT;
        partyGraphics->xOffset = 0;
    } else {
        partyGraphics->tilemapLeft = PARTY_PANEL_COMPARE_TILEMAP_LEFT;
        partyGraphics->xOffset = (PARTY_PANEL_COMPARE_TILEMAP_LEFT - PARTY_PANEL_TILEMAP_LEFT) * TILE_WIDTH_PIXELS;
    }

    partyGraphics->hiddenRows = 0;
    partyGraphics->isAnimating = FALSE;

    MonIconHelper_InitIcons(partyGraphics->monIconHelper, partyGraphics->monIcons, MAX_PARTY_SIZE);

    partyGraphics->shiftPositions = Heap_Alloc(HEAP_ID_BOX_GRAPHICS, sizeof(VecFx32) * MAX_PARTY_SIZE * PARTY_ICON_ANIM_FRAMES);
    partyGraphics->panelScreenBuffer = Graphics_GetScrnDataFromOpenNARC(narc, 6, TRUE, &partyGraphics->panelScreenData, HEAP_ID_BOX_GRAPHICS);

    if (partyGraphics->panelScreenBuffer == NULL || partyGraphics->shiftPositions == NULL) {
        return FALSE;
    }

    BoxPartyGraphics_InitShiftPositions(partyGraphics, partyGraphics->shiftPositions);

    return TRUE;
}

void BoxPartyGraphics_Free(BoxPartyGraphics *partyGraphics)
{
    if (partyGraphics->panelScreenBuffer != NULL) {
        Heap_Free(partyGraphics->panelScreenBuffer);
    }

    if (partyGraphics->shiftPositions != NULL) {
        Heap_Free(partyGraphics->shiftPositions);
    }

    BoxPartyGraphics_DeleteIcons(partyGraphics);
}

void BoxPartyGraphics_ShowInstantly(BoxPartyGraphics *partyGraphics)
{
    partyGraphics->hiddenRows = 0;
    BoxPartyGraphics_DrawPanel(partyGraphics, partyGraphics->hiddenRows);
    BoxPartyGraphics_CreateIcons(partyGraphics, TRUE);
    Bg_CopyTilemapBufferToVRAM(partyGraphics->bgConfig, BG_LAYER_MAIN_2);
}

void BoxPartyGraphics_Open(BoxPartyGraphics *partyGraphics)
{
    BoxPartyGraphics_CreateIcons(partyGraphics, FALSE);

    partyGraphics->hiddenRows = PARTY_PANEL_HEIGHT;
    partyGraphics->isAnimating = (BoxGraphics_StartVBlankTask(BoxPartyGraphics_SlideInTask, partyGraphics, 0) != NULL);
}

BOOL BoxPartyGraphics_HasFinishedAnimating(BoxPartyGraphics *partyGraphics)
{
    return partyGraphics->isAnimating == FALSE;
}

static void BoxPartyGraphics_SlideInTask(SysTask *task, void *param)
{
    BoxPartyGraphics *partyGraphics = (BoxPartyGraphics *)param;
    fx32 dy;

    if (partyGraphics->hiddenRows > PARTY_PANEL_SLIDE_ROWS) {
        dy = -((PARTY_PANEL_SLIDE_ROWS * TILE_HEIGHT_PIXELS) << FX32_SHIFT);
        partyGraphics->hiddenRows -= PARTY_PANEL_SLIDE_ROWS;
    } else {
        dy = -((partyGraphics->hiddenRows * TILE_HEIGHT_PIXELS) << FX32_SHIFT);
        partyGraphics->hiddenRows = 0;
    }

    BoxPartyGraphics_DrawPanel(partyGraphics, partyGraphics->hiddenRows);
    Bg_CopyTilemapBufferToVRAM(partyGraphics->bgConfig, BG_LAYER_MAIN_2);
    BoxPartyGraphics_MoveIconsY(partyGraphics, dy);

    if (partyGraphics->hiddenRows == 0) {
        partyGraphics->isAnimating = FALSE;
        SysTask_Done(task);
    }
}

void BoxPartyGraphics_Close(BoxPartyGraphics *partyGraphics)
{
    partyGraphics->isAnimating = (BoxGraphics_StartVBlankTask(BoxPartyGraphics_SlideOutTask, partyGraphics, 0) != NULL);
}

BOOL BoxPartyGraphics_IsClosed(BoxPartyGraphics *partyGraphics)
{
    if (partyGraphics->isAnimating == FALSE) {
        BoxPartyGraphics_DeleteIcons(partyGraphics);
        return TRUE;
    }

    return FALSE;
}

static void BoxPartyGraphics_SlideOutTask(SysTask *task, void *param)
{
    BoxPartyGraphics *partyGraphics = (BoxPartyGraphics *)param;
    fx32 dy;

    if (partyGraphics->hiddenRows < PARTY_PANEL_HEIGHT - PARTY_PANEL_SLIDE_ROWS) {
        dy = (PARTY_PANEL_SLIDE_ROWS * TILE_HEIGHT_PIXELS) << FX32_SHIFT;
        partyGraphics->hiddenRows += PARTY_PANEL_SLIDE_ROWS;
    } else {
        dy = ((PARTY_PANEL_HEIGHT - partyGraphics->hiddenRows) * TILE_HEIGHT_PIXELS) << FX32_SHIFT;
        partyGraphics->hiddenRows = PARTY_PANEL_HEIGHT;
    }

    if (partyGraphics->hiddenRows > PARTY_PANEL_OVERFLOW_ROWS) {
        u32 clearTopRow, clearRowCount;

        clearRowCount = (u32)(dy >> FX32_SHIFT) / TILE_HEIGHT_PIXELS;
        clearTopRow = partyGraphics->hiddenRows - PARTY_PANEL_OVERFLOW_ROWS - clearRowCount;

        Bg_FillTilemapRect(partyGraphics->bgConfig, BG_LAYER_MAIN_2, 0, partyGraphics->tilemapLeft, clearTopRow, PARTY_PANEL_WIDTH, clearRowCount, TILEMAP_FILL_VAL_INCLUDES_PALETTE);
    }

    BoxPartyGraphics_DrawPanel(partyGraphics, partyGraphics->hiddenRows);
    Bg_CopyTilemapBufferToVRAM(partyGraphics->bgConfig, BG_LAYER_MAIN_2);
    BoxPartyGraphics_MoveIconsY(partyGraphics, dy);

    if (partyGraphics->hiddenRows == PARTY_PANEL_HEIGHT) {
        partyGraphics->isAnimating = FALSE;
        SysTask_Done(task);
    }
}

void BoxPartyGraphics_ShiftIconsUp(BoxPartyGraphics *partyGraphics)
{
    int partyCount = Party_GetCurrentCount(partyGraphics->boxApp->party);

    if (partyGraphics->animSlot < partyCount) {
        int shiftCount = partyCount - partyGraphics->animSlot;

        for (int slot = partyGraphics->animSlot; slot < MAX_PARTY_SIZE - 1; slot++) {
            MonIcon_Copy(&partyGraphics->monIcons[slot + 1], &partyGraphics->monIcons[slot], 1);
            MonIconHelper_InitIcons(partyGraphics->monIconHelper, &partyGraphics->monIcons[slot + 1], 1);

            if (partyGraphics->monIcons[slot].sprite != NULL) {
                MonIconHelper_MoveIconTiles(partyGraphics->monIconHelper, &partyGraphics->monIcons[slot], PARTY_ICON_TILE_BASE + PARTY_ICON_TILE_COUNT * slot);
            }
        }

        partyGraphics->shiftCount = shiftCount;
        partyGraphics->animFrame = 0;
        partyGraphics->isAnimating = (BoxGraphics_StartVBlankTask(BoxPartyGraphics_ShiftIconsTask, partyGraphics, 0) != NULL);
    } else {
        partyGraphics->isAnimating = FALSE;
    }
}

static void BoxPartyGraphics_ShiftIconsTask(SysTask *task, void *param)
{
    BoxPartyGraphics *partyGraphics;
    VecFx32 *pos;
    int slot, i, shiftCount;

    partyGraphics = (BoxPartyGraphics *)param;
    slot = partyGraphics->animSlot;
    shiftCount = partyGraphics->shiftCount;
    pos = partyGraphics->shiftPositions + (slot * PARTY_ICON_ANIM_FRAMES + partyGraphics->animFrame);

    for (i = 0; i < shiftCount; i++) {
        if (partyGraphics->monIcons[slot].sprite != NULL) {
            Sprite_SetPosition(partyGraphics->monIcons[slot].sprite, pos);
        }

        slot++;
        pos += PARTY_ICON_ANIM_FRAMES;
    }

    if (++(partyGraphics->animFrame) >= PARTY_ICON_ANIM_FRAMES) {
        partyGraphics->isAnimating = FALSE;
        SysTask_Done(task);
    }
}

BOOL BoxPartyGraphics_HasFinishedAnimating2(BoxPartyGraphics *partyGraphics)
{
    return partyGraphics->isAnimating == FALSE;
}

void BoxPartyGraphics_GlideIconToLastSlot(BoxPartyGraphics *partyGraphics)
{
    u32 lastSlot = Party_GetCurrentCount(partyGraphics->boxApp->party) - 1;

    if (partyGraphics->animSlot > lastSlot) {
        VecFx32 pos;

        pos = *Sprite_GetPosition(partyGraphics->monIcons[lastSlot].sprite);
        partyGraphics->moveStepX = (((sPartyIconPositions[lastSlot].x + partyGraphics->xOffset) << FX32_SHIFT) - pos.x) / PARTY_ICON_ANIM_FRAMES;
        partyGraphics->moveStepY = ((sPartyIconPositions[lastSlot].y << FX32_SHIFT) - pos.y) / PARTY_ICON_ANIM_FRAMES;
        partyGraphics->animFrame = 0;
        partyGraphics->animSlot = lastSlot;
        partyGraphics->isAnimating = (BoxGraphics_StartVBlankTask(BoxPartyGraphics_GlideIconTask, partyGraphics, 0) != NULL);
    } else {
        partyGraphics->isAnimating = FALSE;
    }
}

BOOL BoxPartyGraphics_HasFinishedAnimating3(BoxPartyGraphics *partyGraphics)
{
    return partyGraphics->isAnimating == FALSE;
}

static void BoxPartyGraphics_GlideIconTask(SysTask *task, void *param)
{
    BoxPartyGraphics *partyGraphics = (BoxPartyGraphics *)param;
    VecFx32 pos = *Sprite_GetPosition(partyGraphics->monIcons[partyGraphics->animSlot].sprite);
    BOOL isDone;

    if (++(partyGraphics->animFrame) >= PARTY_ICON_ANIM_FRAMES) {
        pos.x = (sPartyIconPositions[partyGraphics->animSlot].x + partyGraphics->xOffset) << FX32_SHIFT;
        pos.y = sPartyIconPositions[partyGraphics->animSlot].y << FX32_SHIFT;
        isDone = TRUE;
    } else {
        pos.x += partyGraphics->moveStepX;
        pos.y += partyGraphics->moveStepY;
        isDone = FALSE;
    }

    Sprite_SetPosition(partyGraphics->monIcons[partyGraphics->animSlot].sprite, &pos);

    if (isDone) {
        partyGraphics->isAnimating = FALSE;
        SysTask_Done(task);
    }
}

void BoxPartyGraphics_StoreMon(BoxPartyGraphics *partyGraphics)
{
    u32 partySlot;

    if (partyGraphics->boxApp->depositBoxID == BoxApp_GetCurrentBox(partyGraphics->boxApp)) {
        BoxView_CreateMissingIcons(partyGraphics->boxView);
    }

    partySlot = BoxApp_GetCursorPartyPosition(partyGraphics->boxApp);
    MonIconHelper_DeleteIcons(partyGraphics->monIconHelper, &partyGraphics->monIcons[partySlot], 1);
    partyGraphics->animSlot = partySlot;
}

void BoxPartyGraphics_StartReleaseMonAnimation(BoxPartyGraphics *partyGraphics, u32 partySlot)
{
    partyGraphics->releaseAnimStep = RELEASE_ANIM_STEP_RELEASING;
    partyGraphics->animSlot = partySlot;
    MonIconHelper_SetIconAnim(partyGraphics->monIconHelper, &partyGraphics->monIcons[partySlot], MON_ICON_ANIM_RELEASE);
}

BOOL BoxPartyGraphics_IsReleaseMonAnimationDone(BoxPartyGraphics *partyGraphics)
{
    MonIcon *monIcon = &partyGraphics->monIcons[partyGraphics->animSlot];

    switch (partyGraphics->releaseAnimStep) {
    case RELEASE_ANIM_STEP_RELEASING:
        if (MonIconHelper_IsIconAnimDone(partyGraphics->monIconHelper, monIcon)) {
            const BoxApplicationManager *boxAppMan = BoxGraphics_GetBoxAppMan(partyGraphics->boxGraphics);

            if (BoxAppMan_HasCheckedCanReleaseMon(boxAppMan)) {
                if (BoxAppMan_CanReleaseMon(boxAppMan)) {
                    MonIconHelper_DeleteIcons(partyGraphics->monIconHelper, monIcon, 1);
                    return TRUE;
                } else {
                    MonIconHelper_SetIconAnim(partyGraphics->monIconHelper, monIcon, MON_ICON_ANIM_RELEASE_REJECTED);
                    partyGraphics->releaseAnimStep++;
                }
            }
        }
        break;
    case RELEASE_ANIM_STEP_REJECTED:
        if (MonIconHelper_IsIconAnimDone(partyGraphics->monIconHelper, monIcon)) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}

void BoxPartyGraphics_UpdateMarkingsTransparency(BoxPartyGraphics *partyGraphics)
{
    if (BoxApp_GetCursorLocation(partyGraphics->boxApp) == CURSOR_IN_PARTY) {
        u32 mask;

        mask = BoxApp_GetMonSpriteTransparencyMask(partyGraphics->boxApp);

        for (int i = 0; i < MAX_PARTY_SIZE; i++) {
            if (partyGraphics->monIcons[i].sprite != NULL) {
                MonIconHelper_UpdateTransparency(partyGraphics->monIconHelper, &partyGraphics->monIcons[i], mask);
            }
        }
    }
}

void BoxPartyGraphics_UpdateHeldItemIcon(BoxPartyGraphics *partyGraphics, u32 partySlot, u32 item)
{
    if (partyGraphics->monIcons[partySlot].sprite != NULL) {
        MonIconHelper_SetHeldItem(partyGraphics->monIconHelper, &partyGraphics->monIcons[partySlot], item);
        MonIconHelper_UpdateTransparency(partyGraphics->monIconHelper, &partyGraphics->monIcons[partySlot], BoxApp_GetMonSpriteTransparencyMask(partyGraphics->boxApp));
        MonIconHelper_UpdateIconForm(partyGraphics->monIconHelper, &partyGraphics->monIcons[partySlot], FALSE);
    }
}

void BoxPartyGraphics_UpdateMarkingsIcon(BoxPartyGraphics *partyGraphics)
{
    u32 partySlot = BoxApp_GetCursorPartyPosition(partyGraphics->boxApp);
    u32 markings = BoxApp_GetPreviewedMonMarkings(partyGraphics->boxApp);

    if (partyGraphics->monIcons[partySlot].sprite != NULL) {
        MonIconHelper_SetMarkings(partyGraphics->monIconHelper, &partyGraphics->monIcons[partySlot], markings);
    }
}

void BoxPartyGraphics_PickUpIcon(BoxPartyGraphics *partyGraphics, u32 partySlot, u32 tileOffset, MonIcon *monIcon)
{
    MonIcon_Copy(&partyGraphics->monIcons[partySlot], monIcon, 1);
    MonIconHelper_MoveIconTiles(partyGraphics->monIconHelper, monIcon, tileOffset);
    MonIconHelper_InitIcons(partyGraphics->monIconHelper, &partyGraphics->monIcons[partySlot], 1);

    partyGraphics->animSlot = partySlot;
}

void BoxPartyGraphics_PlaceDownIcon(BoxPartyGraphics *partyGraphics, u32 partySlot, const MonIcon *monIcon)
{
    u32 slot = Party_GetCurrentCount(partyGraphics->boxApp->party) - 1;
    u32 tileOffset = PARTY_ICON_TILE_BASE + PARTY_ICON_TILE_COUNT * slot;
    MonIcon *slotIcon = &partyGraphics->monIcons[slot];

    MonIcon_Copy(monIcon, slotIcon, 1);
    MonIconHelper_MoveIconTiles(partyGraphics->monIconHelper, slotIcon, tileOffset);
    Sprite_SetExplicitPriority(slotIcon->sprite, 1);
    BoxGraphics_SetSpritePriority(slotIcon->sprite, PARTY_ICON_SPRITE_PRIORITY_BASE + slot);

    partyGraphics->animSlot = partySlot;
}

void BoxPartyGraphics_PlaceDownIconAtSlot(BoxPartyGraphics *partyGraphics, u32 partySlot, const MonIcon *monIcon)
{
    u32 slot = partySlot;
    u32 tileOffset = PARTY_ICON_TILE_BASE + PARTY_ICON_TILE_COUNT * slot;
    MonIcon *slotIcon = &partyGraphics->monIcons[slot];

    MonIcon_Copy(monIcon, slotIcon, 1);
    MonIconHelper_MoveIconTiles(partyGraphics->monIconHelper, slotIcon, tileOffset);
    Sprite_SetExplicitPriority(slotIcon->sprite, 1);
    BoxGraphics_SetSpritePriority(slotIcon->sprite, PARTY_ICON_SPRITE_PRIORITY_BASE + slot);

    partyGraphics->animSlot = partySlot;
}

MonIcon *BoxPartyGraphics_GetIcon(BoxPartyGraphics *partyGraphics, u32 partySlot)
{
    GF_ASSERT(partySlot < MAX_PARTY_SIZE);
    return &partyGraphics->monIcons[partySlot];
}

void BoxPartyGraphics_GetCursorSlotPosition(BoxPartyGraphics *partyGraphics, u32 partyPosition, s32 *x, s32 *y)
{
    if (partyPosition == MAX_PARTY_SIZE) {
        *x = PARTY_CLOSE_BUTTON_X + partyGraphics->xOffset;
        *y = PARTY_CLOSE_BUTTON_Y;
    } else {
        *x = sPartyIconPositions[partyPosition].x + partyGraphics->xOffset;
        *y = sPartyIconPositions[partyPosition].y;
    }
}

static void BoxPartyGraphics_DrawPanel(BoxPartyGraphics *partyGraphics, u32 hiddenRows)
{
    u32 srcOffset, rowCount, topRow;

    if (hiddenRows <= PARTY_PANEL_OVERFLOW_ROWS) {
        srcOffset = (PARTY_PANEL_OVERFLOW_ROWS - hiddenRows) * PARTY_PANEL_WIDTH * sizeof(u16);
        rowCount = SCREEN_HEIGHT_TILES;
        topRow = 0;
    } else {
        if (hiddenRows >= PARTY_PANEL_HEIGHT) {
            return;
        }

        srcOffset = 0;
        rowCount = PARTY_PANEL_HEIGHT - hiddenRows;
        topRow = SCREEN_HEIGHT_TILES - rowCount;
    }

    Bg_LoadToTilemapRect(partyGraphics->bgConfig, BG_LAYER_MAIN_2, ((u8 *)partyGraphics->panelScreenData->rawData) + srcOffset, partyGraphics->tilemapLeft, topRow, PARTY_PANEL_WIDTH, rowCount);
}

static void BoxPartyGraphics_InitShiftPositions(BoxPartyGraphics *partyGraphics, VecFx32 *positions)
{
    fx32 stepX, stepY;
    u32 slot, frame;

    for (slot = 0; slot < (MAX_PARTY_SIZE - 1); slot++) {
        stepX = (sPartyIconPositions[slot].x - sPartyIconPositions[slot + 1].x) * FX32_ONE / PARTY_ICON_ANIM_FRAMES;
        stepY = (sPartyIconPositions[slot].y - sPartyIconPositions[slot + 1].y) * FX32_ONE / PARTY_ICON_ANIM_FRAMES;

        for (frame = 0; frame < PARTY_ICON_ANIM_FRAMES - 1; frame++) {
            positions[frame].x = (sPartyIconPositions[slot + 1].x + partyGraphics->xOffset) * FX32_ONE + stepX * (frame + 1);
            positions[frame].y = sPartyIconPositions[slot + 1].y * FX32_ONE + stepY * (frame + 1);
            positions[frame].z = 0;
        }

        positions[frame].x = (sPartyIconPositions[slot].x + partyGraphics->xOffset) * FX32_ONE;
        positions[frame].y = sPartyIconPositions[slot].y * FX32_ONE;
        positions[frame].z = 0;
        positions += PARTY_ICON_ANIM_FRAMES;
    }
}

static void BoxPartyGraphics_MoveIconsY(BoxPartyGraphics *partyGraphics, fx32 dy)
{
    VecFx32 pos;

    for (int slot = 0; slot < MAX_PARTY_SIZE; slot++) {
        if (partyGraphics->monIcons[slot].sprite != NULL) {
            pos = *Sprite_GetPosition(partyGraphics->monIcons[slot].sprite);
            pos.y += dy;
            Sprite_SetPosition(partyGraphics->monIcons[slot].sprite, &pos);

            if (dy < 0) {
                if (pos.y < PARTY_ICON_HIDE_Y << FX32_SHIFT) {
                    Sprite_SetDrawFlag(partyGraphics->monIcons[slot].sprite, TRUE);
                }
            } else {
                if (pos.y >= PARTY_ICON_HIDE_Y << FX32_SHIFT) {
                    Sprite_SetDrawFlag(partyGraphics->monIcons[slot].sprite, FALSE);
                }
            }
        } else {
            break;
        }
    }
}

static void BoxPartyGraphics_CreateIcons(BoxPartyGraphics *partyGraphics, BOOL visible)
{
    Pokemon *mon;
    int slot, count, yOffset;

    yOffset = (visible) ? 0 : PARTY_ICON_HIDE_Y;
    count = Party_GetCurrentCount(partyGraphics->boxApp->party);

    for (slot = 0; slot < count; slot++) {
        mon = Party_GetPokemonBySlotIndex(partyGraphics->boxApp->party, slot);
        MonIconHelper_CreateIcon(partyGraphics->monIconHelper, (BoxPokemon *)mon, sPartyIconPositions[slot].x + partyGraphics->xOffset, sPartyIconPositions[slot].y + yOffset, 1, PARTY_ICON_SPRITE_PRIORITY_BASE + slot, PARTY_ICON_TILE_BASE + PARTY_ICON_TILE_COUNT * slot, &partyGraphics->monIcons[slot]);
        Sprite_SetDrawFlag(partyGraphics->monIcons[slot].sprite, visible);
    }
}

static void BoxPartyGraphics_DeleteIcons(BoxPartyGraphics *partyGraphics)
{
    int slot, count;

    count = Party_GetCurrentCount(partyGraphics->boxApp->party);

    for (slot = 0; slot < count; slot++) {
        if (partyGraphics->monIcons[slot].sprite != NULL) {
            MonIconHelper_DeleteIcons(partyGraphics->monIconHelper, &partyGraphics->monIcons[slot], 1);
        }
    }
}
