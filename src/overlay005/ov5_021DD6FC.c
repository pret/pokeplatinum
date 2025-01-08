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

#define MAP_NAME_POPUP_UNK_STATE_0     0
#define MAP_NAME_POPUP_UNK_STATE_1     1
#define MAP_NAME_POPUP_STATE_SLIDE_OUT 2
#define MAP_NAME_POPUP_STATE_WAIT      3

typedef struct UnkStruct_ov5_021DD9C8_t {
    BOOL unk_00;
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
    void *charData;
    MessageLoader *msgLoader;
    Strbuf *strbuf;
} MapNamePopUp;

static void MapNamePopUp_CreateWindow(MapNamePopUp *mapPopUp);
static void ov5_021DD744(MapNamePopUp *mapPopUp, u8 param1, u16 param2, u8 param3, u8 param4);
static void ov5_021DD880(MapNamePopUp *mapPopUp);
static void MapNamePopUp_SetBgConfig(MapNamePopUp *mapPopUp, BgConfig *param1);
static void Task_MapNamePopUpWindow(SysTask *mapPopUp, void *param1);
static void ov5_021DD7A0(MapNamePopUp *mapPopUp, const int strWidth);
static void ov5_021DD980(MapNamePopUp *mapPopUp);
static void ov5_021DD954(MapNamePopUp *mapPopUp, const Strbuf *param1);

static void ov5_021DD6FC(void *param0, u16 param1, u16 param2)
{
    DC_FlushRange((void *)param0, param1 * 32);
    GX_LoadBGPltt((const void *)param0, param2 * 32, param1 * 32);
}

