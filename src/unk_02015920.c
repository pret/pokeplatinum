#include "unk_02015920.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"
#include "constants/narc.h"

#include "struct_defs/struct_02015958.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "sound_playback.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "touch_screen.h"
#include "touch_screen_actions.h"

typedef struct {
    const fx32 *unk_00;
    u32 unk_04;
    fx32 unk_08;
} UnkStruct_02015D8C;

typedef struct {
    BgConfig *unk_00;
    u32 unk_04;
    enum NarcID narcID;
    u32 unk_0C[4];
    u32 unk_1C;
    u32 unk_20;
    const fx32 *unk_24;
    u32 unk_28;
    u8 unk_2C;
    u8 unk_2D;
} UnkStruct_02015B14;

typedef struct {
    BgConfig *unk_00;
    u32 unk_04;
    void *unk_08[4];
    NNSG2dScreenData *unk_18[4];
    UnkStruct_02015D8C unk_28;
    u8 unk_34;
    u8 unk_35;
    u8 unk_36;
    u8 unk_37;
} UnkStruct_02015C38;

typedef struct {
    BgConfig *unk_00;
    NNSG2dCharacterData *unk_04;
    void *unk_08;
    int unk_0C;
    int unk_10;
} UnkStruct_02015DCC;

typedef struct {
    NNSG2dPaletteData *unk_00;
    void *unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
} UnkStruct_02015E1C;

typedef struct UnkStruct_02015920_t {
    TouchScreenActions *unk_00;
    TouchScreenHitTable unk_04[2];
    UnkStruct_02015C38 unk_0C[2];
    BgConfig *unk_7C;
    u32 unk_80;
    u32 heapID;
    fx32 unk_88[4];
    u8 unk_98;
    u8 unk_99;
    u8 unk_9A;
    u8 unk_9B_0 : 4;
    u8 unk_9B_4 : 4;
} UnkStruct_02015920;

static void sub_02015A80(UnkStruct_02015920 *param0, u32 heapID);
static void sub_02015AC0(UnkStruct_02015920 *param0, const UnkStruct_02015958 *param1);
static void sub_02015AE4(UnkStruct_02015920 *param0, const UnkStruct_02015958 *param1);
static void sub_02015B14(UnkStruct_02015920 *param0, const UnkStruct_02015958 *param1);
static void sub_02015BA4(UnkStruct_02015920 *param0, const UnkStruct_02015958 *param1);
static void sub_02015C08(u32 param0, enum TouchScreenButtonState param1, void *param2);
static void sub_02015C38(UnkStruct_02015C38 *param0, const UnkStruct_02015B14 *param1, u32 param2);
static BOOL sub_02015CC0(UnkStruct_02015C38 *param0);
static void sub_02015D00(UnkStruct_02015C38 *param0);
static void sub_02015D60(UnkStruct_02015C38 *param0);
static void sub_02015D8C(UnkStruct_02015D8C *param0, const fx32 *param1, u32 param2);
static void sub_02015D98(UnkStruct_02015D8C *param0, fx32 param1);
static u32 sub_02015DA0(const UnkStruct_02015D8C *param0);
static void sub_02015DCC(enum NarcID narcID, u32 param1, BgConfig *param2, u32 param3, u32 param4, u32 heapID);
static void sub_02015E1C(enum NarcID narcID, u32 param1, int param2, u32 param3, u32 param4, u32 heapID);
static void sub_02015E64(SysTask *param0, void *param1);
static void sub_02015EA0(SysTask *param0, void *param1);
static void sub_02015EE8(BgConfig *param0, int param1, const NNSG2dScreenData *param2, int param3, int param4);
static void sub_02015F34(const NNSG2dScreenData *param0, int param1);
static void sub_02015F54(const NNSG2dScreenData *param0, int param1);

UnkStruct_02015920 *sub_02015920(u32 heapID)
{
    UnkStruct_02015920 *v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_02015920));
    sub_02015A80(v0, heapID);

    return v0;
}

void sub_02015938(UnkStruct_02015920 *param0)
{
    if (param0->unk_9B_0 == 1) {
        sub_02015A54(param0);
    }

    Heap_Free(param0);
}

void sub_02015958(UnkStruct_02015920 *param0, const UnkStruct_02015958 *param1)
{
    param0->unk_7C = param1->unk_00;
    param0->unk_80 = param1->unk_04;
    param0->unk_98 = param1->unk_10;
    param0->unk_99 = param1->unk_11;

    sub_02015AC0(param0, param1);
    sub_02015AE4(param0, param1);
    sub_02015B14(param0, param1);
    sub_02015BA4(param0, param1);

    param0->unk_9B_0 = 1;
    param0->unk_9B_4 = 0x8;
}

u32 sub_020159C0(UnkStruct_02015920 *param0)
{
    u32 v0;

    param0->unk_9B_4 = 0x8;

    v0 = sub_020159FC(param0);

    if (v0 == 0) {
        if (param0->unk_9B_4 == 0) {
            if (param0->unk_9A == 0) {
                return 3;
            } else {
                return 4;
            }
        }
    }

    return v0;
}

