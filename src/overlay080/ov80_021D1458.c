#include <nitro.h>
#include <string.h>

#include "generated/hidden_locations.h"
#include "generated/map_headers.h"
#include "generated/signpost_types.h"

#include "overlay080/ov80_021D0D80.h"
#include "overlay080/ov80_021D2AF4.h"
#include "overlay080/struct_ov80_021D1478_sub1.h"
#include "overlay080/struct_ov80_021D259C.h"
#include "overlay080/struct_ov80_021D2A08.h"
#include "overlay080/struct_ov80_021D2AF4.h"
#include "overlay080/struct_ov80_021D2C1C.h"
#include "overlay080/struct_ov80_021D2C5C.h"

#include "bg_window.h"
#include "font.h"
#include "heap.h"
#include "map_header_util.h"
#include "map_matrix.h"
#include "message.h"
#include "render_window.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_system.h"
#include "strbuf.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "text.h"
#include "touch_screen.h"

#define TOWN_MAP_RIGHT (1 << 0)
#define TOWN_MAP_LEFT  (1 << 1)
#define TOWN_MAP_DOWN  (1 << 2)
#define TOWN_MAP_UP    (1 << 3)

enum TownMapWindow {
    TOWN_MAP_WINDOW_LOCATION_NAME,
    TOWN_MAP_WINDOW_SIGNPOST_LOCATION_NAME_1,
    TOWN_MAP_WINDOW_SIGNPOST_LOCATION_NAME_2,
    TOWN_MAP_WINDOW_LOCATION_DESCRIPTION,
    TOWN_MAP_WINDOW_BOTTOM_SCREEN_HEADER,
    NUM_TOWN_MAP_WINDOWS,
};

typedef struct {
    int x;
    int y;
    u16 faceDirection;
    u8 index;
    u8 isSet;
    Sprite *sprite;
} TownMapLocationHistoryEntryWithSprite;

typedef struct {
    int numLocationHistoryEntries;
    SysTask *sysTask;
    u16 locationHistoryFrameCount;
    u8 currentShownHistLocationIdx;
    u8 previousShownHistLocationIdx;
    TownMapLocationHistoryEntryWithSprite entries[5];
} TownMapLocationHistory;

typedef struct {
    int unk_00;
    int taskState;
    int taskFrameCount;
    int unused_0C;
    u8 showingZoomedInMap;
    u8 queuedMovement;
    u8 zommedMapMvtDone;
    u8 zoomedMapMvtStage;
    u8 zoomedInMapTransitionStage;
    u8 unk_15_0 : 4;
    u8 currentSignpostType : 4;
    u16 zoomedMapMvtFrame;
    int x;
    int y;
    int hoveredLocationMapHeader;
    int prevLocationMapHeader;
    Window windows[NUM_TOWN_MAP_WINDOWS];
    Window *signpostWindow;
    TownMapScreenScroll unused_7C;
    TownMapScreenScroll zoomedInMapCoords;
    TownMapAppFlyDestinations *flyDestinations;
    TownMapBlock *hoveredBlock;
    TownMapLocationHistory locationHistory;
    Sprite *zoomBtnShockwave;
    Sprite *cursorSprite;
    Sprite *playerSprite;
    SysTask *sysTask;
} TownMapGraphicsManager;

typedef struct {
    u16 x;
    u16 y;
    enum MapHeader header;
} TownMapCoordsToHeader;

typedef struct {
    u8 srcX;
    u8 srcY;
    u8 destX;
    u8 destY;
    u8 width;
    u8 height;
} TilemapRectCopyTemplate;

int TownMapApp_CreateGraphicsMan(TownMapAppData *param0);
int TownMapApp_LoadGraphics(TownMapAppData *param0);
int TownMapApp_HandleInput_Item(TownMapAppData *param0);
int TownMap_HandleInput_Fly(TownMapAppData *param0);
int TownMap_HandleInput_WallMap(TownMapAppData *param0);
int TownMapApp_UpdateBottomScreen(TownMapAppData *param0);
int TownMapApp_UpdateFlyTargetSprites(TownMapAppData *param0);
int TownMapApp_FreeGraphics(TownMapAppData *param0);
int TownMapApp_UpdateDisplayedLocationInfo(TownMapAppData *param0);
int TownMapApp_FadeInBothScreens(TownMapAppData *param0);
int TownMapApp_FadeOutBothScreens(TownMapAppData *param0);
int TownMapApp_FadeInTopScreen(TownMapAppData *param0);
int TownMapApp_FadeOutTopScreen(TownMapAppData *param0);
static void SetHoveredLocation(TownMapAppData *param0, TownMapBlock *param1, enum MapHeader param2);
static void EraseSignpost(TownMapAppData *param0);
static void PrintBottomScreenHeader(TownMapAppData *param0, Window *param1);
static void MakeAppWindows(TownMapAppData *param0);
static void DeleteAppWindows(TownMapAppData *param0);
static void DrawZoomButton(TownMapAppData *param0, u8 param1, u8 param2);
static void LoadMapGraphics(TownMapAppData *param0);
static void ClearBGLayers(TownMapAppData *param0);
static void CreateSprites(TownMapAppData *param0);
static void LoadLocationHistory(TownMapAppData *param0);
static void Task_UpdateShownLocationHistoryIdx(SysTask *param0, void *param1);
static void DeleteLocationHistorySprites(TownMapAppData *param0);
static void HandleInput(TownMapAppData *param0, int param1);
static void LoadMapName(TownMapAppData *param0, int param1, int param2, int param3);
static void PrintLocationName(TownMapAppData *param0, Window *param1, int param2, int param3, int param4);
static void PrintLocationDescription(TownMapAppData *param0, Window *param1, TownMapBlock *param2);
static void UpdateBottomScreenText(TownMapAppData *param0);
static void UpdateHoveredLocation(TownMapAppData *param0);
static void DoZoomedMapMvt(TownMapAppData *param0);
static void MoveZoomedInMap(TownMapAppData *param0, int param1, int param2);
static void SwitchBottomScreen(TownMapAppData *param0, int param1);
static void Task_SwitchBottomScreenToZoomedMap(SysTask *param0, void *param1);
static void Task_SwitchBottomScreenToZoomButton(SysTask *param0, void *param1);
static BOOL CanFlyToHoveredLocation(TownMapAppData *param0);

BOOL TownMapApp_CreateGraphicsMan(TownMapAppData *param0)
{
    param0->graphicsMan = Heap_Alloc(param0->heapID, sizeof(TownMapGraphicsManager));

    memset(param0->graphicsMan, 0, sizeof(TownMapGraphicsManager));

    return TRUE;
}

BOOL TownMapApp_FreeGraphics(TownMapAppData *param0)
{
    TownMapGraphicsManager *v0 = param0->graphicsMan;

    ClearBGLayers(param0);

    if (param0->mode != TOWN_MAP_MODE_WALL_MAP) {
        DeleteLocationHistorySprites(param0);
    }

    TownMapApp_FreeFlyDestinations(v0->flyDestinations);
    DeleteAppWindows(param0);
    Heap_Free(v0);

    return TRUE;
}

