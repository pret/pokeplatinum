#include "overlay005/ov5_021DD6FC.h"

#include <nitro.h>
#include <string.h>

#include "field/field_system.h"
#include "field/field_system_sub2_t.h"

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

typedef struct UnkStruct_ov5_021DD9C8_t {
    BOOL unk_00;
    u8 state;
    SysTask *task;
    int unk_0C;
    u16 unk_10;
    BOOL unk_14;
    u32 entryID;
    BgConfig *bgConfig;
    Window window;
    u8 unk_30;
    u8 windowID;
    NNSG2dCharacterData *unk_34;
    void *charData;
    MessageLoader *unk_3C;
    Strbuf *unk_40;
} UnkStruct_ov5_021DD9C8;

static void ov5_021DD718(UnkStruct_ov5_021DD9C8 *param0);
static void ov5_021DD744(UnkStruct_ov5_021DD9C8 *param0, u8 param1, u16 param2, u8 param3, u8 param4);
static void ov5_021DD880(UnkStruct_ov5_021DD9C8 *param0);
static void ov5_021DD894(UnkStruct_ov5_021DD9C8 *param0, BgConfig *param1);
static void TasK_ov5_021DD8A4(SysTask *param0, void *param1);
static void ov5_021DD7A0(UnkStruct_ov5_021DD9C8 *param0, const int strWidth);
static void ov5_021DD980(UnkStruct_ov5_021DD9C8 *param0);
static void ov5_021DD954(UnkStruct_ov5_021DD9C8 *param0, const Strbuf *param1);

static void ov5_021DD6FC(void *param0, u16 param1, u16 param2)
{
    DC_FlushRange((void *)param0, param1 * 32);
    GX_LoadBGPltt((const void *)param0, param2 * 32, param1 * 32);
}

static void ov5_021DD718(UnkStruct_ov5_021DD9C8 *param0)
{
    Window_Add(param0->bgConfig, &param0->window, BG_LAYER_MAIN_3, 0, 0, 32, 5, 7, ((((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4)) - (32 * 5)));
}

static void ov5_021DD744(UnkStruct_ov5_021DD9C8 *param0, u8 param1, u16 param2, u8 param3, u8 param4)
{
    void *v0;
    u32 v1;
    NNSG2dPaletteData *v2;
    u8 v3;

    v3 = param0->windowID * 2;

    param0->charData = Graphics_GetCharData(NARC_INDEX_ARC__AREA_WIN_GRA, v3, FALSE, &param0->unk_34, 4);
    Bg_LoadTiles(param0->bgConfig, param1, param0->unk_34->pRawData, param0->unk_34->szByte, param2);
    v0 = Graphics_GetPlttData(160, v3 + 1, &v2, 4);

    ov5_021DD6FC(v2->pRawData, 1, param3);
    Heap_FreeToHeap(v0);
}

static void ov5_021DD7A0(UnkStruct_ov5_021DD9C8 *param0, const int strWidth)
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

    param0->unk_30 = (8 - 4) + v2;

    {
        int v9, v10;

        ov5_021DD744(param0, 3, (1024 - (18 + 12) - 9 - (32 * 8)), 7, 0);
        Window_FillTilemap(&param0->window, 0);

        for (v9 = 0; v9 < 85; v9++) {
            Window_BlitBitmapRect(&param0->window, param0->unk_34->pRawData, v9 * 8, 0, 8, 8, (v9 % 17) * 8, (v9 / 17) * 8, 8, 8);
        }

        Window_CopyToVRAM(&param0->window);
        Heap_FreeToHeap(param0->charData);
    }
}

// Reset
static void ov5_021DD880(UnkStruct_ov5_021DD9C8 *param0)
{
    param0->unk_00 = FALSE;
    param0->state = 0;
    param0->task = NULL;
    param0->unk_0C = 0;
    param0->unk_10 = 0;
    param0->unk_14 = FALSE;
    param0->entryID = 0;
    param0->bgConfig = NULL;
}

static void ov5_021DD894(UnkStruct_ov5_021DD9C8 *param0, BgConfig *param1)
{
    ov5_021DD880(param0);
    param0->bgConfig = param1;
}

