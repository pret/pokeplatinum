#include "applications/pc_boxes/compare_graphics.h"

#include <nitro.h>
#include <string.h>

#include "generated/pokemon_contest_types.h"

#include "applications/pc_boxes/application_manager.h"
#include "applications/pc_boxes/defs.h"
#include "applications/pc_boxes/graphics.h"
#include "applications/pc_boxes/icon_helper.h"

#include "bg_window.h"
#include "coordinates.h"
#include "font.h"
#include "graphics.h"
#include "heap.h"
#include "inlines.h"
#include "message.h"
#include "narc.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "sprite.h"
#include "string_gf.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"

#include "res/text/bank/box_messages.h"

static void BoxCompareGraphics_DrawSlotHighlight(BoxCompareGraphics *compareGraphics);
static void BoxCompareGraphics_ShowPageLayer(BoxCompareGraphics *compareGraphics);
static void BoxCompareGraphics_InitWindows(BoxCompareGraphics *compareGraphics);
static void BoxCompareGraphics_RemoveWindows(BoxCompareGraphics *compareGraphics);
static void BoxCompareGraphics_DrawPage(BoxCompareGraphics *compareGraphics);
static void BoxCompareGraphics_ClearPage(BoxCompareGraphics *compareGraphics, int compareMode);
static void BoxCompareGraphics_CreateBattleStatsWindows(BoxCompareGraphics *compareGraphics);
static void BoxCompareGraphics_RemoveBattleStatsWindows(BoxCompareGraphics *compareGraphics);
static void BoxCompareGraphics_DrawContestStats(BoxCompareGraphics *compareGraphics, int compareMonSlot);
static void BoxCompareGraphics_HideContestStats(BoxCompareGraphics *compareGraphics, int compareMonSlot);
static void BoxCompareGraphics_CreateMovesWindows(BoxCompareGraphics *compareGraphics);
static void BoxCompareGraphics_RemoveMovesWindows(BoxCompareGraphics *compareGraphics);
static inline u32 GetCenteredTextX(Window *window, u32 font, const String *string);
static void BoxCompareGraphics_DrawLabels(BoxCompareGraphics *compareGraphics);
static void BoxCompareGraphics_ClearLabels(BoxCompareGraphics *compareGraphics);
static void BoxCompareGraphics_DrawBattleStats(BoxCompareGraphics *compareGraphics, int compareMonSlot);
static void BoxCompareGraphics_DrawMoves(BoxCompareGraphics *compareGraphics, int compareMonSlot);
static void BoxCompareGraphics_CreateSprites(BoxCompareGraphics *compareGraphics, NARC *narc);
static void BoxCompareGraphics_CreateMonIconSprites(BoxCompareGraphics *compareGraphics, u32 vramOffset);
static void BoxCompareGraphics_DeleteSprites(BoxCompareGraphics *compareGraphics);
static void BoxCompareGraphics_UpdateMonIcon(BoxCompareGraphics *compareGraphics);
static void BoxCompareGraphics_DrawMonName(BoxCompareGraphics *compareGraphics, int compareMonSlot);
static void BoxCompareGraphics_CompareButtonTask(SysTask *unused, void *param);

BOOL BoxCompareGraphics_Init(BoxCompareGraphics **outCompareGraphics, BoxGraphics *boxGraphics, const BoxApplication *boxApp, BgConfig *bgConfig, SpriteList *spriteList, MessageLoader *msgLoader, NARC *narc)
{
    if (BoxApp_GetBoxMode(boxApp) != PC_MODE_COMPARE) {
        *outCompareGraphics = NULL;
        return TRUE;
    } else {
        BoxCompareGraphics *compareGraphics = Heap_Alloc(HEAP_ID_BOX_GRAPHICS, sizeof(BoxCompareGraphics));

        if (compareGraphics != NULL) {
            compareGraphics->boxGraphics = boxGraphics;
            compareGraphics->boxApp = boxApp;
            compareGraphics->bgConfig = bgConfig;
            compareGraphics->spriteList = spriteList;
            compareGraphics->monIconHelper = BoxGraphics_GetMonIconHelper(boxGraphics);
            compareGraphics->slot0HighlightScreenBuffer = Graphics_GetScrnDataFromOpenNARC(narc, 7, TRUE, &compareGraphics->slot0HighlightScreenData, HEAP_ID_BOX_GRAPHICS);
            compareGraphics->slot1HighlightScreenBuffer = Graphics_GetScrnDataFromOpenNARC(narc, 8, TRUE, &compareGraphics->slot1HighlightScreenData, HEAP_ID_BOX_GRAPHICS);
            compareGraphics->boxMessagesLoader = msgLoader;
            compareGraphics->moveNamesLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_MOVE_NAMES, HEAP_ID_BOX_GRAPHICS);
            compareGraphics->boxDisplayText = String_Init(32, HEAP_ID_BOX_GRAPHICS);
            compareGraphics->compareButtonTask = NULL;
            *outCompareGraphics = compareGraphics;
            return TRUE;
        }

        return FALSE;
    }
}

