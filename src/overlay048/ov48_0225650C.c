#include "overlay048/ov48_0225650C.h"

#include <nitro.h>
#include <string.h>

#include "overlay025/ov25_02254560.h"
#include "overlay025/ov25_02255090.h"
#include "overlay025/ov25_02255540.h"
#include "overlay025/ov25_02255DBC.h"
#include "overlay025/poketch_system.h"
#include "overlay025/struct_ov25_022555E8_decl.h"
#include "overlay025/struct_ov25_02255810.h"
#include "overlay025/struct_ov25_022558C4_decl.h"
#include "overlay025/struct_ov25_02255958.h"
#include "overlay048/struct_ov48_0225650C_1.h"
#include "overlay048/struct_ov48_0225650C_decl.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "message.h"
#include "strbuf.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"

struct UnkStruct_ov48_0225650C_t {
    const UnkStruct_ov48_0225650C_1 *unk_00;
    BgConfig *unk_04;
    u32 unk_08[6];
    UnkStruct_ov25_022555E8 *unk_20;
    UnkStruct_ov25_022558C4 *unk_24;
    UnkStruct_ov25_022558C4 *unk_28[64];
    UnkStruct_ov25_022558C4 *unk_128[4];
    UnkStruct_ov25_02255958 unk_138;
    SysTask *unk_14C;
    BOOL unk_150;
    int unk_154;
    int unk_158;
    BOOL unk_15C;
};

static void ov48_02256594(PoketchTaskManager *param0);
static void ov48_022565A8(SysTask *param0, void *param1);
static void ov48_02256650(UnkStruct_ov48_0225650C *param0, u32 param1);
static void ov48_022566D0(SysTask *param0, void *param1);
static void ov48_0225672C(SysTask *param0, void *param1);
static void ov48_022567FC(UnkStruct_ov48_0225650C *param0);
static void ov48_02256920(UnkStruct_ov48_0225650C *param0);
static void ov48_02256984(UnkStruct_ov48_0225650C *param0);
static void ov48_022569FC(SysTask *param0, void *param1);

BOOL ov48_0225650C(UnkStruct_ov48_0225650C **param0, const UnkStruct_ov48_0225650C_1 *param1, BgConfig *param2)
{
    UnkStruct_ov48_0225650C *v0 = (UnkStruct_ov48_0225650C *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov48_0225650C));

    if (v0 != NULL) {
        PoketchTask_InitActiveTaskList(v0->unk_08, 4);
        v0->unk_00 = param1;
        v0->unk_04 = Poketch_GetBgConfig();
        v0->unk_20 = ov25_02254664();
        v0->unk_150 = param1->unk_8C;
        *param0 = v0;
        return 1;
    }

    return 0;
}

void ov48_0225654C(UnkStruct_ov48_0225650C *param0)
{
    if (param0 != NULL) {
        Heap_FreeToHeap(param0);
    }
}

static const PoketchTask Unk_ov48_02256B40[] = {
    { 0x0, ov48_022565A8, 0x0 },
    { 0x1, ov48_022566D0, 0x0 },
    { 0x2, ov48_0225672C, 0x0 },
    { 0x0, NULL, 0x0 }
};

void ov48_02256558(UnkStruct_ov48_0225650C *param0, u32 param1)
{
    PoketchTask_Start(Unk_ov48_02256B40, param1, param0, param0->unk_00, param0->unk_08, 2, 8);
}

BOOL ov48_0225657C(UnkStruct_ov48_0225650C *param0, u32 param1)
{
    return PoketchTask_TaskIsNotActive(param0->unk_08, param1);
}

BOOL ov48_02256588(UnkStruct_ov48_0225650C *param0)
{
    return PoketchTask_NoActiveTasks(param0->unk_08);
}

static void ov48_02256594(PoketchTaskManager *param0)
{
    UnkStruct_ov48_0225650C *v0 = PoketchTask_GetTaskData(param0);
    PoketchTask_EndTask(v0->unk_08, param0);
}

