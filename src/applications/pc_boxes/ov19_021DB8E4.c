#include "applications/pc_boxes/ov19_021DB8E4.h"

#include <nitro.h>

#include "generated/items.h"
#include "generated/pokemon_colors.h"
#include "generated/species.h"

#include "applications/pc_boxes/box_app_manager.h"
#include "applications/pc_boxes/box_application.h"
#include "applications/pc_boxes/ov19_021D61B0.h"
#include "applications/pc_boxes/struct_ov19_021D61B0_decl.h"
#include "applications/pc_boxes/struct_ov19_021DA384.h"
#include "applications/pc_boxes/struct_ov19_021DBA9C.h"

#include "bg_window.h"
#include "font.h"
#include "font_special_chars.h"
#include "graphics.h"
#include "heap.h"
#include "item.h"
#include "message.h"
#include "narc.h"
#include "pc_boxes.h"
#include "pokemon.h"
#include "sprite.h"
#include "string_gf.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"

typedef struct BoxSelectionAnimState {
    BoxPopupGraphics *popupGraphics;
    u8 state;
    u8 counter;
    BOOL unused_08;
} BoxSelectionAnimState;

typedef struct ItemInfoSlideState {
    BoxPopupGraphics *popupGraphics;
    BgConfig *bgConfig;
    fx32 yOffset;
    fx32 targetYOffset;
    fx32 yOffsetStep;
    u16 framesLeft;
    u16 state;
} ItemInfoSlideState;

static int BoxPopupGraphics_GetFirstVisibleBoxID(BoxPopupGraphics *popupGraphics);
static void BoxPopupGraphics_ClearThumbnailCache(BoxPopupGraphics *popupGraphics);
static void BoxPopupGraphics_CacheThumbnail(BoxPopupGraphics *popupGraphics, u32 boxID);
static void BoxPopupGraphics_LoadThumbnailToSlot(BoxPopupGraphics *popupGraphics, u32 slot, u32 boxID);
static void BoxPopupGraphics_CreateThumbnailSprites(BoxPopupGraphics *popupGraphics);
static void BoxPopupGraphics_DeleteThumbnailSprites(BoxPopupGraphics *popupGraphics);
static void BoxPopupGraphics_RefreshThumbnails(BoxPopupGraphics *popupGraphics);
static void BoxPopupGraphics_DrawBoxName(BoxPopupGraphics *popupGraphics);
static void BoxPopupGraphics_ClearBoxName(BoxPopupGraphics *popupGraphics);
static void BoxPopupGraphics_DrawMonCounts(BoxPopupGraphics *popupGraphics);
static void BoxPopupGraphics_ClearMonCounts(BoxPopupGraphics *popupGraphics);
static void BoxPopupGraphics_StartBoxSelectionAnim(BoxPopupGraphics *popupGraphics, enum BoxSelectionAnim anim);
static void BoxSelectionAnim_Finish(SysTask *task, void *param);
static BOOL BoxPopupGraphics_IsAnimDone(BoxPopupGraphics *popupGraphics);
static void BoxSelectionAnim_OpenTask(SysTask *task, void *param);
static void BoxSelectionAnim_CloseTask(SysTask *task, void *param);
static void ItemInfoSlide_SlideInTask(SysTask *task, void *param);
static void ItemInfoSlide_SlideOutTask(SysTask *task, void *param);
static void BoxPopupGraphics_CreateItemIconSprite(BoxPopupGraphics *popupGraphics, u32 item);
static void BoxPopupGraphics_SetItemIconY(BoxPopupGraphics *popupGraphics, fx32 y);
static void BoxPopupGraphics_DeleteItemIconSprite(BoxPopupGraphics *popupGraphics);