void BoxCompareGraphics_Free(BoxCompareGraphics *compareGraphics)
{
    if (compareGraphics != NULL) {
        Heap_Free(compareGraphics->slot0HighlightScreenBuffer);
        Heap_Free(compareGraphics->slot1HighlightScreenBuffer);
        MessageLoader_Free(compareGraphics->moveNamesLoader);
        BoxCompareGraphics_DeleteSprites(compareGraphics);
        BoxCompareGraphics_RemoveWindows(compareGraphics);
        String_Free(compareGraphics->boxDisplayText);
        Heap_Free(compareGraphics);
    }
}

void BoxCompareGraphics_LoadGraphics(BoxCompareGraphics *compareGraphics, NARC *narc)
{
    if (compareGraphics != NULL) {
        BoxCompareGraphics_DrawSlotHighlight(compareGraphics);

        Graphics_LoadTilesToBgLayerFromOpenNARC(narc, 132, compareGraphics->bgConfig, BG_LAYER_SUB_1, 0, 0, TRUE, HEAP_ID_BOX_GRAPHICS);
        Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 129, compareGraphics->bgConfig, BG_LAYER_SUB_1, 0, 0, TRUE, HEAP_ID_BOX_GRAPHICS);
        Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 130, compareGraphics->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, HEAP_ID_BOX_GRAPHICS);
        Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 131, compareGraphics->bgConfig, BG_LAYER_SUB_3, 0, 0, TRUE, HEAP_ID_BOX_GRAPHICS);
        Graphics_LoadPaletteFromOpenNARC(narc, 133, PAL_LOAD_SUB_BG, 0, 4 * PALETTE_SIZE_BYTES, HEAP_ID_BOX_GRAPHICS);
        Graphics_LoadPalette(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, PokeIconPalettesFileIndex(), PAL_LOAD_SUB_OBJ, PLTT_OFFSET(4), 4 * PALETTE_SIZE_BYTES, HEAP_ID_BOX_GRAPHICS);
        Bg_ClearTilesRange(BG_LAYER_SUB_0, TILE_SIZE_4BPP, 0, HEAP_ID_BOX_GRAPHICS);
        Bg_FillTilemapRect(compareGraphics->bgConfig, BG_LAYER_SUB_0, 0, 0, 0, 32, 32, TILEMAP_FILL_VAL_INCLUDES_PALETTE);

        BoxCompareGraphics_ShowPageLayer(compareGraphics);
        BoxCompareGraphics_InitWindows(compareGraphics);

        compareGraphics->shownCompareMode = BoxApp_GetCompareMode(compareGraphics->boxApp);

        Bg_CopyTilemapBufferToVRAM(compareGraphics->bgConfig, BG_LAYER_SUB_0);
        BoxCompareGraphics_CreateSprites(compareGraphics, narc);
    }
}

void BoxCompareGraphics_UpdateSlotTabs(BoxCompareGraphics *compareGraphics, BOOL isSwitching)
{
    if (compareGraphics != NULL) {
        int slot = BoxApp_GetCompareMonSlot(compareGraphics->boxApp);

        if (isSwitching) {
            Sprite_SetAnim(compareGraphics->slotTabSprites[slot ^ 1], 2);
            Sprite_SetAnim(compareGraphics->slotTabSprites[slot], 0);
        } else {
            Sprite_SetAnim(compareGraphics->slotTabSprites[slot ^ 1], 1);
            Sprite_SetAnim(compareGraphics->slotTabSprites[slot], 0);
        }

        BoxCompareGraphics_DrawSlotHighlight(compareGraphics);
    }
}

void BoxCompareGraphics_RefreshSelectedSlot(BoxCompareGraphics *compareGraphics)
{
    BoxCompareGraphics_UpdateMonIcon(compareGraphics);

    if (compareGraphics != NULL) {
        int compareMonSlot = BoxApp_GetCompareMonSlot(compareGraphics->boxApp);

        BoxCompareGraphics_DrawMonName(compareGraphics, compareMonSlot);

        switch (BoxApp_GetCompareMode(compareGraphics->boxApp)) {
        case COMPARE_BATTLE_STATS:
            BoxCompareGraphics_DrawBattleStats(compareGraphics, compareMonSlot);
            break;
        case COMPARE_CONTEST_STATS:
            BoxCompareGraphics_DrawContestStats(compareGraphics, compareMonSlot);
            break;
        case COMPARE_MOVES:
            BoxCompareGraphics_DrawMoves(compareGraphics, compareMonSlot);
            break;
        }
    }
}

BOOL BoxCompareGraphics_ReturnTrue(BoxCompareGraphics *compareGraphics)
{
    return TRUE;
}

void BoxCompareGraphics_StartPageChange(BoxCompareGraphics *compareGraphics)
{
    if (compareGraphics != NULL) {
        compareGraphics->modeTransitionState = COMPARE_PAGE_CHANGE_STATE_SHOW_LAYER;
        BoxCompareGraphics_ClearPage(compareGraphics, compareGraphics->shownCompareMode);
        Bg_CopyTilemapBufferToVRAM(compareGraphics->bgConfig, BG_LAYER_SUB_0);
    }
}

