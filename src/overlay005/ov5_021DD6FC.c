#include "overlay005/ov5_021DD6FC.h"

#include <nitro.h>
#include <string.h>

#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "text/pl_msg.naix"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "map_header.h"
#include "message.h"
#include "strbuf.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "unk_02071CFC.h"

#define MAP_NAME_POPUP_HEAP_ID 4

enum MapNamePopUpState {
    MAP_NAME_POPUP_STATE_END,
    MAP_NAME_POPUP_STATE_SLIDE_IN,
    MAP_NAME_POPUP_STATE_SLIDE_OUT,
    MAP_NAME_POPUP_STATE_WAIT
};

typedef struct UnkStruct_ov5_021DD9C8_t {
    BOOL inUse;
    u8 state;
    SysTask *task;
    s32 yOffset;
    u16 timer;
    BOOL unk_14;
    u32 entryID;
    BgConfig *bgConfig;
    Window window;
    u8 xOffset;
    u8 windowID;
    NNSG2dCharacterData *unk_34;
    void *tiles;
    MessageLoader *msgLoader;
    Strbuf *strbuf;
} MapNamePopUp;

static void MapNamePopUp_CreateWindow(MapNamePopUp *mapPopUp);
static void ov5_021DD744(MapNamePopUp *mapPopUp, u8 param1, u16 param2, u8 param3, u8 param4);
static void ov5_021DD880(MapNamePopUp *mapPopUp);
static void MapNamePopUp_SetBgConfig(MapNamePopUp *mapPopUp, BgConfig *param1);
static void SysTask_MapNamePopUpWindow(SysTask *mapPopUp, void *param1);
static void MapNamePopUp_DrawWindowFrame(MapNamePopUp *mapPopUp, const int strWidth);
static void MapNamePopUp_SlideOut(MapNamePopUp *mapPopUp);
static void MapNamePopUp_PrintMapName(MapNamePopUp *mapPopUp, const Strbuf *param1);

static void ov5_021DD6FC(void *param0, u16 param1, u16 param2)
{
    DC_FlushRange((void *)param0, param1 * 32);
    GX_LoadBGPltt((const void *)param0, param2 * 32, param1 * 32);
}