BOOL BoxPopupGraphics_Init(BoxPopupGraphics *popupGraphics, BoxGraphics *boxGraphics, const BoxApplication *boxApp, BgConfig *bgConfig, SpriteList *spriteList, NARC *narc)
{
    popupGraphics->boxGraphics = boxGraphics;
    popupGraphics->bgConfig = bgConfig;
    popupGraphics->boxApp = boxApp;
    popupGraphics->spriteList = spriteList;

    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, 4, bgConfig, BG_LAYER_MAIN_1, 0, 0, TRUE, HEAP_ID_BOX_GRAPHICS);

    NNSG2dPaletteData *plttData;
    void *data;

    data = Graphics_GetPlttDataFromOpenNARC(narc, 27, &plttData, HEAP_ID_BOX_GRAPHICS);
    MI_CpuCopy16(plttData->pRawData, &popupGraphics->thumbnailFadePltts[0][0], 2 * PALETTE_SIZE_BYTES);
    Heap_Free(data);

    data = Graphics_GetPlttDataFromOpenNARC(narc, 20, &plttData, HEAP_ID_BOX_GRAPHICS);
    MI_CpuCopy16(plttData->pRawData, &popupGraphics->thumbnailFadePltts[0][2 * PALETTE_SIZE], PALETTE_SIZE_BYTES);
    Heap_Free(data);

    fx32 blendAmount, blendStep;

    blendAmount = BOX_THUMBNAIL_FADE_MAX_BLEND << FX32_SHIFT;
    blendStep = blendAmount / (BOX_THUMBNAIL_FADE_STEPS - 1);

    for (int i = BOX_THUMBNAIL_FADE_STEPS - 1; i >= 1; i--) {
        BoxGraphics_BlendPltt(popupGraphics->thumbnailFadePltts[0], popupGraphics->thumbnailFadePltts[i], BOX_THUMBNAIL_FADE_PLTT_COLORS, GX_RGB(31, 31, 31), blendAmount >> FX32_SHIFT);
        blendAmount -= blendStep;
    }

    DC_FlushRange(popupGraphics->thumbnailFadePltts, BOX_THUMBNAIL_FADE_STEPS * BOX_THUMBNAIL_FADE_PLTT_SIZE);

    GX_LoadOBJPltt(popupGraphics->thumbnailFadePltts[BOX_THUMBNAIL_FADE_STEPS - 1], PLTT_OFFSET(BOX_THUMBNAIL_PLTT_SLOT), BOX_THUMBNAIL_FADE_PLTT_SIZE);
    GXS_LoadOBJPltt(popupGraphics->thumbnailFadePltts[0], PLTT_OFFSET(BOX_THUMBNAIL_PLTT_SLOT), BOX_THUMBNAIL_FADE_PLTT_SIZE);

    popupGraphics->thumbnailCharDataBuffer = Graphics_GetCharDataFromOpenNARC(narc, 17, TRUE, &popupGraphics->thumbnailCharData, HEAP_ID_BOX_GRAPHICS);
    popupGraphics->thumbnailCellBankBuffer = Graphics_GetCellBankFromOpenNARC(narc, 18, TRUE, &popupGraphics->thumbnailCellBank, HEAP_ID_BOX_GRAPHICS);
    popupGraphics->itemInfoScreenBuffer = Graphics_GetScrnDataFromOpenNARC(narc, 2, TRUE, &popupGraphics->itemInfoScreenData, HEAP_ID_BOX_GRAPHICS);
    popupGraphics->boxSelectionScreenBuffer = Graphics_GetScrnDataFromOpenNARC(narc, 3, TRUE, &popupGraphics->boxSelectionScreenData, HEAP_ID_BOX_GRAPHICS);
    popupGraphics->monCountChars = FontSpecialChars_Init(2, 13, 4, HEAP_ID_BOX_GRAPHICS);
    popupGraphics->string = String_Init(500, HEAP_ID_BOX_GRAPHICS);
    popupGraphics->windows = NULL;
    popupGraphics->thumbnailBitmap.pixels = popupGraphics->thumbnailCharData->pRawData;
    popupGraphics->thumbnailBitmap.width = BOX_THUMBNAIL_SIZE;
    popupGraphics->thumbnailBitmap.height = BOX_THUMBNAIL_SIZE;
    popupGraphics->itemDescriptionsLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_ITEM_DESCRIPTIONS, HEAP_ID_BOX_GRAPHICS);

    for (int i = 0; i < MAX_PC_BOXES; i++) {
        popupGraphics->thumbnailSprites[i] = NULL;
    }

    if (popupGraphics->thumbnailCharDataBuffer == NULL || popupGraphics->thumbnailCellBankBuffer == NULL || popupGraphics->boxSelectionScreenBuffer == NULL || popupGraphics->itemInfoScreenBuffer == NULL || popupGraphics->monCountChars == NULL || popupGraphics->string == NULL) {
        return FALSE;
    }

    return TRUE;
}

void BoxPopupGraphics_LoadGraphics(BoxPopupGraphics *popupGraphics)
{
    static const WindowTemplate windowTemplates[POPUP_GRAPHICS_WINDOW_COUNT] = {
        [POPUP_GRAPHICS_WINDOW_BOX_NAME] = {
            .bgLayer = BG_LAYER_MAIN_1,
            .tilemapLeft = 10,
            .tilemapTop = 6,
            .width = 12,
            .height = 2,
            .palette = 2,
            .baseTile = 128,
        },
        [POPUP_GRAPHICS_WINDOW_MON_COUNTS] = {
            .bgLayer = BG_LAYER_MAIN_1,
            .tilemapLeft = 3,
            .tilemapTop = 13,
            .width = 26,
            .height = 1,
            .palette = 2,
            .baseTile = 152,
        },
        [POPUP_GRAPHICS_WINDOW_ITEM_DESCRIPTION] = {
            .bgLayer = BG_LAYER_MAIN_1,
            .tilemapLeft = 5,
            .tilemapTop = 25,
            .width = 27,
            .height = 6,
            .palette = 2,
            .baseTile = 178,
        },
    };

    popupGraphics->windows = Window_New(HEAP_ID_BOX_GRAPHICS, NELEMS(windowTemplates));

    if (popupGraphics->windows != NULL) {
        for (int i = 0; i < NELEMS(windowTemplates); i++) {
            Window_AddFromTemplate(popupGraphics->bgConfig, &popupGraphics->windows[i], &windowTemplates[i]);
        }
    }
}

