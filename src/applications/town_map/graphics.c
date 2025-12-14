#include "applications/town_map/graphics.h"

#include "nitro/hw/common/lcd.h"
#include <nitro.h>
#include <string.h>

#include "generated/genders.h"
#include "generated/hidden_locations.h"
#include "generated/map_headers.h"
#include "generated/signpost_types.h"

#include "applications/town_map/defs.h"
#include "applications/town_map/fly_locations.h"
#include "applications/town_map/main.h"
#include "applications/town_map/map_blocks.h"

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
#include "string_gf.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "text.h"
#include "touch_screen.h"

#define TOWN_MAP_RIGHT (1 << 0)
#define TOWN_MAP_LEFT  (1 << 1)
#define TOWN_MAP_DOWN  (1 << 2)
#define TOWN_MAP_UP    (1 << 3)

#define BLOCK_DESCRIPTION_HEIGHT (TEXT_LINES_TILES(3))

#define LOCATION_NAME_WINDOW_WIDTH         29
#define LOCATION_NAME_WINDOW_HEIGHT        3
#define SIGNPOST_NAME_1_WINDOW_WIDTH       21
#define SIGNPOST_NAME_1_WINDOW_HEIGHT      4
#define SIGNPOST_NAME_2_WINDOW_WIDTH       28
#define SIGNPOST_NAME_2_WINDOW_HEIGHT      4
#define LOCATION_DESC_WINDOW_WIDTH         28
#define LOCATION_DESC_WINDOW_HEIGHT        (2 * BLOCK_DESCRIPTION_HEIGHT + TEXT_LINES_TILES(1))
#define BOTTOM_SCREEN_HEADER_WINDOW_WIDTH  10
#define BOTTOM_SCREEN_HEADER_WINDOW_HEIGHT (TEXT_LINES_TILES(1))

#define BASE_TILE_LOCATION_NAME        (1023 - LOCATION_NAME_WINDOW_WIDTH * LOCATION_NAME_WINDOW_HEIGHT)
#define BASE_TILE_SIGNPOST_NAME_1      (1023 - SIGNPOST_NAME_1_WINDOW_WIDTH * SIGNPOST_NAME_1_WINDOW_HEIGHT)
#define BASE_TILE_SIGNPOST_NAME_2      (BASE_TILE_SIGNPOST_NAME_1 - SIGNPOST_NAME_2_WINDOW_WIDTH * SIGNPOST_NAME_2_WINDOW_HEIGHT)
#define BASE_TILE_LOCATION_DESCRIPTION (BASE_TILE_SIGNPOST_NAME_2 - LOCATION_DESC_WINDOW_WIDTH * LOCATION_DESC_WINDOW_HEIGHT)
#define BASE_TILE_BOTTOM_SCREEN_HEADER (BASE_TILE_LOCATION_DESCRIPTION - BOTTOM_SCREEN_HEADER_WINDOW_WIDTH * BOTTOM_SCREEN_HEADER_WINDOW_HEIGHT)
#define BASE_TILE_SIGNPOST_GRAPHIC     (BASE_TILE_BOTTOM_SCREEN_HEADER - 100)

typedef struct TownMapCoordsToHeader {
    u16 x;
    u16 z;
    enum MapHeader header;
} TownMapCoordsToHeader;

typedef struct TilemapRectCopyParams {
    u8 srcX;
    u8 srcY;
    u8 destX;
    u8 destY;
    u8 width;
    u8 height;
} TilemapRectCopyParams;

static void SetHoveredLocation(TownMapAppData *appData, TownMapBlock *mapBlock, enum MapHeader mapHeader);
static void EraseSignpost(TownMapAppData *appData);
static void PrintBottomScreenHeader(TownMapAppData *appData, Window *window);
static void MakeAppWindows(TownMapAppData *appData);
static void DeleteAppWindows(TownMapAppData *appData);
static void DrawZoomButton(TownMapAppData *appData, u8 state, u8 drawEntireScreen);
static void LoadMapGraphics(TownMapAppData *appData);
static void ClearBGLayers(TownMapAppData *appData);
static void CreateSprites(TownMapAppData *appData);
static void LoadLocationHistory(TownMapAppData *appData);
static void Task_UpdateShownLocationHistoryIdx(SysTask *sysTask, void *appData);
static void DeleteLocationHistorySprites(TownMapAppData *appData);
static void HandleInput(TownMapAppData *appData, int heldKeys);
static void LoadMapName(TownMapAppData *appData, enum MapHeader header, int x, int z);
static void PrintLocationName(TownMapAppData *appData, Window *window, enum MapHeader header, int x, int z);
static void PrintLocationDescription(TownMapAppData *appData, Window *window, TownMapBlock *mapBlock);
static void UpdateBottomScreenText(TownMapAppData *appData);
static void UpdateHoveredLocation(TownMapAppData *appData);
static void DoZoomedMapMvt(TownMapAppData *appData);
static void MoveZoomedInMap(TownMapAppData *appData, int x, int y);
static void SwitchBottomScreen(TownMapAppData *appData, BOOL isShowingZoomedInMap);
static void Task_SwitchBottomScreenToZoomedMap(SysTask *sysTask, void *appData);
static void Task_SwitchBottomScreenToZoomButton(SysTask *sysTask, void *appData);
static BOOL CanFlyToHoveredLocation(TownMapAppData *appData);

BOOL TownMap_CreateGraphicsMan(TownMapAppData *appData)
{
    appData->graphicsMan = Heap_Alloc(appData->heapID, sizeof(TownMapGraphicsManager));

    memset(appData->graphicsMan, 0, sizeof(TownMapGraphicsManager));

    return TRUE;
}

BOOL TownMap_FreeGraphics(TownMapAppData *appData)
{
    TownMapGraphicsManager *graphicsMan = appData->graphicsMan;

    ClearBGLayers(appData);

    if (appData->mode != TOWN_MAP_MODE_WALL_MAP) {
        DeleteLocationHistorySprites(appData);
    }

    TownMap_FreeFlyLocations(graphicsMan->flyLocations);
    DeleteAppWindows(appData);
    Heap_Free(graphicsMan);

    return TRUE;
}

BOOL TownMap_LoadGraphics(TownMapAppData *appData)
{
    TownMapGraphicsManager *graphicsMan = appData->graphicsMan;

    switch (graphicsMan->graphicsLoadStage) {
    case 0:
        graphicsMan->cursorX = appData->initialCursorX;
        graphicsMan->cursorZ = appData->initialCursorZ;
        graphicsMan->hoveredLocationMapHeader = -1;
        graphicsMan->zoomedInMapCoords.x = (graphicsMan->cursorX * 16 + 8) - 112;
        graphicsMan->zoomedInMapCoords.y = (graphicsMan->cursorZ * 16) - 96;

        MoveZoomedInMap(appData, graphicsMan->zoomedInMapCoords.x, graphicsMan->zoomedInMapCoords.y);
        MakeAppWindows(appData);

        if (appData->mode != TOWN_MAP_MODE_WALL_MAP) {
            LoadLocationHistory(appData);
        }
        break;
    case 1:
        LoadMapGraphics(appData);
        CreateSprites(appData);
        graphicsMan->flyLocations = TownMap_LoadFlyLocations(appData->spriteSystem, appData->spriteMan, appData->context->unlockedFlyLocations, 20, appData->heapID);
        UpdateHoveredLocation(appData);
        UpdateBottomScreenText(appData);
        graphicsMan->graphicsLoadStage = 0;
        return TRUE;
    }

    graphicsMan->graphicsLoadStage++;
    return FALSE;
}