BOOL TownMapApp_LoadGraphics(TownMapAppData *param0)
{
    TownMapGraphicsManager *v0 = param0->graphicsMan;

    switch (v0->unk_00) {
    case 0:
        v0->x = param0->initialCursorX;
        v0->y = param0->initialCursorY;
        v0->hoveredLocationMapHeader = -1;
        v0->zoomedInMapCoords.x = (v0->x * 16 + 8) - 128 + 16;
        v0->zoomedInMapCoords.y = (v0->y * 16) - 96;

        MoveZoomedInMap(param0, v0->zoomedInMapCoords.x, v0->zoomedInMapCoords.y);
        MakeAppWindows(param0);

        if (param0->mode != TOWN_MAP_MODE_WALL_MAP) {
            LoadLocationHistory(param0);
        }
        break;
    case 1:
        LoadMapGraphics(param0);
        CreateSprites(param0);
        v0->flyDestinations = TownMapApp_LoadFlyDestinations(param0->spriteSystem, param0->spriteMan, param0->context->unlockedFlyDestination, 20, param0->heapID);
        UpdateHoveredLocation(param0);
        UpdateBottomScreenText(param0);
        v0->unk_00 = 0;
        return TRUE;
    }

    v0->unk_00++;
    return FALSE;
}

int TownMapApp_FadeInBothScreens(TownMapAppData *param0)
{
    param0->dummy_14 = 0;

    StartScreenFade(FADE_MAIN_THEN_SUB, FADE_TYPE_UNK_17, FADE_TYPE_UNK_37, COLOR_BLACK, 6, 1, param0->heapID);
    Sound_PlayEffect(SEQ_SE_DP_MEKURU);
    ResetScreenMasterBrightness(DS_SCREEN_MAIN);
    ResetScreenMasterBrightness(DS_SCREEN_SUB);

    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG3, 28, 4);
    return 0;
}

int TownMapApp_FadeOutBothScreens(TownMapAppData *param0)
{
    param0->dummy_14 = 0;
    StartScreenFade(FADE_SUB_THEN_MAIN, FADE_TYPE_UNK_16, FADE_TYPE_UNK_36, COLOR_BLACK, 6, 1, param0->heapID);
    Sound_PlayEffect(SEQ_SE_DP_MEKURU2);
    return 0;
}

int TownMapApp_FadeInTopScreen(TownMapAppData *param0)
{
    param0->dummy_14 = 0;

    StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_UNK_17, FADE_TYPE_UNK_17, COLOR_BLACK, 6, 1, param0->heapID);
    Sound_PlayEffect(SEQ_SE_DP_MEKURU);
    ResetScreenMasterBrightness(DS_SCREEN_MAIN);

    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG3, 28, 4);
    return 0;
}

int TownMapApp_FadeOutTopScreen(TownMapAppData *param0)
{
    param0->dummy_14 = 0;

    StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_UNK_16, FADE_TYPE_UNK_16, COLOR_BLACK, 6, 1, param0->heapID);
    Sound_PlayEffect(SEQ_SE_DP_MEKURU2);

    return 0;
}

BOOL TownMapApp_HandleInput_Item(TownMapAppData *param0)
{
    TownMapGraphicsManager *v0 = param0->graphicsMan;

    if ((v0->zoomedInMapTransitionStage <= 1) && gSystem.pressedKeys & PAD_BUTTON_B) {
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        return TRUE;
    }

    if (v0->zoomedInMapTransitionStage > 1) {
        return FALSE;
    }

    HandleInput(param0, gSystem.heldKeys);

    return FALSE;
}

BOOL TownMap_HandleInput_Fly(TownMapAppData *param0)
{
    TownMapGraphicsManager *v0 = param0->graphicsMan;

    if (v0->zoomedInMapTransitionStage <= 1) {
        if (gSystem.pressedKeys & PAD_BUTTON_A) {
            if (CanFlyToHoveredLocation(param0)) {
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                return TRUE;
            }

            return FALSE;
        } else if (gSystem.pressedKeys & PAD_BUTTON_B) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            return TRUE;
        }
    }

    if (v0->zoomedInMapTransitionStage > 1) {
        return FALSE;
    }

    HandleInput(param0, gSystem.heldKeys);
    return FALSE;
}

BOOL TownMap_HandleInput_WallMap(TownMapAppData *param0)
{
    TownMapGraphicsManager *v0 = param0->graphicsMan;

    if (gSystem.pressedKeys & (PAD_BUTTON_B)) {
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        return TRUE;
    }

    HandleInput(param0, gSystem.heldKeys);
    return FALSE;
}

int TownMapApp_UpdateBottomScreen(TownMapAppData *param0)
{
    TownMapGraphicsManager *graphicsMan = param0->graphicsMan;

    if (graphicsMan->zommedMapMvtDone & TRUE) {
        if (graphicsMan->unk_15_0 >= 2) {
            UpdateBottomScreenText(param0);
            graphicsMan->zommedMapMvtDone = 0x0;
            graphicsMan->zoomedMapMvtFrame = 0;
            graphicsMan->unk_15_0 = 0;
        }
    } else if ((graphicsMan->showingZoomedInMap == TRUE) && (graphicsMan->zoomedMapMvtFrame == 1)) {
        SetHoveredLocation(param0, NULL, graphicsMan->hoveredLocationMapHeader);
    }

    DoZoomedMapMvt(param0);
    return 0;
}

int TownMapApp_UpdateFlyTargetSprites(TownMapAppData *param0)
{
    TownMapGraphicsManager *v0 = param0->graphicsMan;

    TownMapApp_BlinkHoveredFlyTarget(v0->flyDestinations, param0->mode);
    return 0;
}