BOOL BoxCompareGraphics_IsPageChangeDone(BoxCompareGraphics *compareGraphics)
{
    if (compareGraphics != NULL) {
        switch (compareGraphics->modeTransitionState) {
        case COMPARE_PAGE_CHANGE_STATE_SHOW_LAYER:
            BoxCompareGraphics_ShowPageLayer(compareGraphics);
            compareGraphics->modeTransitionState++;
            break;
        case COMPARE_PAGE_CHANGE_STATE_DRAW_PAGE:
            BoxCompareGraphics_DrawLabels(compareGraphics);
            BoxCompareGraphics_DrawPage(compareGraphics);
            Bg_CopyTilemapBufferToVRAM(compareGraphics->bgConfig, BG_LAYER_SUB_0);
            compareGraphics->modeTransitionState++;
            break;
        case COMPARE_PAGE_CHANGE_STATE_DONE:
            return TRUE;
        }
        return FALSE;
    } else {
        return TRUE;
    }
}

static void BoxCompareGraphics_DrawSlotHighlight(BoxCompareGraphics *compareGraphics)
{
    NNSG2dScreenData *screenData = (BoxApp_GetCompareMonSlot(compareGraphics->boxApp) == 0) ? compareGraphics->slot0HighlightScreenData : compareGraphics->slot1HighlightScreenData;

    Bg_CopyToTilemapRect(compareGraphics->bgConfig, BG_LAYER_MAIN_2, 0, 0, 6, 32, screenData->rawData, 0, 0, 32, 32);
    Bg_CopyToTilemapRect(compareGraphics->bgConfig, BG_LAYER_MAIN_2, 26, 0, 6, 32, screenData->rawData, 26, 0, 32, 32);
    Bg_CopyTilemapBufferToVRAM(compareGraphics->bgConfig, BG_LAYER_MAIN_2);
}

static void BoxCompareGraphics_ShowPageLayer(BoxCompareGraphics *compareGraphics)
{
    switch (BoxApp_GetCompareMode(compareGraphics->boxApp)) {
    case COMPARE_BATTLE_STATS:
        Bg_ToggleLayer(BG_LAYER_SUB_1, TRUE);
        Bg_ToggleLayer(BG_LAYER_SUB_2, FALSE);
        Bg_ToggleLayer(BG_LAYER_SUB_3, FALSE);
        break;
    case COMPARE_CONTEST_STATS:
        Bg_ToggleLayer(BG_LAYER_SUB_2, TRUE);
        Bg_ToggleLayer(BG_LAYER_SUB_1, FALSE);
        Bg_ToggleLayer(BG_LAYER_SUB_3, FALSE);
        break;
    case COMPARE_MOVES:
        Bg_ToggleLayer(BG_LAYER_SUB_3, TRUE);
        Bg_ToggleLayer(BG_LAYER_SUB_1, FALSE);
        Bg_ToggleLayer(BG_LAYER_SUB_2, FALSE);
        break;
    }
}

static void BoxCompareGraphics_InitWindows(BoxCompareGraphics *compareGraphics)
{
    static const WindowTemplate windowTemplate[] = {
        [COMPARE_WINDOW_SLOT_0_NAME] = {
            .bgLayer = BG_LAYER_SUB_0,
            .tilemapLeft = 3,
            .tilemapTop = 1,
            .width = 9,
            .height = 2,
            .palette = 0,
            .baseTile = 1,
        },
        [COMPARE_WINDOW_SLOT_1_NAME] = {
            .bgLayer = BG_LAYER_SUB_0,
            .tilemapLeft = 20,
            .tilemapTop = 1,
            .width = 9,
            .height = 2,
            .palette = 1,
            .baseTile = 19,
        },
        [COMPARE_WINDOW_LABELS] = {
            .bgLayer = BG_LAYER_SUB_0,
            .tilemapLeft = 13,
            .tilemapTop = 4,
            .width = 6,
            .height = 16,
            .palette = 0,
            .baseTile = 37,
        },
    };
    int i;

    for (i = 0; i < COMPARE_WINDOW_COUNT; i++) {
        compareGraphics->windows[i].pixels = NULL;
    }

    for (i = 0; i < NELEMS(windowTemplate); i++) {
        Window_AddFromTemplate(compareGraphics->bgConfig, &compareGraphics->windows[COMPARE_WINDOW_SLOT_0_NAME + i], &windowTemplate[i]);
        Window_PutToTilemap(&compareGraphics->windows[COMPARE_WINDOW_SLOT_0_NAME + i]);
    }

    BoxCompareGraphics_DrawLabels(compareGraphics);
    Window_FillTilemap(&compareGraphics->windows[COMPARE_WINDOW_SLOT_0_NAME], 0);
    Window_FillTilemap(&compareGraphics->windows[COMPARE_WINDOW_SLOT_1_NAME], 0);

    for (i = 0; i < NELEMS(windowTemplate); i++) {
        Window_LoadTiles(&compareGraphics->windows[COMPARE_WINDOW_SLOT_0_NAME + i]);
    }

    BoxCompareGraphics_DrawPage(compareGraphics);
}