BOOL TownMap_FadeInBothScreens(TownMapAppData *appData)
{
    appData->dummy_14 = 0;

    StartScreenFade(FADE_MAIN_THEN_SUB, FADE_TYPE_UNK_17, FADE_TYPE_UNK_37, COLOR_BLACK, 6, 1, appData->heapID);
    Sound_PlayEffect(SEQ_SE_DP_MEKURU);
    ResetScreenMasterBrightness(DS_SCREEN_MAIN);
    ResetScreenMasterBrightness(DS_SCREEN_SUB);

    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG3, 28, 4);
    return FALSE;
}

BOOL TownMap_FadeOutBothScreens(TownMapAppData *appData)
{
    appData->dummy_14 = 0;

    StartScreenFade(FADE_SUB_THEN_MAIN, FADE_TYPE_UNK_16, FADE_TYPE_UNK_36, COLOR_BLACK, 6, 1, appData->heapID);
    Sound_PlayEffect(SEQ_SE_DP_MEKURU2);
    return FALSE;
}

BOOL TownMap_FadeInTopScreen(TownMapAppData *appData)
{
    appData->dummy_14 = 0;

    StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_UNK_17, FADE_TYPE_UNK_17, COLOR_BLACK, 6, 1, appData->heapID);
    Sound_PlayEffect(SEQ_SE_DP_MEKURU);
    ResetScreenMasterBrightness(DS_SCREEN_MAIN);

    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG3, 28, 4);
    return FALSE;
}

BOOL TownMap_FadeOutTopScreen(TownMapAppData *appData)
{
    appData->dummy_14 = 0;

    StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_UNK_16, FADE_TYPE_UNK_16, COLOR_BLACK, 6, 1, appData->heapID);
    Sound_PlayEffect(SEQ_SE_DP_MEKURU2);

    return FALSE;
}

BOOL TownMap_HandleInput_Item(TownMapAppData *appData)
{
    TownMapGraphicsManager *graphicsMan = appData->graphicsMan;

    if (graphicsMan->zoomedInMapTransitionStage <= 1 && JOY_NEW(PAD_BUTTON_B)) {
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        return TRUE;
    }

    if (graphicsMan->zoomedInMapTransitionStage > 1) {
        return FALSE;
    }

    HandleInput(appData, gSystem.heldKeys);

    return FALSE;
}