static void MapNamePopUp_CreateWindow(MapNamePopUp *mapPopUp)
{
    Window_Add(mapPopUp->bgConfig, &mapPopUp->window, BG_LAYER_MAIN_3, 0, 0, 32, 5, 7, ((((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4)) - (32 * 5)));
}

static void ov5_021DD744(MapNamePopUp *mapPopUp, u8 param1, u16 param2, u8 param3, u8 param4)
{
    void *ptr;
    u32 v1; // Unused
    NNSG2dPaletteData *paletteData;
    u8 v3;

    v3 = mapPopUp->windowID * 2;

    mapPopUp->charData = Graphics_GetCharData(NARC_INDEX_ARC__AREA_WIN_GRA, v3, FALSE, &mapPopUp->unk_34, MAP_NAME_POPUP_HEAP_ID);
    Bg_LoadTiles(mapPopUp->bgConfig, param1, mapPopUp->unk_34->pRawData, mapPopUp->unk_34->szByte, param2);
    ptr = Graphics_GetPlttData(160, v3 + 1, &paletteData, MAP_NAME_POPUP_HEAP_ID);

    ov5_021DD6FC(paletteData->pRawData, 1, param3);
    Heap_FreeToHeap(ptr);
}

static void ov5_021DD7A0(MapNamePopUp *mapPopUp, const int strWidth)
{
    int v0;
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

    v0 = strWidth;

    if (v0 <= 0) {
        v1 = 0;
        v2 = 0;
    } else {
        v1 = (v0 + 8) / 8;
        v1 += v6;

        v2 = (((v1 * 8) + (4 * 2)) - strWidth) / 2;
    }

    mapPopUp->xOffset = (8 - 4) + v2;

    {
        int v9, v10;

        ov5_021DD744(mapPopUp, 3, (1024 - (18 + 12) - 9 - (32 * 8)), 7, 0);
        Window_FillTilemap(&mapPopUp->window, 0);

        for (v9 = 0; v9 < 85; v9++) {
            Window_BlitBitmapRect(&mapPopUp->window, mapPopUp->unk_34->pRawData, v9 * 8, 0, 8, 8, (v9 % 17) * 8, (v9 / 17) * 8, 8, 8);
        }

        Window_CopyToVRAM(&mapPopUp->window);
        Heap_FreeToHeap(mapPopUp->charData);
    }
}

// Reset
static void MapNamePopUp_Reset(MapNamePopUp *mapPopUp)
{
    mapPopUp->unk_00 = FALSE;
    mapPopUp->state = MAP_NAME_POPUP_UNK_STATE_0;
    mapPopUp->task = NULL;
    mapPopUp->yOffset = 0;
    mapPopUp->timer = 0;
    mapPopUp->unk_14 = FALSE;
    mapPopUp->entryID = 0;
    mapPopUp->bgConfig = NULL;
}

static void MapNamePopUp_SetBgConfig(MapNamePopUp *mapPopUp, BgConfig *param1)
{
    MapNamePopUp_Reset(mapPopUp);
    mapPopUp->bgConfig = param1;
}

static void Task_MapNamePopUpWindow(SysTask *param0, void *param1)
{
    u16 v0[22]; // Unused
    u32 strWidth;
    MapNamePopUp *v2 = (MapNamePopUp *)(param1);

    switch (v2->state) {
    case MAP_NAME_POPUP_UNK_STATE_1:
        v2->yOffset -= 4;

        if (v2->yOffset < 0) {
            v2->yOffset = 0;
        }

        Bg_SetOffset(v2->bgConfig, BG_LAYER_MAIN_3, BG_OFFSET_UPDATE_SET_Y, v2->yOffset);

        if (v2->yOffset == 0) {
            v2->timer = 0;
            v2->state = MAP_NAME_POPUP_STATE_WAIT;
        }

        break;
    case MAP_NAME_POPUP_STATE_WAIT:
        v2->timer++;

        if (v2->timer >= 60) {
            v2->timer = 0;
            v2->state = MAP_NAME_POPUP_STATE_SLIDE_OUT;
        }

        break;
    case MAP_NAME_POPUP_STATE_SLIDE_OUT:
        v2->yOffset += 4;

        if (v2->yOffset > 38) {
            v2->yOffset = 38;
        }

        Bg_SetOffset(v2->bgConfig, BG_LAYER_MAIN_3, BG_OFFSET_UPDATE_SET_Y, v2->yOffset);

        if (v2->yOffset == 38) {
            if (v2->unk_14) {
                v2->unk_14 = FALSE;

                strWidth = MapHeader_GetStringWidth(v2->msgLoader, v2->entryID, v2->strbuf);

                ov5_021DD7A0(v2, strWidth);
                ov5_021DD954(v2, v2->strbuf);
                v2->state = 1;
            } else {
                ov5_021DDA78(v2);
                return;
            }
        }

        break;
    case MAP_NAME_POPUP_UNK_STATE_0:
    default:
        break;
    }
}

static void ov5_021DD954(MapNamePopUp *mapPopUp, const Strbuf *param1)
{
    TextColor color;

    color = TEXT_COLOR(3, 2, 0);
    Text_AddPrinterWithParamsAndColor(&mapPopUp->window, FONT_SYSTEM, param1, mapPopUp->xOffset, (8 * 2), TEXT_SPEED_INSTANT, color, NULL);
}

static void ov5_021DD980(MapNamePopUp *mapPopUp)
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

void MapNamePopUp_Destroy(MapNamePopUp *mapPopUp)
{
    MessageLoader_Free(mapPopUp->msgLoader);
    Window_Remove(&mapPopUp->window);
    Strbuf_Free(mapPopUp->strbuf);
    Heap_FreeToHeap(mapPopUp);

    mapPopUp = NULL;
}

void ov5_021DD9E8(MapNamePopUp *mapPopUp, const int mapLabelTextID, const int mapLabelWindowID)
{
    u16 v0[22]; // Unused
    u32 strWidth;

    mapPopUp->entryID = mapLabelTextID;

    if (mapPopUp->unk_00 == FALSE) {
        mapPopUp->unk_00 = TRUE;

        Bg_SetOffset(mapPopUp->bgConfig, BG_LAYER_MAIN_3, BG_OFFSET_UPDATE_SET_Y, 38);

        mapPopUp->yOffset = 38;
        mapPopUp->task = SysTask_Start(Task_MapNamePopUpWindow, mapPopUp, 0);
        mapPopUp->state = MAP_NAME_POPUP_UNK_STATE_1;

        strWidth = MapHeader_GetStringWidth(mapPopUp->msgLoader, mapPopUp->entryID, mapPopUp->strbuf);
        mapPopUp->windowID = mapLabelWindowID;

        ov5_021DD7A0(mapPopUp, strWidth);
        ov5_021DD954(mapPopUp, mapPopUp->strbuf);
    } else {
        switch (mapPopUp->state) {
        case 1:
        case 3:
            ov5_021DD980(mapPopUp);
            mapPopUp->unk_14 = TRUE;
            mapPopUp->windowID = mapLabelWindowID;
            break;
        case 2:
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

// Finnish
void ov5_021DDA78(MapNamePopUp *mapPopUp)
{
    if (mapPopUp->task != NULL) {
        SysTask_Done(mapPopUp->task);
    }

    Window_ClearAndCopyToVRAM(&mapPopUp->window);
    Bg_SetOffset(mapPopUp->bgConfig, BG_LAYER_MAIN_3, BG_OFFSET_UPDATE_SET_Y, 0);

    {
        BgConfig *v0 = mapPopUp->bgConfig;
        MapNamePopUp_SetBgConfig(mapPopUp, v0);
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

        ov5_021DD9E8(fieldSystem->unk_04->unk_08, mapLabelTextID, mapLabelWindowID);
    }
}
