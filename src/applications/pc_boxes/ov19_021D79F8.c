#include "applications/pc_boxes/ov19_021D79F8.h"

#include <nitro.h>

#include "generated/species.h"

#include "applications/pc_boxes/box_app_manager.h"
#include "applications/pc_boxes/box_application.h"
#include "applications/pc_boxes/box_customization.h"
#include "applications/pc_boxes/ov19_021D61B0.h"
#include "applications/pc_boxes/ov19_021DA270.h"
#include "applications/pc_boxes/struct_ov19_021D61B0_decl.h"
#include "applications/pc_boxes/struct_ov19_021D8318.h"
#include "applications/pc_boxes/struct_ov19_021DA384.h"
#include "applications/pc_boxes/struct_ov19_021DCD18.h"

#include "bg_window.h"
#include "font.h"
#include "graphics.h"
#include "heap.h"
#include "pc_boxes.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "sprite.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"

static const struct {
    u8 tilemapMember;
    u8 tileMember;
    u8 plttMember;
} sWallpaperNarcMembers[] = {
    { 30, 29, 28 },
    { 33, 32, 31 },
    { 36, 35, 34 },
    { 39, 38, 37 },
    { 42, 41, 40 },
    { 45, 44, 43 },
    { 48, 47, 46 },
    { 51, 50, 49 },
    { 54, 53, 52 },
    { 57, 56, 55 },
    { 60, 59, 58 },
    { 63, 62, 61 },
    { 66, 65, 64 },
    { 69, 68, 67 },
    { 72, 71, 70 },
    { 75, 74, 73 },
    { 78, 77, 76 },
    { 81, 80, 79 },
    { 84, 83, 82 },
    { 87, 86, 85 },
    { 90, 89, 88 },
    { 93, 92, 91 },
    { 96, 95, 94 },
    { 99, 98, 97 },
    { 102, 101, 100 },
    { 105, 104, 103 },
    { 108, 107, 106 },
    { 111, 110, 109 },
    { 114, 113, 112 },
    { 117, 116, 115 },
    { 120, 119, 118 },
    { 123, 122, 121 },
};

typedef struct WallpaperChangeFlashTask {
    BoxView *boxView;
    s16 currentIndex;
    s16 targetIndex;
    s16 step;
    s16 tickDelay;
    u32 plttOffset;
} WallpaperChangeFlashTask;

static void BoxView_GetWallpaperLayout(const BoxView *boxView, int boxChangeDirection, u32 *tileOffset, u32 *tilemapRow, u32 *plttSlot);
static void BoxView_LoadWallpaperPltt(BoxView *boxView, const BoxCustomization *customization, int plttSlot, BOOL refreshNow);
static void BoxView_LoadWallpaperTiles(BoxView *boxView, const BoxCustomization *customization, int tileStart);
static void BoxView_LoadWallpaperTilemap(BoxView *boxView, const BoxCustomization *customization, u32 tilemapRow, u32 tileOffset, u32 plttSlot);
static void BoxView_ScrollTask(SysTask *task, void *param);
static void BoxView_ScrollVBlankTask(SysTask *task, void *param);
static void BoxView_InitIconScrollPositions(BoxView *boxView, fx32 stepX, s32 distanceX);
static void BoxView_StepIconScroll(BoxView *boxView, fx32 stepX);
static void BoxView_CreateColumnIcons(BoxView *boxView, MonIcon *icon, int iconX, int col);
static void BoxView_DeleteColumnIcons(BoxView *boxView, MonIcon *monIcon, int col);
static void BoxView_PrepareIconData(BoxView *boxView, u32 boxID);
static void BoxView_StartWallpaperChangeFlash(BoxView *boxView, int startIndex, int targetIndex, u32 plttOffset);
static void BoxView_WallpaperChangeFlashTask(SysTask *task, void *param);
static void BoxView_OnWallpaperChangeFlashDone(void *param);
static void BoxView_ReloadWallpaperTask(SysTask *task, void *param);
static void BoxView_StartWallpaperReload(BoxView *boxView);
static u32 BoxView_GetIconPriority(u32 boxPos);
static void BoxView_CreateAllIcons(BoxView *boxView, MonIconHelper *monIconHelper, u32 boxID, u32 page, s32 distanceX, MonIcon *boxIcon);
static void BoxView_UpdateOutgoingIconPositions(BoxView *boxView, MonIcon *icons, u32 scrollStep);
static void BoxView_UpdateIncomingIconPositions(BoxView *boxView, MonIcon *icons, u32 scrollStep);
static void BoxView_SnapIconsToGrid(BoxView *boxView, MonIcon *monIcon);
static void BoxView_WriteWallpaperTilemap(u16 *buffer, const u16 *screenData, u32 tilemapRow, u32 tileOffset, u32 plttSlot);
static void BoxView_UpdateIconForm(BoxView *boxView, u32 posInBox);