BOOL TownMap_HandleInput_Fly(TownMapAppData *appData)
{
    TownMapGraphicsManager *graphicsMan = appData->graphicsMan;

    if (graphicsMan->zoomedInMapTransitionStage <= 1) {
        if (JOY_NEW(PAD_BUTTON_A)) {
            if (CanFlyToHoveredLocation(appData)) {
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                return TRUE;
            }

            return FALSE;
        } else if (JOY_NEW(PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            return TRUE;
        }
    }

    if (graphicsMan->zoomedInMapTransitionStage > 1) {
        return FALSE;
    }

    HandleInput(appData, gSystem.heldKeys);
    return FALSE;
}

BOOL TownMap_HandleInput_WallMap(TownMapAppData *appData)
{
    if (JOY_NEW(PAD_BUTTON_B)) {
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        return TRUE;
    }

    HandleInput(appData, gSystem.heldKeys);
    return FALSE;
}

BOOL TownMap_UpdateBottomScreen(TownMapAppData *appData)
{
    TownMapGraphicsManager *graphicsMan = appData->graphicsMan;

    if (graphicsMan->zoomedInMapMvtDone & TRUE) {
        if (graphicsMan->unk_15_0 >= 2) {
            UpdateBottomScreenText(appData);
            graphicsMan->zoomedInMapMvtDone = 0x0;
            graphicsMan->zoomedInMapMvtFrame = 0;
            graphicsMan->unk_15_0 = 0;
        }
    } else if (graphicsMan->showingZoomedInMap == TRUE && graphicsMan->zoomedInMapMvtFrame == 1) {
        SetHoveredLocation(appData, NULL, graphicsMan->hoveredLocationMapHeader);
    }

    DoZoomedMapMvt(appData);
    return FALSE;
}

BOOL TownMap_UpdateFlyLocationSprites(TownMapAppData *appData)
{
    TownMapGraphicsManager *graphicsMan = appData->graphicsMan;

    TownMap_BlinkHoveredFlyLocation(graphicsMan->flyLocations, appData->mode);
    return FALSE;
}

BOOL TownMap_UpdateDisplayedLocationInfo(TownMapAppData *appData)
{
    TownMapGraphicsManager *graphicsMan = appData->graphicsMan;
    TownMapBlock *mapBlock = appData->hoveredMapBlock;
    enum MapHeader header = appData->hoveredMapHeader;

    if (!appData->locationChanged) {
        return FALSE;
    }

    appData->locationChanged = FALSE;

    if (mapBlock == NULL) {
        PrintLocationDescription(appData, &(graphicsMan->windows[TOWN_MAP_WINDOW_LOCATION_DESCRIPTION]), NULL);
        EraseSignpost(appData);
        return FALSE;
    }

    PrintLocationDescription(appData, &(graphicsMan->windows[TOWN_MAP_WINDOW_LOCATION_DESCRIPTION]), mapBlock);
    String_Clear(appData->hoveredMapName);
    LoadMapName(appData, header, graphicsMan->cursorX, graphicsMan->cursorZ);
    LoadSignpostContentGraphics(appData->bgConfig, BG_LAYER_SUB_0, BASE_TILE_SIGNPOST_GRAPHIC, PLTT_14, mapBlock->signpostType, mapBlock->signpostNARCMemberIdx, appData->heapID);

    Window *signpostWindow;
    if (mapBlock->signpostType == SIGNPOST_TYPE_MAP || mapBlock->signpostType == SIGNPOST_TYPE_ARROW) {
        signpostWindow = &graphicsMan->windows[TOWN_MAP_WINDOW_SIGNPOST_NAME_1];
    } else {
        signpostWindow = &graphicsMan->windows[TOWN_MAP_WINDOW_SIGNPOST_NAME_2];
    }

    graphicsMan->signpostWindow = signpostWindow;
    graphicsMan->signpostType = mapBlock->signpostType;

    Window_DrawSignpost(signpostWindow, 1, BASE_TILE_SIGNPOST_GRAPHIC, PLTT_14, mapBlock->signpostType);
    Window_FillTilemap(signpostWindow, 15);
    Text_AddPrinterWithParams(signpostWindow, FONT_MESSAGE, appData->hoveredMapName, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
    Window_CopyToVRAM(signpostWindow);
    Window_CopyToVRAM(&graphicsMan->windows[TOWN_MAP_WINDOW_LOCATION_DESCRIPTION]);

    return FALSE;
}

static int GetTouchedZone(TownMapAppData *appData, BOOL isShowingZoomedInMap)
{
    static const TouchScreenRect touchZones[] = {
        { 0, HW_LCD_HEIGHT - 1, 0, HW_LCD_WIDTH - 1 },
        { 10 * 8, (10 + 7) * 8, 13 * 8, (13 + 6) * 8 },
        { TOUCHSCREEN_TABLE_TERMINATOR, 0, 0, 0 }
    };

    int pressedRect = TouchScreen_CheckRectanglePressed(&(touchZones[1 - isShowingZoomedInMap]));

    if ((pressedRect == TOUCHSCREEN_INPUT_NONE) || (isShowingZoomedInMap == TRUE)) {
        return pressedRect;
    }

    u16 zoomButtonColorsMask = 0x0012;

    if (Bg_DoesPixelAtXYMatchVal(appData->bgConfig, BG_LAYER_SUB_1, gSystem.touchX, gSystem.touchY, &zoomButtonColorsMask) == FALSE) {
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
        if (graphicsMan->zoomedInMapTransitionStage == 0 && GetTouchedZone(appData, graphicsMan->showingZoomedInMap) != TOUCHSCREEN_INPUT_NONE) {
            SwitchBottomScreen(appData, graphicsMan->showingZoomedInMap);
            graphicsMan->zoomedInMapTransitionStage = 3;
            return TRUE;
        }
    } else if (graphicsMan->zoomedInMapTransitionStage == 3 || graphicsMan->zoomedInMapTransitionStage == 1) {
        graphicsMan->zoomedInMapTransitionStage--;
    }

    return FALSE;
}

static void HandleInput(TownMapAppData *appData, int heldKeys)
{
    TownMapGraphicsManager *graphicsMan = appData->graphicsMan;

    if (graphicsMan->queuedMovement) {
        if (!(heldKeys & (PAD_KEY_UP | PAD_KEY_DOWN | PAD_KEY_RIGHT | PAD_KEY_LEFT))) {
            if (graphicsMan->unk_15_0 == 1) {
                ++graphicsMan->unk_15_0;
            }
        }

        return;
    }

    if (HandleTouchScreenInput(appData)) {
        return;
    }

    if (!(heldKeys & (PAD_KEY_UP | PAD_KEY_DOWN | PAD_KEY_RIGHT | PAD_KEY_LEFT))) {
        if (graphicsMan->unk_15_0 == 1) {
            ++graphicsMan->unk_15_0;
        }

        return;
    }

    if (heldKeys & PAD_KEY_UP) {
        if (graphicsMan->cursorZ >= 7) {
            graphicsMan->cursorZ -= 1;
            graphicsMan->queuedMovement |= TOWN_MAP_UP;
        }
    }

    if (heldKeys & PAD_KEY_DOWN) {
        if (graphicsMan->cursorZ <= 27) {
            graphicsMan->cursorZ += 1;
            graphicsMan->queuedMovement |= TOWN_MAP_DOWN;
        }
    }

    if (heldKeys & PAD_KEY_RIGHT) {
        if (graphicsMan->cursorX <= 27) {
            graphicsMan->cursorX += 1;
            graphicsMan->queuedMovement |= TOWN_MAP_RIGHT;
        }
    }

    if (heldKeys & PAD_KEY_LEFT) {
        if (graphicsMan->cursorX >= 2) {
            graphicsMan->cursorX -= 1;
            graphicsMan->queuedMovement |= TOWN_MAP_LEFT;
        }
    }

    graphicsMan->zoomedMapMvtStage = 3;
    graphicsMan->queuedMovement |= 0x80;

    if (graphicsMan->zoomedInMapMvtDone != 0) {
        graphicsMan->zoomedInMapMvtFrame++;
    } else {
        graphicsMan->zoomedInMapMvtFrame = 0;
    }

    graphicsMan->zoomedInMapMvtDone = 0;
    graphicsMan->unk_15_0 = 1;

    return;
}

static void UpdateBottomScreenText(TownMapAppData *appData)
{
    TownMapGraphicsManager *graphicsMan = appData->graphicsMan;

    PrintLocationName(appData, &(graphicsMan->windows[TOWN_MAP_WINDOW_LOCATION_NAME]), graphicsMan->hoveredLocationMapHeader, graphicsMan->cursorX, graphicsMan->cursorZ);
    TownMap_UpdateHoveredFlyLocation(graphicsMan->flyLocations, graphicsMan->hoveredLocationMapHeader, graphicsMan->cursorX, graphicsMan->cursorZ);

    if (graphicsMan->showingZoomedInMap == TRUE) {
        SetHoveredLocation(appData, graphicsMan->hoveredBlock, graphicsMan->hoveredLocationMapHeader);
        Bg_ScheduleTilemapTransfer(appData->bgConfig, BG_LAYER_SUB_0);
        Bg_ScheduleTilemapTransfer(appData->bgConfig, BG_LAYER_SUB_1);
    }
}

static void UpdateHoveredLocation(TownMapAppData *appData)
{
    TownMapGraphicsManager *graphicsMan = appData->graphicsMan;

    graphicsMan->prevLocationMapHeader = graphicsMan->hoveredLocationMapHeader;
    graphicsMan->hoveredLocationMapHeader = MainMapMatrixData_GetMapHeaderIDAtCoords(appData->mainMapMatrixData, graphicsMan->cursorX, graphicsMan->cursorZ);
    graphicsMan->hoveredBlock = TownMap_GetMapBlockAtPosition(appData->mapBlockList, graphicsMan->cursorX, graphicsMan->cursorZ, appData->unlockedHiddenLocations);
}

static void LoadMapName(TownMapAppData *appData, enum MapHeader header, int x, int z)
{
    static const TownMapCoordsToHeader notOnMainMatrix[] = {
        { .x = 11, .z = 19, .header = MAP_HEADER_MT_CORONET_1F_SOUTH },
        { .x = 11, .z = 20, .header = MAP_HEADER_MT_CORONET_1F_SOUTH },
        { .x = 11, .z = 21, .header = MAP_HEADER_MT_CORONET_1F_SOUTH },
        { .x = 11, .z = 22, .header = MAP_HEADER_MT_CORONET_1F_SOUTH },
        { .x = 12, .z = 12, .header = MAP_HEADER_MT_CORONET_1F_SOUTH },
        { .x = 12, .z = 13, .header = MAP_HEADER_MT_CORONET_1F_SOUTH },
        { .x = 12, .z = 14, .header = MAP_HEADER_MT_CORONET_1F_SOUTH },
        { .x = 12, .z = 15, .header = MAP_HEADER_MT_CORONET_1F_SOUTH },
        { .x = 12, .z = 16, .header = MAP_HEADER_MT_CORONET_1F_SOUTH },
        { .x = 12, .z = 17, .header = MAP_HEADER_MT_CORONET_1F_SOUTH },
        { .x = 12, .z = 18, .header = MAP_HEADER_MT_CORONET_1F_SOUTH },
        { .x = 12, .z = 19, .header = MAP_HEADER_MT_CORONET_1F_SOUTH },
        { .x = 20, .z = 12, .header = MAP_HEADER_BATTLE_FRONTIER_GATE_TO_FIGHT_AREA },
    };

    if (header != MAP_HEADER_EVERYWHERE) {
        MapHeader_LoadName(header, appData->heapID, appData->hoveredMapName);
        return;
    }

    for (int i = 0; i < NELEMS(notOnMainMatrix); i++) {
        if (notOnMainMatrix[i].x == x && notOnMainMatrix[i].z == z) {
            MapHeader_LoadName(notOnMainMatrix[i].header, appData->heapID, appData->hoveredMapName);
            return;
        }
    }

    MapHeader_LoadName(MAP_HEADER_EVERYWHERE, appData->heapID, appData->hoveredMapName);
    return;
}

static void PrintLocationName(TownMapAppData *appData, Window *window, enum MapHeader header, int x, int z)
{
    u32 xOffset;
    TextColor textColor;
    TownMapGraphicsManager *graphicsMan = appData->graphicsMan;

    String_Clear(appData->hoveredMapName);
    Window_FillTilemap(window, 0);

    textColor = TEXT_COLOR(1, 2, 0);

    if (graphicsMan->hoveredBlock != NULL) {
        LoadMapName(appData, header, x, z);

        if (appData->mode == TOWN_MAP_MODE_FLY) {
            // Left aligned, after the arrow graphics.
            xOffset = 15 * TILE_WIDTH_PIXELS + 2;
        } else {
            // Centered.
            xOffset = HW_LCD_WIDTH - 6 * TILE_WIDTH_PIXELS - Font_CalcStringWidth(FONT_SYSTEM, appData->hoveredMapName, 0);
            xOffset /= 2;
        }

        Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, appData->hoveredMapName, xOffset, 6, TEXT_SPEED_NO_TRANSFER, textColor, NULL);
    }

    if (appData->mode == TOWN_MAP_MODE_FLY) {
        String *string = MessageLoader_GetNewString(appData->townMapStrings, 0);

        Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, 0, 6, TEXT_SPEED_NO_TRANSFER, textColor, NULL);
        String_Free(string);
    }

    Window_CopyToVRAM(window);
}

