#include "overlay039/ov39_022563DC.h"

#include <nitro.h>
#include <string.h>

#include "overlay025/ov25_02254560.h"
#include "overlay025/ov25_02255090.h"
#include "overlay039/struct_ov39_022563DC_1.h"
#include "overlay039/struct_ov39_022563DC_decl.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "sys_task_manager.h"

struct UnkStruct_ov39_022563DC_t {
    const UnkStruct_ov39_022563DC_1 *unk_00;
    BgConfig *unk_04;
    u32 unk_08[6];
};

static void ov39_02256454(PoketchTaskManager *param0);
static void ov39_02256468(SysTask *param0, void *param1);
static void ov39_02256518(SysTask *param0, void *param1);
static void ov39_02256534(SysTask *param0, void *param1);
static void ov39_02256568(SysTask *param0, void *param1);
static void ov39_0225659C(UnkStruct_ov39_022563DC *param0, u32 param1, BOOL param2, BOOL param3);

BOOL ov39_022563DC(UnkStruct_ov39_022563DC **param0, const UnkStruct_ov39_022563DC_1 *param1, BgConfig *param2)
{
    UnkStruct_ov39_022563DC *v0 = (UnkStruct_ov39_022563DC *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov39_022563DC));

    if (v0 != NULL) {
        PoketchTask_InitActiveTaskList(v0->unk_08, 4);

        v0->unk_00 = param1;
        v0->unk_04 = Poketch_GetBgConfig();

        if (v0->unk_04 != NULL) {
            *param0 = v0;
            return 1;
        }
    }

    return 0;
}

void ov39_0225640C(UnkStruct_ov39_022563DC *param0)
{
    if (param0 != NULL) {
        Heap_FreeToHeap(param0);
    }
}

static const PoketchTask Unk_ov39_0225663C[] = {
    { 0x0, ov39_02256468, 0x0 },
    { 0x1, ov39_02256518, 0x0 },
    { 0x2, ov39_02256534, 0x0 },
    { 0x3, ov39_02256568, 0x0 },
    { 0x0, NULL, 0x0 }
};

void ov39_02256418(UnkStruct_ov39_022563DC *param0, u32 param1)
{
    PoketchTask_Start(Unk_ov39_0225663C, param1, param0, param0->unk_00, param0->unk_08, 2, 8);
}

BOOL ov39_0225643C(UnkStruct_ov39_022563DC *param0, u32 param1)
{
    return PoketchTask_TaskIsNotActive(param0->unk_08, param1);
}

BOOL ov39_02256448(UnkStruct_ov39_022563DC *param0)
{
    return PoketchTask_NoActiveTasks(param0->unk_08);
}

static void ov39_02256454(PoketchTaskManager *param0)
{
    UnkStruct_ov39_022563DC *v0 = PoketchTask_GetTaskData(param0);
    PoketchTask_EndTask(v0->unk_08, param0);
}

static void ov39_02256468(SysTask *param0, void *param1)
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
        0
    };
    GXSDispCnt v1;
    UnkStruct_ov39_022563DC *v2;
    const UnkStruct_ov39_022563DC_1 *v3;
    void *v4;
    NNSG2dPaletteData *v5;
    int v6;

    v2 = PoketchTask_GetTaskData(param1);
    v3 = PoketchTask_GetConstTaskData(param1);

    Bg_InitFromTemplate(v2->unk_04, 6, &v0, 0);
    Graphics_LoadTilesToBgLayer(12, 59, v2->unk_04, 6, 0, 0, 1, 8);
    Graphics_LoadTilemapToBgLayer(12, 58, v2->unk_04, 6, 0, 0, 1, 8);

    Poketch_LoadActivePalette(0, 0);

    for (v6 = 0; v6 < 6; v6++) {
        ov39_0225659C(v2, v6, v3->unk_04[v6], 0);
    }

    Bg_CopyTilemapBufferToVRAM(v2->unk_04, 6);

    v1 = GXS_GetDispCnt();
    GXS_SetVisiblePlane(v1.visiblePlane | GX_PLANEMASK_BG2);

    ov39_02256454(param1);
}

static void ov39_02256518(SysTask *param0, void *param1)
{
    UnkStruct_ov39_022563DC *v0 = PoketchTask_GetTaskData(param1);

    Bg_FreeTilemapBuffer(v0->unk_04, 6);
    ov39_02256454(param1);
}

static void ov39_02256534(SysTask *param0, void *param1)
{
    UnkStruct_ov39_022563DC *v0 = PoketchTask_GetTaskData(param1);
    const UnkStruct_ov39_022563DC_1 *v1 = PoketchTask_GetConstTaskData(param1);

    ov39_0225659C(v0, v1->unk_1C, v1->unk_04[v1->unk_1C], 1);
    Bg_CopyTilemapBufferToVRAM(v0->unk_04, 6);
    ov39_02256454(param1);
}

static void ov39_02256568(SysTask *param0, void *param1)
{
    UnkStruct_ov39_022563DC *v0 = PoketchTask_GetTaskData(param1);
    const UnkStruct_ov39_022563DC_1 *v1 = PoketchTask_GetConstTaskData(param1);

    ov39_0225659C(v0, v1->unk_1C, v1->unk_04[v1->unk_1C], 0);
    Bg_CopyTilemapBufferToVRAM(v0->unk_04, 6);
    ov39_02256454(param1);
}

static void ov39_0225659C(UnkStruct_ov39_022563DC *param0, u32 param1, BOOL param2, BOOL param3)
{
    static const u16 v0[] = {
        66,
        84,
        290,
        308,
        514,
        532,
    };
    u16 *v1;
    int v2, v3, v4;

    v1 = Bg_GetTilemapBuffer(param0->unk_04, 6);
    v1 += v0[param1];
    v4 = (param2) ? (36 * 2) * (param1 + 1) : 0;

    if (param3) {
        v4 += 36;
    }

    for (v3 = 0; v3 < 6; v3++) {
        for (v2 = 0; v2 < 6; v2++) {
            v1[v2] = v4++;
        }

        v1 += 32;
    }
}