int TownMapApp_UpdateDisplayedLocationInfo(TownMapAppData *param0)
{
    TownMapGraphicsManager *v0 = param0->graphicsMan;
    Window *v1;
    TownMapBlock *v2 = param0->hoveredMapBlock;
    int v3 = param0->hoveredMapHeader;

    if (!param0->locationChanged) {
        return 0;
    }

    param0->locationChanged = FALSE;

    if (v2 == NULL) {
        PrintLocationDescription(param0, &(v0->windows[TOWN_MAP_WINDOW_LOCATION_DESCRIPTION]), NULL);
        EraseSignpost(param0);
        return 0;
    }

    PrintLocationDescription(param0, &(v0->windows[TOWN_MAP_WINDOW_LOCATION_DESCRIPTION]), v2);
    Strbuf_Clear(param0->hoveredMapName);
    LoadMapName(param0, v3, v0->x, v0->y);
    LoadSignpostContentGraphics(param0->bgConfig, BG_LAYER_SUB_0, (((((1023 - (21 * 4)) - (28 * 4)) - (28 * 14)) - (10 * 2)) - 100), (15 - 1), v2->signpostType, v2->signpostNARCMemberIdx, param0->heapID);

    if (v2->signpostType == SIGNPOST_TYPE_MAP || v2->signpostType == SIGNPOST_TYPE_ARROW) {
        v1 = &v0->windows[TOWN_MAP_WINDOW_SIGNPOST_LOCATION_NAME_1];
    } else {
        v1 = &v0->windows[TOWN_MAP_WINDOW_SIGNPOST_LOCATION_NAME_2];
    }

    v0->signpostWindow = v1;
    v0->currentSignpostType = v2->signpostType;

    Window_DrawSignpost(v1, 1, (((((1023 - (21 * 4)) - (28 * 4)) - (28 * 14)) - (10 * 2)) - 100), (15 - 1), v2->signpostType);
    Window_FillTilemap(v1, 15);
    Text_AddPrinterWithParams(v1, FONT_MESSAGE, param0->hoveredMapName, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
    Window_CopyToVRAM(v1);
    Window_CopyToVRAM(&v0->windows[TOWN_MAP_WINDOW_LOCATION_DESCRIPTION]);

    return 0;
}

static int GetTouchedZone(TownMapAppData *param0, BOOL isShowingZoomedInMap)
{
    int pressedRect;
    u16 zoomButtonColorsMask;
    static const TouchScreenRect v2[] = {
        { 0, HW_LCD_HEIGHT - 1, 0, HW_LCD_WIDTH - 1 },
        { 10 * 8, (10 + 7) * 8, 13 * 8, (13 + 6) * 8 },
        { TOUCHSCREEN_TABLE_TERMINATOR, 0, 0, 0 }
    };

    pressedRect = TouchScreen_CheckRectanglePressed(&(v2[1 - isShowingZoomedInMap]));

    if ((pressedRect == TOUCHSCREEN_INPUT_NONE) || (isShowingZoomedInMap == TRUE)) {
        return pressedRect;
    }

    zoomButtonColorsMask = 0x0012;

    if (Bg_DoesPixelAtXYMatchVal(param0->bgConfig, BG_LAYER_SUB_1, gSystem.touchX, gSystem.touchY, &zoomButtonColorsMask) == FALSE) {
        return pressedRect;
    }

    return TOUCHSCREEN_INPUT_NONE;
}

static BOOL HandleTouchScreenInput(TownMapAppData *appData)
{
    TownMapGraphicsManager *graphicsMan = appData->graphicsMan;

    if (appData->context->townMapMode == TOWN_MAP_MODE_WALL_MAP) {
        return FALSE;
    }

    if (TouchScreen_Touched()) {
        if ((graphicsMan->zoomedInMapTransitionStage == 0) && (GetTouchedZone(appData, graphicsMan->showingZoomedInMap) != TOUCHSCREEN_INPUT_NONE)) {
            SwitchBottomScreen(appData, graphicsMan->showingZoomedInMap);
            graphicsMan->zoomedInMapTransitionStage = 3;
            return TRUE;
        }
    } else if ((graphicsMan->zoomedInMapTransitionStage == 3) || (graphicsMan->zoomedInMapTransitionStage == 1)) {
        graphicsMan->zoomedInMapTransitionStage--;
    }

    return FALSE;
}

static void HandleInput(TownMapAppData *param0, int heldKeys)
{
    TownMapGraphicsManager *graphicsMan = param0->graphicsMan;

    if (graphicsMan->queuedMovement) {
        if (!(heldKeys & (PAD_KEY_UP | PAD_KEY_DOWN | PAD_KEY_RIGHT | PAD_KEY_LEFT))) {
            if (graphicsMan->unk_15_0 == 1) {
                ++graphicsMan->unk_15_0;
            }
        }

        return;
    }

    if (HandleTouchScreenInput(param0)) {
        return;
    }

    if (!(heldKeys & (PAD_KEY_UP | PAD_KEY_DOWN | PAD_KEY_RIGHT | PAD_KEY_LEFT))) {
        if (graphicsMan->unk_15_0 == 1) {
            ++graphicsMan->unk_15_0;
        }

        return;
    }

    if (heldKeys & PAD_KEY_UP) {
        if (graphicsMan->y >= 7) {
            graphicsMan->y -= 1;
            graphicsMan->queuedMovement |= TOWN_MAP_UP;
        }
    }

    if (heldKeys & PAD_KEY_DOWN) {
        if (graphicsMan->y <= 27) {
            graphicsMan->y += 1;
            graphicsMan->queuedMovement |= TOWN_MAP_DOWN;
        }
    }

    if (heldKeys & PAD_KEY_RIGHT) {
        if (graphicsMan->x <= 27) {
            graphicsMan->x += 1;
            graphicsMan->queuedMovement |= TOWN_MAP_RIGHT;
        }
    }

    if (heldKeys & PAD_KEY_LEFT) {
        if (graphicsMan->x >= 2) {
            graphicsMan->x -= 1;
            graphicsMan->queuedMovement |= TOWN_MAP_LEFT;
        }
    }

    graphicsMan->zoomedMapMvtStage = 3;
    graphicsMan->queuedMovement |= 0x80;

    if (graphicsMan->zommedMapMvtDone != 0) {
        graphicsMan->zoomedMapMvtFrame++;
    } else {
        graphicsMan->zoomedMapMvtFrame = 0;
    }

    graphicsMan->zommedMapMvtDone = 0;
    graphicsMan->unk_15_0 = 1;

    return;
}

static void UpdateBottomScreenText(TownMapAppData *param0)
{
    TownMapGraphicsManager *v0 = param0->graphicsMan;

    PrintLocationName(param0, &(v0->windows[TOWN_MAP_WINDOW_LOCATION_NAME]), v0->hoveredLocationMapHeader, v0->x, v0->y);
    TownMapApp_UpdateHoveredFlyTarget(v0->flyDestinations, v0->hoveredLocationMapHeader, v0->x, v0->y);

    if (v0->showingZoomedInMap == TRUE) {
        SetHoveredLocation(param0, v0->hoveredBlock, v0->hoveredLocationMapHeader);
        Bg_ScheduleTilemapTransfer(param0->bgConfig, BG_LAYER_SUB_0);
        Bg_ScheduleTilemapTransfer(param0->bgConfig, BG_LAYER_SUB_1);
    }
}

static void UpdateHoveredLocation(TownMapAppData *param0)
{
    TownMapGraphicsManager *v0 = param0->graphicsMan;

    v0->prevLocationMapHeader = v0->hoveredLocationMapHeader;
    v0->hoveredLocationMapHeader = MainMapMatrixData_GetMapHeaderIDAtCoords((const MainMapMatrixData *)param0->mapMatrixData, v0->x, v0->y);
    v0->hoveredBlock = TownMapApp_GetHoveredMapBlock(param0->mapBlockList, v0->x, v0->y, param0->unlockedHiddenLocations);
}

static void LoadMapName(TownMapAppData *param0, int header, int x, int y)
{
    static const TownMapCoordsToHeader v1[] = {
        { .x = 11, .y = 19, .header = MAP_HEADER_MT_CORONET_1F_SOUTH },
        { .x = 11, .y = 20, .header = MAP_HEADER_MT_CORONET_1F_SOUTH },
        { .x = 11, .y = 21, .header = MAP_HEADER_MT_CORONET_1F_SOUTH },
        { .x = 11, .y = 22, .header = MAP_HEADER_MT_CORONET_1F_SOUTH },
        { .x = 12, .y = 12, .header = MAP_HEADER_MT_CORONET_1F_SOUTH },
        { .x = 12, .y = 13, .header = MAP_HEADER_MT_CORONET_1F_SOUTH },
        { .x = 12, .y = 14, .header = MAP_HEADER_MT_CORONET_1F_SOUTH },
        { .x = 12, .y = 15, .header = MAP_HEADER_MT_CORONET_1F_SOUTH },
        { .x = 12, .y = 16, .header = MAP_HEADER_MT_CORONET_1F_SOUTH },
        { .x = 12, .y = 17, .header = MAP_HEADER_MT_CORONET_1F_SOUTH },
        { .x = 12, .y = 18, .header = MAP_HEADER_MT_CORONET_1F_SOUTH },
        { .x = 12, .y = 19, .header = MAP_HEADER_MT_CORONET_1F_SOUTH },
        { .x = 20, .y = 12, .header = MAP_HEADER_BATTLE_FRONTIER_GATE_TO_FIGHT_AREA },
    };

    if (header != MAP_HEADER_EVERYWHERE) {
        MapHeader_LoadName(header, param0->heapID, param0->hoveredMapName);
        return;
    }

    for (int i = 0; i < NELEMS(v1); i++) {
        if (v1[i].x == x && v1[i].y == y) {
            MapHeader_LoadName(v1[i].header, param0->heapID, param0->hoveredMapName);
            return;
        }
    }

    MapHeader_LoadName(MAP_HEADER_EVERYWHERE, param0->heapID, param0->hoveredMapName);
    return;
}

static void PrintLocationName(TownMapAppData *param0, Window *window, int header, int x, int y)
{
    u32 xOffset;
    TextColor textColor;
    TownMapGraphicsManager *v2 = param0->graphicsMan;

    Strbuf_Clear(param0->hoveredMapName);
    Window_FillTilemap(window, 0);

    textColor = TEXT_COLOR(1, 2, 0);

    if (v2->hoveredBlock != NULL) {
        LoadMapName(param0, header, x, y);

        if (param0->mode == TOWN_MAP_MODE_FLY) {
            // Left aligned, after the arrow graphics.
            xOffset = 15 * TILE_WIDTH_PIXELS + 2;
        } else {
            // Centered.
            xOffset = HW_LCD_WIDTH - 6 * TILE_WIDTH_PIXELS - Font_CalcStrbufWidth(FONT_SYSTEM, param0->hoveredMapName, 0);
            xOffset /= 2;
        }

        Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, param0->hoveredMapName, xOffset, 6, TEXT_SPEED_NO_TRANSFER, textColor, NULL);
    }

    if (param0->mode == TOWN_MAP_MODE_FLY) {
        Strbuf *string = MessageLoader_GetNewStrbuf(param0->townMapStrings, 0);

        Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, 0, 6, TEXT_SPEED_NO_TRANSFER, textColor, NULL);
        Strbuf_Free(string);
    }

    Window_CopyToVRAM(window);
}