void BoxPopupGraphics_Free(BoxPopupGraphics *popupGraphics)
{
    if (popupGraphics->itemDescriptionsLoader != NULL) {
        MessageLoader_Free(popupGraphics->itemDescriptionsLoader);
    }

    if (popupGraphics->thumbnailCharDataBuffer != NULL) {
        Heap_Free(popupGraphics->thumbnailCharDataBuffer);
    }

    if (popupGraphics->thumbnailCellBankBuffer != NULL) {
        Heap_Free(popupGraphics->thumbnailCellBankBuffer);
    }

    if (popupGraphics->boxSelectionScreenBuffer != NULL) {
        Heap_Free(popupGraphics->boxSelectionScreenBuffer);
    }

    if (popupGraphics->itemInfoScreenBuffer != NULL) {
        Heap_Free(popupGraphics->itemInfoScreenBuffer);
    }

    if (popupGraphics->monCountChars != NULL) {
        FontSpecialChars_Free(popupGraphics->monCountChars);
    }

    if (popupGraphics->string != NULL) {
        String_Free(popupGraphics->string);
    }

    if (popupGraphics->windows != NULL) {
        for (int i = 0; i < POPUP_GRAPHICS_WINDOW_COUNT; i++) {
            Window_Remove(&popupGraphics->windows[i]);
        }

        Heap_Free(popupGraphics->windows);
    }
}

void BoxPopupGraphics_OpenBoxSelection(BoxPopupGraphics *popupGraphics)
{
    popupGraphics->selectedBoxID = BoxApp_GetBoxSelectionBoxID(popupGraphics->boxApp);
    BoxPopupGraphics_CreateThumbnailSprites(popupGraphics);
    BoxPopupGraphics_StartBoxSelectionAnim(popupGraphics, BOX_SELECTION_ANIM_OPEN);
}

BOOL BoxPopupGraphics_IsBoxSelectionOpen(BoxPopupGraphics *popupGraphics)
{
    return BoxPopupGraphics_IsAnimDone(popupGraphics);
}

void BoxPopupGraphics_ScrollBoxSelection(BoxPopupGraphics *popupGraphics)
{
    popupGraphics->selectedBoxID = BoxApp_GetBoxSelectionBoxID(popupGraphics->boxApp);

    BoxPopupGraphics_RefreshThumbnails(popupGraphics);
    BoxPopupGraphics_DrawBoxName(popupGraphics);
    BoxPopupGraphics_DrawMonCounts(popupGraphics);
}

void BoxPopupGraphics_CloseBoxSelection(BoxPopupGraphics *popupGraphics)
{
    BoxPopupGraphics_StartBoxSelectionAnim(popupGraphics, BOX_SELECTION_ANIM_CLOSE);
}

BOOL BoxPopupGraphics_IsBoxSelectionOpen2(BoxPopupGraphics *popupGraphics)
{
    return BoxPopupGraphics_IsAnimDone(popupGraphics);
}

void BoxPopupGraphics_LoadBoxThumbnail(BoxPopupGraphics *popupGraphics, u32 boxID, u32 tileOffset, NNS_G2D_VRAM_TYPE vramType, NNSG2dImageProxy *imageProxy)
{
    const PCBoxes *pcBoxes;
    BoxPokemon *boxMon;
    u32 col, row, slot, species;
    u8 color, reencrypt;
    int wallpaper;

    pcBoxes = BoxApp_GetPCBoxes(popupGraphics->boxApp);
    wallpaper = PCBoxes_GetWallpaper(pcBoxes, boxID);

    if (wallpaper >= MAX_WALLPAPERS) {
        wallpaper -= MAX_UNLOCKABLE_WALLPAPERS;
    }

    color = BOX_THUMBNAIL_PLTT_SLOT * PALETTE_SIZE + wallpaper;
    Bitmap_FillRect8bpp(&popupGraphics->thumbnailBitmap, 9, 10, 14, 12, color);

    for (row = 0, slot = 0; row < MAX_PC_ROWS; row++) {
        for (col = 0; col < MAX_PC_COLS; col++) {
            boxMon = PCBoxes_GetBoxMonAt(pcBoxes, boxID, slot++);
            reencrypt = BoxPokemon_EnterDecryptionContext(boxMon);
            species = BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES, NULL);

            if (species != SPECIES_NONE) {
                if (BoxPokemon_GetValue(boxMon, MON_DATA_IS_EGG, NULL) == FALSE) {
                    u16 form = BoxPokemon_GetValue(boxMon, MON_DATA_FORM, NULL);

                    color = SpeciesData_GetFormValue(species, form, SPECIES_DATA_BODY_COLOR);
                } else {
                    color = (species != SPECIES_MANAPHY) ? MON_COLOR_WHITE : MON_COLOR_BLUE;
                }

                static const u8 bodyColorPlttIndices[] = {
                    14,
                    15,
                    5,
                    4,
                    13,
                    12,
                    3,
                    11,
                    10,
                    9,
                };

                color = (BOX_THUMBNAIL_PLTT_SLOT + 1) * PALETTE_SIZE + bodyColorPlttIndices[color];

                Bitmap_FillRect8bpp(&popupGraphics->thumbnailBitmap, 10 + col * 2, 11 + row * 2, 2, 2, color);
            }

            BoxPokemon_ExitDecryptionContext(boxMon, reencrypt);
        }
    }

    if (imageProxy != NULL) {
        switch (vramType) {
        case NNS_G2D_VRAM_TYPE_2DMAIN:
            popupGraphics->thumbnailCharData->mappingType = GX_GetOBJVRamModeChar();
            break;
        case NNS_G2D_VRAM_TYPE_2DSUB:
            popupGraphics->thumbnailCharData->mappingType = GXS_GetOBJVRamModeChar();
            break;
        }

        NNS_G2dLoadImage1DMapping(popupGraphics->thumbnailCharData, tileOffset * TILE_SIZE_4BPP, vramType, imageProxy);
    } else {
        DC_FlushRange(popupGraphics->thumbnailCharData->pRawData, popupGraphics->thumbnailCharData->szByte);

        switch (vramType) {
        case NNS_G2D_VRAM_TYPE_2DMAIN:
            GX_LoadOBJ(popupGraphics->thumbnailCharData->pRawData, tileOffset * TILE_SIZE_4BPP, popupGraphics->thumbnailCharData->szByte);
            break;
        case NNS_G2D_VRAM_TYPE_2DSUB:
            GXS_LoadOBJ(popupGraphics->thumbnailCharData->pRawData, tileOffset * TILE_SIZE_4BPP, popupGraphics->thumbnailCharData->szByte);
            break;
        }
    }
}