static const u16 sPagePlttSlot[] = {
    9,
    10,
};

BOOL BoxView_Init(BoxView *boxView, BoxGraphics *boxGraphics, const BoxApplication *boxApp, BgConfig *bgConfig, SpriteList *unused)
{
    boxView->boxID = boxApp->customization.boxID;
    boxView->unk_01 = 11;
    boxView->currentPage = 0;
    boxView->compareModeXOffset = BoxGraphics_GetCompareModeXOffset(boxGraphics);
    boxView->unk_5854 = 72 + boxView->compareModeXOffset;
    boxView->unk_5858 = (256 + 16) + boxView->compareModeXOffset;
    boxView->monIconHelper = BoxGraphics_GetMonIconHelper(boxGraphics);

    MonIconHelper_InitIcons(boxView->monIconHelper, boxView->icons[0], (5 * 6));
    MonIconHelper_InitIcons(boxView->monIconHelper, boxView->icons[1], (5 * 6));

    boxView->bgConfig = bgConfig;
    boxView->boxApp = boxApp;
    boxView->boxGraphics = boxGraphics;

    return TRUE;
}

void BoxView_Free(BoxView *boxView)
{
    MonIconHelper_DeleteIcons(boxView->monIconHelper, boxView->icons[0], (5 * 6));
    MonIconHelper_DeleteIcons(boxView->monIconHelper, boxView->icons[1], (5 * 6));
}

void BoxView_InitBgScroll(BoxView *boxView)
{
    boxView->bgScrollX = Bg_GetXOffset(boxView->bgConfig, 3);
    boxView->bgScrollX -= boxView->compareModeXOffset;
    boxView->bgScrollX &= (REG_G2_BG3HOFS_OFFSET_MASK);

    Bg_SetOffset(boxView->bgConfig, BG_LAYER_MAIN_3, 0, boxView->bgScrollX);
    Bg_FillTilemapRect(boxView->bgConfig, 3, 0x18, 0, 0, 64, 32, 9);
}

static void BoxView_GetWallpaperLayout(const BoxView *boxView, int boxChangeDirection, u32 *tileOffset, u32 *tilemapRow, u32 *plttSlot)
{
    if (boxChangeDirection != 0) {
        *tileOffset = (boxView->currentPage ^ 1) * (21 * 20);
        *tilemapRow = (boxView->unk_01 + (boxChangeDirection * (21 + 2))) & 63;
        *plttSlot = sPagePlttSlot[boxView->currentPage ^ 1];
    } else {
        *tileOffset = boxView->currentPage * (21 * 20);
        *tilemapRow = boxView->unk_01;
        *plttSlot = sPagePlttSlot[boxView->currentPage];
    }
}

void BoxView_Show(BoxView *boxView, const BoxCustomization *customization, int boxChangeDirection, BOOL refreshNow)
{
    u32 tileOffset, tilemapRow, plttSlot;

    BoxView_GetWallpaperLayout(boxView, boxChangeDirection, &tileOffset, &tilemapRow, &plttSlot);
    BoxView_LoadWallpaperPltt(boxView, customization, plttSlot, refreshNow);
    BoxView_LoadWallpaperTiles(boxView, customization, tileOffset);
    BoxView_LoadWallpaperTilemap(boxView, customization, tilemapRow, tileOffset, plttSlot);

    if (refreshNow) {
        if (boxChangeDirection == 0) {
            BoxView_CreateAllIcons(boxView, boxView->monIconHelper, customization->boxID, boxView->currentPage, boxChangeDirection * ((21 + 2) * 8), boxView->icons[boxView->currentPage]);
        }
    }
}

static void BoxView_LoadWallpaperPltt(BoxView *boxView, const BoxCustomization *customization, int plttSlot, BOOL refreshNow)
{
    NNSG2dPaletteData *plttData;
    void *buffer = Graphics_GetPlttData(NARC_INDEX_GRAPHIC__BOX, sWallpaperNarcMembers[customization->wallpaper].plttMember, &plttData, HEAP_ID_BOX_GRAPHICS);

    if (buffer) {
        int i;
        fx32 blendAmount;

        if (refreshNow) {
            DC_FlushRange(plttData->pRawData, 0x20);
            GX_LoadBGPltt(plttData->pRawData, plttSlot * 0x20, 0x20);
        }

        for (i = 0, blendAmount = 0; i < 8; i++) {
            BoxGraphics_BlendPltt(plttData->pRawData, boxView->unk_5860[i], 16, 0x7fff, (blendAmount >> FX32_SHIFT));
            blendAmount += ((16 << FX32_SHIFT) / 8);
        }

        BoxGraphics_BlendPltt(plttData->pRawData, boxView->unk_5860[i], 16, 0x7fff, 16);
        DC_FlushRange(boxView->unk_5860, sizeof(boxView->unk_5860));
        Heap_Free(buffer);
    }
}