static void ov48_022565A8(SysTask *param0, void *param1)
{
    static const BgTemplate v0 = {
        0,
        0,
        0x800,
        0,
        1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0x7000,
        GX_BG_CHARBASE_0x00000,
        GX_BG_EXTPLTT_01,
        2,
        0,
        0,
        1
    };
    GXSDispCnt v1;
    UnkStruct_ov48_0225650C *v2;
    NNSG2dPaletteData *v3;
    u32 v4;

    v2 = PoketchTask_GetTaskData(param1);

    G2S_SetBGMosaicSize(0, 0);
    G2S_SetOBJMosaicSize(0, 0);

    Bg_InitFromTemplate(v2->unk_04, 6, &v0, 0);

    v4 = Graphics_LoadTilesToBgLayer(12, 117, v2->unk_04, 6, 0, 0, 1, HEAP_ID_POKETCH_APP);
    v4 /= 0x20;

    Graphics_LoadTilemapToBgLayer(12, 116, v2->unk_04, 6, 0, 0, 1, HEAP_ID_POKETCH_APP);

    Poketch_LoadActivePalette(0, 0);
    ov48_02256650(v2, v4);

    Bg_CopyTilemapBufferToVRAM(v2->unk_04, 6);

    v1 = GXS_GetDispCnt();
    GXS_SetVisiblePlane(v1.visiblePlane | GX_PLANEMASK_BG2);

    ov48_022567FC(v2);
    ov48_02256594(param1);
}

static void ov48_02256650(UnkStruct_ov48_0225650C *param0, u32 param1)
{
    Window v0;
    Strbuf *v1 = MessageBank_GetNewStrbufFromNARC(26, 459, 0, 8);

    if (v1) {
        Window_Add(param0->unk_04, &v0, 6, 18, 20, 8, 2, 0, param1);
        Window_FillTilemap(&v0, 4);
        Text_AddPrinterWithParamsAndColor(&v0, FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 8, 4), NULL);
        Window_PutToTilemap(&v0);
        Window_LoadTiles(&v0);
        Window_Remove(&v0);
        Strbuf_Free(v1);
    }
}

static void ov48_022566D0(SysTask *param0, void *param1)
{
    UnkStruct_ov48_0225650C *v0 = PoketchTask_GetTaskData(param1);

    switch (PoketchTask_GetState(param1)) {
    case 0:
        v0->unk_15C = 1;
        PoketchTask_IncrementState(param1);
        break;
    case 1:
        if (ov48_0225657C(v0, 2)) {
            ov48_02256984(v0);
            G2S_SetBGMosaicSize(0, 0);
            G2S_SetOBJMosaicSize(0, 0);
            Bg_FreeTilemapBuffer(v0->unk_04, 6);
            ov48_02256594(param1);
        }
        break;
    }
}

static void ov48_0225672C(SysTask *param0, void *param1)
{
    UnkStruct_ov48_0225650C *v0 = PoketchTask_GetTaskData(param1);
    const UnkStruct_ov48_0225650C_1 *v1 = PoketchTask_GetConstTaskData(param1);

    switch (PoketchTask_GetState(param1)) {
    case 0:
        v0->unk_154 = 6;
        v0->unk_158 = 0;
        v0->unk_15C = 0;

        G2S_SetBGMosaicSize(v0->unk_154, v0->unk_154);
        G2S_SetOBJMosaicSize(v0->unk_154, v0->unk_154);
        PoketchSystem_PlaySoundEffect(1656);
        PoketchTask_IncrementState(param1);
        break;
    case 1:
        ov48_02256920(v0);
        PoketchTask_IncrementState(param1);
        break;
    case 2:
        if (v0->unk_15C) {
            ov48_02256594(param1);
            break;
        }

        if (++(v0->unk_158) >= 3) {
            v0->unk_158 = 0;
            v0->unk_154--;

            G2S_SetBGMosaicSize(v0->unk_154, v0->unk_154);
            G2S_SetOBJMosaicSize(v0->unk_154, v0->unk_154);

            if (v0->unk_154 == 0) {
                ov48_02256594(param1);
            }
        }
        break;
    }
}