static void PrintLocationDescription(TownMapAppData *param0, Window *window, TownMapBlock *mapBlock)
{
    TextColor v1;
    Strbuf *areaDescString;
    Strbuf *landmarkDescString;

    if (mapBlock == NULL) {
        Window_FillTilemap(window, 0);
        Window_CopyToVRAM(window);
        Window_ClearAndCopyToVRAM(window);
        return;
    }

    v1 = TEXT_COLOR(1, 2, 0);
    Window_FillTilemap(window, 0);

    if ((mapBlock->areaDescString != 0xFFFF) && ((param0->context->descCheckResults[mapBlock->index].areaDescHasCheck == FALSE) || param0->context->descCheckResults[mapBlock->index].areaDescCheckResult)) {
        areaDescString = MessageLoader_GetNewStrbuf(param0->townMapStrings, mapBlock->areaDescString);
        Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, areaDescString, mapBlock->areaDescX, mapBlock->locationDesc1Y, TEXT_SPEED_NO_TRANSFER, v1, NULL);
        Strbuf_Free(areaDescString);
    }

    if ((mapBlock->landmarkDescString != 0xFFFF) && ((param0->context->descCheckResults[mapBlock->index].landmarkDescHasCheck == FALSE) || param0->context->descCheckResults[mapBlock->index].landmarkCheckResult)) {
        landmarkDescString = MessageLoader_GetNewStrbuf(param0->townMapStrings, mapBlock->landmarkDescString);
        Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, landmarkDescString, mapBlock->landmarkDescX, mapBlock->locationDesc2Y, TEXT_SPEED_NO_TRANSFER, v1, NULL);
        Strbuf_Free(landmarkDescString);
    }
}

static void DoZoomedMapMvt(TownMapAppData *param0)
{
    int zoomedInMapMoveSpeed = 5;
    TownMapGraphicsManager *graphicsMan = param0->graphicsMan;

    if (!graphicsMan->zoomedMapMvtStage) {
        return;
    }

    if (graphicsMan->zoomedMapMvtStage-- == 3) {
        Sprite_SetPositionXY(graphicsMan->cursorSprite, TOWN_MAP_GRID_X(graphicsMan->x), TOWN_MAP_GRID_Y(graphicsMan->y));
        Sprite_UpdateAnim(graphicsMan->cursorSprite, FX32_ONE);

        UpdateHoveredLocation(param0);
        PrintLocationName(param0, &(graphicsMan->windows[TOWN_MAP_WINDOW_LOCATION_NAME]), MainMapMatrixData_GetMapHeaderIDAtCoords(param0->mapMatrixData, graphicsMan->x, graphicsMan->y), graphicsMan->x, graphicsMan->y);
        zoomedInMapMoveSpeed += 1; // Move one extra pixel every third step to move in multiples of 16
    }

    if (graphicsMan->queuedMovement & TOWN_MAP_UP) {
        graphicsMan->zoomedInMapCoords.y -= zoomedInMapMoveSpeed;
    }

    if (graphicsMan->queuedMovement & TOWN_MAP_DOWN) {
        graphicsMan->zoomedInMapCoords.y += zoomedInMapMoveSpeed;
    }

    if (graphicsMan->queuedMovement & TOWN_MAP_RIGHT) {
        graphicsMan->zoomedInMapCoords.x += zoomedInMapMoveSpeed;
    }

    if (graphicsMan->queuedMovement & TOWN_MAP_LEFT) {
        graphicsMan->zoomedInMapCoords.x -= zoomedInMapMoveSpeed;
    }

    MoveZoomedInMap(param0, graphicsMan->zoomedInMapCoords.x, graphicsMan->zoomedInMapCoords.y);

    if (graphicsMan->zoomedMapMvtStage > 0) {
        return;
    }

    graphicsMan->zommedMapMvtDone = 0x1;
    graphicsMan->queuedMovement = 0;

    if (graphicsMan->prevLocationMapHeader != graphicsMan->hoveredLocationMapHeader) {
        TownMapApp_UpdateHoveredFlyTarget(graphicsMan->flyDestinations, -1, 0, 0);
    }
}

static void SetHoveredLocation(TownMapAppData *param0, TownMapBlock *param1, enum MapHeader param2)
{
    TownMapGraphicsManager *v0 = param0->graphicsMan;

    param0->hoveredMapHeader = param2;
    param0->hoveredMapBlock = param1;
    param0->locationChanged = TRUE;

    return;
}

static void EraseSignpost(TownMapAppData *param0)
{
    TownMapGraphicsManager *v0 = param0->graphicsMan;
    Window *v1 = v0->signpostWindow;
    v0->signpostWindow = NULL;

    if (v1 == NULL) {
        return;
    }

    Window_FillTilemap(v1, 0);
    Window_ClearAndCopyToVRAM(v1);
    Window_EraseSignpost(v1, v0->currentSignpostType, FALSE);
    Bg_ScheduleTilemapTransfer(param0->bgConfig, BG_LAYER_SUB_0);
}

static void PrintBottomScreenHeader(TownMapAppData *param0, Window *param1)
{
    u32 v0;
    TextColor v1;
    Strbuf *v2;

    Bg_CopyRectToTilemapRect(param0->bgConfig, 5, 10, 0, 12, 2, param0->zoomButtonStates->rawData, 0, 7, param0->zoomButtonStates->screenWidth / 8, param0->zoomButtonStates->screenHeight / 8);

    v2 = MessageLoader_GetNewStrbuf(param0->townMapStrings, 1);
    v0 = (10 * 8) - Font_CalcStrbufWidth(FONT_SYSTEM, v2, 0);
    v0 /= 2;
    v1 = TEXT_COLOR(1, 2, 0);

    Window_FillTilemap(param1, 0);
    Text_AddPrinterWithParamsAndColor(param1, FONT_SYSTEM, v2, v0, 0, TEXT_SPEED_NO_TRANSFER, v1, NULL);
    Window_CopyToVRAM(param1);
    Strbuf_Free(v2);
}