static void BoxView_LoadWallpaperTiles(BoxView *boxView, const BoxCustomization *customization, int tileStart)
{
    void *data = LoadMemberFromNARC(NARC_INDEX_GRAPHIC__BOX, sWallpaperNarcMembers[customization->wallpaper].tileMember, TRUE, HEAP_ID_BOX_GRAPHICS, TRUE);

    if (data != NULL) {
        NNSG2dCharacterData *charData;

        if (NNS_G2dGetUnpackedBGCharacterData(data, &charData)) {
            Window *window;

            window = Window_New(HEAP_ID_BOX_GRAPHICS, 1);

            if (window) {
                window->bgConfig = boxView->bgConfig;
                window->width = 21;
                window->height = 4;
                window->pixels = charData->pRawData;

                u32 nameWidth = Font_CalcStringWidth(FONT_SYSTEM, customization->name, 0);
                u32 textX = 84 - (nameWidth / 2);

                Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, customization->name, textX, 13, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(2, 1, 0), NULL);
                Heap_Free(window);
            }

            Bg_LoadTiles(boxView->bgConfig, 3, charData->pRawData, charData->szByte, tileStart);
        }

        Heap_Free(data);
    }
}

static void BoxView_LoadWallpaperTilemap(BoxView *boxView, const BoxCustomization *customization, u32 tilemapRow, u32 tileOffset, u32 plttSlot)
{
    void *data = LoadMemberFromNARC(NARC_INDEX_GRAPHIC__BOX, sWallpaperNarcMembers[customization->wallpaper].tilemapMember, TRUE, HEAP_ID_BOX_GRAPHICS, TRUE);

    if (data) {
        NNSG2dScreenData *screenData;

        NNS_G2dGetUnpackedScreenData(data, &screenData);
        u16 *buffer = Bg_GetTilemapBuffer(boxView->bgConfig, 3);

        if (buffer) {
            BoxView_WriteWallpaperTilemap(buffer, (const u16 *)(screenData->rawData), tilemapRow, tileOffset, plttSlot);
        }

        Heap_Free(data);
        Bg_CopyTilemapBufferRangeToVRAM(boxView->bgConfig, 3, buffer, 0x1000, 0);
    }
}

void BoxView_StartScroll(BoxView *boxView, const BoxCustomization *customization, int boxChangeDirection)
{
    boxView->scrollStartX = (Bg_GetXOffset(boxView->bgConfig, 3) & (REG_G2_BG3HOFS_OFFSET_MASK)) << FX32_SHIFT;
    boxView->scrollTargetX = boxView->scrollStartX + ((((21 + 2) * 8) * boxChangeDirection) << FX32_SHIFT);
    boxView->scrollStepX = (boxView->scrollTargetX - boxView->scrollStartX) / (15 * 2);
    boxView->scrollTargetX >>= FX32_SHIFT;
    boxView->scrollTargetX &= (REG_G2_BG3HOFS_OFFSET_MASK);
    boxView->scrollTicksRemaining = (15 * 2);
    boxView->previousPage = boxView->currentPage;
    boxView->unk_01 += ((21 + 2) * boxChangeDirection);
    boxView->unk_01 &= 63;
    boxView->currentPage ^= 1;

    BoxView_PrepareIconData(boxView, customization->boxID);
    BoxView_InitIconScrollPositions(boxView, boxView->scrollStepX, boxChangeDirection * ((21 + 2) * 8));

    boxView->pendingBoxID = customization->boxID;
    boxView->pendingPage = boxView->currentPage;

    boxView->scrollStep = 1;
    boxView->scrollDone = 0;

    SysTask_Start(BoxView_ScrollTask, boxView, 0);
    BoxGraphics_StartVBlankTask(BoxView_ScrollVBlankTask, boxView, 1);
}

BOOL BoxView_IsScrollDone(BoxView *boxView)
{
    return boxView->scrollDone;
}

static void BoxView_ScrollTask(SysTask *task, void *param)
{
    BoxView *boxView = (BoxView *)param;

    if (boxView->scrollTicksRemaining) {
        if (boxView->scrollStep == 2) {
            BoxView_StepIconScroll(boxView, boxView->scrollStepX);
            boxView->scrollStep = 0;
        }

        return;
    }

    boxView->bgScrollX = boxView->scrollTargetX;
    boxView->boxID = BoxApp_GetCurrentBox(boxView->boxApp);
    SysTask_Done(task);
    boxView->scrollDone = TRUE;
}