static void BoxCompareGraphics_RemoveWindows(BoxCompareGraphics *compareGraphics)
{
    for (int i = 0; i < COMPARE_WINDOW_COUNT; i++) {
        if (compareGraphics->windows[i].pixels != NULL) {
            Window_Remove(&compareGraphics->windows[i]);
        }
    }
}

static void BoxCompareGraphics_DrawPage(BoxCompareGraphics *compareGraphics)
{
    int compareMode = BoxApp_GetCompareMode(compareGraphics->boxApp);

    switch (BoxApp_GetCompareMode(compareGraphics->boxApp)) {
    case COMPARE_BATTLE_STATS:
        BoxCompareGraphics_CreateBattleStatsWindows(compareGraphics);
        BoxCompareGraphics_DrawBattleStats(compareGraphics, 0);
        BoxCompareGraphics_DrawBattleStats(compareGraphics, 1);
        break;
    case COMPARE_CONTEST_STATS:
        BoxCompareGraphics_DrawContestStats(compareGraphics, 0);
        BoxCompareGraphics_DrawContestStats(compareGraphics, 1);
        break;
    case COMPARE_MOVES:
        BoxCompareGraphics_CreateMovesWindows(compareGraphics);
        BoxCompareGraphics_DrawMoves(compareGraphics, 0);
        BoxCompareGraphics_DrawMoves(compareGraphics, 1);
        break;
    }

    compareGraphics->shownCompareMode = compareMode;
}

static void BoxCompareGraphics_ClearPage(BoxCompareGraphics *compareGraphics, int compareMode)
{
    switch (compareMode) {
    case COMPARE_BATTLE_STATS:
        BoxCompareGraphics_RemoveBattleStatsWindows(compareGraphics);
        BoxCompareGraphics_ClearLabels(compareGraphics);
        break;
    case COMPARE_CONTEST_STATS:
        BoxCompareGraphics_HideContestStats(compareGraphics, 0);
        BoxCompareGraphics_HideContestStats(compareGraphics, 1);
        break;
    case COMPARE_MOVES:
        BoxCompareGraphics_RemoveMovesWindows(compareGraphics);
        BoxCompareGraphics_ClearLabels(compareGraphics);
        break;
    }
}

static void BoxCompareGraphics_CreateBattleStatsWindows(BoxCompareGraphics *compareGraphics)
{
    static const WindowTemplate windowTemplate[NUM_COMPARE_SLOTS] = {
        {
            .bgLayer = BG_LAYER_SUB_0,
            .tilemapLeft = 3,
            .tilemapTop = 4,
            .width = 9,
            .height = 16,
            .palette = 0,
            .baseTile = 133,
        },
        {
            .bgLayer = BG_LAYER_SUB_0,
            .tilemapLeft = 20,
            .tilemapTop = 4,
            .width = 9,
            .height = 16,
            .palette = 1,
            .baseTile = 277,
        },
    };

    for (int i = 0; i < NELEMS(windowTemplate); i++) {
        Window_AddFromTemplate(compareGraphics->bgConfig, &compareGraphics->windows[COMPARE_WINDOW_SLOT_0_STATS + i], &windowTemplate[i]);
        Window_PutToTilemap(&compareGraphics->windows[COMPARE_WINDOW_SLOT_0_STATS + i]);
        Window_FillTilemap(&compareGraphics->windows[COMPARE_WINDOW_SLOT_0_STATS + i], 0);
    }
}

static void BoxCompareGraphics_RemoveBattleStatsWindows(BoxCompareGraphics *compareGraphics)
{
    for (int i = COMPARE_WINDOW_SLOT_0_STATS; i <= COMPARE_WINDOW_SLOT_1_STATS; i++) {
        if (compareGraphics->windows[i].pixels != NULL) {
            Window_ClearTilemap(&compareGraphics->windows[i]);
            Window_Remove(&compareGraphics->windows[i]);
            compareGraphics->windows[i].pixels = NULL;
        }
    }
}

