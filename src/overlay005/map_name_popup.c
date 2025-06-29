#include "overlay005/map_name_popup.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"

#include "field/field_system.h"
#include "field/field_system_sub2_t.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "map_header.h"
#include "map_header_util.h"
#include "message.h"
#include "palette.h"
#include "strbuf.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"

enum MapNamePopUpState {
    MAP_NAME_POPUP_STATE_END,
    MAP_NAME_POPUP_STATE_SLIDE_IN,
    MAP_NAME_POPUP_STATE_SLIDE_OUT,
    MAP_NAME_POPUP_STATE_WAIT
};

typedef struct MapNamePopUp {
    BOOL isInited;
    u8 state;
    SysTask *task;
    s32 yOffset;
    u16 timer;
    BOOL shouldSlideIn;
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
static void MapNamePopUp_LoadAreaGfx(MapNamePopUp *mapPopUp, u8 bgLayer, u16 tileStart, u8 offset, u8 unused);
static void MapNamePopUp_Reset(MapNamePopUp *mapPopUp);
static void MapNamePopUp_SetBgConfig(MapNamePopUp *mapPopUp, BgConfig *bgConfig);
static void SysTask_MapNamePopUpWindow(SysTask *task, void *param);
static void MapNamePopUp_DrawWindowFrame(MapNamePopUp *mapPopUp, const s32 strWidth);
static void MapNamePopUp_StartSlideOut(MapNamePopUp *mapPopUp);
static void MapNamePopUp_PrintMapName(MapNamePopUp *mapPopUp, const Strbuf *strbuf);

static void MapNamePopUp_LoadPalette(void *src, u16 size, u16 offset)
{
    DC_FlushRange(src, PLTT_OFFSET(size));
    GX_LoadBGPltt(src, PLTT_OFFSET(offset), PLTT_OFFSET(size));
}

static void MapNamePopUp_CreateWindow(MapNamePopUp *mapPopUp)
{
    Window_Add(mapPopUp->bgConfig, &mapPopUp->window, BG_LAYER_MAIN_3, 0, 0, 32, 5, 7, ((((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4)) - (32 * 5)));
}

static void MapNamePopUp_LoadAreaGfx(MapNamePopUp *mapPopUp, u8 bgLayer, u16 tileStart, u8 offset, u8 unused)
{
    void *ptr;

    NNSG2dPaletteData *paletteData;
    u8 narcMemberIdx = mapPopUp->windowID * 2;

    mapPopUp->tiles = Graphics_GetCharData(NARC_INDEX_ARC__AREA_WIN_GRA, narcMemberIdx, FALSE, &mapPopUp->unk_34, HEAP_ID_FIELD);
    Bg_LoadTiles(mapPopUp->bgConfig, bgLayer, mapPopUp->unk_34->pRawData, mapPopUp->unk_34->szByte, tileStart);
    ptr = Graphics_GetPlttData(NARC_INDEX_ARC__AREA_WIN_GRA, narcMemberIdx + 1, &paletteData, HEAP_ID_FIELD);

    MapNamePopUp_LoadPalette(paletteData->pRawData, 1, offset);
    Heap_Free(ptr);
}

static void MapNamePopUp_DrawWindowFrame(MapNamePopUp *mapPopUp, s32 strWidth)
{
    int width;
    int v1;
    int xOffset;
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
        xOffset = 0;
    } else {
        v1 = (width + 8) / 8;
        v1 += v6;

        xOffset = (((v1 * 8) + (4 * 2)) - strWidth) / 2;
    }

    mapPopUp->xOffset = (8 - 4) + xOffset;

    {
        int i;

        MapNamePopUp_LoadAreaGfx(mapPopUp, BG_LAYER_MAIN_3, (1024 - (18 + 12) - 9 - (32 * 8)), 7, 0);
        Window_FillTilemap(&mapPopUp->window, 0);

        for (i = 0; i < 85; i++) {
            Window_BlitBitmapRect(&mapPopUp->window, mapPopUp->unk_34->pRawData, i * 8, 0, 8, 8, (i % 17) * 8, (i / 17) * 8, 8, 8);
        }

        Window_CopyToVRAM(&mapPopUp->window);
        Heap_Free(mapPopUp->tiles);
    }
}

static void MapNamePopUp_Reset(MapNamePopUp *mapPopUp)
{
    mapPopUp->isInited = FALSE;
    mapPopUp->state = MAP_NAME_POPUP_STATE_END;
    mapPopUp->task = NULL;
    mapPopUp->yOffset = 0;
    mapPopUp->timer = 0;
    mapPopUp->shouldSlideIn = FALSE;
    mapPopUp->entryID = 0;
    mapPopUp->bgConfig = NULL;
}

static void MapNamePopUp_SetBgConfig(MapNamePopUp *mapPopUp, BgConfig *bgConfig)
{
    MapNamePopUp_Reset(mapPopUp);
    mapPopUp->bgConfig = bgConfig;
}

static void SysTask_MapNamePopUpWindow(SysTask *task, void *param)
{
    u32 strWidth;
    MapNamePopUp *mapPopUp = (MapNamePopUp *)(param);

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
            if (mapPopUp->shouldSlideIn) {
                mapPopUp->shouldSlideIn = FALSE;

                strWidth = MapHeader_LoadString(mapPopUp->msgLoader, mapPopUp->entryID, mapPopUp->strbuf);

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

static void MapNamePopUp_PrintMapName(MapNamePopUp *mapPopUp, const Strbuf *strbuf)
{
    TextColor color = TEXT_COLOR(3, 2, 0);
    Text_AddPrinterWithParamsAndColor(&mapPopUp->window, FONT_SYSTEM, strbuf, mapPopUp->xOffset, (8 * 2), TEXT_SPEED_INSTANT, color, NULL);
}

static void MapNamePopUp_StartSlideOut(MapNamePopUp *mapPopUp)
{
    mapPopUp->state = MAP_NAME_POPUP_STATE_SLIDE_OUT;
    mapPopUp->timer = 0;
}

MapNamePopUp *MapNamePopUp_Create(BgConfig *bgConfig)
{
    MapNamePopUp *mapPopUp = Heap_AllocFromHeap(HEAP_ID_FIELD, sizeof(MapNamePopUp));
    mapPopUp->strbuf = Strbuf_Init(22, HEAP_ID_FIELD);

    MapNamePopUp_SetBgConfig(mapPopUp, bgConfig);
    MapNamePopUp_CreateWindow(mapPopUp);

    mapPopUp->msgLoader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_LOCATION_NAMES, HEAP_ID_FIELD);
    return mapPopUp;
}

void MapNamePopUp_Destroy(MapNamePopUp *mapPopUp)
{
    MessageLoader_Free(mapPopUp->msgLoader);
    Window_Remove(&mapPopUp->window);
    Strbuf_Free(mapPopUp->strbuf);
    Heap_Free(mapPopUp);

    mapPopUp = NULL;
}

void MapNamePopUp_Show(MapNamePopUp *mapPopUp, s32 mapLabelTextID, s32 mapLabelWindowID)
{
    u32 strWidth;

    mapPopUp->entryID = mapLabelTextID;

    if (mapPopUp->isInited == FALSE) {
        mapPopUp->isInited = TRUE;

        Bg_SetOffset(mapPopUp->bgConfig, BG_LAYER_MAIN_3, BG_OFFSET_UPDATE_SET_Y, 38);

        mapPopUp->yOffset = 38;
        mapPopUp->task = SysTask_Start(SysTask_MapNamePopUpWindow, mapPopUp, 0);
        mapPopUp->state = MAP_NAME_POPUP_STATE_SLIDE_IN;

        strWidth = MapHeader_LoadString(mapPopUp->msgLoader, mapPopUp->entryID, mapPopUp->strbuf);
        mapPopUp->windowID = mapLabelWindowID;

        MapNamePopUp_DrawWindowFrame(mapPopUp, strWidth);
        MapNamePopUp_PrintMapName(mapPopUp, mapPopUp->strbuf);
    } else {
        switch (mapPopUp->state) {
        case MAP_NAME_POPUP_STATE_SLIDE_IN:
        case MAP_NAME_POPUP_STATE_WAIT:
            MapNamePopUp_StartSlideOut(mapPopUp);
            mapPopUp->shouldSlideIn = TRUE;
            mapPopUp->windowID = mapLabelWindowID;
            break;
        case MAP_NAME_POPUP_STATE_SLIDE_OUT:
            mapPopUp->shouldSlideIn = TRUE;
            mapPopUp->windowID = mapLabelWindowID;
            break;
        case MAP_NAME_POPUP_STATE_END:
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

    BgConfig *bgConfig = mapPopUp->bgConfig;
    MapNamePopUp_SetBgConfig(mapPopUp, bgConfig);
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

        MapNamePopUp_Show(fieldSystem->unk_04->unk_08, mapLabelTextID, mapLabelWindowID);
    }
}