static void BoxView_ScrollVBlankTask(SysTask *task, void *param)
{
    BoxView *boxView = (BoxView *)param;
    u32 outgoingPage = boxView->previousPage;
    u32 incomingPage = outgoingPage ^ 1;

    if (boxView->scrollTicksRemaining) {
        if (boxView->scrollStep < 2) {
            BoxView_UpdateOutgoingIconPositions(boxView, boxView->icons[outgoingPage], boxView->scrollStep);
            BoxView_UpdateIncomingIconPositions(boxView, boxView->icons[incomingPage], boxView->scrollStep);

            boxView->scrollStep++;
            boxView->bgScrollX = (boxView->scrollStartX >> FX32_SHIFT) & (REG_G2_BG3HOFS_OFFSET_MASK);
            boxView->scrollStartX += boxView->scrollStepX;
            Bg_SetOffset(boxView->bgConfig, BG_LAYER_MAIN_3, 0, boxView->bgScrollX);
            boxView->scrollTicksRemaining--;
        }
    } else {
        Bg_SetOffset(boxView->bgConfig, BG_LAYER_MAIN_3, 0, boxView->scrollTargetX);
        BoxView_SnapIconsToGrid(boxView, boxView->icons[incomingPage]);
        SysTask_Done(task);
    }
}

static void BoxView_InitIconScrollPositions(BoxView *boxView, fx32 stepX, s32 distanceX)
{
    int col, iconX;

    for (col = 0; col < MAX_PC_COLS; col++) {
        boxView->unk_68[0][col] = (BOX_GRID_LEFT + boxView->compareModeXOffset + BOX_GRID_CELL_SIZE * col) * FX32_ONE;
        boxView->unk_68[1][col] = boxView->unk_68[0][col] - stepX;
        boxView->unk_38[0][col] = (BOX_GRID_LEFT + boxView->compareModeXOffset + BOX_GRID_CELL_SIZE * col + distanceX) * FX32_ONE;
        boxView->unk_38[1][col] = boxView->unk_38[0][col] - stepX;

        iconX = boxView->unk_38[1][col] >> FX32_SHIFT;

        if ((iconX > boxView->unk_5854) && (iconX < boxView->unk_5858)) {
            int incomingPage = boxView->previousPage ^ 1;
            BoxView_CreateColumnIcons(boxView, boxView->icons[incomingPage], iconX, col);
        }
    }
}

static void BoxView_StepIconScroll(BoxView *boxView, fx32 stepX)
{
    int col, iconX, incomingPage, outgoingPage;

    outgoingPage = boxView->previousPage;
    incomingPage = outgoingPage ^ 1;

    for (col = 0; col < MAX_PC_COLS; col++) {
        iconX = boxView->unk_68[1][col] >> FX32_SHIFT;

        if ((iconX <= boxView->unk_5854) || (iconX >= boxView->unk_5858)) {
            BoxView_DeleteColumnIcons(boxView, boxView->icons[outgoingPage], col);
        }

        boxView->unk_68[0][col] = boxView->unk_68[1][col] - stepX;
        boxView->unk_68[1][col] = boxView->unk_68[0][col] - stepX;
        boxView->unk_38[0][col] = boxView->unk_38[1][col] - stepX;
        boxView->unk_38[1][col] = boxView->unk_38[0][col] - stepX;

        iconX = boxView->unk_38[1][col] >> FX32_SHIFT;

        if ((iconX > boxView->unk_5854) && (iconX < boxView->unk_5858)) {
            BoxView_CreateColumnIcons(boxView, boxView->icons[incomingPage], iconX, col);
        }
    }
}

static void BoxView_CreateColumnIcons(BoxView *boxView, MonIcon *icon, int iconX, int col)
{
    const PCBoxes *pcBoxes;
    BoxPokemon *boxMon;
    int row, boxPos;
    u32 tileOffset;

    pcBoxes = BoxApp_GetPCBoxes(boxView->boxApp);
    tileOffset = (BOX_ICON_TILE_BASE + (boxView->pendingPage * BOX_ICON_PAGE_TILE_COUNT)) + col * MON_ICON_TILE_COUNT;
    icon += col;
    boxPos = col;

    for (row = 0; row < MAX_PC_ROWS; row++) {
        if (icon->sprite == NULL) {
            boxMon = PCBoxes_GetBoxMonAt(pcBoxes, boxView->pendingBoxID, boxPos);

            if (BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES_EXISTS, NULL)) {
                MonIconHelper_CreateIconFromTiles(boxView->monIconHelper, boxMon, boxView->species[boxPos], boxView->iconSpriteIndex[boxPos], boxView->iconTileData[boxPos], iconX, BOX_GRID_TOP + BOX_GRID_CELL_SIZE * row, 2, BoxView_GetIconPriority(boxPos), tileOffset, icon);
            }
        }

        tileOffset += (MAX_PC_COLS * MON_ICON_TILE_COUNT);
        icon += MAX_PC_COLS;
        boxPos += MAX_PC_COLS;
    }
}

static void BoxView_DeleteColumnIcons(BoxView *boxView, MonIcon *monIcon, int col)
{
    monIcon += col;

    for (int row = 0; row < MAX_PC_ROWS; row++) {
        if (monIcon->sprite != NULL) {
            Sprite_Delete(monIcon->sprite);
            monIcon->sprite = NULL;
        }

        monIcon += MAX_PC_COLS;
    }
}