static void BoxCompareGraphics_DrawContestStats(BoxCompareGraphics *compareGraphics, int compareMonSlot)
{
#define AXIS_START_X(cornerX) ((CONTEST_CHART_CENTER_X << FX32_SHIFT) + (((((cornerX) - CONTEST_CHART_CENTER_X) << FX32_SHIFT) * 10) / 100))
#define AXIS_START_Y(cornerY) ((CONTEST_CHART_CENTER_Y << FX32_SHIFT) + (((((cornerY) - CONTEST_CHART_CENTER_Y) << FX32_SHIFT) * 10) / 100))

    static const struct {
        fx32 startX;
        fx32 startY;
        fx32 endX;
        fx32 endY;
    } axes[] = {
        { AXIS_START_X(128), AXIS_START_Y(438), 128 << FX32_SHIFT, 438 << FX32_SHIFT },
        { AXIS_START_X(172), AXIS_START_Y(470), 172 << FX32_SHIFT, 470 << FX32_SHIFT },
        { AXIS_START_X(155), AXIS_START_Y(520), 155 << FX32_SHIFT, 520 << FX32_SHIFT },
        { AXIS_START_X(100), AXIS_START_Y(520), 100 << FX32_SHIFT, 520 << FX32_SHIFT },
        { AXIS_START_X(84), AXIS_START_Y(470), 84 << FX32_SHIFT, 470 << FX32_SHIFT },
    };

    const PCCompareMon *compareMon;
    BOOL isMonUnderCursor, isSelectedSlot, hasMon;

    compareMon = BoxApp_GetCompareMonFrom(compareGraphics->boxApp, compareMonSlot);
    isMonUnderCursor = BoxApp_IsMonUnderCursor(compareGraphics->boxApp);
    isSelectedSlot = BoxApp_GetCompareMonSlot(compareGraphics->boxApp) == compareMonSlot;
    hasMon = BoxApp_CompareSlotHasMon(compareGraphics->boxApp, compareMonSlot);

    if (((isMonUnderCursor == TRUE && isSelectedSlot == TRUE) || (isSelectedSlot == FALSE && hasMon == TRUE)) && compareMon->isEgg == FALSE) {
        int i;
        VecFx32 pos;
        const u16 *contestStat = &compareMon->cool;

        pos.z = 0;

        for (i = 0; i < CONTEST_TYPE_MAX; i++) {
            pos.x = axes[i].startX + (((axes[i].endX - axes[i].startX) / 256) * (int)(*contestStat));
            pos.y = axes[i].startY + (((axes[i].endY - axes[i].startY) / 256) * (int)(*contestStat));
            Sprite_SetPosition(compareGraphics->contestStatSprites[compareMonSlot][i], &pos);
            BoxGraphics_SetSpritePriority(compareGraphics->contestStatSprites[compareMonSlot][i], 0);
            BoxGraphics_SetSpritePriority(compareGraphics->contestStatSprites[compareMonSlot ^ 1][i], 1);
            Sprite_SetDrawFlag(compareGraphics->contestStatSprites[compareMonSlot][i], TRUE);
            contestStat++;
        }
    } else {
        BoxCompareGraphics_HideContestStats(compareGraphics, compareMonSlot);
    }

#undef AXIS_START_X
#undef AXIS_START_Y
}

static void BoxCompareGraphics_HideContestStats(BoxCompareGraphics *compareGraphics, int compareMonSlot)
{
    for (int i = 0; i < CONTEST_TYPE_MAX; i++) {
        Sprite_SetDrawFlag(compareGraphics->contestStatSprites[compareMonSlot][i], FALSE);
    }
}

static void BoxCompareGraphics_CreateMovesWindows(BoxCompareGraphics *compareGraphics)
{
    static const WindowTemplate windowTemplate[NUM_COMPARE_SLOTS] = {
        {
            .bgLayer = BG_LAYER_SUB_0,
            .tilemapLeft = 1,
            .tilemapTop = 4,
            .width = 11,
            .height = 12,
            .palette = 0,
            .baseTile = 133,
        },
        {
            .bgLayer = BG_LAYER_SUB_0,
            .tilemapLeft = 20,
            .tilemapTop = 4,
            .width = 11,
            .height = 12,
            .palette = 1,
            .baseTile = 265,
        },
    };
    for (int i = 0; i < NELEMS(windowTemplate); i++) {
        Window_AddFromTemplate(compareGraphics->bgConfig, &compareGraphics->windows[COMPARE_WINDOW_SLOT_0_MOVES + i], &windowTemplate[i]);
        Window_PutToTilemap(&compareGraphics->windows[COMPARE_WINDOW_SLOT_0_MOVES + i]);
        Window_FillTilemap(&compareGraphics->windows[COMPARE_WINDOW_SLOT_0_MOVES + i], 0);
    }
}

static void BoxCompareGraphics_RemoveMovesWindows(BoxCompareGraphics *compareGraphics)
{
    for (int i = COMPARE_WINDOW_SLOT_0_MOVES; i <= COMPARE_WINDOW_SLOT_1_MOVES; i++) {
        if (compareGraphics->windows[i].pixels != NULL) {
            Window_ClearTilemap(&compareGraphics->windows[i]);
            Window_Remove(&compareGraphics->windows[i]);
            compareGraphics->windows[i].pixels = NULL;
        }
    }
}

static inline u32 GetCenteredTextX(Window *window, u32 font, const String *string)
{
    return (window->width * TILE_WIDTH_PIXELS - Font_CalcStringWidth(font, string, 0)) / 2;
}