NNSG2dCellDataBank *BoxPopupGraphics_GetThumbnailCellBank(BoxPopupGraphics *popupGraphics)
{
    return popupGraphics->thumbnailCellBank;
}

static int BoxPopupGraphics_GetFirstVisibleBoxID(BoxPopupGraphics *popupGraphics)
{
    int boxID = popupGraphics->selectedBoxID - BOX_SELECTION_VISIBLE_BOXES / 2;

    if (boxID < 0) {
        boxID += MAX_PC_BOXES;
    }

    return boxID;
}

static void BoxPopupGraphics_ClearThumbnailCache(BoxPopupGraphics *popupGraphics)
{
    for (int i = 0; i < MAX_PC_BOXES; i++) {
        popupGraphics->isThumbnailCached[i] = FALSE;
    }
}

static void BoxPopupGraphics_CacheThumbnail(BoxPopupGraphics *popupGraphics, u32 boxID)
{
    MI_CpuCopy32(popupGraphics->thumbnailCharData->pRawData, popupGraphics->thumbnailCache[boxID], BOX_THUMBNAIL_SIZE * BOX_THUMBNAIL_SIZE);
    DC_FlushRange(popupGraphics->thumbnailCache, BOX_THUMBNAIL_SIZE * BOX_THUMBNAIL_SIZE);
    popupGraphics->isThumbnailCached[boxID] = TRUE;
}

static void BoxPopupGraphics_LoadThumbnailToSlot(BoxPopupGraphics *popupGraphics, u32 slot, u32 boxID)
{
    u32 tileOffset = BOX_THUMBNAIL_TILE_BASE + BOX_THUMBNAIL_TILE_COUNT * slot;

    if (popupGraphics->isThumbnailCached[boxID]) {
        GX_LoadOBJ(popupGraphics->thumbnailCache[boxID], tileOffset * TILE_SIZE_4BPP, BOX_THUMBNAIL_SIZE * BOX_THUMBNAIL_SIZE);
    } else {
        NNSG2dImageProxy imageProxy;

        NNS_G2dInitImageProxy(&imageProxy);
        BoxPopupGraphics_LoadBoxThumbnail(popupGraphics, boxID, tileOffset, NNS_G2D_VRAM_TYPE_2DMAIN, &imageProxy);
        BoxPopupGraphics_CacheThumbnail(popupGraphics, boxID);
    }
}

static void BoxPopupGraphics_CreateThumbnailSprites(BoxPopupGraphics *popupGraphics)
{
    SpriteResourcesHeader srHeader;
    MonIconHelper *iconHelper;
    NNSG2dImageProxy imageProxy;
    VecFx32 pos;
    int slot, boxID;

    BoxPopupGraphics_ClearThumbnailCache(popupGraphics);
    iconHelper = BoxGraphics_GetMonIconHelper(popupGraphics->boxGraphics);
    SpriteResourcesHeader_InitFromProxies(&srHeader, NULL, BoxGraphics_GetImagePaletteProxy(popupGraphics->boxGraphics), popupGraphics->thumbnailCellBank, iconHelper->iconAnimBank, 0);
    boxID = BoxPopupGraphics_GetFirstVisibleBoxID(popupGraphics);

    for (slot = 0; slot < BOX_SELECTION_VISIBLE_BOXES; slot++) {
        NNS_G2dInitImageProxy(&imageProxy);
        BoxPopupGraphics_LoadBoxThumbnail(popupGraphics, boxID, BOX_THUMBNAIL_TILE_BASE + BOX_THUMBNAIL_TILE_COUNT * slot, NNS_G2D_VRAM_TYPE_2DMAIN, &imageProxy);

        srHeader.imageProxy = &imageProxy;
        popupGraphics->thumbnailSprites[slot] = BoxGraphics_CreateSprite(popupGraphics->spriteList, &srHeader, 512, 256, 11, NNS_G2D_VRAM_TYPE_2DMAIN);

        GF_ASSERT(popupGraphics->thumbnailSprites[slot] != NULL);

        Sprite_SetDrawFlag(popupGraphics->thumbnailSprites[slot], FALSE);
        VEC_Set(&pos, FX32_CONST(32 + slot * BOX_THUMBNAIL_SIZE), FX32_CONST(88), 0);
        Sprite_SetPosition(popupGraphics->thumbnailSprites[slot], &pos);
        BoxPopupGraphics_CacheThumbnail(popupGraphics, boxID);

        if (++boxID >= MAX_PC_BOXES) {
            boxID = 0;
        }
    }

    for (slot = 0; slot < MAX_PC_BOXES; slot++) {
        popupGraphics->boxMonCounts[slot] = PCBoxes_CountMonsInBox(BoxApp_GetPCBoxes(popupGraphics->boxApp), slot);
    }
}