static void BoxView_PrepareIconData(BoxView *boxView, u32 boxID)
{
    const PCBoxes *pcBoxes;
    BoxPokemon *boxMon;
    u32 i, species;

    pcBoxes = BoxApp_GetPCBoxes(boxView->boxApp);

    for (i = 0; i < MAX_MONS_PER_BOX; i++) {
        boxMon = PCBoxes_GetBoxMonAt(pcBoxes, boxID, i);
        species = BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES, NULL);

        if (species != SPECIES_NONE) {
            boxView->species[i] = species;
            boxView->iconSpriteIndex[i] = BoxPokemon_IconSpriteIndex(boxMon);
            MonIconHelper_ReadIconData(boxView->monIconHelper, boxView->iconTileData[i], boxView->iconSpriteIndex[i], ((4 * 4) * 0x20 + 0x80));
        }
    }
}

static void BoxView_StartWallpaperChangeFlash(BoxView *boxView, int startIndex, int targetIndex, u32 plttOffset)
{
    WallpaperChangeFlashTask *flashTask;

    boxView->taskBusy = 0;
    flashTask = Heap_Alloc(HEAP_ID_BOX_GRAPHICS, sizeof(WallpaperChangeFlashTask));

    if (flashTask) {
        flashTask->boxView = boxView;
        flashTask->currentIndex = startIndex;
        flashTask->targetIndex = targetIndex;
        flashTask->plttOffset = plttOffset;
        flashTask->tickDelay = 2;
        flashTask->step = (targetIndex > startIndex) ? 1 : -1;

        if (BoxGraphics_StartVBlankTask(BoxView_WallpaperChangeFlashTask, flashTask, 0) != NULL) {
            boxView->taskBusy = 1;
        } else {
            Heap_Free(flashTask);
        }
    }
}

static void BoxView_WallpaperChangeFlashTask(SysTask *task, void *param)
{
    WallpaperChangeFlashTask *flashTask = param;

    if (flashTask->tickDelay) {
        flashTask->tickDelay--;
    } else {
        if (flashTask->currentIndex != flashTask->targetIndex) {
            flashTask->currentIndex += flashTask->step;
            GX_LoadBGPltt(flashTask->boxView->unk_5860[flashTask->currentIndex], flashTask->plttOffset, 0x20);
            flashTask->tickDelay = 2;
        } else {
            BoxGraphics_DeferFree(flashTask, BoxView_OnWallpaperChangeFlashDone, flashTask->boxView);
            SysTask_Done(task);
        }
    }
}

static void BoxView_OnWallpaperChangeFlashDone(void *param)
{
    BoxView *boxView = param;
    boxView->taskBusy = 0;
}

static int sWallpaperReloadStep = 0;

static void BoxView_ReloadWallpaperTask(SysTask *task, void *param)
{
    static u32 tileOffset = 0, tilemapRow = 0, plttSlot = 0;
    static const BoxCustomization *customization;
    BoxView *boxView = param;

    switch (sWallpaperReloadStep) {
    case RELOAD_WALLPAPER_STATE_PLTT:
        BoxView_GetWallpaperLayout(boxView, 0, &tileOffset, &tilemapRow, &plttSlot);
        customization = BoxApp_GetBoxCustomization(boxView->boxApp);
        BoxView_LoadWallpaperPltt(boxView, customization, plttSlot, FALSE);
        sWallpaperReloadStep++;
        break;
    case RELOAD_WALLPAPER_STATE_TILES:
        BoxView_LoadWallpaperTilemap(boxView, customization, tilemapRow, tileOffset, plttSlot);
        BoxView_LoadWallpaperTiles(boxView, customization, tileOffset);
        sWallpaperReloadStep++;
        break;
    case RELOAD_WALLPAPER_STATE_DONE:
        boxView->taskBusy = 0;
        sWallpaperReloadStep = 0;
        SysTask_Done(task);
        break;
    }
}

static void BoxView_StartWallpaperReload(BoxView *boxView)
{
    boxView->taskBusy = (SysTask_ExecuteAfterVBlank(BoxView_ReloadWallpaperTask, boxView, 0) != NULL);

    if (boxView->taskBusy) {
        sWallpaperReloadStep = 0;
    }
}

void BoxView_StartWallpaperChange(BoxView *boxView)
{
    boxView->wallpaperChangeStep = 0;
    BoxView_StartWallpaperChangeFlash(boxView, 0, 8, sPagePlttSlot[boxView->currentPage] * 0x20);
}