u32 sub_020159FC(UnkStruct_02015920 *param0)
{
    BOOL v0;

    GF_ASSERT(param0->unk_9B_0 == 1);

    if (param0->unk_9A == 3) {
        TouchScreenActions_HandleAction(param0->unk_00);
    }

    v0 = 0;

    if (param0->unk_9A != 3) {
        v0 = sub_02015CC0(&param0->unk_0C[param0->unk_9A]);
    }

    if (v0 == 1) {
        if (param0->unk_9A == 0) {
            return 1;
        } else {
            return 2;
        }
    }

    return 0;
}

void sub_02015A54(UnkStruct_02015920 *param0)
{
    int v0;

    TouchScreenActions_Free(param0->unk_00);

    for (v0 = 0; v0 < 2; v0++) {
        sub_02015D00(&param0->unk_0C[v0]);
    }

    sub_02015A80(param0, param0->heapID);
}

static void sub_02015A80(UnkStruct_02015920 *param0, u32 heapID)
{
    memset(param0, 0, sizeof(UnkStruct_02015920));

    param0->unk_9B_0 = 0;
    param0->heapID = heapID;
    param0->unk_9A = 3;
    param0->unk_9B_4 = 0x8;
}

static void sub_02015AC0(UnkStruct_02015920 *param0, const UnkStruct_02015958 *param1)
{
    sub_02015DCC(84, 1, param0->unk_7C, param0->unk_80, param1->unk_08, param0->heapID);
}

static void sub_02015AE4(UnkStruct_02015920 *param0, const UnkStruct_02015958 *param1)
{
    u32 v0;

    if (param0->unk_80 < 4) {
        v0 = 0;
    } else {
        v0 = 4;
    }

    sub_02015E1C(84, 0, v0, param1->unk_0C * 32, 2 * 32, param0->heapID);
}

static void sub_02015B14(UnkStruct_02015920 *param0, const UnkStruct_02015958 *param1)
{
    int v0, v1;
    UnkStruct_02015B14 v2;

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_88[v0] = (FX32_ONE * 1) * (v0 + 1);
    }

    v2.unk_00 = param0->unk_7C;
    v2.unk_04 = param0->unk_80;
    v2.narcID = NARC_INDEX_GRAPHIC__TOUCH_SUBWINDOW;
    v2.unk_1C = param1->unk_08;
    v2.unk_20 = param1->unk_0C;
    v2.unk_24 = param0->unk_88;
    v2.unk_28 = 4;
    v2.unk_2C = param0->unk_98;

    for (v0 = 0; v0 < 2; v0++) {
        for (v1 = 0; v1 < 4; v1++) {
            v2.unk_0C[v1] = 2 + (v1 * 2) + v0;
        }

        v2.unk_2D = (v0 * (40 / 8)) + param0->unk_99;
        v2.unk_20 += v0;

        sub_02015C38(&param0->unk_0C[v0], &v2, param0->heapID);
    }
}

static void sub_02015BA4(UnkStruct_02015920 *param0, const UnkStruct_02015958 *param1)
{
    int v0;

    for (v0 = 0; v0 < 2; v0++) {
        param0->unk_04[v0].rect.top = (param0->unk_99 * 8) + (v0 * 40);
        param0->unk_04[v0].rect.bottom = (param0->unk_99 * 8) + (v0 * 40) + (4 * 8);
        param0->unk_04[v0].rect.left = (param0->unk_98 * 8);
        param0->unk_04[v0].rect.right = (param0->unk_98 * 8) + (6 * 8);
    }

    param0->unk_00 = TouchScreenActions_RegisterHandler(param0->unk_04, 2, sub_02015C08, param0, param0->heapID);
}

static void sub_02015C08(u32 param0, enum TouchScreenButtonState param1, void *param2)
{
    UnkStruct_02015920 *v0 = param2;

    v0->unk_9B_4 = param1;

    if (param1 == TOUCH_BUTTON_PRESSED) {
        v0->unk_9A = param0;

        Sound_PlayEffect(SEQ_SE_DP_BUTTON9);
    }
}

static void sub_02015C38(UnkStruct_02015C38 *param0, const UnkStruct_02015B14 *param1, u32 param2)
{
    int v0;

    sub_02015D8C(&param0->unk_28, param1->unk_24, param1->unk_28);

    param0->unk_00 = param1->unk_00;
    param0->unk_04 = param1->unk_04;
    param0->unk_34 = param1->unk_2C;
    param0->unk_35 = param1->unk_2D;

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_08[v0] = Graphics_GetScrnData(param1->narcID, param1->unk_0C[v0], 1, &param0->unk_18[v0], param2);

        sub_02015F34(param0->unk_18[v0], param1->unk_1C);
        sub_02015F54(param0->unk_18[v0], param1->unk_20);
    }

    sub_02015D60(param0);
    param0->unk_36 = 0;
}