static void TasK_ov5_021DD8A4(SysTask *param0, void *param1)
{
    u16 v0[22]; // Unused
    u32 strWidth;
    UnkStruct_ov5_021DD9C8 *v2 = (UnkStruct_ov5_021DD9C8 *)(param1);

    switch (v2->state) {
    case 1:
        v2->unk_0C -= 4;

        if (v2->unk_0C < 0) {
            v2->unk_0C = 0;
        }

        Bg_SetOffset(v2->bgConfig, BG_LAYER_MAIN_3, BG_OFFSET_UPDATE_SET_Y, v2->unk_0C);

        if (v2->unk_0C == 0) {
            v2->unk_10 = 0;
            v2->state = 3;
        }

        break;
    case 3:
        v2->unk_10++;

        if (v2->unk_10 >= 60) {
            v2->unk_10 = 0;
            v2->state = 2;
        }

        break;
    case 2:
        v2->unk_0C += 4;

        if (v2->unk_0C > 38) {
            v2->unk_0C = 38;
        }

        Bg_SetOffset(v2->bgConfig, BG_LAYER_MAIN_3, BG_OFFSET_UPDATE_SET_Y, v2->unk_0C);

        if (v2->unk_0C == 38) {
            if (v2->unk_14) {
                v2->unk_14 = FALSE;

                strWidth = MapHeader_GetStringWidth(v2->unk_3C, v2->entryID, v2->unk_40);

                ov5_021DD7A0(v2, strWidth);
                ov5_021DD954(v2, v2->unk_40);
                v2->state = 1;
            } else {
                ov5_021DDA78(v2);
                return;
            }
        }

        break;
    case 0:
    default:
        break;
    }
}

static void ov5_021DD954(UnkStruct_ov5_021DD9C8 *param0, const Strbuf *param1)
{
    u32 v0;

    v0 = TEXT_COLOR(3, 2, 0);
    Text_AddPrinterWithParamsAndColor(&param0->window, FONT_SYSTEM, param1, param0->unk_30, (8 * 2), TEXT_SPEED_INSTANT, v0, NULL);
}

static void ov5_021DD980(UnkStruct_ov5_021DD9C8 *param0)
{
    param0->state = 2;
    param0->unk_10 = 0;
}

UnkStruct_ov5_021DD9C8 *ov5_021DD98C(BgConfig *param0)
{
    UnkStruct_ov5_021DD9C8 *v0;

    v0 = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov5_021DD9C8));
    v0->unk_40 = Strbuf_Init(22, 4);

    ov5_021DD894(v0, param0);
    ov5_021DD718(v0);

    v0->unk_3C = MessageLoader_Init(1, 26, 433, 4);
    return v0;
}

void ov5_021DD9C8(UnkStruct_ov5_021DD9C8 *param0)
{
    MessageLoader_Free(param0->unk_3C);
    Window_Remove(&param0->window);
    Strbuf_Free(param0->unk_40);
    Heap_FreeToHeap(param0);

    param0 = NULL;
}

void ov5_021DD9E8(UnkStruct_ov5_021DD9C8 *param0, const int mapLabelTextID, const int mapLabelWindowID)
{
    u16 v0[22]; // Unused
    u32 strWidth;

    param0->entryID = mapLabelTextID;

    if (param0->unk_00 == FALSE) {
        param0->unk_00 = TRUE;

        Bg_SetOffset(param0->bgConfig, BG_LAYER_MAIN_3, BG_OFFSET_UPDATE_SET_Y, 38);

        param0->unk_0C = 38;
        param0->task = SysTask_Start(TasK_ov5_021DD8A4, param0, 0);
        param0->state = 1;

        strWidth = MapHeader_GetStringWidth(param0->unk_3C, param0->entryID, param0->unk_40);
        param0->windowID = mapLabelWindowID;

        ov5_021DD7A0(param0, strWidth);
        ov5_021DD954(param0, param0->unk_40);
    } else {
        switch (param0->state) {
        case 1:
        case 3:
            ov5_021DD980(param0);
            param0->unk_14 = TRUE;
            param0->windowID = mapLabelWindowID;
            break;
        case 2:
            param0->unk_14 = TRUE;
            param0->windowID = mapLabelWindowID;
            break;
        case 0:
        default:
            GF_ASSERT(0);
            break;
        }
    }
}

// Finnish
void ov5_021DDA78(UnkStruct_ov5_021DD9C8 *param0)
{
    if (param0->task != NULL) {
        SysTask_Done(param0->task);
    }

    Window_ClearAndCopyToVRAM(&param0->window);
    Bg_SetOffset(param0->bgConfig, BG_LAYER_MAIN_3, BG_OFFSET_UPDATE_SET_Y, 0);

    {
        BgConfig *v0 = param0->bgConfig;
        ov5_021DD894(param0, v0);
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