BOOL BoxView_IsWallpaperChangeDone(BoxView *boxView)
{
    switch (boxView->wallpaperChangeStep) {
    case WALLPAPER_CHANGE_STATE_WAIT_FLASH_IN:
        if (boxView->taskBusy == 0) {
            boxView->wallpaperChangeStep++;
        }
        break;
    case WALLPAPER_CHANGE_STATE_START_RELOAD:
        BoxView_StartWallpaperReload(boxView);
        boxView->wallpaperChangeStep++;
        break;
    case WALLPAPER_CHANGE_STATE_WAIT_RELOAD:
        if (boxView->taskBusy == 0) {
            boxView->wallpaperChangeStep++;
        }
        break;
    case WALLPAPER_CHANGE_STATE_START_FLASH_OUT:
        BoxView_StartWallpaperChangeFlash(boxView, 8, 0, sPagePlttSlot[boxView->currentPage] * 0x20);
        boxView->wallpaperChangeStep++;
        break;
    case WALLPAPER_CHANGE_STATE_WAIT_FLASH_OUT:
        if (boxView->taskBusy == 0) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}

void BoxView_PickUpIcon(BoxView *boxView, u32 boxPos, s32 tileOffset, MonIcon *monIcon)
{
    MonIcon_Copy(&boxView->icons[boxView->currentPage][boxPos], monIcon, 1);
    MonIconHelper_MoveIconTiles(boxView->monIconHelper, monIcon, tileOffset);
    MonIconHelper_InitIcons(boxView->monIconHelper, &boxView->icons[boxView->currentPage][boxPos], 1);
}

void BoxView_PlaceDownIcon(BoxView *boxView, u32 boxPos, const MonIcon *monIcon)
{
    u32 tileOffset;
    MonIcon *icon;

    tileOffset = BOX_ICON_TILE_BASE + (boxView->currentPage * BOX_ICON_PAGE_TILE_COUNT) + (MON_ICON_TILE_COUNT * boxPos);
    icon = &boxView->icons[boxView->currentPage][boxPos];
    MonIcon_Copy(monIcon, icon, 1);
    MonIconHelper_SetMultiSelectShading(boxView->monIconHelper, icon, FALSE);
    MonIconHelper_MoveIconTiles(boxView->monIconHelper, icon, tileOffset);
    BoxGraphics_SetSpritePriority(icon->sprite, BoxView_GetIconPriority(boxPos));

    BoxView_UpdateIconForm(boxView, boxPos);
}

MonIcon *BoxView_GetIcon(BoxView *boxView, u32 posInBox)
{
    return &boxView->icons[boxView->currentPage][posInBox];
}

void BoxView_CreateMissingIcons(BoxView *boxView)
{
    int i, boxID;
    BoxPokemon *boxMon;

    boxID = PCBoxes_GetCurrentBoxID(boxView->boxApp->pcBoxes);

    for (i = 0; i < MAX_MONS_PER_BOX; i++) {
        boxMon = PCBoxes_GetBoxMonAt(boxView->boxApp->pcBoxes, boxID, i);

        if (BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES_EXISTS, NULL)) {
            if (boxView->icons[boxView->currentPage][i].sprite == NULL) {
                int boxCol, boxRow, tileOffset;

                boxRow = i / MAX_PC_COLS;
                boxCol = i % MAX_PC_COLS;
                tileOffset = (BOX_ICON_TILE_BASE + (boxView->currentPage * BOX_ICON_PAGE_TILE_COUNT)) + (MON_ICON_TILE_COUNT * i);

                MonIconHelper_CreateIcon(boxView->monIconHelper, boxMon, BOX_GRID_LEFT + boxView->compareModeXOffset + BOX_GRID_CELL_SIZE * boxCol, BOX_GRID_TOP + BOX_GRID_CELL_SIZE * boxRow, 2, BoxView_GetIconPriority(i), tileOffset, &(boxView->icons[boxView->currentPage][i]));
            }
        }
    }
}

static u32 BoxView_GetIconPriority(u32 boxPos)
{
    static const u16 sMirroredBoxPos[(5 * 6)] = {
        5,
        4,
        3,
        2,
        1,
        0,
        11,
        10,
        9,
        8,
        7,
        6,
        17,
        16,
        15,
        14,
        13,
        12,
        23,
        22,
        21,
        20,
        19,
        18,
        29,
        28,
        27,
        26,
        25,
        24,
    };

    return 11 + sMirroredBoxPos[boxPos];
}