static void PrintLocationDescription(TownMapAppData *appData, Window *window, TownMapBlock *mapBlock)
{
    if (mapBlock == NULL) {
        Window_FillTilemap(window, 0);
        Window_CopyToVRAM(window);
        Window_ClearAndCopyToVRAM(window);
        return;
    }

    TextColor color = TEXT_COLOR(1, 2, 0);
    Window_FillTilemap(window, 0);

    if ((mapBlock->areaDescString != 0xFFFF) && ((appData->context->descCheckResults[mapBlock->index].areaDescHasCheck == FALSE) || appData->context->descCheckResults[mapBlock->index].areaDescCheckResult)) {
        String *areaDescString = MessageLoader_GetNewString(appData->townMapStrings, mapBlock->areaDescString);
        Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, areaDescString, mapBlock->areaDescX, mapBlock->areaDescY, TEXT_SPEED_NO_TRANSFER, color, NULL);
        String_Free(areaDescString);
    }

    if ((mapBlock->landmarkDescString != 0xFFFF) && ((appData->context->descCheckResults[mapBlock->index].landmarkDescHasCheck == FALSE) || appData->context->descCheckResults[mapBlock->index].landmarkCheckResult)) {
        String *landmarkDescString = MessageLoader_GetNewString(appData->townMapStrings, mapBlock->landmarkDescString);
        Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, landmarkDescString, mapBlock->landmarkDescX, mapBlock->landmarkDescY, TEXT_SPEED_NO_TRANSFER, color, NULL);
        String_Free(landmarkDescString);
    }
}