static void MakeAppWindows(TownMapAppData *param0)
{
    TownMapGraphicsManager *v0 = param0->graphicsMan;

    Window_Add(param0->bgConfig, &v0->windows[TOWN_MAP_WINDOW_LOCATION_NAME], BG_LAYER_MAIN_1, 3, 21, 29, 3, PLTT_15, 1023 - 29 * 3);
    Window_Add(param0->bgConfig, &v0->windows[TOWN_MAP_WINDOW_SIGNPOST_LOCATION_NAME_1], BG_LAYER_SUB_0, 9, 3, 21, 4, PLTT_14, (1023 - (21 * 4)));
    Window_Add(param0->bgConfig, &v0->windows[TOWN_MAP_WINDOW_SIGNPOST_LOCATION_NAME_2], BG_LAYER_SUB_0, 2, 3, 28, 4, PLTT_14, ((1023 - (21 * 4)) - (28 * 4)));
    Window_Add(param0->bgConfig, &v0->windows[TOWN_MAP_WINDOW_LOCATION_DESCRIPTION], BG_LAYER_SUB_0, 1, 8, 28, 14, PLTT_14, (((1023 - (21 * 4)) - (28 * 4)) - (28 * 14)));
    Window_Add(param0->bgConfig, &v0->windows[TOWN_MAP_WINDOW_BOTTOM_SCREEN_HEADER], BG_LAYER_SUB_0, 11, 0, 10, 2, PLTT_15, ((((1023 - (21 * 4)) - (28 * 4)) - (28 * 14)) - (10 * 2)));
    Window_FillTilemap(&(v0->windows[TOWN_MAP_WINDOW_LOCATION_NAME]), 0);
    Window_FillTilemap(&(v0->windows[TOWN_MAP_WINDOW_SIGNPOST_LOCATION_NAME_1]), 0);
    Window_FillTilemap(&(v0->windows[TOWN_MAP_WINDOW_SIGNPOST_LOCATION_NAME_2]), 0);
    Window_FillTilemap(&(v0->windows[TOWN_MAP_WINDOW_LOCATION_DESCRIPTION]), 0);
    Window_FillTilemap(&(v0->windows[TOWN_MAP_WINDOW_BOTTOM_SCREEN_HEADER]), 0);
    Window_CopyToVRAM(&v0->windows[TOWN_MAP_WINDOW_LOCATION_NAME]);
    Window_ClearAndCopyToVRAM(&v0->windows[TOWN_MAP_WINDOW_SIGNPOST_LOCATION_NAME_1]);
    Window_ClearAndCopyToVRAM(&v0->windows[TOWN_MAP_WINDOW_SIGNPOST_LOCATION_NAME_2]);
    Window_ClearAndCopyToVRAM(&v0->windows[TOWN_MAP_WINDOW_LOCATION_DESCRIPTION]);
    Window_ClearAndCopyToVRAM(&v0->windows[TOWN_MAP_WINDOW_BOTTOM_SCREEN_HEADER]);
}

static void DeleteAppWindows(TownMapAppData *param0)
{
    TownMapGraphicsManager *v0 = param0->graphicsMan;
    u16 v1;

    for (v1 = 0; v1 < NUM_TOWN_MAP_WINDOWS; v1++) {
        Window_Remove(&v0->windows[v1]);
    }
}

static void DrawZoomButton(TownMapAppData *param0, u8 state, u8 drawEntireScreen)
{
    if (drawEntireScreen) {
        Bg_CopyToTilemapRect(param0->bgConfig, BG_LAYER_SUB_1, 0, 0, 32, 24, param0->zoomButtonScreen->rawData, 0, 0, param0->zoomButtonScreen->screenWidth / 8, param0->zoomButtonScreen->screenHeight / 8);
    }

    Bg_CopyRectToTilemapRect(param0->bgConfig, BG_LAYER_SUB_1, 13, 10, 6, 7, param0->zoomButtonStates->rawData, state * 6 + 0, 0, param0->zoomButtonStates->screenWidth / 8, param0->zoomButtonStates->screenHeight / 8);
}

static void ShowHiddenLocation(TownMapAppData *param0, enum HiddenLocation location)
{
    TownMapGraphicsManager *v0 = param0->graphicsMan;
    static const TilemapRectCopyTemplate v1[HIDDEN_LOCATION_MAX][4] = {
        [HIDDEN_LOCATION_FULLMOON_ISLAND] = {
            { .srcX = 5, .srcY = 0, .destX = 3, .destY = 1, .width = 2, .height = 3 },
            { .srcX = 5, .srcY = 3, .destX = 3, .destY = 2, .width = 2, .height = 2 },
            { .srcX = 8, .srcY = 0, .destX = 3, .destY = 16, .width = 4, .height = 4 },
            { .srcX = 8, .srcY = 4, .destX = 3, .destY = 16, .width = 4, .height = 4 },
        },
        [HIDDEN_LOCATION_NEWMOON_ISLAND] = {
            { .srcX = 0, .srcY = 0, .destX = 6, .destY = 1, .width = 2, .height = 3 },
            { .srcX = 0, .srcY = 3, .destX = 6, .destY = 2, .width = 2, .height = 2 },
            { .srcX = 0, .srcY = 0, .destX = 8, .destY = 16, .width = 4, .height = 4 },
            { .srcX = 0, .srcY = 4, .destX = 8, .destY = 16, .width = 4, .height = 4 },
        },
        [HIDDEN_LOCATION_SPRING_PATH] = {
            { .srcX = 0, .srcY = 0, .destX = 0, .destY = 0, .width = 0, .height = 0 },
            { .srcX = 4, .srcY = 5, .destX = 22, .destY = 13, .width = 3, .height = 3 },
            { .srcX = 0, .srcY = 0, .destX = 0, .destY = 0, .width = 0, .height = 0 },
            { .srcX = 8, .srcY = 8, .destX = 48, .destY = 42, .width = 5, .height = 6 },
        },
        [HIDDEN_LOCATION_SEABREAK_PATH] = {
            { .srcX = 2, .srcY = 0, .destX = 26, .destY = 0, .width = 3, .height = 3 },
            { .srcX = 2, .srcY = 3, .destX = 27, .destY = 0, .width = 2, .height = 9 },
            { .srcX = 4, .srcY = 0, .destX = 57, .destY = 12, .width = 4, .height = 4 },
            { .srcX = 4, .srcY = 4, .destX = 57, .destY = 12, .width = 4, .height = 19 },
        },
    };

    // The kind of messy access here is necessary to match.
    const TilemapRectCopyTemplate *v2 = &((TilemapRectCopyTemplate *)v1)[location * 4 + 0];
    const TilemapRectCopyTemplate *v3 = &((TilemapRectCopyTemplate *)v1)[location * 4 + 1];
    const TilemapRectCopyTemplate *v4 = &((TilemapRectCopyTemplate *)v1)[location * 4 + 2];
    const TilemapRectCopyTemplate *v5 = &((TilemapRectCopyTemplate *)v1)[location * 4 + 3];

    Bg_CopyToTilemapRect(param0->bgConfig, BG_LAYER_MAIN_2, v3->destX, v3->destY, v3->width, v3->height, param0->hiddenLocationsBG->rawData, v3->srcX, v3->srcY, ((param0->hiddenLocationsBG)->screenWidth / TILE_WIDTH_PIXELS), ((param0->hiddenLocationsBG)->screenHeight / TILE_HEIGHT_PIXELS));
    Bg_CopyRectToTilemapRect(param0->bgConfig, BG_LAYER_SUB_2, v5->destX, v5->destY, v5->width, v5->height, param0->hiddenLocationsMap->rawData, v5->srcX, v5->srcY, ((param0->hiddenLocationsMap)->screenWidth / TILE_WIDTH_PIXELS), ((param0->hiddenLocationsMap)->screenHeight / TILE_HEIGHT_PIXELS));

    if (location == HIDDEN_LOCATION_SPRING_PATH) {
        return;
    }

    Bg_CopyToTilemapRect(param0->bgConfig, BG_LAYER_MAIN_3, v2->destX, v2->destY, v2->width, v2->height, param0->hiddenLocationsBG->rawData, v2->srcX, v2->srcY, ((param0->hiddenLocationsBG)->screenWidth / TILE_WIDTH_PIXELS), ((param0->hiddenLocationsBG)->screenHeight / TILE_HEIGHT_PIXELS));
    Bg_CopyRectToTilemapRect(param0->bgConfig, BG_LAYER_SUB_3, v4->destX, v4->destY, v4->width, v4->height, param0->hiddenLocationsMap->rawData, v4->srcX, v4->srcY, ((param0->hiddenLocationsMap)->screenWidth / TILE_WIDTH_PIXELS), ((param0->hiddenLocationsMap)->screenHeight / TILE_HEIGHT_PIXELS));
}