static void BoxView_CreateAllIcons(BoxView *boxView, MonIconHelper *monIconHelper, u32 boxID, u32 page, s32 distanceX, MonIcon *boxIcon)
{
    BoxPokemon *boxMon;
    u32 species, col, row, boxPos, tileOffset;

    tileOffset = (BOX_ICON_TILE_BASE + (page * BOX_ICON_PAGE_TILE_COUNT));
    boxPos = 0;

    for (row = 0; row < MAX_PC_ROWS; row++) {
        for (col = 0; col < MAX_PC_COLS; col++) {
            boxMon = PCBoxes_GetBoxMonAt(monIconHelper->boxApp->pcBoxes, boxID, boxPos);
            species = BoxPokemon_GetValue((BoxPokemon *)boxMon, MON_DATA_SPECIES, NULL);

            if (species != 0) {
                MonIconHelper_CreateIcon(monIconHelper, boxMon, BOX_GRID_LEFT + boxView->compareModeXOffset + BOX_GRID_CELL_SIZE * col + distanceX, BOX_GRID_TOP + BOX_GRID_CELL_SIZE * row, 2, BoxView_GetIconPriority(boxPos), tileOffset, boxIcon);
            }

            boxIcon++;
            boxPos++;
            tileOffset += MON_ICON_TILE_COUNT;
        }
    }
}

static void BoxView_UpdateOutgoingIconPositions(BoxView *boxView, MonIcon *icons, u32 scrollStep)
{
    VecFx32 pos;
    int col, row;

    for (row = 0; row < MAX_PC_ROWS; row++) {
        for (col = 0; col < MAX_PC_COLS; col++) {
            if (icons->sprite != NULL) {
                pos = *(Sprite_GetPosition(icons->sprite));
                pos.x = boxView->unk_68[scrollStep][col];
                Sprite_SetPosition(icons->sprite, &pos);
            }

            icons++;
        }
    }
}

static void BoxView_UpdateIncomingIconPositions(BoxView *boxView, MonIcon *icons, u32 scrollStep)
{
    VecFx32 pos;
    int col, row;

    for (row = 0; row < MAX_PC_ROWS; row++) {
        for (col = 0; col < MAX_PC_COLS; col++) {
            if (icons->sprite != NULL) {
                pos = *(Sprite_GetPosition(icons->sprite));
                pos.x = boxView->unk_38[scrollStep][col];
                Sprite_SetPosition(icons->sprite, &pos);
            }

            icons++;
        }
    }
}

static void BoxView_SnapIconsToGrid(BoxView *boxView, MonIcon *monIcon)
{
    VecFx32 pos;
    int col, row;

    pos.z = 0;

    for (row = 0; row < MAX_PC_ROWS; row++) {
        pos.y = (BOX_GRID_TOP + row * BOX_GRID_CELL_SIZE) * FX32_ONE;

        for (col = 0; col < MAX_PC_COLS; col++) {
            pos.x = (BOX_GRID_LEFT + boxView->compareModeXOffset + col * BOX_GRID_CELL_SIZE) * FX32_ONE;

            if (monIcon->sprite != NULL) {
                Sprite_SetPosition(monIcon->sprite, &pos);
            }

            monIcon++;
        }
    }
}

static void BoxView_WriteWallpaperTilemap(u16 *buffer, const u16 *screenData, u32 tilemapRow, u32 tileOffset, u32 plttSlot)
{
    u32 srcCol, row;
    u16 *dest;
    u16 value;

    if (tilemapRow >= 32) {
        buffer += 1024;
    }

    for (srcCol = 0; srcCol < 21; srcCol++) {
        dest = buffer + ((32 * 0) + (tilemapRow & 31));

        for (row = 0; row < 20; row++) {
            value = screenData[row * 21 + srcCol];
            value = ((GX_SCRFMT_TEXT_CHARNAME_MASK & value) + tileOffset) | ((GX_SCRFMT_TEXT_HF_MASK | GX_SCRFMT_TEXT_VF_MASK) & value) | (plttSlot << GX_SCRFMT_TEXT_COLORPLTT_SHIFT);
            *dest = value;
            dest += 32;
        }

        for (row = 0; row < 4; row++) {
            *dest = (plttSlot << GX_SCRFMT_TEXT_COLORPLTT_SHIFT) | (tileOffset + 0);
            dest += 32;
        }

        tilemapRow = (tilemapRow + 1) & 63;

        if (tilemapRow == 0) {
            buffer -= 1024;
        }

        if (tilemapRow == 32) {
            buffer += 1024;
        }
    }

    for (srcCol = 0; srcCol < 2; srcCol++) {
        dest = buffer + ((32 * 0) + (tilemapRow & 31));

        for (row = 0; row < (20 + 4); row++) {
            *dest = (plttSlot << GX_SCRFMT_TEXT_COLORPLTT_SHIFT) | (tileOffset + 0);
            dest += 32;
        }

        tilemapRow = (tilemapRow + 1) & 63;

        if (tilemapRow == 0) {
            buffer -= 1024;
        }

        if (tilemapRow == 32) {
            buffer += 1024;
        }
    }
}

void BoxView_StartReleaseMonAnimation(BoxView *boxView, u32 boxCursorPosition)
{
    boxView->boxCursorPosition = boxCursorPosition;
    boxView->releaseAnimStep = 0;

    MonIconHelper_SetIconAnim(boxView->monIconHelper, &(boxView->icons[boxView->currentPage][boxCursorPosition]), MON_ICON_ANIM_RELEASE);
}