static void ov48_022567FC(UnkStruct_ov48_0225650C *param0)
{
    const UnkStruct_ov48_0225650C_1 *v0;
    UnkStruct_ov25_02255810 v1;
    u32 v2, v3;
    int v4;

    v0 = param0->unk_00;

    Graphics_LoadObjectTiles(12, 120, 1, 0, 0, 1, HEAP_ID_POKETCH_APP);

    ov25_02255958(&param0->unk_138, 12, 118, 119, 8);

    v1.unk_0A = 0;
    v1.unk_0B = 2;
    v1.unk_0D = 0;

    ov25_02255DBC(v0->unk_00, v0->unk_04, &v2, &v3);

    v1.unk_00.x = ((v2) << FX32_SHIFT);
    v1.unk_00.y = ((v3) << FX32_SHIFT);
    v1.unk_0C = 0;
    v1.unk_08 = 0;
    param0->unk_24 = ov25_02255810(param0->unk_20, &v1, &(param0->unk_138));

    ov25_02255948(param0->unk_24, 1);

    v1.unk_0C = 1;
    v1.unk_08 = 7;
    v1.unk_00.x = 0;
    v1.unk_00.y = 0;

    for (v4 = 0; v4 < 64; v4++) {
        param0->unk_28[v4] = ov25_02255810(param0->unk_20, &v1, &(param0->unk_138));
        ov25_02255948(param0->unk_28[v4], 1);
    }

    ov48_02256920(param0);

    for (v4 = 0; v4 < 4; v4++) {
        ov25_02255DFC(v4, &v2, &v3);
        v1.unk_00.x = ((v2) << FX32_SHIFT);
        v1.unk_00.y = ((v3) << FX32_SHIFT);
        v1.unk_0C = 2;
        v1.unk_08 = 14 + v4;
        param0->unk_128[v4] = ov25_02255810(param0->unk_20, &v1, &(param0->unk_138));

        ov25_02255948(param0->unk_128[v4], 1);

        if (v0->unk_94[v4] == 0) {
            ov25_02255914(param0->unk_128[v4], 1);
        }
    }

    param0->unk_14C = SysTask_Start(ov48_022569FC, param0, 3);
}

static void ov48_02256920(UnkStruct_ov48_0225650C *param0)
{
    u32 v0, v1;
    int v2;

    for (v2 = 0; v2 < param0->unk_00->unk_08; v2++) {
        ov25_02255DBC(param0->unk_00->unk_0C[v2].unk_00, param0->unk_00->unk_0C[v2].unk_01, &v0, &v1);
        ov25_02255900(param0->unk_28[v2], ((v0) << FX32_SHIFT), ((v1) << FX32_SHIFT));
        ov25_02255914(param0->unk_28[v2], 0);
    }

    for (; v2 < 64; v2++) {
        ov25_02255914(param0->unk_28[v2], 1);
    }
}

static void ov48_02256984(UnkStruct_ov48_0225650C *param0)
{
    int v0;

    if (param0->unk_14C) {
        SysTask_Done(param0->unk_14C);
        param0->unk_14C = NULL;
    }

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_128[v0]) {
            ov25_022558B0(param0->unk_20, param0->unk_128[v0]);
            param0->unk_128[v0] = NULL;
        }
    }

    for (v0 = 0; v0 < 64; v0++) {
        if (param0->unk_28[v0]) {
            ov25_022558B0(param0->unk_20, param0->unk_28[v0]);
            param0->unk_28[v0] = NULL;
        }
    }

    if (param0->unk_24) {
        ov25_022558B0(param0->unk_20, param0->unk_24);
        param0->unk_24 = NULL;
    }

    ov25_022559B0(&param0->unk_138);
}

static void ov48_022569FC(SysTask *param0, void *param1)
{
    UnkStruct_ov48_0225650C *v0 = param1;
    const UnkStruct_ov48_0225650C_1 *v1 = v0->unk_00;

    if (v1->unk_90) {
        u32 v2, v3;

        ov25_02255DBC(v1->unk_00, v1->unk_04, &v2, &v3);
        ov25_02255900(v0->unk_24, ((v2) << FX32_SHIFT), ((v3) << FX32_SHIFT));
    }
}