static void BoxPopupGraphics_DeleteThumbnailSprites(BoxPopupGraphics *popupGraphics)
{
    for (int slot = 0; slot < BOX_SELECTION_VISIBLE_BOXES; slot++) {
        if (popupGraphics->thumbnailSprites[slot] != NULL) {
            Sprite_Delete(popupGraphics->thumbnailSprites[slot]);
            popupGraphics->thumbnailSprites[slot] = NULL;
        }
    }
}

static void BoxPopupGraphics_RefreshThumbnails(BoxPopupGraphics *popupGraphics)
{
    int boxID, slot;

    boxID = BoxPopupGraphics_GetFirstVisibleBoxID(popupGraphics);

    for (slot = 0; slot < BOX_SELECTION_VISIBLE_BOXES; slot++) {
        BoxPopupGraphics_LoadThumbnailToSlot(popupGraphics, slot, boxID);
        Sprite_SetDrawFlag(popupGraphics->thumbnailSprites[slot], TRUE);

        if (++boxID >= MAX_PC_BOXES) {
            boxID = 0;
        }
    }
}

static void BoxPopupGraphics_DrawBoxName(BoxPopupGraphics *popupGraphics)
{
    const PCBoxes *pcBoxes;
    Window *window;
    u32 textWidth, xOffset;

    pcBoxes = BoxApp_GetPCBoxes(popupGraphics->boxApp);
    window = &popupGraphics->windows[POPUP_GRAPHICS_WINDOW_BOX_NAME];

    PCBoxes_BufferBoxName(pcBoxes, popupGraphics->selectedBoxID, popupGraphics->string);

    textWidth = Font_CalcStringWidth(FONT_SYSTEM, popupGraphics->string, 0);
    xOffset = 48 - textWidth / 2;

    Window_FillTilemap(window, 7);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, popupGraphics->string, xOffset, 0, TEXT_SPEED_NO_TRANSFER, BOX_TEXT_COLOR_POPUP_BOX_NAME, NULL);
    Window_LoadTiles(window);
}

static void BoxPopupGraphics_ClearBoxName(BoxPopupGraphics *popupGraphics)
{
    Window *window = &popupGraphics->windows[POPUP_GRAPHICS_WINDOW_BOX_NAME];

    Window_FillTilemap(window, 7);
    Window_LoadTiles(window);
}

static void BoxPopupGraphics_DrawMonCounts(BoxPopupGraphics *popupGraphics)
{
    s32 boxID, slot;
    Window *window = &popupGraphics->windows[POPUP_GRAPHICS_WINDOW_MON_COUNTS];
    Window_FillTilemap(window, 4);
    boxID = BoxPopupGraphics_GetFirstVisibleBoxID(popupGraphics);

    for (slot = 0; slot < BOX_SELECTION_VISIBLE_BOXES; slot++) {
        FontSpecialChars_DrawPartyScreenHPText(popupGraphics->monCountChars, popupGraphics->boxMonCounts[boxID], 2, PADDING_MODE_ZEROES, window, BOX_THUMBNAIL_SIZE * slot, 0);

        if (++boxID >= MAX_PC_BOXES) {
            boxID = 0;
        }
    }

    Window_LoadTiles(window);
}

static void BoxPopupGraphics_ClearMonCounts(BoxPopupGraphics *popupGraphics)
{
    Window *window = &popupGraphics->windows[POPUP_GRAPHICS_WINDOW_MON_COUNTS];

    Window_FillTilemap(window, 4);
    Window_LoadTiles(window);
}

static void BoxPopupGraphics_StartBoxSelectionAnim(BoxPopupGraphics *popupGraphics, enum BoxSelectionAnim anim)
{
    static const SysTaskFunc animTasks[] = {
        [BOX_SELECTION_ANIM_OPEN] = BoxSelectionAnim_OpenTask,
        [BOX_SELECTION_ANIM_CLOSE] = BoxSelectionAnim_CloseTask,
    };
    BoxSelectionAnimState *animState = Heap_Alloc(HEAP_ID_BOX_GRAPHICS, sizeof(BoxSelectionAnimState));

    if (animState != NULL) {
        animState->popupGraphics = popupGraphics;
        animState->state = 0;
        animState->counter = 0;

        popupGraphics->animTask = SysTask_Start(animTasks[anim], animState, 0);

        if (popupGraphics->animTask == NULL) {
            Heap_Free(animState);
        }
    }
}

static void BoxSelectionAnim_Finish(SysTask *task, void *param)
{
    BoxSelectionAnimState *animState = (BoxSelectionAnimState *)param;

    animState->popupGraphics->animTask = NULL;

    Heap_Free(animState);
    SysTask_Done(task);
}