static void BoxCompareGraphics_DrawLabels(BoxCompareGraphics *compareGraphics)
{
    static const u16 compareMessages[] = {
        BoxText_Nature,
        BoxText_Level,
        BoxText_HP,
        BoxText_Attack,
        BoxText_Defense,
        BoxText_SpecialAttack,
        BoxText_SpecialDefense,
        BoxText_Speed,
    };
    Window *window = &compareGraphics->windows[COMPARE_WINDOW_LABELS];

    Window_FillTilemap(window, 0);

    switch (BoxApp_GetCompareMode(compareGraphics->boxApp)) {
    case COMPARE_BATTLE_STATS:
        for (int i = 0; i < NELEMS(compareMessages); i++) {
            MessageLoader_GetString(compareGraphics->boxMessagesLoader, compareMessages[i], compareGraphics->boxDisplayText);
            Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, compareGraphics->boxDisplayText, GetCenteredTextX(window, 0, compareGraphics->boxDisplayText), 0 + 16 * i, TEXT_SPEED_NO_TRANSFER, BOX_TEXT_COLOR_COMPARE, NULL);
        }
        break;
    case COMPARE_MOVES:
        MessageLoader_GetString(compareGraphics->boxMessagesLoader, BoxText_Move, compareGraphics->boxDisplayText);
        Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, compareGraphics->boxDisplayText, GetCenteredTextX(window, 0, compareGraphics->boxDisplayText), 0, TEXT_SPEED_NO_TRANSFER, BOX_TEXT_COLOR_COMPARE, NULL);
        break;
    }

    Window_LoadTiles(window);
}

static void BoxCompareGraphics_ClearLabels(BoxCompareGraphics *compareGraphics)
{
    Window *window = &compareGraphics->windows[COMPARE_WINDOW_LABELS];

    Window_FillTilemap(window, 0);
    Window_LoadTiles(window);
}

static void BoxCompareGraphics_DrawBattleStats(BoxCompareGraphics *compareGraphics, int compareMonSlot)
{
    Window *window;
    const PCCompareMon *compareMon;
    BOOL isMonUnderCursor, isSelectedSlot, hasMon;

    window = &compareGraphics->windows[COMPARE_WINDOW_SLOT_0_STATS + compareMonSlot];
    compareMon = BoxApp_GetCompareMonFrom(compareGraphics->boxApp, compareMonSlot);
    isMonUnderCursor = BoxApp_IsMonUnderCursor(compareGraphics->boxApp);
    isSelectedSlot = BoxApp_GetCompareMonSlot(compareGraphics->boxApp) == compareMonSlot;
    hasMon = BoxApp_CompareSlotHasMon(compareGraphics->boxApp, compareMonSlot);

    Window_FillTilemap(window, 0);

    if ((isMonUnderCursor == TRUE && isSelectedSlot == TRUE) || (isSelectedSlot == FALSE && hasMon == TRUE)) {
        if (compareMon->isEgg == FALSE) {
            // stats points at the position of the level field in PCCompareMon and the fields after level (the six stats) can be cycled through, this relies on struct layout.
            const u16 *stats = &compareMon->level;

            Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, compareMon->nature, GetCenteredTextX(window, 0, compareMon->nature), 0, TEXT_SPEED_NO_TRANSFER, BOX_TEXT_COLOR_COMPARE, NULL);

            for (int i = 0; i < COMPARE_NUM_LEVEL_AND_STATS; i++) {
                String_FormatInt(compareGraphics->boxDisplayText, stats[i], 3, PADDING_MODE_NONE, CHARSET_MODE_EN);
                Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, compareGraphics->boxDisplayText, GetCenteredTextX(window, 0, compareGraphics->boxDisplayText), (1 + i) * 16, TEXT_SPEED_NO_TRANSFER, BOX_TEXT_COLOR_COMPARE, NULL);
            }
        } else {
            MessageLoader_GetString(compareGraphics->boxMessagesLoader, BoxText_QuestionMarks, compareGraphics->boxDisplayText);

            for (int i = 0; i < COMPARE_NUM_STATS_ROWS; i++) {
                Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, compareGraphics->boxDisplayText, GetCenteredTextX(window, 0, compareGraphics->boxDisplayText), i * 16, TEXT_SPEED_NO_TRANSFER, BOX_TEXT_COLOR_COMPARE, NULL);
            }
        }
    }

    Window_LoadTiles(window);
}