static void LoadMapGraphics(TownMapAppData *param0)
{
    TownMapGraphicsManager *v0 = param0->graphicsMan;

    Bg_CopyToTilemapRect(param0->bgConfig, BG_LAYER_MAIN_2, 0, 0, 32, 24, param0->fullScreenMap->rawData, 0, 0, ((param0->fullScreenMap)->screenWidth / TILE_WIDTH_PIXELS), ((param0->fullScreenMap)->screenHeight / TILE_HEIGHT_PIXELS));
    Bg_CopyToTilemapRect(param0->bgConfig, BG_LAYER_MAIN_3, 0, 0, 32, 24, param0->fullScreenBG->rawData, 0, 0, ((param0->fullScreenBG)->screenWidth / TILE_WIDTH_PIXELS), ((param0->fullScreenBG)->screenHeight / TILE_HEIGHT_PIXELS));

    if (param0->mode != TOWN_MAP_MODE_FLY) { // The town map has an arrow between the "Fly to where?" text and the destination name. This removes it.
        Bg_CopyToTilemapRect(param0->bgConfig, BG_LAYER_MAIN_3, 16, 21, 2, 3, param0->fullScreenBG->rawData, 0, 21, ((param0->fullScreenBG)->screenWidth / TILE_WIDTH_PIXELS), ((param0->fullScreenBG)->screenHeight / TILE_HEIGHT_PIXELS));
    }

    DrawZoomButton(param0, 0, TRUE);

    Bg_CopyRectToTilemapRect(param0->bgConfig, BG_LAYER_SUB_2, 0, 0, 64, 64, param0->zoomedInMap->rawData, 0, 0, param0->zoomedInMap->screenWidth / TILE_WIDTH_PIXELS, param0->zoomedInMap->screenHeight / TILE_HEIGHT_PIXELS);
    Bg_CopyRectToTilemapRect(param0->bgConfig, BG_LAYER_SUB_3, 0, 0, 64, 64, param0->zoomedInBG->rawData, 0, 0, param0->zoomedInBG->screenWidth / TILE_WIDTH_PIXELS, param0->zoomedInBG->screenHeight / TILE_HEIGHT_PIXELS);

    if (param0->unlockedHiddenLocations & (1 << HIDDEN_LOCATION_FULLMOON_ISLAND)) {
        ShowHiddenLocation(param0, HIDDEN_LOCATION_FULLMOON_ISLAND);
    }

    if (param0->unlockedHiddenLocations & (1 << HIDDEN_LOCATION_NEWMOON_ISLAND)) {
        ShowHiddenLocation(param0, HIDDEN_LOCATION_NEWMOON_ISLAND);
    }

    if (param0->unlockedHiddenLocations & (1 << HIDDEN_LOCATION_SPRING_PATH)) {
        ShowHiddenLocation(param0, HIDDEN_LOCATION_SPRING_PATH);
    }

    if (param0->unlockedHiddenLocations & (1 << HIDDEN_LOCATION_SEABREAK_PATH)) {
        ShowHiddenLocation(param0, HIDDEN_LOCATION_SEABREAK_PATH);
    }

    Bg_ScheduleTilemapTransfer(param0->bgConfig, BG_LAYER_MAIN_2);
    Bg_ScheduleTilemapTransfer(param0->bgConfig, BG_LAYER_MAIN_3);
    Bg_ScheduleTilemapTransfer(param0->bgConfig, BG_LAYER_SUB_1);
    Bg_ScheduleTilemapTransfer(param0->bgConfig, BG_LAYER_SUB_2);
    Bg_ScheduleTilemapTransfer(param0->bgConfig, BG_LAYER_SUB_3);
}

static void ClearBGLayers(TownMapAppData *param0)
{
    TownMapGraphicsManager *v0 = param0->graphicsMan;

    Bg_SetOffset(param0->bgConfig, BG_LAYER_SUB_2, BG_OFFSET_UPDATE_SET_Y, 0);
    Bg_SetOffset(param0->bgConfig, BG_LAYER_SUB_3, BG_OFFSET_UPDATE_SET_Y, 0);
    Bg_SetOffset(param0->bgConfig, BG_LAYER_SUB_2, BG_OFFSET_UPDATE_SET_X, 0);
    Bg_SetOffset(param0->bgConfig, BG_LAYER_SUB_3, BG_OFFSET_UPDATE_SET_X, 0);

    Bg_FillTilemapRect(param0->bgConfig, BG_LAYER_MAIN_0, 0x0, 0, 0, 32, 32, TILEMAP_FILL_VAL_INCLUDES_PALETTE);
    Bg_FillTilemapRect(param0->bgConfig, BG_LAYER_MAIN_1, 0x0, 0, 0, 32, 32, TILEMAP_FILL_VAL_INCLUDES_PALETTE);
    Bg_FillTilemapRect(param0->bgConfig, BG_LAYER_MAIN_2, 0x0, 0, 0, 32, 32, TILEMAP_FILL_VAL_INCLUDES_PALETTE);
    Bg_FillTilemapRect(param0->bgConfig, BG_LAYER_MAIN_3, 0x0, 0, 0, 32, 32, TILEMAP_FILL_VAL_INCLUDES_PALETTE);
    Bg_FillTilemapRect(param0->bgConfig, BG_LAYER_SUB_0, 0x0, 0, 0, 32, 32, TILEMAP_FILL_VAL_INCLUDES_PALETTE);
    Bg_FillTilemapRect(param0->bgConfig, BG_LAYER_SUB_1, 0x0, 0, 0, 32, 32, TILEMAP_FILL_VAL_INCLUDES_PALETTE);
    Bg_FillTilemapRect(param0->bgConfig, BG_LAYER_SUB_2, 0x0, 0, 0, 32, 32, TILEMAP_FILL_VAL_INCLUDES_PALETTE);
    Bg_FillTilemapRect(param0->bgConfig, BG_LAYER_SUB_3, 0x0, 0, 0, 32, 32, TILEMAP_FILL_VAL_INCLUDES_PALETTE);

    Bg_ScheduleTilemapTransfer(param0->bgConfig, BG_LAYER_MAIN_0);
    Bg_ScheduleTilemapTransfer(param0->bgConfig, BG_LAYER_MAIN_1);
    Bg_ScheduleTilemapTransfer(param0->bgConfig, BG_LAYER_MAIN_2);
    Bg_ScheduleTilemapTransfer(param0->bgConfig, BG_LAYER_MAIN_3);
    Bg_ScheduleTilemapTransfer(param0->bgConfig, BG_LAYER_SUB_0);
    Bg_ScheduleTilemapTransfer(param0->bgConfig, BG_LAYER_SUB_1);
    Bg_ScheduleTilemapTransfer(param0->bgConfig, BG_LAYER_SUB_2);
    Bg_ScheduleTilemapTransfer(param0->bgConfig, BG_LAYER_SUB_3);
}