static BOOL BoxPopupGraphics_IsAnimDone(BoxPopupGraphics *popupGraphics)
{
    return popupGraphics->animTask == NULL;
}

static void BoxSelectionAnim_OpenTask(SysTask *task, void *param)
{
    BoxSelectionAnimState *animState = (BoxSelectionAnimState *)param;
    BoxPopupGraphics *popupGraphics = animState->popupGraphics;

    switch (animState->state) {
    case BOX_SELECTION_OPEN_STATE_UNROLL:
        animState->counter += 1;

        if (animState->counter * 2 < BOX_SELECTION_HEIGHT) {
            u32 midRow = BOX_SELECTION_TOP_ROW + BOX_SELECTION_HEIGHT / 2;

            Bg_LoadToTilemapRect(popupGraphics->bgConfig, BG_LAYER_MAIN_1, popupGraphics->boxSelectionScreenData->rawData, 0, midRow - animState->counter, 32, animState->counter);
            Bg_CopyToTilemapRect(popupGraphics->bgConfig, BG_LAYER_MAIN_1, 0, midRow, 32, animState->counter, popupGraphics->boxSelectionScreenData->rawData, 0, BOX_SELECTION_HEIGHT - animState->counter, 32, BOX_SELECTION_HEIGHT);
        } else {
            Bg_LoadToTilemapRect(popupGraphics->bgConfig, BG_LAYER_MAIN_1, popupGraphics->boxSelectionScreenData->rawData, 0, BOX_SELECTION_TOP_ROW, 32, BOX_SELECTION_HEIGHT);
            animState->state++;
        }

        Bg_CopyTilemapBufferToVRAM(popupGraphics->bgConfig, BG_LAYER_MAIN_1);
        animState->counter = BOX_THUMBNAIL_FADE_STEPS - 1;
        break;
    case BOX_SELECTION_OPEN_STATE_SHOW_THUMBNAILS:
        GX_LoadOBJPltt(popupGraphics->thumbnailFadePltts[animState->counter], PLTT_OFFSET(BOX_THUMBNAIL_PLTT_SLOT), BOX_THUMBNAIL_FADE_PLTT_SIZE);
        BoxPopupGraphics_RefreshThumbnails(popupGraphics);
        animState->state++;
        break;
    case BOX_SELECTION_OPEN_STATE_FADE_IN:
        if (animState->counter) {
            animState->counter--;
        }

        GX_LoadOBJPltt(popupGraphics->thumbnailFadePltts[animState->counter], PLTT_OFFSET(BOX_THUMBNAIL_PLTT_SLOT), BOX_THUMBNAIL_FADE_PLTT_SIZE);

        if (animState->counter == 0) {
            Window_PutToTilemap(&popupGraphics->windows[POPUP_GRAPHICS_WINDOW_BOX_NAME]);
            Window_PutToTilemap(&popupGraphics->windows[POPUP_GRAPHICS_WINDOW_MON_COUNTS]);
            BoxPopupGraphics_DrawBoxName(popupGraphics);
            BoxPopupGraphics_DrawMonCounts(popupGraphics);
            Bg_CopyTilemapBufferToVRAM(popupGraphics->bgConfig, BG_LAYER_MAIN_1);
            animState->state++;
        }
        break;
    case BOX_SELECTION_OPEN_STATE_FINISH:
        BoxSelectionAnim_Finish(task, animState);
        break;
    }
}

static void BoxSelectionAnim_CloseTask(SysTask *task, void *param)
{
    BoxSelectionAnimState *animState = (BoxSelectionAnimState *)param;
    BoxPopupGraphics *popupGraphics = animState->popupGraphics;

    switch (animState->state) {
    case BOX_SELECTION_CLOSE_STATE_CLEAR:
        BoxPopupGraphics_DeleteThumbnailSprites(popupGraphics);
        BoxPopupGraphics_ClearBoxName(popupGraphics);
        BoxPopupGraphics_ClearMonCounts(popupGraphics);
        animState->state++;
        break;
    case BOX_SELECTION_CLOSE_STATE_ROLL_UP:
        Bg_FillTilemapRect(popupGraphics->bgConfig, BG_LAYER_MAIN_1, 0, 0, BOX_SELECTION_TOP_ROW, 32, BOX_SELECTION_HEIGHT, TILEMAP_FILL_VAL_INCLUDES_PALETTE);
        animState->counter += 1;

        if (animState->counter * 2 < BOX_SELECTION_HEIGHT) {
            u32 midRow = BOX_SELECTION_TOP_ROW + BOX_SELECTION_HEIGHT / 2;

            Bg_LoadToTilemapRect(popupGraphics->bgConfig, BG_LAYER_MAIN_1, popupGraphics->boxSelectionScreenData->rawData, 0, BOX_SELECTION_TOP_ROW + animState->counter, 32, BOX_SELECTION_HEIGHT / 2 - animState->counter);
            Bg_CopyToTilemapRect(popupGraphics->bgConfig, BG_LAYER_MAIN_1, 0, midRow, 32, BOX_SELECTION_HEIGHT / 2 - animState->counter, popupGraphics->boxSelectionScreenData->rawData, 0, BOX_SELECTION_HEIGHT - animState->counter, 32, BOX_SELECTION_HEIGHT);
        } else {
            animState->state++;
        }

        Bg_CopyTilemapBufferToVRAM(popupGraphics->bgConfig, BG_LAYER_MAIN_1);
        break;
    case BOX_SELECTION_CLOSE_STATE_FINISH:
        BoxSelectionAnim_Finish(task, animState);
    }
}