static void MapNamePopUp_CreateWindow(MapNamePopUp *mapPopUp)
{
    Window_Add(mapPopUp->bgConfig, &mapPopUp->window, BG_LAYER_MAIN_3, 0, 0, 32, 5, 7, ((((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4)) - (32 * 5)));
}

static void ov5_021DD744(MapNamePopUp *mapPopUp, u8 bgLayer, u16 tileStart, u8 param3, u8 unused)
{
    void *ptr;
    u32 v1; // Unused
    NNSG2dPaletteData *paletteData;
    u8 v3;

    v3 = mapPopUp->windowID * 2;

    mapPopUp->tiles = Graphics_GetCharData(NARC_INDEX_ARC__AREA_WIN_GRA, v3, FALSE, &mapPopUp->unk_34, MAP_NAME_POPUP_HEAP_ID);
    Bg_LoadTiles(mapPopUp->bgConfig, bgLayer, mapPopUp->unk_34->pRawData, mapPopUp->unk_34->szByte, tileStart);
    ptr = Graphics_GetPlttData(160, v3 + 1, &paletteData, MAP_NAME_POPUP_HEAP_ID);

    ov5_021DD6FC(paletteData->pRawData, 1, param3);
    Heap_FreeToHeap(ptr);
}

static void MapNamePopUp_DrawWindowFrame(MapNamePopUp *mapPopUp, const int strWidth)
{
    int width;
    int v1;
    int v2;
    int v3;
    int v4;
    int v5;
    u8 v6;
    u8 v7;

    v3 = (strWidth + 8) / 8 * 8;
    v4 = v3 - strWidth;
    v5 = v4 / 2;

    if (8 <= (4 + v5)) {
        v6 = 0;
    } else {
        int v8;

        v8 = 8 - (4 + v5);
        v8 *= 2;
        v6 = (v8 + (8 - 1)) / 8;
    }

    width = strWidth;

    if (width <= 0) {
        v1 = 0;
        v2 = 0;
    } else {
        v1 = (width + 8) / 8;
        v1 += v6;

        v2 = (((v1 * 8) + (4 * 2)) - strWidth) / 2;
    }

    mapPopUp->xOffset = (8 - 4) + v2;

    {
        int i;
        int unused;

        ov5_021DD744(mapPopUp, BG_LAYER_MAIN_3, (1024 - (18 + 12) - 9 - (32 * 8)), 7, 0);
        Window_FillTilemap(&mapPopUp->window, 0);

        // window background
        for (i = 0; i < 85; i++) {
            Window_BlitBitmapRect(&mapPopUp->window, mapPopUp->unk_34->pRawData, i * 8, 0, 8, 8, (i % 17) * 8, (i / 17) * 8, 8, 8);
        }

        Window_CopyToVRAM(&mapPopUp->window);
        Heap_FreeToHeap(mapPopUp->tiles);
    }
}

// Reset
static void MapNamePopUp_Reset(MapNamePopUp *mapPopUp)
{
    mapPopUp->unk_00 = FALSE;
    mapPopUp->state = MAP_NAME_POPUP_STATE_END;
    mapPopUp->task = NULL;
    mapPopUp->yOffset = 0;
    mapPopUp->timer = 0;
    mapPopUp->unk_14 = FALSE;
    mapPopUp->entryID = 0;
    mapPopUp->bgConfig = NULL;
}

static void MapNamePopUp_SetBgConfig(MapNamePopUp *mapPopUp, BgConfig *bgConfig)
{
    MapNamePopUp_Reset(mapPopUp);
    mapPopUp->bgConfig = bgConfig;
}

static void SysTask_MapNamePopUpWindow(SysTask *param0, void *param1)
{
    u16 v0[22]; // Unused
    u32 strWidth;
    MapNamePopUp *mapPopUp = (MapNamePopUp *)(param1);

    switch (mapPopUp->state) {
    case MAP_NAME_POPUP_STATE_SLIDE_IN:
        mapPopUp->yOffset -= 4;

        if (mapPopUp->yOffset < 0) {
            mapPopUp->yOffset = 0;
        }

        Bg_SetOffset(mapPopUp->bgConfig, BG_LAYER_MAIN_3, BG_OFFSET_UPDATE_SET_Y, mapPopUp->yOffset);

        if (mapPopUp->yOffset == 0) {
            mapPopUp->timer = 0;
            mapPopUp->state = MAP_NAME_POPUP_STATE_WAIT;
        }

        break;
    case MAP_NAME_POPUP_STATE_WAIT:
        mapPopUp->timer++;

        if (mapPopUp->timer >= 60) {
            mapPopUp->timer = 0;
            mapPopUp->state = MAP_NAME_POPUP_STATE_SLIDE_OUT;
        }

        break;
    case MAP_NAME_POPUP_STATE_SLIDE_OUT:
        mapPopUp->yOffset += 4;

        if (mapPopUp->yOffset > 38) {
            mapPopUp->yOffset = 38;
        }

        Bg_SetOffset(mapPopUp->bgConfig, BG_LAYER_MAIN_3, BG_OFFSET_UPDATE_SET_Y, mapPopUp->yOffset);

        if (mapPopUp->yOffset == 38) {
            if (mapPopUp->unk_14) {
                mapPopUp->unk_14 = FALSE;

                strWidth = MapHeader_GetStringWidth(mapPopUp->msgLoader, mapPopUp->entryID, mapPopUp->strbuf);

                MapNamePopUp_DrawWindowFrame(mapPopUp, strWidth);
                MapNamePopUp_PrintMapName(mapPopUp, mapPopUp->strbuf);
                mapPopUp->state = MAP_NAME_POPUP_STATE_SLIDE_IN;
            } else {
                MapNamePopUp_Hide(mapPopUp);
                return;
            }
        }

        break;
    case MAP_NAME_POPUP_STATE_END:
    default:
        break;
    }
}

static void MapNamePopUp_PrintMapName(MapNamePopUp *mapPopUp, const Strbuf *param1)
{
    TextColor color = TEXT_COLOR(3, 2, 0);
    Text_AddPrinterWithParamsAndColor(&mapPopUp->window, FONT_SYSTEM, param1, mapPopUp->xOffset, (8 * 2), TEXT_SPEED_INSTANT, color, NULL);
}

static void MapNamePopUp_SlideOut(MapNamePopUp *mapPopUp)
{
    mapPopUp->state = MAP_NAME_POPUP_STATE_SLIDE_OUT;
    mapPopUp->timer = 0;
}

MapNamePopUp *MapNamePopUp_Create(BgConfig *param0)
{
    MapNamePopUp *mapPopUp;

    mapPopUp = Heap_AllocFromHeap(MAP_NAME_POPUP_HEAP_ID, sizeof(MapNamePopUp));
    mapPopUp->strbuf = Strbuf_Init(22, MAP_NAME_POPUP_HEAP_ID);

    MapNamePopUp_SetBgConfig(mapPopUp, param0);
    MapNamePopUp_CreateWindow(mapPopUp);

    mapPopUp->msgLoader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, message_bank_location_names, MAP_NAME_POPUP_HEAP_ID);
    return mapPopUp;
}