BOOL BoxView_IsReleaseMonAnimationDone(BoxView *boxView)
{
    MonIcon *monIcon = &(boxView->icons[boxView->currentPage][boxView->boxCursorPosition]);

    switch (boxView->releaseAnimStep) {
    case RELEASE_ANIM_STEP_RELEASING:
        if (MonIconHelper_IsIconAnimDone(boxView->monIconHelper, monIcon)) {
            const BoxApplicationManager *boxAppMan = BoxGraphics_GetBoxAppMan(boxView->boxGraphics);

            if (BoxAppMan_HasCheckedCanReleaseMon(boxAppMan)) {
                if (BoxAppMan_CanReleaseMon(boxAppMan)) {
                    MonIconHelper_DeleteIcons(boxView->monIconHelper, monIcon, 1);
                    return TRUE;
                } else {
                    MonIconHelper_SetIconAnim(boxView->monIconHelper, monIcon, MON_ICON_ANIM_RELEASE_REJECTED);
                    boxView->releaseAnimStep++;
                }
            }
        }

        break;

    case RELEASE_ANIM_STEP_REJECTED:
        if (MonIconHelper_IsIconAnimDone(boxView->monIconHelper, monIcon)) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}

void BoxView_UpdateMarkingsTransparency(BoxView *boxView)
{
    int monPosInBox;
    u32 mask = BoxApp_GetMonSpriteTransparencyMask(boxView->boxApp);

    for (monPosInBox = 0; monPosInBox < MAX_MONS_PER_BOX; monPosInBox++) {
        if (boxView->icons[boxView->currentPage][monPosInBox].sprite != NULL) {
            MonIconHelper_UpdateTransparency(boxView->monIconHelper, &(boxView->icons[boxView->currentPage][monPosInBox]), mask);
        }
    }
}

void BoxView_UpdateHeldItemIcon(BoxView *boxView, u32 posInBox, u32 item)
{
    if (boxView->icons[boxView->currentPage][posInBox].sprite != NULL) {
        MonIconHelper_SetHeldItem(boxView->monIconHelper, &(boxView->icons[boxView->currentPage][posInBox]), item);
        MonIconHelper_UpdateTransparency(boxView->monIconHelper, &(boxView->icons[boxView->currentPage][posInBox]), BoxApp_GetMonSpriteTransparencyMask(boxView->boxApp));
        MonIconHelper_UpdateIconForm(boxView->monIconHelper, &(boxView->icons[boxView->currentPage][posInBox]), 1);
    }
}

static void BoxView_UpdateIconForm(BoxView *boxView, u32 posInBox)
{
    if (boxView->icons[boxView->currentPage][posInBox].sprite != NULL) {
        MonIconHelper_UpdateIconForm(boxView->monIconHelper, &(boxView->icons[boxView->currentPage][posInBox]), TRUE);
    }
}

void BoxView_UpdateMarkingsIcon(BoxView *boxView)
{
    u32 posInBox = BoxApp_GetCursorBoxPosition(boxView->boxApp);
    u32 monMarkings = BoxApp_GetPreviewedMonMarkings(boxView->boxApp);

    if (boxView->icons[boxView->currentPage][posInBox].sprite != NULL) {
        MonIconHelper_SetMarkings(boxView->monIconHelper, &(boxView->icons[boxView->currentPage][posInBox]), monMarkings);
    }
}

void BoxView_ApplyMultiSelectMonShading(BoxView *boxView)
{
    u32 leftCol, rightCol, topRow, bottomRow, col, row, posInBox;

    BoxApp_GetMultiSelectBoundingBox(boxView->boxApp, &leftCol, &rightCol, &topRow, &bottomRow);

    posInBox = 0;

    for (row = 0; row < MAX_PC_ROWS; row++) {
        for (col = 0; col < MAX_PC_COLS; col++) {
            if (boxView->icons[boxView->currentPage][posInBox].sprite != NULL) {
                if (((u32)(col - leftCol) <= (u32)(rightCol - leftCol)) & ((u32)(row - topRow) <= (u32)(bottomRow - topRow))) {
                    MonIconHelper_SetMultiSelectShading(boxView->monIconHelper, &(boxView->icons[boxView->currentPage][posInBox]), TRUE);
                } else {
                    MonIconHelper_SetMultiSelectShading(boxView->monIconHelper, &(boxView->icons[boxView->currentPage][posInBox]), FALSE);
                }
            }

            posInBox++;
        }
    }
}

void BoxView_ClearMultiSelectShading(BoxView *boxView)
{
    for (int i = 0; i < MAX_MONS_PER_BOX; i++) {
        if (boxView->icons[boxView->currentPage][i].sprite != NULL) {
            MonIconHelper_SetMultiSelectShading(boxView->monIconHelper, &(boxView->icons[boxView->currentPage][i]), FALSE);
        }
    }
}