void BoxPopupGraphics_OpenItemInfo(BoxPopupGraphics *popupGraphics)
{
    ItemInfoSlideState *slideState = Heap_Alloc(HEAP_ID_BOX_GRAPHICS, sizeof(ItemInfoSlideState));

    if (slideState != NULL) {
        u32 item = BoxApp_GetCursorOrPreviewedItem(popupGraphics->boxApp);

        Bg_SetOffset(popupGraphics->bgConfig, BG_LAYER_MAIN_1, BG_OFFSET_UPDATE_SET_Y, 0);
        Bg_LoadToTilemapRect(popupGraphics->bgConfig, BG_LAYER_MAIN_1, popupGraphics->itemInfoScreenData->rawData, 0, ITEM_INFO_TOP_ROW, 32, ITEM_INFO_HEIGHT);
        Window_FillTilemap(&popupGraphics->windows[POPUP_GRAPHICS_WINDOW_ITEM_DESCRIPTION], 4);
        MessageLoader_GetString(popupGraphics->itemDescriptionsLoader, item, popupGraphics->string);
        Text_AddPrinterWithParamsAndColor(&popupGraphics->windows[POPUP_GRAPHICS_WINDOW_ITEM_DESCRIPTION], FONT_SYSTEM, popupGraphics->string, 0, 0, TEXT_SPEED_NO_TRANSFER, BOX_TEXT_COLOR_ITEM_DESCRIPTION, NULL);
        Window_CopyToVRAM(&popupGraphics->windows[POPUP_GRAPHICS_WINDOW_ITEM_DESCRIPTION]);

        BoxPopupGraphics_CreateItemIconSprite(popupGraphics, item);

        slideState->state = ITEM_INFO_SLIDE_IN_STATE_WAIT;
        slideState->popupGraphics = popupGraphics;
        slideState->bgConfig = popupGraphics->bgConfig;
        slideState->yOffset = 0 << FX32_SHIFT;
        slideState->targetYOffset = ITEM_INFO_SLIDE_DISTANCE << FX32_SHIFT;
        slideState->yOffsetStep = (slideState->targetYOffset - slideState->yOffset) / ITEM_INFO_SLIDE_FRAMES;
        slideState->framesLeft = ITEM_INFO_SLIDE_FRAMES;

        popupGraphics->animTask = BoxGraphics_StartVBlankTask(ItemInfoSlide_SlideInTask, slideState, 0);
    }
}

BOOL BoxPopupGraphics_IsAnimDone2(BoxPopupGraphics *popupGraphics)
{
    return popupGraphics->animTask == NULL;
}

static void BoxPopupGraphics_ClearAnimTask(void *param)
{
    BoxPopupGraphics *popupGraphics = param;
    popupGraphics->animTask = NULL;
}

static void ItemInfoSlide_SlideInTask(SysTask *task, void *param)
{
    ItemInfoSlideState *slideState = param;

    switch (slideState->state) {
    case ITEM_INFO_SLIDE_IN_STATE_WAIT:
        slideState->state++;
        break;
    case ITEM_INFO_SLIDE_IN_STATE_SLIDE:
        if (slideState->framesLeft) {
            slideState->framesLeft--;
            slideState->yOffset += slideState->yOffsetStep;
            Bg_SetOffset(slideState->bgConfig, BG_LAYER_MAIN_1, BG_OFFSET_UPDATE_SET_Y, slideState->yOffset >> FX32_SHIFT);
            BoxPopupGraphics_SetItemIconY(slideState->popupGraphics, (ITEM_INFO_ICON_Y << FX32_SHIFT) - slideState->yOffset);
        } else {
            Bg_SetOffset(slideState->bgConfig, BG_LAYER_MAIN_1, BG_OFFSET_UPDATE_SET_Y, slideState->targetYOffset >> FX32_SHIFT);
            BoxPopupGraphics_SetItemIconY(slideState->popupGraphics, (ITEM_INFO_ICON_Y << FX32_SHIFT) - slideState->targetYOffset);
            BoxGraphics_DeferFree(slideState, BoxPopupGraphics_ClearAnimTask, slideState->popupGraphics);
            SysTask_Done(task);
        }
        break;
    }
}

void BoxPopupGraphics_CloseItemInfo(BoxPopupGraphics *popupGraphics)
{
    ItemInfoSlideState *slideState = Heap_Alloc(HEAP_ID_BOX_GRAPHICS, sizeof(ItemInfoSlideState));

    if (slideState != NULL) {
        slideState->state = ITEM_INFO_SLIDE_IN_STATE_WAIT;
        slideState->popupGraphics = popupGraphics;
        slideState->bgConfig = popupGraphics->bgConfig;
        slideState->yOffset = ITEM_INFO_SLIDE_DISTANCE << FX32_SHIFT;
        slideState->targetYOffset = 0 << FX32_SHIFT;
        slideState->yOffsetStep = (slideState->targetYOffset - slideState->yOffset) / ITEM_INFO_SLIDE_FRAMES;
        slideState->framesLeft = ITEM_INFO_SLIDE_FRAMES;
        popupGraphics->animTask = BoxGraphics_StartVBlankTask(ItemInfoSlide_SlideOutTask, slideState, 0);
    }
}