static const SpriteTemplateFromResourceHeader sTownMapSpriteTemplates[] = {
    {
        .resourceHeaderID = 0,
        .x = 0,
        .y = 0,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = PLTT_0,
        .vramType = NNS_G2D_VRAM_TYPE_2DSUB,
        .dummy18 = 0,
        .dummy1C = 0,
        .dummy20 = 0,
        .dummy24 = 0,
    },
    {
        .resourceHeaderID = 1,
        .x = 0,
        .y = 0,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = PLTT_0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .dummy18 = 0,
        .dummy1C = 0,
        .dummy20 = 0,
        .dummy24 = 0,
    },
    {
        .resourceHeaderID = 2,
        .x = 0,
        .y = 0,
        .z = 0,
        .animIdx = 0,
        .priority = 1,
        .plttIdx = PLTT_1,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .dummy18 = 0,
        .dummy1C = 0,
        .dummy20 = 0,
        .dummy24 = 0,
    },
};

static void CreateSprites(TownMapAppData *param0)
{
    TownMapGraphicsManager *v0 = param0->graphicsMan;
    SpriteTemplateFromResourceHeader spriteTemplate = sTownMapSpriteTemplates[2];

    v0->zoomBtnShockwave = SpriteSystem_NewSpriteFromResourceHeader(param0->spriteSystem, param0->spriteMan, &sTownMapSpriteTemplates[0]);

    Sprite_SetDrawFlag(v0->zoomBtnShockwave, FALSE);
    Sprite_SetAnimSpeed(v0->zoomBtnShockwave, FX32_ONE);
    Sprite_SetPositionXY(v0->zoomBtnShockwave, 128, 108);

    v0->cursorSprite = SpriteSystem_NewSpriteFromResourceHeader(param0->spriteSystem, param0->spriteMan, &sTownMapSpriteTemplates[1]);

    Sprite_SetDrawFlag(v0->cursorSprite, TRUE);
    Sprite_SetAnimSpeed(v0->cursorSprite, FX32_CONST(2));
    Sprite_SetAnimateFlag(v0->cursorSprite, TRUE);
    Sprite_SetPositionXY(v0->cursorSprite, TOWN_MAP_GRID_X(v0->x), TOWN_MAP_GRID_Y(v0->y));

    if (param0->context->trainerGender == 0) {
        spriteTemplate.plttIdx = PLTT_1;
    } else {
        spriteTemplate.plttIdx = PLTT_0;
    }

    v0->playerSprite = SpriteSystem_NewSpriteFromResourceHeader(param0->spriteSystem, param0->spriteMan, &spriteTemplate);

    Sprite_SetDrawFlag(v0->playerSprite, TRUE);
    Sprite_SetAnimFrame(v0->playerSprite, param0->context->trainerGender);
    Sprite_SetPositionXY(v0->playerSprite, TOWN_MAP_GRID_X(v0->x), TOWN_MAP_GRID_Y(v0->y));
}

static void MoveZoomedInMap(TownMapAppData *param0, int x, int y)
{
    if (x < 8) {
        Bg_ScheduleScroll(param0->bgConfig, BG_LAYER_SUB_2, BG_OFFSET_UPDATE_SET_X, 8);
        Bg_ScheduleScroll(param0->bgConfig, BG_LAYER_SUB_3, BG_OFFSET_UPDATE_SET_X, 8);
    } else if (x > 256 - 8) {
        Bg_ScheduleScroll(param0->bgConfig, BG_LAYER_SUB_2, BG_OFFSET_UPDATE_SET_X, 248);
        Bg_ScheduleScroll(param0->bgConfig, BG_LAYER_SUB_3, BG_OFFSET_UPDATE_SET_X, 248);
    } else {
        Bg_ScheduleScroll(param0->bgConfig, BG_LAYER_SUB_2, BG_OFFSET_UPDATE_SET_X, x);
        Bg_ScheduleScroll(param0->bgConfig, BG_LAYER_SUB_3, BG_OFFSET_UPDATE_SET_X, x);
    }

    if (y < (72 + 8)) {
        Bg_ScheduleScroll(param0->bgConfig, BG_LAYER_SUB_2, BG_OFFSET_UPDATE_SET_Y, (72 + 8));
        Bg_ScheduleScroll(param0->bgConfig, BG_LAYER_SUB_3, BG_OFFSET_UPDATE_SET_Y, (72 + 8));
    } else if (y > 240 + 72 - 8) {
        Bg_ScheduleScroll(param0->bgConfig, BG_LAYER_SUB_2, BG_OFFSET_UPDATE_SET_Y, 304);
        Bg_ScheduleScroll(param0->bgConfig, BG_LAYER_SUB_3, BG_OFFSET_UPDATE_SET_Y, 304);
    } else {
        Bg_ScheduleScroll(param0->bgConfig, BG_LAYER_SUB_2, BG_OFFSET_UPDATE_SET_Y, y);
        Bg_ScheduleScroll(param0->bgConfig, BG_LAYER_SUB_3, BG_OFFSET_UPDATE_SET_Y, y);
    }
}

static int GetHistoryEntryForPos(TownMapLocationHistory *param0, int x, int y)
{
    int v0 = 0;

    for (v0 = 0; v0 < param0->numLocationHistoryEntries; v0++) {
        if ((param0->entries[v0].x == x) && (param0->entries[v0].y == y)) {
            return v0;
        }
    }

    return -1;
}

static void LoadLocationHistory(TownMapAppData *param0)
{
    TownMapGraphicsManager *v0 = param0->graphicsMan;
    TownMapLocationHistoryEntry *v1;
    TownMapLocationHistoryEntryWithSprite *v2;
    int v3 = 0, v4, v5;
    static const u16 v6[4] = { 0, 2, 3, 1 };
    static const SpriteTemplateFromResourceHeader Unk_ov80_021D30E8 = {
        .resourceHeaderID = 3,
        .x = 0,
        .y = 0,
        .z = 0,
        .animIdx = 0,
        .priority = 2,
        .plttIdx = PLTT_2,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .dummy18 = 0,
        .dummy1C = 0,
        .dummy20 = 0,
        .dummy24 = 0,
    };

    MI_CpuClear8(&(v0->locationHistory), sizeof(TownMapLocationHistory));

    for (v3 = 0; v3 < 5; v3++) {
        v1 = &(param0->context->locationHistory[v3]);

        if (v1->isSet == FALSE) {
            break;
        }

        if ((v1->x == param0->playerX) && (v1->y == param0->playerY)) {
            continue;
        }

        v4 = GetHistoryEntryForPos(&(v0->locationHistory), v1->x, v1->y);

        if (v4 < 0) {
            v2 = &(v0->locationHistory.entries[v0->locationHistory.numLocationHistoryEntries++]);
        } else {
            v2 = &(v0->locationHistory.entries[v4]);
        }

        v2->x = v1->x;
        v2->y = v1->y;

        if (v1->faceDirection > 3) {
            v2->faceDirection = 0;
            v5 = 5;
        } else {
            v2->faceDirection = v6[v1->faceDirection];
            v5 = 0;
        }

        v2->index = v3;
        v2->isSet = TRUE;

        v2->sprite = SpriteSystem_NewSpriteFromResourceHeader(param0->spriteSystem, param0->spriteMan, &(Unk_ov80_021D30E8));

        Sprite_SetPositionXY(v2->sprite, TOWN_MAP_GRID_X(v2->x), TOWN_MAP_GRID_Y(v2->y));
        Sprite_SetPriority(v2->sprite, 2);
        Sprite_SetDrawFlag(v2->sprite, FALSE);
    }

    if (v0->locationHistory.numLocationHistoryEntries == 0) {
        return;
    }

    v0->locationHistory.currentShownHistLocationIdx = v0->locationHistory.numLocationHistoryEntries - 1;
    v0->locationHistory.sysTask = SysTask_Start(Task_UpdateShownLocationHistoryIdx, &v0->locationHistory, 1);
}