static void DoZoomedMapMvt(TownMapAppData *appData)
{
    int zoomedInMapMoveSpeed = 5;
    TownMapGraphicsManager *graphicsMan = appData->graphicsMan;

    if (!graphicsMan->zoomedMapMvtStage) {
        return;
    }

    if (graphicsMan->zoomedMapMvtStage-- == 3) {
        Sprite_SetPositionXY(graphicsMan->cursorSprite, TOWN_MAP_GRID_X(graphicsMan->cursorX), TOWN_MAP_GRID_Y(graphicsMan->cursorZ));
        Sprite_UpdateAnim(graphicsMan->cursorSprite, FX32_ONE);

        UpdateHoveredLocation(appData);
        PrintLocationName(appData, &(graphicsMan->windows[TOWN_MAP_WINDOW_LOCATION_NAME]), MainMapMatrixData_GetMapHeaderIDAtCoords(appData->mainMapMatrixData, graphicsMan->cursorX, graphicsMan->cursorZ), graphicsMan->cursorX, graphicsMan->cursorZ);
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

    MoveZoomedInMap(appData, graphicsMan->zoomedInMapCoords.x, graphicsMan->zoomedInMapCoords.y);

    if (graphicsMan->zoomedMapMvtStage > 0) {
        return;
    }

    graphicsMan->zoomedInMapMvtDone = TRUE;
    graphicsMan->queuedMovement = 0;

    if (graphicsMan->prevLocationMapHeader != graphicsMan->hoveredLocationMapHeader) {
        TownMap_UpdateHoveredFlyLocation(graphicsMan->flyLocations, -1, 0, 0);
    }
}

static void SetHoveredLocation(TownMapAppData *appData, TownMapBlock *block, enum MapHeader header)
{
    appData->hoveredMapHeader = header;
    appData->hoveredMapBlock = block;
    appData->locationChanged = TRUE;

    return;
}

static void EraseSignpost(TownMapAppData *appData)
{
    TownMapGraphicsManager *graphicsMan = appData->graphicsMan;
    Window *signpostWindow = graphicsMan->signpostWindow;
    graphicsMan->signpostWindow = NULL;

    if (signpostWindow == NULL) {
        return;
    }

    Window_FillTilemap(signpostWindow, 0);
    Window_ClearAndCopyToVRAM(signpostWindow);
    Window_EraseSignpost(signpostWindow, graphicsMan->signpostType, FALSE);
    Bg_ScheduleTilemapTransfer(appData->bgConfig, BG_LAYER_SUB_0);
}

static void PrintBottomScreenHeader(TownMapAppData *appData, Window *window)
{
    Bg_CopyRectToTilemapRect(appData->bgConfig, BG_LAYER_SUB_1, 10, 0, 12, 2, appData->zoomButtonStates->rawData, 0, 7, appData->zoomButtonStates->screenWidth / 8, appData->zoomButtonStates->screenHeight / 8);

    String *string = MessageLoader_GetNewString(appData->townMapStrings, 1);
    u32 yOffset = (10 * 8) - Font_CalcStringWidth(FONT_SYSTEM, string, 0);
    yOffset /= 2;
    TextColor color = TEXT_COLOR(1, 2, 0);

    Window_FillTilemap(window, 0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, yOffset, 0, TEXT_SPEED_NO_TRANSFER, color, NULL);
    Window_CopyToVRAM(window);
    String_Free(string);
}

static void MakeAppWindows(TownMapAppData *appData)
{
    TownMapGraphicsManager *graphicsMan = appData->graphicsMan;

    Window_Add(appData->bgConfig, &graphicsMan->windows[TOWN_MAP_WINDOW_LOCATION_NAME], BG_LAYER_MAIN_1, 3, 21, LOCATION_NAME_WINDOW_WIDTH, LOCATION_NAME_WINDOW_HEIGHT, PLTT_15, BASE_TILE_LOCATION_NAME);
    Window_Add(appData->bgConfig, &graphicsMan->windows[TOWN_MAP_WINDOW_SIGNPOST_NAME_1], BG_LAYER_SUB_0, 9, 3, SIGNPOST_NAME_1_WINDOW_WIDTH, SIGNPOST_NAME_1_WINDOW_HEIGHT, PLTT_14, BASE_TILE_SIGNPOST_NAME_1);
    Window_Add(appData->bgConfig, &graphicsMan->windows[TOWN_MAP_WINDOW_SIGNPOST_NAME_2], BG_LAYER_SUB_0, 2, 3, SIGNPOST_NAME_2_WINDOW_WIDTH, SIGNPOST_NAME_2_WINDOW_HEIGHT, PLTT_14, BASE_TILE_SIGNPOST_NAME_2);
    Window_Add(appData->bgConfig, &graphicsMan->windows[TOWN_MAP_WINDOW_LOCATION_DESCRIPTION], BG_LAYER_SUB_0, 1, 8, LOCATION_DESC_WINDOW_WIDTH, LOCATION_DESC_WINDOW_HEIGHT, PLTT_14, BASE_TILE_LOCATION_DESCRIPTION);
    Window_Add(appData->bgConfig, &graphicsMan->windows[TOWN_MAP_WINDOW_BOTTOM_SCREEN_HEADER], BG_LAYER_SUB_0, 11, 0, BOTTOM_SCREEN_HEADER_WINDOW_WIDTH, BOTTOM_SCREEN_HEADER_WINDOW_HEIGHT, PLTT_15, BASE_TILE_BOTTOM_SCREEN_HEADER);
    Window_FillTilemap(&(graphicsMan->windows[TOWN_MAP_WINDOW_LOCATION_NAME]), 0);
    Window_FillTilemap(&(graphicsMan->windows[TOWN_MAP_WINDOW_SIGNPOST_NAME_1]), 0);
    Window_FillTilemap(&(graphicsMan->windows[TOWN_MAP_WINDOW_SIGNPOST_NAME_2]), 0);
    Window_FillTilemap(&(graphicsMan->windows[TOWN_MAP_WINDOW_LOCATION_DESCRIPTION]), 0);
    Window_FillTilemap(&(graphicsMan->windows[TOWN_MAP_WINDOW_BOTTOM_SCREEN_HEADER]), 0);
    Window_CopyToVRAM(&graphicsMan->windows[TOWN_MAP_WINDOW_LOCATION_NAME]);
    Window_ClearAndCopyToVRAM(&graphicsMan->windows[TOWN_MAP_WINDOW_SIGNPOST_NAME_1]);
    Window_ClearAndCopyToVRAM(&graphicsMan->windows[TOWN_MAP_WINDOW_SIGNPOST_NAME_2]);
    Window_ClearAndCopyToVRAM(&graphicsMan->windows[TOWN_MAP_WINDOW_LOCATION_DESCRIPTION]);
    Window_ClearAndCopyToVRAM(&graphicsMan->windows[TOWN_MAP_WINDOW_BOTTOM_SCREEN_HEADER]);
}

static void DeleteAppWindows(TownMapAppData *appData)
{
    TownMapGraphicsManager *graphicsMan = appData->graphicsMan;

    for (u16 i = 0; i < NUM_TOWN_MAP_WINDOWS; i++) {
        Window_Remove(&graphicsMan->windows[i]);
    }
}

static void DrawZoomButton(TownMapAppData *appData, u8 state, u8 drawEntireScreen)
{
    if (drawEntireScreen) {
        Bg_CopyToTilemapRect(appData->bgConfig, BG_LAYER_SUB_1, 0, 0, HW_LCD_WIDTH / TILE_WIDTH_PIXELS, HW_LCD_HEIGHT / TILE_HEIGHT_PIXELS, appData->zoomButtonScreen->rawData, 0, 0, appData->zoomButtonScreen->screenWidth / TILE_WIDTH_PIXELS, appData->zoomButtonScreen->screenHeight / TILE_HEIGHT_PIXELS);
    }

    Bg_CopyRectToTilemapRect(appData->bgConfig, BG_LAYER_SUB_1, 13, 10, 6, 7, appData->zoomButtonStates->rawData, state * 6, 0, appData->zoomButtonStates->screenWidth / TILE_WIDTH_PIXELS, appData->zoomButtonStates->screenHeight / TILE_HEIGHT_PIXELS);
}

static void ShowHiddenLocation(TownMapAppData *appData, enum HiddenLocation location)
{
    TownMapGraphicsManager *graphicsMan = appData->graphicsMan;
    static const TilemapRectCopyParams hiddenLocationGraphicsRects[HIDDEN_LOCATION_MAX][4] = {
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
    const TilemapRectCopyParams *fullScreenMapBG = &((TilemapRectCopyParams *)hiddenLocationGraphicsRects)[location * 4 + 0];
    const TilemapRectCopyParams *fullScreenMap = &((TilemapRectCopyParams *)hiddenLocationGraphicsRects)[location * 4 + 1];
    const TilemapRectCopyParams *zoomedInMapBG = &((TilemapRectCopyParams *)hiddenLocationGraphicsRects)[location * 4 + 2];
    const TilemapRectCopyParams *zoomedInMap = &((TilemapRectCopyParams *)hiddenLocationGraphicsRects)[location * 4 + 3];

    Bg_CopyToTilemapRect(appData->bgConfig, BG_LAYER_MAIN_2, fullScreenMap->destX, fullScreenMap->destY, fullScreenMap->width, fullScreenMap->height, appData->hiddenLocationsFullScreenMapGraphics->rawData, fullScreenMap->srcX, fullScreenMap->srcY, ((appData->hiddenLocationsFullScreenMapGraphics)->screenWidth / TILE_WIDTH_PIXELS), ((appData->hiddenLocationsFullScreenMapGraphics)->screenHeight / TILE_HEIGHT_PIXELS));
    Bg_CopyRectToTilemapRect(appData->bgConfig, BG_LAYER_SUB_2, zoomedInMap->destX, zoomedInMap->destY, zoomedInMap->width, zoomedInMap->height, appData->hiddenLocationsZoomedInMapGraphics->rawData, zoomedInMap->srcX, zoomedInMap->srcY, ((appData->hiddenLocationsZoomedInMapGraphics)->screenWidth / TILE_WIDTH_PIXELS), ((appData->hiddenLocationsZoomedInMapGraphics)->screenHeight / TILE_HEIGHT_PIXELS));

    if (location == HIDDEN_LOCATION_SPRING_PATH) {
        return;
    }

    Bg_CopyToTilemapRect(appData->bgConfig, BG_LAYER_MAIN_3, fullScreenMapBG->destX, fullScreenMapBG->destY, fullScreenMapBG->width, fullScreenMapBG->height, appData->hiddenLocationsFullScreenMapGraphics->rawData, fullScreenMapBG->srcX, fullScreenMapBG->srcY, ((appData->hiddenLocationsFullScreenMapGraphics)->screenWidth / TILE_WIDTH_PIXELS), ((appData->hiddenLocationsFullScreenMapGraphics)->screenHeight / TILE_HEIGHT_PIXELS));
    Bg_CopyRectToTilemapRect(appData->bgConfig, BG_LAYER_SUB_3, zoomedInMapBG->destX, zoomedInMapBG->destY, zoomedInMapBG->width, zoomedInMapBG->height, appData->hiddenLocationsZoomedInMapGraphics->rawData, zoomedInMapBG->srcX, zoomedInMapBG->srcY, ((appData->hiddenLocationsZoomedInMapGraphics)->screenWidth / TILE_WIDTH_PIXELS), ((appData->hiddenLocationsZoomedInMapGraphics)->screenHeight / TILE_HEIGHT_PIXELS));
}

static void LoadMapGraphics(TownMapAppData *appData)
{
    TownMapGraphicsManager *graphicsMan = appData->graphicsMan;

    Bg_CopyToTilemapRect(appData->bgConfig, BG_LAYER_MAIN_2, 0, 0, HW_LCD_WIDTH / TILE_WIDTH_PIXELS, HW_LCD_HEIGHT / TILE_HEIGHT_PIXELS, appData->fullScreenMap->rawData, 0, 0, ((appData->fullScreenMap)->screenWidth / TILE_WIDTH_PIXELS), ((appData->fullScreenMap)->screenHeight / TILE_HEIGHT_PIXELS));
    Bg_CopyToTilemapRect(appData->bgConfig, BG_LAYER_MAIN_3, 0, 0, HW_LCD_WIDTH / TILE_WIDTH_PIXELS, HW_LCD_HEIGHT / TILE_HEIGHT_PIXELS, appData->fullScreenBG->rawData, 0, 0, ((appData->fullScreenBG)->screenWidth / TILE_WIDTH_PIXELS), ((appData->fullScreenBG)->screenHeight / TILE_HEIGHT_PIXELS));

    if (appData->mode != TOWN_MAP_MODE_FLY) { // The town map has an arrow between the "Fly to where?" text and the location name. This removes it.
        Bg_CopyToTilemapRect(appData->bgConfig, BG_LAYER_MAIN_3, 16, 21, 2, 3, appData->fullScreenBG->rawData, 0, 21, ((appData->fullScreenBG)->screenWidth / TILE_WIDTH_PIXELS), ((appData->fullScreenBG)->screenHeight / TILE_HEIGHT_PIXELS));
    }

    DrawZoomButton(appData, 0, TRUE);

    Bg_CopyRectToTilemapRect(appData->bgConfig, BG_LAYER_SUB_2, 0, 0, 512 / TILE_WIDTH_PIXELS, 512 / TILE_HEIGHT_PIXELS, appData->zoomedInMap->rawData, 0, 0, appData->zoomedInMap->screenWidth / TILE_WIDTH_PIXELS, appData->zoomedInMap->screenHeight / TILE_HEIGHT_PIXELS);
    Bg_CopyRectToTilemapRect(appData->bgConfig, BG_LAYER_SUB_3, 0, 0, 512 / TILE_WIDTH_PIXELS, 512 / TILE_HEIGHT_PIXELS, appData->zoomedInBG->rawData, 0, 0, appData->zoomedInBG->screenWidth / TILE_WIDTH_PIXELS, appData->zoomedInBG->screenHeight / TILE_HEIGHT_PIXELS);

    if (appData->unlockedHiddenLocations & (1 << HIDDEN_LOCATION_FULLMOON_ISLAND)) {
        ShowHiddenLocation(appData, HIDDEN_LOCATION_FULLMOON_ISLAND);
    }

    if (appData->unlockedHiddenLocations & (1 << HIDDEN_LOCATION_NEWMOON_ISLAND)) {
        ShowHiddenLocation(appData, HIDDEN_LOCATION_NEWMOON_ISLAND);
    }

    if (appData->unlockedHiddenLocations & (1 << HIDDEN_LOCATION_SPRING_PATH)) {
        ShowHiddenLocation(appData, HIDDEN_LOCATION_SPRING_PATH);
    }

    if (appData->unlockedHiddenLocations & (1 << HIDDEN_LOCATION_SEABREAK_PATH)) {
        ShowHiddenLocation(appData, HIDDEN_LOCATION_SEABREAK_PATH);
    }

    Bg_ScheduleTilemapTransfer(appData->bgConfig, BG_LAYER_MAIN_2);
    Bg_ScheduleTilemapTransfer(appData->bgConfig, BG_LAYER_MAIN_3);
    Bg_ScheduleTilemapTransfer(appData->bgConfig, BG_LAYER_SUB_1);
    Bg_ScheduleTilemapTransfer(appData->bgConfig, BG_LAYER_SUB_2);
    Bg_ScheduleTilemapTransfer(appData->bgConfig, BG_LAYER_SUB_3);
}

static void ClearBGLayers(TownMapAppData *appData)
{
    Bg_SetOffset(appData->bgConfig, BG_LAYER_SUB_2, BG_OFFSET_UPDATE_SET_Y, 0);
    Bg_SetOffset(appData->bgConfig, BG_LAYER_SUB_3, BG_OFFSET_UPDATE_SET_Y, 0);
    Bg_SetOffset(appData->bgConfig, BG_LAYER_SUB_2, BG_OFFSET_UPDATE_SET_X, 0);
    Bg_SetOffset(appData->bgConfig, BG_LAYER_SUB_3, BG_OFFSET_UPDATE_SET_X, 0);

    Bg_FillTilemapRect(appData->bgConfig, BG_LAYER_MAIN_0, 0x0, 0, 0, 32, 32, TILEMAP_FILL_VAL_INCLUDES_PALETTE);
    Bg_FillTilemapRect(appData->bgConfig, BG_LAYER_MAIN_1, 0x0, 0, 0, 32, 32, TILEMAP_FILL_VAL_INCLUDES_PALETTE);
    Bg_FillTilemapRect(appData->bgConfig, BG_LAYER_MAIN_2, 0x0, 0, 0, 32, 32, TILEMAP_FILL_VAL_INCLUDES_PALETTE);
    Bg_FillTilemapRect(appData->bgConfig, BG_LAYER_MAIN_3, 0x0, 0, 0, 32, 32, TILEMAP_FILL_VAL_INCLUDES_PALETTE);
    Bg_FillTilemapRect(appData->bgConfig, BG_LAYER_SUB_0, 0x0, 0, 0, 32, 32, TILEMAP_FILL_VAL_INCLUDES_PALETTE);
    Bg_FillTilemapRect(appData->bgConfig, BG_LAYER_SUB_1, 0x0, 0, 0, 32, 32, TILEMAP_FILL_VAL_INCLUDES_PALETTE);
    Bg_FillTilemapRect(appData->bgConfig, BG_LAYER_SUB_2, 0x0, 0, 0, 32, 32, TILEMAP_FILL_VAL_INCLUDES_PALETTE);
    Bg_FillTilemapRect(appData->bgConfig, BG_LAYER_SUB_3, 0x0, 0, 0, 32, 32, TILEMAP_FILL_VAL_INCLUDES_PALETTE);

    Bg_ScheduleTilemapTransfer(appData->bgConfig, BG_LAYER_MAIN_0);
    Bg_ScheduleTilemapTransfer(appData->bgConfig, BG_LAYER_MAIN_1);
    Bg_ScheduleTilemapTransfer(appData->bgConfig, BG_LAYER_MAIN_2);
    Bg_ScheduleTilemapTransfer(appData->bgConfig, BG_LAYER_MAIN_3);
    Bg_ScheduleTilemapTransfer(appData->bgConfig, BG_LAYER_SUB_0);
    Bg_ScheduleTilemapTransfer(appData->bgConfig, BG_LAYER_SUB_1);
    Bg_ScheduleTilemapTransfer(appData->bgConfig, BG_LAYER_SUB_2);
    Bg_ScheduleTilemapTransfer(appData->bgConfig, BG_LAYER_SUB_3);
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

static void CreateSprites(TownMapAppData *appData)
{
    TownMapGraphicsManager *graphicsMan = appData->graphicsMan;
    SpriteTemplateFromResourceHeader spriteTemplate = sTownMapSpriteTemplates[2];

    graphicsMan->zoomBtnShockwave = SpriteSystem_NewSpriteFromResourceHeader(appData->spriteSystem, appData->spriteMan, &sTownMapSpriteTemplates[0]);

    Sprite_SetDrawFlag(graphicsMan->zoomBtnShockwave, FALSE);
    Sprite_SetAnimSpeed(graphicsMan->zoomBtnShockwave, FX32_ONE);
    Sprite_SetPositionXY(graphicsMan->zoomBtnShockwave, 128, 108);

    graphicsMan->cursorSprite = SpriteSystem_NewSpriteFromResourceHeader(appData->spriteSystem, appData->spriteMan, &sTownMapSpriteTemplates[1]);

    Sprite_SetDrawFlag(graphicsMan->cursorSprite, TRUE);
    Sprite_SetAnimSpeed(graphicsMan->cursorSprite, FX32_CONST(2));
    Sprite_SetAnimateFlag(graphicsMan->cursorSprite, TRUE);
    Sprite_SetPositionXY(graphicsMan->cursorSprite, TOWN_MAP_GRID_X(graphicsMan->cursorX), TOWN_MAP_GRID_Y(graphicsMan->cursorZ));

    if (appData->context->trainerGender == GENDER_MALE) {
        spriteTemplate.plttIdx = PLTT_1;
    } else {
        spriteTemplate.plttIdx = PLTT_0;
    }

    graphicsMan->playerSprite = SpriteSystem_NewSpriteFromResourceHeader(appData->spriteSystem, appData->spriteMan, &spriteTemplate);

    Sprite_SetDrawFlag(graphicsMan->playerSprite, TRUE);
    Sprite_SetAnimFrame(graphicsMan->playerSprite, appData->context->trainerGender);
    Sprite_SetPositionXY(graphicsMan->playerSprite, TOWN_MAP_GRID_X(graphicsMan->cursorX), TOWN_MAP_GRID_Y(graphicsMan->cursorZ));
}

static void MoveZoomedInMap(TownMapAppData *appData, int x, int y)
{
    if (x < 8) {
        Bg_ScheduleScroll(appData->bgConfig, BG_LAYER_SUB_2, BG_OFFSET_UPDATE_SET_X, 8);
        Bg_ScheduleScroll(appData->bgConfig, BG_LAYER_SUB_3, BG_OFFSET_UPDATE_SET_X, 8);
    } else if (x > 256 - 8) {
        Bg_ScheduleScroll(appData->bgConfig, BG_LAYER_SUB_2, BG_OFFSET_UPDATE_SET_X, 256 - 8);
        Bg_ScheduleScroll(appData->bgConfig, BG_LAYER_SUB_3, BG_OFFSET_UPDATE_SET_X, 256 - 8);
    } else {
        Bg_ScheduleScroll(appData->bgConfig, BG_LAYER_SUB_2, BG_OFFSET_UPDATE_SET_X, x);
        Bg_ScheduleScroll(appData->bgConfig, BG_LAYER_SUB_3, BG_OFFSET_UPDATE_SET_X, x);
    }

    if (y < (72 + 8)) {
        Bg_ScheduleScroll(appData->bgConfig, BG_LAYER_SUB_2, BG_OFFSET_UPDATE_SET_Y, (72 + 8));
        Bg_ScheduleScroll(appData->bgConfig, BG_LAYER_SUB_3, BG_OFFSET_UPDATE_SET_Y, (72 + 8));
    } else if (y > 240 + 72 - 8) {
        Bg_ScheduleScroll(appData->bgConfig, BG_LAYER_SUB_2, BG_OFFSET_UPDATE_SET_Y, 240 + 72 - 8);
        Bg_ScheduleScroll(appData->bgConfig, BG_LAYER_SUB_3, BG_OFFSET_UPDATE_SET_Y, 240 + 72 - 8);
    } else {
        Bg_ScheduleScroll(appData->bgConfig, BG_LAYER_SUB_2, BG_OFFSET_UPDATE_SET_Y, y);
        Bg_ScheduleScroll(appData->bgConfig, BG_LAYER_SUB_3, BG_OFFSET_UPDATE_SET_Y, y);
    }
}

static int GetHistoryEntryForPos(TownMapLocationHistory *appData, int x, int y)
{
    for (int i = 0; i < appData->entryCount; i++) {
        if ((appData->entries[i].x == x) && (appData->entries[i].y == y)) {
            return i;
        }
    }

    return -1;
}

static void LoadLocationHistory(TownMapAppData *appData)
{
    TownMapGraphicsManager *graphicsMan = appData->graphicsMan;
    static const u16 directionMapping[4] = { 0, 2, 3, 1 };
    static const SpriteTemplateFromResourceHeader spriteTemplate = {
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

    MI_CpuClear8(&(graphicsMan->locationHistory), sizeof(TownMapLocationHistory));

    for (int i = 0; i < TOWN_MAP_HISTORY_LENGTH; i++) {
        TownMapLocationHistoryEntry *entry = &(appData->context->locationHistory[i]);

        if (entry->isSet == FALSE) {
            break;
        }

        if ((entry->x == appData->playerX) && (entry->z == appData->playerZ)) {
            continue;
        }

        int entryIdx = GetHistoryEntryForPos(&(graphicsMan->locationHistory), entry->x, entry->z);
        TownMapLocationHistoryEntryWithSprite *entryWithSprite;

        if (entryIdx < 0) {
            entryWithSprite = &(graphicsMan->locationHistory.entries[graphicsMan->locationHistory.entryCount++]);
        } else {
            entryWithSprite = &(graphicsMan->locationHistory.entries[entryIdx]);
        }

        entryWithSprite->x = entry->x;
        entryWithSprite->y = entry->z;

        if (entry->faceDirection > 3) {
            entryWithSprite->faceDirection = 0;
        } else {
            entryWithSprite->faceDirection = directionMapping[entry->faceDirection];
        }

        entryWithSprite->index = i;
        entryWithSprite->isSet = TRUE;

        entryWithSprite->sprite = SpriteSystem_NewSpriteFromResourceHeader(appData->spriteSystem, appData->spriteMan, &(spriteTemplate));

        Sprite_SetPositionXY(entryWithSprite->sprite, TOWN_MAP_GRID_X(entryWithSprite->x), TOWN_MAP_GRID_Y(entryWithSprite->y));
        Sprite_SetPriority(entryWithSprite->sprite, 2);
        Sprite_SetDrawFlag(entryWithSprite->sprite, FALSE);
    }

    if (graphicsMan->locationHistory.entryCount == 0) {
        return;
    }

    graphicsMan->locationHistory.currentShownIdx = graphicsMan->locationHistory.entryCount - 1;
    graphicsMan->locationHistory.sysTask = SysTask_Start(Task_UpdateShownLocationHistoryIdx, &graphicsMan->locationHistory, 1);
}

static void Task_UpdateShownLocationHistoryIdx(SysTask *sysTask, void *_locationHistory)
{
    TownMapLocationHistory *locationHistory = (TownMapLocationHistory *)_locationHistory;

    if (locationHistory->frameCount++ % 26 > 0) {
        return;
    }

    Sprite_SetDrawFlag(locationHistory->entries[locationHistory->previousShownIdx].sprite, FALSE);
    Sprite_SetDrawFlag(locationHistory->entries[locationHistory->currentShownIdx].sprite, TRUE);

    locationHistory->previousShownIdx = locationHistory->currentShownIdx;
    locationHistory->currentShownIdx = (locationHistory->currentShownIdx + (locationHistory->entryCount - 1)) % locationHistory->entryCount;

    if (locationHistory->frameCount > 26 * 10) {
        locationHistory->frameCount = 1;
    }
}

static void DeleteLocationHistorySprites(TownMapAppData *appData)
{
    TownMapGraphicsManager *graphicsMan = appData->graphicsMan;

    if (graphicsMan->locationHistory.sysTask != NULL) {
        SysTask_Done(graphicsMan->locationHistory.sysTask);
    }

    for (int i = 0; i < graphicsMan->locationHistory.entryCount; i++) {
        TownMapLocationHistoryEntryWithSprite *historyEntry = &(graphicsMan->locationHistory.entries[i]);
        Sprite_Delete2(historyEntry->sprite);
    }
}

static void SwitchBottomScreen(TownMapAppData *appData, BOOL isShowingZoomedInMap)
{
    TownMapGraphicsManager *graphicsMan = appData->graphicsMan;

    graphicsMan->taskState = 0;
    graphicsMan->taskFrameCount = 0;

    if (isShowingZoomedInMap == FALSE) {
        graphicsMan->sysTask = SysTask_Start(Task_SwitchBottomScreenToZoomedMap, appData, 0);
    } else {
        graphicsMan->sysTask = SysTask_Start(Task_SwitchBottomScreenToZoomButton, appData, 0);
    }
}

static void Task_SwitchBottomScreenToZoomedMap(SysTask *sysTask, void *_appData)
{
    TownMapAppData *appData = (TownMapAppData *)_appData;
    TownMapGraphicsManager *graphicsMan = appData->graphicsMan;
    static const u8 zoomBtnStateSequence[] = { 1, 2, 1, 0 };

    switch (graphicsMan->taskState) {
    case 0:
        Sprite_SetDrawFlag(graphicsMan->zoomBtnShockwave, TRUE);
        Sprite_SetAnimateFlag(graphicsMan->zoomBtnShockwave, 1);
        Sprite_SetAnimFrame(graphicsMan->zoomBtnShockwave, 1);
        Sound_PlayEffect(SEQ_SE_DP_BUTTON9);
        graphicsMan->taskState++;
        break;
    case 1:
        if (graphicsMan->taskFrameCount % 2) {
            DrawZoomButton(appData, zoomBtnStateSequence[graphicsMan->taskFrameCount / 2], FALSE);
            Bg_ScheduleTilemapTransfer(appData->bgConfig, BG_LAYER_SUB_1);
        }

        if (graphicsMan->taskFrameCount++ > 7) {
            graphicsMan->taskState++;
        }

        break;
    case 2:
        Sprite_SetDrawFlag(graphicsMan->zoomBtnShockwave, FALSE);
        Sprite_SetAnimateFlag(graphicsMan->zoomBtnShockwave, FALSE);

        appData->dummy_14 = 0;
        StartScreenFade(FADE_SUB_ONLY, FADE_TYPE_UNK_13, FADE_TYPE_UNK_2, COLOR_BLACK, 8, 1, appData->heapID);
        graphicsMan->taskState++;
        break;
    case 3:
        if (!IsScreenFadeDone()) {
            return;
        }

        graphicsMan->showingZoomedInMap = 1;

        Bg_FillTilemapRect(appData->bgConfig, BG_LAYER_SUB_0, 0x0, 0, 0, 32, 32, TILEMAP_FILL_VAL_INCLUDES_PALETTE);
        Bg_FillTilemapRect(appData->bgConfig, BG_LAYER_SUB_1, 0x0, 0, 0, 32, 32, TILEMAP_FILL_VAL_INCLUDES_PALETTE);

        PrintBottomScreenHeader(appData, &(graphicsMan->windows[TOWN_MAP_WINDOW_BOTTOM_SCREEN_HEADER]));
        UpdateHoveredLocation(appData);
        UpdateBottomScreenText(appData);

        appData->dummy_14 = 0;
        StartScreenFade(FADE_SUB_ONLY, FADE_TYPE_UNK_13, FADE_TYPE_UNK_5, COLOR_BLACK, 8, 1, appData->heapID);
        graphicsMan->taskState++;
        break;
    case 4:
        if (!IsScreenFadeDone()) {
            return;
        }

        graphicsMan->taskFrameCount = 0;
        graphicsMan->taskState = 0;
        graphicsMan->zoomedInMapTransitionStage -= 2;

        SysTask_Done(sysTask);

        graphicsMan->sysTask = NULL;
        break;
    }
}

static void Task_SwitchBottomScreenToZoomButton(SysTask *sysTask, void *_appData)
{
    TownMapAppData *appData = (TownMapAppData *)_appData;
    TownMapGraphicsManager *graphicsMan = appData->graphicsMan;

    switch (graphicsMan->taskState) {
    case 0:
        appData->dummy_14 = 0;
        StartScreenFade(FADE_SUB_ONLY, FADE_TYPE_UNK_13, FADE_TYPE_UNK_2, COLOR_BLACK, 8, 1, appData->heapID);
        Sound_PlayEffect(SEQ_SE_DP_MEKURU3);
        graphicsMan->taskState++;
        break;
    case 1:
        if (!IsScreenFadeDone()) {
            return;
        }

        Bg_FillTilemapRect(appData->bgConfig, BG_LAYER_SUB_0, 0x0, 0, 0, 32, 32, TILEMAP_FILL_VAL_INCLUDES_PALETTE);
        DrawZoomButton(appData, 0, TRUE);
        Bg_ScheduleTilemapTransfer(appData->bgConfig, BG_LAYER_SUB_0);
        Bg_ScheduleTilemapTransfer(appData->bgConfig, BG_LAYER_SUB_1);
        appData->dummy_14 = 0;
        StartScreenFade(FADE_SUB_ONLY, FADE_TYPE_UNK_13, FADE_TYPE_UNK_5, COLOR_BLACK, 8, 1, appData->heapID);
        graphicsMan->taskState++;
        break;
    case 2:
        if (!IsScreenFadeDone()) {
            return;
        }

        graphicsMan->showingZoomedInMap = FALSE;
        graphicsMan->taskState = 0;
        graphicsMan->taskFrameCount = 0;
        graphicsMan->zoomedInMapTransitionStage -= 2;
        SysTask_Done(sysTask);
        graphicsMan->sysTask = NULL;
        return;
    }

    return;
}

static BOOL CanFlyToHoveredLocation(TownMapAppData *appData)
{
    TownMapGraphicsManager *graphicsMan = appData->graphicsMan;
    TownMapAppFlyLocation *flyLocation = NULL;

    if (graphicsMan->hoveredBlock == NULL) {
        return FALSE;
    }

    flyLocation = TownMap_GetFlyLocationAtPos(graphicsMan->flyLocations, graphicsMan->hoveredLocationMapHeader, graphicsMan->cursorX, graphicsMan->cursorZ);

    if ((flyLocation == NULL) || (flyLocation->isUnlocked == FALSE)) {
        return FALSE;
    }

    appData->context->flyLocationSelected = TRUE;
    appData->context->flyLocationX = graphicsMan->cursorX;
    appData->context->flyLocationZ = graphicsMan->cursorZ;
    appData->context->flyLocationMapHeader = graphicsMan->hoveredLocationMapHeader;

    return TRUE;
}