BOOL BoxPopupGraphics_IsItemInfoClosed(BoxPopupGraphics *popupGraphics)
{
    if (popupGraphics->animTask == NULL) {
        Bg_SetOffset(popupGraphics->bgConfig, BG_LAYER_MAIN_1, BG_OFFSET_UPDATE_SET_Y, 0);
        BoxPopupGraphics_DeleteItemIconSprite(popupGraphics);
        return TRUE;
    }

    return FALSE;
}

static void BoxPopupGraphics_ClearAnimTask2(void *param)
{
    BoxPopupGraphics *popupGraphics = param;
    popupGraphics->animTask = NULL;
}

static void ItemInfoSlide_SlideOutTask(SysTask *task, void *param)
{
    ItemInfoSlideState *slideState = param;

    if (slideState->framesLeft) {
        slideState->framesLeft--;
        slideState->yOffset += slideState->yOffsetStep;
        Bg_SetOffset(slideState->bgConfig, BG_LAYER_MAIN_1, BG_OFFSET_UPDATE_SET_Y, slideState->yOffset >> FX32_SHIFT);
        BoxPopupGraphics_SetItemIconY(slideState->popupGraphics, (ITEM_INFO_ICON_Y << FX32_SHIFT) - slideState->yOffset);
    } else {
        Bg_SetOffset(slideState->bgConfig, BG_LAYER_MAIN_1, BG_OFFSET_UPDATE_SET_Y, slideState->targetYOffset >> FX32_SHIFT);
        BoxPopupGraphics_SetItemIconY(slideState->popupGraphics, (ITEM_INFO_ICON_Y << FX32_SHIFT) - slideState->targetYOffset);
        Bg_FillTilemapRect(slideState->bgConfig, BG_LAYER_MAIN_1, 0, 0, 0, 32, 32, TILEMAP_FILL_VAL_INCLUDES_PALETTE);
        Bg_CopyTilemapBufferToVRAM(slideState->bgConfig, BG_LAYER_MAIN_1);
        BoxGraphics_DeferFree(slideState, BoxPopupGraphics_ClearAnimTask2, slideState->popupGraphics);
        SysTask_Done(task);
    }
}

static void BoxPopupGraphics_CreateItemIconSprite(BoxPopupGraphics *popupGraphics, u32 item)
{
    if (item != ITEM_NONE) {
        SpriteResourcesHeader srHeader;
        MonIconHelper *iconHelper;
        NNSG2dImageProxy imageProxy;
        NNSG2dCharacterData *charData;
        void *charDataBuffer;

        iconHelper = BoxGraphics_GetMonIconHelper(popupGraphics->boxGraphics);
        SpriteResourcesHeader_InitFromProxies(&srHeader, &imageProxy, BoxGraphics_GetImagePaletteProxy(popupGraphics->boxGraphics), iconHelper->itemIconCellBank, iconHelper->itemIconAnimBank, 0);
        NNS_G2dInitImageProxy(&imageProxy);

        charDataBuffer = Graphics_GetCharData(NARC_INDEX_ITEMTOOL__ITEMDATA__ITEM_ICON, Item_FileID(item, ITEM_FILE_TYPE_ICON), 0, &charData, HEAP_ID_BOX_GRAPHICS);
        charData->mappingType = GX_GetOBJVRamModeChar();
        NNS_G2dLoadImage1DMapping(charData, 1520 * TILE_SIZE_4BPP, NNS_G2D_VRAM_TYPE_2DMAIN, &imageProxy);

        Graphics_LoadPalette(NARC_INDEX_ITEMTOOL__ITEMDATA__ITEM_ICON, Item_FileID(item, ITEM_FILE_TYPE_PALETTE), PAL_LOAD_MAIN_OBJ, PLTT_OFFSET(ITEM_INFO_ICON_PLTT_SLOT), PALETTE_SIZE_BYTES, HEAP_ID_BOX_GRAPHICS);
        popupGraphics->itemIconSprite = BoxGraphics_CreateSprite(popupGraphics->spriteList, &srHeader, ITEM_INFO_ICON_X, ITEM_INFO_ICON_Y, 0, NNS_G2D_VRAM_TYPE_2DMAIN);

        if (popupGraphics->itemIconSprite != NULL) {
            Sprite_SetExplicitPalette(popupGraphics->itemIconSprite, ITEM_INFO_ICON_PLTT_SLOT);
        }

        Heap_Free(charDataBuffer);
    }
}

static void BoxPopupGraphics_SetItemIconY(BoxPopupGraphics *popupGraphics, fx32 y)
{
    if (popupGraphics->itemIconSprite != NULL) {
        VecFx32 pos;

        pos.x = ITEM_INFO_ICON_X << FX32_SHIFT;
        pos.y = y;
        pos.z = 0;

        Sprite_SetPosition(popupGraphics->itemIconSprite, &pos);
    }
}

static void BoxPopupGraphics_DeleteItemIconSprite(BoxPopupGraphics *popupGraphics)
{
    if (popupGraphics->itemIconSprite != NULL) {
        Sprite_Delete(popupGraphics->itemIconSprite);
    }
}