static BOOL sub_02015CC0(UnkStruct_02015C38 *param0)
{
    u32 v0 = sub_02015DA0(&param0->unk_28);

    if (param0->unk_36 != v0) {
        sub_02015D60(param0);
        param0->unk_36 = v0;
    }

    if (v0 == (param0->unk_28.unk_04 - 1)) {
        return 1;
    }

    sub_02015D98(&param0->unk_28, FX32_HALF);

    return 0;
}

static void sub_02015D00(UnkStruct_02015C38 *param0)
{
    int v0;

    Bg_FillTilemapRect(param0->unk_00, param0->unk_04, 0, param0->unk_34, param0->unk_35, param0->unk_18[0]->screenWidth / 8, param0->unk_18[0]->screenHeight / 8, 0);
    Bg_ScheduleTilemapTransfer(param0->unk_00, param0->unk_04);

    for (v0 = 0; v0 < 4; v0++) {
        Heap_Free(param0->unk_08[v0]);
    }

    memset(param0, 0, sizeof(UnkStruct_02015C38));
}

static void sub_02015D60(UnkStruct_02015C38 *param0)
{
    u32 v0 = sub_02015DA0(&param0->unk_28);
    sub_02015EE8(param0->unk_00, param0->unk_04, param0->unk_18[v0], param0->unk_34, param0->unk_35);
}

static void sub_02015D8C(UnkStruct_02015D8C *param0, const fx32 *param1, u32 param2)
{
    param0->unk_00 = param1;
    param0->unk_04 = param2;
    param0->unk_08 = 0;
}

static void sub_02015D98(UnkStruct_02015D8C *param0, fx32 param1)
{
    param0->unk_08 += param1;
}

static u32 sub_02015DA0(const UnkStruct_02015D8C *param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        if (param0->unk_00[v0] >= param0->unk_08) {
            return v0;
        }
    }

    return param0->unk_04 - 1;
}

static void sub_02015DCC(enum NarcID narcID, u32 param1, BgConfig *param2, u32 param3, u32 param4, u32 heapID)
{
    UnkStruct_02015DCC *v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_02015DCC));
    memset(v0, 0, sizeof(UnkStruct_02015DCC));

    v0->unk_08 = Graphics_GetCharData(narcID, param1, 1, &v0->unk_04, heapID);
    v0->unk_00 = param2;
    v0->unk_0C = param3;
    v0->unk_10 = param4;

    SysTask_ExecuteAfterVBlank(sub_02015E64, v0, 128);
}

static void sub_02015E1C(enum NarcID narcID, u32 param1, int param2, u32 param3, u32 param4, u32 heapID)
{
    UnkStruct_02015E1C *v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_02015E1C));
    memset(v0, 0, sizeof(UnkStruct_02015E1C));

    v0->unk_04 = Graphics_GetPlttData(narcID, param1, &v0->unk_00, heapID);
    v0->unk_08 = param2;
    v0->unk_0C = param3;
    v0->unk_10 = param4;

    SysTask_ExecuteAfterVBlank(sub_02015EA0, v0, 128);
}

static void sub_02015E64(SysTask *param0, void *param1)
{
    UnkStruct_02015DCC *v0 = param1;

    DC_FlushRange(v0->unk_04->pRawData, v0->unk_04->szByte);

    Bg_LoadTiles(v0->unk_00, v0->unk_0C, v0->unk_04->pRawData, v0->unk_04->szByte, v0->unk_10);
    SysTask_Done(param0);
    Heap_Free(v0->unk_08);
    Heap_Free(v0);
}

static void sub_02015EA0(SysTask *param0, void *param1)
{
    UnkStruct_02015E1C *v0 = param1;

    DC_FlushRange(v0->unk_00->pRawData, v0->unk_10);

    if (v0->unk_08 == 0) {
        GX_LoadBGPltt(v0->unk_00->pRawData, v0->unk_0C, v0->unk_10);
    } else if (v0->unk_08 == 4) {
        GXS_LoadBGPltt(v0->unk_00->pRawData, v0->unk_0C, v0->unk_10);
    }

    SysTask_Done(param0);
    Heap_Free(v0->unk_04);
    Heap_Free(v0);
}

static void sub_02015EE8(BgConfig *param0, int param1, const NNSG2dScreenData *param2, int param3, int param4)
{
    Bg_CopyToTilemapRect(param0, param1, param3, param4, param2->screenWidth / 8, param2->screenHeight / 8, param2->rawData, 0, 0, param2->screenWidth / 8, param2->screenHeight / 8);
    Bg_ScheduleTilemapTransfer(param0, param1);
}

static void sub_02015F34(const NNSG2dScreenData *param0, int param1)
{
    int v0;
    u16 *v1;
    int v2 = param0->szByte / 2;

    v1 = (u16 *)param0->rawData;

    for (v0 = 0; v0 < v2; v0++) {
        v1[v0] += param1;
    }
}

static void sub_02015F54(const NNSG2dScreenData *param0, int param1)
{
    int v0;
    u16 *v1;
    int v2 = param0->szByte / 2;

    v1 = (u16 *)param0->rawData;

    for (v0 = 0; v0 < v2; v0++) {
        v1[v0] &= 0xfff;
        v1[v0] |= param1 << 12;
    }
}
