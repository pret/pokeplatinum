#include "overlay022/ov22_022597BC.h"

#include <nitro.h>
#include <string.h>

#include "constants/narc.h"

#include "overlay022/struct_ov22_022597BC.h"
#include "overlay022/struct_ov22_02259820.h"
#include "overlay022/struct_ov22_022599A0.h"
#include "overlay022/struct_ov22_0225AF44.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "unk_0200679C.h"

typedef struct {
    UnkStruct_ov22_022597BC *unk_00;
    UnkStruct_ov22_022599A0 unk_04;
    BOOL *unk_34;
    int unk_38;
    int unk_3C;
    int unk_40;
    int unk_44;
    int unk_48;
} UnkStruct_ov22_022598F4;

typedef struct {
    BgConfig *unk_00;
    NNSG2dCharacterData *unk_04;
    void *unk_08;
    int unk_0C;
    int unk_10;
} UnkStruct_ov22_02259B3C;

typedef struct {
    NNSG2dPaletteData *unk_00;
    void *unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
} UnkStruct_ov22_02259B8C;

static void ov22_02259980(const NNSG2dScreenData *param0, int param1);
static void ov22_022599A0(UnkStruct_ov22_022599A0 *param0, int *param1, int *param2);
static void ov22_02259A4C(SysTask *param0, void *param1);
static void ov22_02259ABC(BgConfig *param0, int param1, const NNSG2dScreenData *param2, int param3, int param4, int param5, int param6, int param7, int param8);
static void ov22_02259B3C(enum NarcID narcID, u32 param1, BgConfig *param2, u32 param3, u32 param4, u32 heapID);
static void ov22_02259B8C(enum NarcID narcID, u32 param1, int param2, u32 param3, u32 param4, u32 heapID);
static void ov22_02259BD4(SysTask *param0, void *param1);
static void ov22_02259C10(SysTask *param0, void *param1);

void ov22_022597BC(UnkStruct_ov22_022597BC *param0, UnkStruct_ov22_022599A0 *param1)
{
    param0->unk_00 = param1->unk_00;
    param0->unk_0C = param1->unk_14 / 8;
    param0->unk_10 = param1->unk_18 / 8;
    param0->unk_1C = param1->unk_1C;
    param0->unk_20 = param1->unk_24;
    param0->unk_24 = param1->unk_20;
    param0->unk_28 = param1->unk_28;
    param0->narcID = param1->narcID;
    param0->unk_08 = param1->unk_10;

    ov22_022599A0(param1, &param0->unk_14, &param0->unk_18);
}

void ov22_02259804(UnkStruct_ov22_022597BC *param0)
{
    Bg_ClearTilemap(param0->unk_00, param0->unk_1C);
    memset(param0, 0, sizeof(UnkStruct_ov22_022597BC));
}

void ov22_02259820(UnkStruct_ov22_02259820 *param0, UnkStruct_ov22_0225AF44 *param1)
{
    param0->unk_00 = param1->unk_00;
    param0->unk_04 = param1->unk_04;
    param0->unk_08 = param1->unk_08;
    param0->unk_0C = 0;
    param0->unk_10 = 0;
    param0->unk_14 = param1->unk_0C;
}

void ov22_02259838(UnkStruct_ov22_02259820 *param0, int param1)
{
    NNSG2dScreenData *v0;
    void *v1;
    int v2;

    param0->unk_0C += param1;

    if (param0->unk_0C > param0->unk_08) {
        param0->unk_0C = 0;

        if (param0->unk_10 == 0) {
            v2 = param0->unk_04;
            param0->unk_10 = 1;
        } else {
            v2 = param0->unk_00->unk_08;
            param0->unk_10 = 0;
        }

        v1 = Graphics_GetScrnData(param0->unk_00->narcID, v2, 0, &v0, param0->unk_14);

        ov22_02259ABC(param0->unk_00->unk_00, param0->unk_00->unk_1C, v0, param0->unk_00->unk_14, param0->unk_00->unk_18, param0->unk_00->unk_0C, param0->unk_00->unk_10, param0->unk_00->unk_28, param0->unk_00->unk_20);
        Heap_FreeToHeap(v1);
    }
}

void ov22_022598A0(UnkStruct_ov22_02259820 *param0)
{
    NNSG2dScreenData *v0;
    void *v1 = Graphics_GetScrnData(param0->unk_00->narcID, param0->unk_00->unk_08, 0, &v0, param0->unk_14);

    ov22_02259ABC(param0->unk_00->unk_00, param0->unk_00->unk_1C, v0, param0->unk_00->unk_14, param0->unk_00->unk_18, param0->unk_00->unk_0C, param0->unk_00->unk_10, param0->unk_00->unk_28, param0->unk_00->unk_20);
    Heap_FreeToHeap(v1);

    memset(param0, 0, sizeof(UnkStruct_ov22_02259820));
}

void ov22_022598F4(UnkStruct_ov22_022597BC *param0, UnkStruct_ov22_022599A0 *param1, int param2, int param3, int param4, BOOL *param5)
{
    SysTask *v1 = SysTask_StartAndAllocateParam(ov22_02259A4C, sizeof(UnkStruct_ov22_022598F4), 0, 13);
    UnkStruct_ov22_022598F4 *v0 = SysTask_GetParam(v1);

    v0->unk_00 = param0;
    v0->unk_04 = *param1;
    v0->unk_34 = param5;
    v0->unk_38 = param4;
    v0->unk_3C = param2 / param4;
    v0->unk_40 = param3 / param4;
    v0->unk_44 = Bg_GetXOffset(param0->unk_00, param0->unk_1C);
    v0->unk_48 = Bg_GetYOffset(param0->unk_00, param0->unk_1C);

    param1->unk_28 = 128;
    param1->unk_24 = 0x5;
    param1->unk_14 -= param2;
    param1->unk_18 -= param3;
    param1->heapID = HEAP_ID_14;

    ov22_022599A0(param1, NULL, NULL);
}