static void Task_UpdateShownLocationHistoryIdx(SysTask *param0, void *param1)
{
    TownMapLocationHistory *v0 = (TownMapLocationHistory *)param1;

    if (v0->locationHistoryFrameCount++ % 26 > 0) {
        return;
    }

    Sprite_SetDrawFlag(v0->entries[v0->previousShownHistLocationIdx].sprite, FALSE);
    Sprite_SetDrawFlag(v0->entries[v0->currentShownHistLocationIdx].sprite, TRUE);

    v0->previousShownHistLocationIdx = v0->currentShownHistLocationIdx;
    v0->currentShownHistLocationIdx = (v0->currentShownHistLocationIdx + (v0->numLocationHistoryEntries - 1)) % v0->numLocationHistoryEntries;

    if (v0->locationHistoryFrameCount > 26 * 10) {
        v0->locationHistoryFrameCount = 1;
    }
}

static void DeleteLocationHistorySprites(TownMapAppData *param0)
{
    TownMapGraphicsManager *v0 = param0->graphicsMan;
    TownMapLocationHistoryEntryWithSprite *v1;
    int v2 = 0, v3;

    if (v0->locationHistory.sysTask != NULL) {
        SysTask_Done(v0->locationHistory.sysTask);
    }

    for (v2 = 0; v2 < v0->locationHistory.numLocationHistoryEntries; v2++) {
        v1 = &(v0->locationHistory.entries[v2]);
        Sprite_Delete2(v1->sprite);
    }
}

static void SwitchBottomScreen(TownMapAppData *param0, int param1)
{
    TownMapGraphicsManager *v0 = param0->graphicsMan;

    v0->taskState = 0;
    v0->taskFrameCount = 0;

    if (param1 == 0) {
        v0->sysTask = SysTask_Start(Task_SwitchBottomScreenToZoomedMap, param0, 0);
    } else {
        v0->sysTask = SysTask_Start(Task_SwitchBottomScreenToZoomButton, param0, 0);
    }
}

static void Task_SwitchBottomScreenToZoomedMap(SysTask *param0, void *param1)
{
    TownMapAppData *v0 = (TownMapAppData *)param1;
    TownMapGraphicsManager *v1 = v0->graphicsMan;
    static const u8 zoomBtnStateSequence[] = { 1, 2, 1, 0 };

    switch (v1->taskState) {
    case 0:
        Sprite_SetDrawFlag(v1->zoomBtnShockwave, TRUE);
        Sprite_SetAnimateFlag(v1->zoomBtnShockwave, 1);
        Sprite_SetAnimFrame(v1->zoomBtnShockwave, 1);
        Sound_PlayEffect(SEQ_SE_DP_BUTTON9);
        v1->taskState++;
        break;
    case 1:
        if (v1->taskFrameCount % 2) {
            DrawZoomButton(v0, zoomBtnStateSequence[v1->taskFrameCount / 2], FALSE);
            Bg_ScheduleTilemapTransfer(v0->bgConfig, BG_LAYER_SUB_1);
        }

        if (v1->taskFrameCount++ > 7) {
            v1->taskState++;
        }

        break;
    case 2:
        Sprite_SetDrawFlag(v1->zoomBtnShockwave, FALSE);
        Sprite_SetAnimateFlag(v1->zoomBtnShockwave, FALSE);

        v0->dummy_14 = 0;
        StartScreenFade(FADE_SUB_ONLY, FADE_TYPE_UNK_13, FADE_TYPE_UNK_2, COLOR_BLACK, 8, 1, v0->heapID);
        v1->taskState++;
        break;
    case 3:
        if (!IsScreenFadeDone()) {
            return;
        }

        v1->showingZoomedInMap = 1;

        Bg_FillTilemapRect(v0->bgConfig, BG_LAYER_SUB_0, 0x0, 0, 0, 32, 32, TILEMAP_FILL_VAL_INCLUDES_PALETTE);
        Bg_FillTilemapRect(v0->bgConfig, BG_LAYER_SUB_1, 0x0, 0, 0, 32, 32, TILEMAP_FILL_VAL_INCLUDES_PALETTE);

        PrintBottomScreenHeader(v0, &(v1->windows[TOWN_MAP_WINDOW_BOTTOM_SCREEN_HEADER]));
        UpdateHoveredLocation(v0);
        UpdateBottomScreenText(v0);

        v0->dummy_14 = 0;
        StartScreenFade(FADE_SUB_ONLY, FADE_TYPE_UNK_13, FADE_TYPE_UNK_5, COLOR_BLACK, 8, 1, v0->heapID);
        v1->taskState++;
        break;
    case 4:
        if (!IsScreenFadeDone()) {
            return;
        }

        v1->taskFrameCount = 0;
        v1->taskState = 0;
        v1->zoomedInMapTransitionStage -= 2;

        SysTask_Done(param0);

        v1->sysTask = NULL;
        break;
    }
}

static void Task_SwitchBottomScreenToZoomButton(SysTask *param0, void *param1)
{
    TownMapAppData *v0 = (TownMapAppData *)param1;
    TownMapGraphicsManager *v1 = v0->graphicsMan;

    switch (v1->taskState) {
    case 0:
        v0->dummy_14 = 0;
        StartScreenFade(FADE_SUB_ONLY, FADE_TYPE_UNK_13, FADE_TYPE_UNK_2, COLOR_BLACK, 8, 1, v0->heapID);
        Sound_PlayEffect(SEQ_SE_DP_MEKURU3);
        v1->taskState++;
        break;
    case 1:
        if (!IsScreenFadeDone()) {
            return;
        }

        Bg_FillTilemapRect(v0->bgConfig, BG_LAYER_SUB_0, 0x0, 0, 0, 32, 32, TILEMAP_FILL_VAL_INCLUDES_PALETTE);
        DrawZoomButton(v0, 0, TRUE);
        Bg_ScheduleTilemapTransfer(v0->bgConfig, BG_LAYER_SUB_0);
        Bg_ScheduleTilemapTransfer(v0->bgConfig, BG_LAYER_SUB_1);
        v0->dummy_14 = 0;
        StartScreenFade(FADE_SUB_ONLY, FADE_TYPE_UNK_13, FADE_TYPE_UNK_5, COLOR_BLACK, 8, 1, v0->heapID);
        v1->taskState++;
        break;
    case 2:
        if (!IsScreenFadeDone()) {
            return;
        }

        v1->showingZoomedInMap = 0;
        v1->taskState = 0;
        v1->taskFrameCount = 0;
        v1->zoomedInMapTransitionStage -= 2;
        SysTask_Done(param0);
        v1->sysTask = NULL;
        return;
    }

    return;
}

static int CanFlyToHoveredLocation(TownMapAppData *param0)
{
    TownMapGraphicsManager *v0 = param0->graphicsMan;
    TownMapAppFlyDestination *v1 = NULL;
    u8 v2 = 1;

    if (v0->hoveredBlock == NULL) {
        return FALSE;
    }

    v1 = TownMapApp_GetHoveredFlyDestination(v0->flyDestinations, v0->hoveredLocationMapHeader, v0->x, v0->y);

    if ((v1 == NULL) || (v1->isUnlocked == FALSE)) {
        return FALSE;
    }

    param0->context->flyDestSelected = TRUE;
    param0->context->flyDestX = v0->x;
    param0->context->flyDestY = v0->y;
    param0->context->flyDestMapHeader = v0->hoveredLocationMapHeader;

    return TRUE;
}