void MapNamePopUp_DestroyTextWindow(MapNamePopUp *mapPopUp)
{
    MessageLoader_Free(mapPopUp->msgLoader);
    Window_Remove(&mapPopUp->window);
    Strbuf_Free(mapPopUp->strbuf);
    Heap_FreeToHeap(mapPopUp);

    mapPopUp = NULL;
}

void MapNamePop_Show(MapNamePopUp *mapPopUp, const int mapLabelTextID, const int mapLabelWindowID)
{
    u16 v0[22]; // Unused
    u32 strWidth;

    mapPopUp->entryID = mapLabelTextID;

    if (mapPopUp->unk_00 == FALSE) {
        mapPopUp->unk_00 = TRUE;

        Bg_SetOffset(mapPopUp->bgConfig, BG_LAYER_MAIN_3, BG_OFFSET_UPDATE_SET_Y, 38);

        mapPopUp->yOffset = 38;
        mapPopUp->task = SysTask_Start(SysTask_MapNamePopUpWindow, mapPopUp, 0);
        mapPopUp->state = MAP_NAME_POPUP_STATE_SLIDE_IN;

        strWidth = MapHeader_GetStringWidth(mapPopUp->msgLoader, mapPopUp->entryID, mapPopUp->strbuf);
        mapPopUp->windowID = mapLabelWindowID;

        MapNamePopUp_DrawWindowFrame(mapPopUp, strWidth);
        MapNamePopUp_PrintMapName(mapPopUp, mapPopUp->strbuf);
    } else {
        switch (mapPopUp->state) {
        case MAP_NAME_POPUP_STATE_SLIDE_IN:
        case MAP_NAME_POPUP_STATE_WAIT:
            MapNamePopUp_SlideOut(mapPopUp);
            mapPopUp->unk_14 = TRUE;
            mapPopUp->windowID = mapLabelWindowID;
            break;
        case MAP_NAME_POPUP_STATE_SLIDE_OUT:
            mapPopUp->unk_14 = TRUE;
            mapPopUp->windowID = mapLabelWindowID;
            break;
        case 0:
        default:
            GF_ASSERT(0);
            break;
        }
    }
}

void MapNamePopUp_Hide(MapNamePopUp *mapPopUp)
{
    if (mapPopUp->task != NULL) {
        SysTask_Done(mapPopUp->task);
    }

    Window_ClearAndCopyToVRAM(&mapPopUp->window);
    Bg_SetOffset(mapPopUp->bgConfig, BG_LAYER_MAIN_3, BG_OFFSET_UPDATE_SET_Y, 0);

    {
        BgConfig *bgConfig = mapPopUp->bgConfig;
        MapNamePopUp_SetBgConfig(mapPopUp, bgConfig);
    }
}

void FieldSystem_RequestLocationName(FieldSystem *fieldSystem)
{
    u32 mapLabelTextID;
    u32 mapLabelWindowID;

    if (MapHeader_GetMapLabelWindowID(fieldSystem->location->mapId) == 0) {
        return;
    }

    if (!MapHeader_IsBuilding(fieldSystem->location->mapId)) {
        mapLabelTextID = MapHeader_GetMapLabelTextID(fieldSystem->location->mapId);
        mapLabelWindowID = MapHeader_GetMapLabelWindowID(fieldSystem->location->mapId);

        if (mapLabelWindowID != 0) {
            mapLabelWindowID--;
        }

        MapNamePop_Show(fieldSystem->unk_04->unk_08, mapLabelTextID, mapLabelWindowID);
    }
}