static void ov22_02259980(const NNSG2dScreenData *param0, int param1)
{
    int v0;
    u16 *v1;
    int v2 = param0->szByte / 2;

    v1 = (u16 *)param0->rawData;

    for (v0 = 0; v0 < v2; v0++) {
        v1[v0] += param1;
    }
}

static void ov22_022599A0(UnkStruct_ov22_022599A0 *param0, int *param1, int *param2)
{
    int v0;
    NNSG2dScreenData *v1;
    void *v2;
    int v3, v4;
    int v5 = param0->unk_14 / 8;
    int v6 = param0->unk_18 / 8;

    ov22_02259B3C(param0->narcID, param0->unk_08, param0->unk_00, param0->unk_1C, param0->unk_28, param0->heapID);

    if (param0->unk_1C < 4) {
        v0 = 0;
    } else {
        v0 = 4;
    }

    ov22_02259B8C(param0->narcID, param0->unk_0C, v0, param0->unk_24 * 32, param0->unk_20 * 32, param0->heapID);

    v2 = Graphics_GetScrnData(param0->narcID, param0->unk_10, 0, &v1, param0->heapID);
    v4 = v1->screenWidth / 8;
    v3 = v1->screenHeight / 8;

    ov22_02259ABC(param0->unk_00, param0->unk_1C, v1, v4, v3, v5, v6, param0->unk_28, param0->unk_24);
    Heap_FreeToHeap(v2);

    if (param1) {
        *param1 = v4;
    }

    if (param2) {
        *param2 = v3;
    }
}

static void ov22_02259A4C(SysTask *param0, void *param1)
{
    UnkStruct_ov22_022598F4 *v0 = param1;

    v0->unk_38--;

    if (v0->unk_38 >= 0) {
        Bg_ScheduleScroll(v0->unk_00->unk_00, v0->unk_00->unk_1C, 2, v0->unk_3C);
        Bg_ScheduleScroll(v0->unk_00->unk_00, v0->unk_00->unk_1C, 5, v0->unk_40);
    } else {
        Bg_ScheduleScroll(v0->unk_00->unk_00, v0->unk_00->unk_1C, 0, v0->unk_44);
        Bg_ScheduleScroll(v0->unk_00->unk_00, v0->unk_00->unk_1C, 3, v0->unk_48);
        ov22_022597BC(v0->unk_00, &v0->unk_04);

        if (v0->unk_34) {
            *v0->unk_34 = 1;
        }

        SysTask_FinishAndFreeParam(param0);
    }
}

static void ov22_02259ABC(BgConfig *param0, int param1, const NNSG2dScreenData *param2, int param3, int param4, int param5, int param6, int param7, int param8)
{
    ov22_02259980(param2, param7);
    Bg_CopyToTilemapRect(param0, param1, param5, param6, param3, param4, param2->rawData, 0, 0, param3, param4);
    Bg_ChangeTilemapRectPalette(param0, param1, param5, param6, param3, param4, param8);
    Bg_ScheduleTilemapTransfer(param0, param1);
}

static void ov22_02259B3C(enum NarcID narcID, u32 param1, BgConfig *param2, u32 param3, u32 param4, u32 heapID)
{
    UnkStruct_ov22_02259B3C *v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov22_02259B3C));
    memset(v0, 0, sizeof(UnkStruct_ov22_02259B3C));

    v0->unk_08 = Graphics_GetCharData(narcID, param1, 0, &v0->unk_04, heapID);
    v0->unk_00 = param2;
    v0->unk_0C = param3;
    v0->unk_10 = param4;

    SysTask_ExecuteAfterVBlank(ov22_02259BD4, v0, 128);
}

static void ov22_02259B8C(enum NarcID narcID, u32 param1, int param2, u32 param3, u32 param4, u32 heapID)
{
    UnkStruct_ov22_02259B8C *v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov22_02259B8C));
    memset(v0, 0, sizeof(UnkStruct_ov22_02259B8C));

    v0->unk_04 = Graphics_GetPlttData(narcID, param1, &v0->unk_00, heapID);
    v0->unk_08 = param2;
    v0->unk_0C = param3;
    v0->unk_10 = param4;

    SysTask_ExecuteAfterVBlank(ov22_02259C10, v0, 128);
}

static void ov22_02259BD4(SysTask *param0, void *param1)
{
    UnkStruct_ov22_02259B3C *v0 = param1;

    DC_FlushRange(v0->unk_04->pRawData, v0->unk_04->szByte);

    Bg_LoadTiles(v0->unk_00, v0->unk_0C, v0->unk_04->pRawData, v0->unk_04->szByte, v0->unk_10);
    SysTask_Done(param0);
    Heap_FreeToHeap(v0->unk_08);
    Heap_FreeToHeap(v0);
}

static void ov22_02259C10(SysTask *param0, void *param1)
{
    UnkStruct_ov22_02259B8C *v0 = param1;

    DC_FlushRange(v0->unk_00->pRawData, v0->unk_10);

    if (v0->unk_08 == 0) {
        GX_LoadBGPltt(v0->unk_00->pRawData, v0->unk_0C, v0->unk_10);
    } else if (v0->unk_08 == 4) {
        GXS_LoadBGPltt(v0->unk_00->pRawData, v0->unk_0C, v0->unk_10);
    }

    SysTask_Done(param0);
    Heap_FreeToHeap(v0->unk_04);
    Heap_FreeToHeap(v0);
}