static void BoxCompareGraphics_DrawMoves(BoxCompareGraphics *compareGraphics, int compareMonSlot)
{
    Window *window;
    const PCCompareMon *compareMon;
    BOOL isMonUnderCursor, isSelectedSlot, hasMon;

    window = &compareGraphics->windows[COMPARE_WINDOW_SLOT_0_MOVES + compareMonSlot];
    compareMon = BoxApp_GetCompareMonFrom(compareGraphics->boxApp, compareMonSlot);
    isMonUnderCursor = BoxApp_IsMonUnderCursor(compareGraphics->boxApp);
    isSelectedSlot = BoxApp_GetCompareMonSlot(compareGraphics->boxApp) == compareMonSlot;
    hasMon = BoxApp_CompareSlotHasMon(compareGraphics->boxApp, compareMonSlot);

    Window_FillTilemap(window, 0);

    if ((isMonUnderCursor == TRUE && isSelectedSlot == TRUE) || (isSelectedSlot == FALSE && hasMon == TRUE)) {
        int i;

        if (compareMon->isEgg == FALSE) {
            for (i = 0; i < LEARNED_MOVES_MAX; i++) {
                if (compareMon->moves[i]) {
                    MessageLoader_GetString(compareGraphics->moveNamesLoader, compareMon->moves[i], compareGraphics->boxDisplayText);
                    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, compareGraphics->boxDisplayText, GetCenteredTextX(window, 0, compareGraphics->boxDisplayText), 4 + 24 * i, TEXT_SPEED_NO_TRANSFER, BOX_TEXT_COLOR_COMPARE, NULL);
                }
            }
        } else {
            MessageLoader_GetString(compareGraphics->boxMessagesLoader, BoxText_QuestionMarks, compareGraphics->boxDisplayText);

            for (i = 0; i < LEARNED_MOVES_MAX; i++) {
                Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, compareGraphics->boxDisplayText, GetCenteredTextX(window, 0, compareGraphics->boxDisplayText), 4 + 24 * i, TEXT_SPEED_NO_TRANSFER, BOX_TEXT_COLOR_COMPARE, NULL);
            }
        }
    }

    Window_LoadTiles(window);
}

static void BoxCompareGraphics_CreateSprites(BoxCompareGraphics *compareGraphics, NARC *narc)
{
    static const CoordinatesS16 tabPositions[] = {
        { 0, 568 },
        { 256, 568 },
    };
    NNSG2dImageProxy imageProxy;
    SpriteResourcesHeader srHeader;
    u32 tilesSize, slot, i;

    compareGraphics->cellBankBuffer = Graphics_GetCellBankFromOpenNARC(narc, 135, TRUE, &compareGraphics->cellBank, HEAP_ID_BOX_GRAPHICS);
    compareGraphics->animBankBuffer = Graphics_GetAnimBankFromOpenNARC(narc, 136, TRUE, &compareGraphics->animBank, HEAP_ID_BOX_GRAPHICS);

    Graphics_LoadPaletteFromOpenNARC(narc, 137, PAL_LOAD_SUB_OBJ, 0, 3 * PALETTE_SIZE_BYTES, HEAP_ID_BOX_GRAPHICS);
    NNS_G2dInitImageProxy(&imageProxy);
    tilesSize = Graphics_LoadImageMappingFromOpenNARC(narc, 134, TRUE, IMAGE_MAPPING_LAYOUT_1D, 0, NNS_G2D_VRAM_TYPE_2DSUB, 0, HEAP_ID_BOX_GRAPHICS, &imageProxy);
    SpriteResourcesHeader_InitFromProxies(&srHeader, &imageProxy, BoxGraphics_GetImagePaletteProxy(compareGraphics->boxGraphics), compareGraphics->cellBank, compareGraphics->animBank, 1);

    for (slot = 0; slot < NUM_COMPARE_SLOTS; slot++) {
        compareGraphics->slotTabSprites[slot] = BoxGraphics_CreateSprite(compareGraphics->spriteList, &srHeader, tabPositions[slot].x, tabPositions[slot].y, 0, NNS_G2D_VRAM_TYPE_2DSUB);

        Sprite_SetExplicitPalette(compareGraphics->slotTabSprites[slot], slot);
        Sprite_SetAnim(compareGraphics->slotTabSprites[slot], 0);

        for (i = 0; i < CONTEST_TYPE_MAX; i++) {
            compareGraphics->contestStatSprites[slot][i] = BoxGraphics_CreateSprite(compareGraphics->spriteList, &srHeader, 0, 0, 0, NNS_G2D_VRAM_TYPE_2DSUB);
            Sprite_SetAnim(compareGraphics->contestStatSprites[slot][i], 5 + slot);
            Sprite_SetExplicitPalette(compareGraphics->contestStatSprites[slot][i], slot);
            Sprite_SetDrawFlag(compareGraphics->contestStatSprites[slot][i], FALSE);
        }
    }

    Sprite_SetFlipMode(compareGraphics->slotTabSprites[1], NNS_G2D_RENDERERFLIP_H);
    compareGraphics->compareButtonSprite = BoxGraphics_CreateSprite(compareGraphics->spriteList, &srHeader, 128, 176 + 384, 0, NNS_G2D_VRAM_TYPE_2DSUB);
    Sprite_SetAnim(compareGraphics->compareButtonSprite, 3);
    Sprite_SetExplicitPalette(compareGraphics->compareButtonSprite, 2);
    compareGraphics->compareButtonTask = SysTask_Start(BoxCompareGraphics_CompareButtonTask, compareGraphics, 1);

    BoxCompareGraphics_CreateMonIconSprites(compareGraphics, tilesSize);
}

static void BoxCompareGraphics_CreateMonIconSprites(BoxCompareGraphics *compareGraphics, u32 vramOffset)
{
    static const CoordinatesS16 tabPositions[] = {
        { 112, 394 },
        { 144, 394 },
    };
    NNSG2dImageProxy imageProxy;
    SpriteResourcesHeader srHeader;

    SpriteResourcesHeader_InitFromProxies(&srHeader, &imageProxy, BoxGraphics_GetImagePaletteProxy(compareGraphics->boxGraphics), MonIconHelper_GetIconCellBank(compareGraphics->monIconHelper), MonIconHelper_GetIconAnimBank(compareGraphics->monIconHelper), 1);

    for (int i = 0; i < NUM_COMPARE_SLOTS; i++) {
        compareGraphics->monIconVramOffsets[i] = vramOffset + i * MON_ICON_TILE_DATA_SIZE;
        NNS_G2dInitImageProxy(&imageProxy);
        NNS_G2dSetImageLocation(&imageProxy, NNS_G2D_VRAM_TYPE_2DSUB, compareGraphics->monIconVramOffsets[i]);
        imageProxy.attr.mappingType = GXS_GetOBJVRamModeChar();
        compareGraphics->monIconSprites[i] = BoxGraphics_CreateSprite(compareGraphics->spriteList, &srHeader, tabPositions[i].x, tabPositions[i].y, 1 - i, NNS_G2D_VRAM_TYPE_2DSUB);
        Sprite_SetDrawFlag(compareGraphics->monIconSprites[i], FALSE);
    }
}

static void BoxCompareGraphics_DeleteSprites(BoxCompareGraphics *compareGraphics)
{
    if (compareGraphics->compareButtonTask != NULL) {
        SysTask_Done(compareGraphics->compareButtonTask);
    }

    for (int i = 0; i < NUM_COMPARE_SLOTS; i++) {
        Sprite_Delete(compareGraphics->monIconSprites[i]);
        Sprite_Delete(compareGraphics->slotTabSprites[i]);

        for (int j = 0; j < CONTEST_TYPE_MAX; j++) {
            Sprite_Delete(compareGraphics->contestStatSprites[i][j]);
        }
    }

    Sprite_Delete(compareGraphics->compareButtonSprite);
    Heap_Free(compareGraphics->cellBankBuffer);
    Heap_Free(compareGraphics->animBankBuffer);
}

static void BoxCompareGraphics_UpdateMonIcon(BoxCompareGraphics *compareGraphics)
{
    int compareMonSlot = BoxApp_GetCompareMonSlot(compareGraphics->boxApp);
    const PCCompareMon *compareMon = BoxApp_GetCompareMonFrom(compareGraphics->boxApp, compareMonSlot);
    Sprite *sprite = compareGraphics->monIconSprites[compareMonSlot];
    BoxPokemon *boxMon = compareMon->mon;
    NNSG2dCharacterData *charData;

    if (BoxApp_IsMonUnderCursor(compareGraphics->boxApp)) {
        u32 palette = 4 + PokeIconPaletteIndex(compareMon->species, compareMon->form, compareMon->isEgg);

        MonIconHelper_ReadIconData(compareGraphics->monIconHelper, compareGraphics->iconCharBuffer, BoxPokemon_IconSpriteIndex(boxMon), sizeof(compareGraphics->iconCharBuffer));

        NNS_G2dGetUnpackedCharacterData(compareGraphics->iconCharBuffer, &charData);
        DC_FlushRange(charData->pRawData, MON_ICON_TILE_DATA_SIZE);
        GXS_LoadOBJ(charData->pRawData, compareGraphics->monIconVramOffsets[compareMonSlot], MON_ICON_TILE_DATA_SIZE);

        Sprite_SetExplicitPalette(sprite, palette);
        Sprite_SetDrawFlag(sprite, TRUE);
    } else {
        Sprite_SetDrawFlag(sprite, FALSE);
    }
}

static void BoxCompareGraphics_DrawMonName(BoxCompareGraphics *compareGraphics, int compareMonSlot)
{
    Window *window;

    compareMonSlot = BoxApp_GetCompareMonSlot(compareGraphics->boxApp);
    window = &compareGraphics->windows[COMPARE_WINDOW_SLOT_0_NAME + compareMonSlot];

    Window_FillTilemap(window, 0);

    if (BoxApp_IsMonUnderCursor(compareGraphics->boxApp)) {
        const PCCompareMon *compareMon = BoxApp_GetCompareMonFrom(compareGraphics->boxApp, compareMonSlot);
        Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, compareMon->monName, GetCenteredTextX(window, 0, compareMon->monName), 0, TEXT_SPEED_NO_TRANSFER, BOX_TEXT_COLOR_COMPARE, NULL);
    }

    Window_LoadTiles(window);
}

static void BoxCompareGraphics_CompareButtonTask(SysTask *unused, void *param)
{
    BoxCompareGraphics *compareGraphics = param;
    BOOL pressedAnimation = BoxApp_IsCompareButtonPressed(compareGraphics->boxApp);

    if (Sprite_GetActiveAnim(compareGraphics->compareButtonSprite) == 3) {
        if (pressedAnimation) {
            Sprite_SetAnim(compareGraphics->compareButtonSprite, 4);
        }
    } else {
        if (pressedAnimation == FALSE) {
            Sprite_SetAnim(compareGraphics->compareButtonSprite, 3);
        }
    }
}
