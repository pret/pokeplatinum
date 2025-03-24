#include "overlay034/ov34_02256540.h"

#include <nitro.h>
#include <string.h>

#include "overlay025/ov25_02254560.h"
#include "overlay025/ov25_02255090.h"
#include "overlay025/ov25_02255540.h"
#include "overlay025/struct_ov25_022555E8_decl.h"
#include "overlay025/struct_ov25_02255810.h"
#include "overlay025/struct_ov25_022558C4_decl.h"
#include "overlay025/struct_ov25_02255958.h"
#include "overlay034/struct_ov34_02256540_1.h"
#include "overlay034/struct_ov34_02256540_decl.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "sys_task_manager.h"

struct UnkStruct_ov34_02256540_t {
    const UnkStruct_ov34_02256540_1 *unk_00;
    BgConfig *unk_04;
    u32 unk_08[10];
    Ov25_540_GraphicManager *unk_30;
    ov25_540_GraphicObject *unk_34;
    ov25_540_GraphicObject *unk_38[8];
    UnkStruct_ov25_02255958 unk_58;
    BOOL unk_6C;
    u16 unk_70[16];
};

static BOOL ov34_02256588(UnkStruct_ov34_02256540 *param0);
static void ov34_0225667C(PoketchTaskManager *param0);
static void ov34_02256690(SysTask *param0, void *param1);
static void ov34_02256774(SysTask *param0, void *param1);
static void ov34_02256790(SysTask *param0, void *param1);
static void ov34_022567D4(SysTask *param0, void *param1);
static void ov34_0225684C(SysTask *param0, void *param1);
static void ov34_022568C0(SysTask *param0, void *param1);
static void ov34_02256974(UnkStruct_ov34_02256540 *param0, const UnkStruct_ov34_02256540_1 *param1);
static void ov34_022569A0(UnkStruct_ov34_02256540 *param0, const UnkStruct_ov34_02256540_1 *param1);
static BOOL ov34_022569DC(UnkStruct_ov34_02256540 *param0);
static void ov34_022569E8(UnkStruct_ov34_02256540 *param0);

BOOL ov34_02256540(UnkStruct_ov34_02256540 **param0, const UnkStruct_ov34_02256540_1 *param1, BgConfig *param2)
{
    UnkStruct_ov34_02256540 *v0 = (UnkStruct_ov34_02256540 *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov34_02256540));

    if (v0 != NULL) {
        int v1;

        PoketchTask_InitActiveTaskList(v0->unk_08, 8);

        v0->unk_00 = param1;
        v0->unk_04 = Poketch_GetBgConfig();
        v0->unk_6C = 0;
        v0->unk_30 = ov25_02254664();
        v0->unk_34 = NULL;

        for (v1 = 0; v1 < 8; v1++) {
            v0->unk_38[v1] = NULL;
        }

        *param0 = v0;
        return 1;
    }

    return 0;
}

static BOOL ov34_02256588(UnkStruct_ov34_02256540 *param0)
{
    static const UnkStruct_ov25_02255810 v0 = {
        { 0, 0 },
        0,
        0,
        2,
        0,
        1,
    };
    static const UnkStruct_ov25_02255810 v1 = {
        { 0, 0 },
        1,
        0,
        2,
        1,
        0,
    };

    if (ov25_LoadNARCMembers(&param0->unk_58, 12, 40, 41, 8)) {
        int v2;

        Graphics_LoadObjectTiles(12, 42, 1, 0, 0, 1, HEAP_ID_POKETCH_APP);
        param0->unk_34 = ov25_SetupNewElem(param0->unk_30, &v0, &param0->unk_58);
        ov25_540_Hide(param0->unk_34, 1);

        for (v2 = 0; v2 < 8; v2++) {
            param0->unk_38[v2] = ov25_SetupNewElem(param0->unk_30, &v1, &param0->unk_58);
            ov25_540_Hide(param0->unk_38[v2], 1);
        }

        return 1;
    }

    return 0;
}

void ov34_02256604(UnkStruct_ov34_02256540 *param0)
{
    if (param0 != NULL) {
        int v0;

        for (v0 = 0; v0 < 8; v0++) {
            if (param0->unk_38[v0]) {
                ov25_RemoveElem(param0->unk_30, param0->unk_38[v0]);
            }
        }

        if (param0->unk_34) {
            ov25_RemoveElem(param0->unk_30, param0->unk_34);
        }

        ov25_FreeNARCMembers(&(param0->unk_58));
        Heap_FreeToHeap(param0);
    }
}

static const PoketchTask Unk_ov34_02256A7C[] = {
    { 0x0, ov34_02256690, 0x0 },
    { 0x1, ov34_02256774, 0x0 },
    { 0x2, ov34_02256790, sizeof(u32) },
    { 0x0, NULL, 0x0 }
};

void ov34_02256640(UnkStruct_ov34_02256540 *param0, u32 param1)
{
    PoketchTask_Start(Unk_ov34_02256A7C, param1, param0, param0->unk_00, param0->unk_08, 2, 8);
}

BOOL ov34_02256664(UnkStruct_ov34_02256540 *param0, u32 param1)
{
    return PoketchTask_TaskIsNotActive(param0->unk_08, param1);
}

BOOL ov34_02256670(UnkStruct_ov34_02256540 *param0)
{
    return PoketchTask_NoActiveTasks(param0->unk_08);
}

static void ov34_0225667C(PoketchTaskManager *param0)
{
    UnkStruct_ov34_02256540 *v0 = PoketchTask_GetTaskData(param0);
    PoketchTask_EndTask(v0->unk_08, param0);
}

static void ov34_02256690(SysTask *param0, void *param1)
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
    UnkStruct_ov34_02256540 *v2;
    void *v3;
    NNSG2dPaletteData *v4;

    v2 = PoketchTask_GetTaskData(param1);

    Bg_InitFromTemplate(v2->unk_04, 6, &v0, 0);
    Graphics_LoadTilesToBgLayer(12, 39, v2->unk_04, 6, 0, 0, 1, HEAP_ID_POKETCH_APP);
    Graphics_LoadTilemapToBgLayer(12, 38, v2->unk_04, 6, 0, 0, 1, HEAP_ID_POKETCH_APP);

    Poketch_LoadActivePalette(0, 0);

    {
        Poketch_CopyActivePalette(v2->unk_70);

        v2->unk_70[1] = v2->unk_70[8];
        DC_FlushRange(v2->unk_70, sizeof(v2->unk_70));
        GXS_LoadOBJPltt(v2->unk_70, 13 * 0x20, 0x20);

        v2->unk_70[1] = v2->unk_70[15];
        DC_FlushRange(v2->unk_70, sizeof(v2->unk_70));
        GXS_LoadOBJPltt(v2->unk_70, 14 * 0x20, 0x20);
    }

    Bg_CopyTilemapBufferToVRAM(v2->unk_04, 6);

    v1 = GXS_GetDispCnt();
    GXS_SetVisiblePlane(v1.visiblePlane | GX_PLANEMASK_BG2);

    ov34_02256588(v2);
    ov34_0225667C(param1);
}

static void ov34_02256774(SysTask *param0, void *param1)
{
    UnkStruct_ov34_02256540 *v0 = PoketchTask_GetTaskData(param1);

    Bg_FreeTilemapBuffer(v0->unk_04, 6);
    ov34_0225667C(param1);
}

static void ov34_02256790(SysTask *param0, void *param1)
{
    static const SysTaskFunc v0[] = {
        ov34_022567D4,
        ov34_0225684C,
        ov34_022568C0
    };
    UnkStruct_ov34_02256540 *v1 = PoketchTask_GetTaskData(param1);
    const UnkStruct_ov34_02256540_1 *v2 = PoketchTask_GetConstTaskData(param1);
    u32 *v3 = PoketchTask_GetExtraData(param1);

    if (PoketchTask_GetState(param1) == 0) {
        v1->unk_6C = 1;
        *v3 = v2->unk_08;
    }

    v0[*v3](param0, param1);
}

static void ov34_022567D4(SysTask *param0, void *param1)
{
    UnkStruct_ov34_02256540 *v0 = PoketchTask_GetTaskData(param1);
    const UnkStruct_ov34_02256540_1 *v1 = PoketchTask_GetConstTaskData(param1);

    switch (PoketchTask_GetState(param1)) {
    case 0:
        ov25_SetPosition(v0->unk_34, v1->unk_00 << FX32_SHIFT, v1->unk_04 << FX32_SHIFT);
        ov25_540_Hide(v0->unk_34, 0);
        ov25_InitAnimation(v0->unk_34, 0);
        PoketchTask_IncrementState(param1);
        break;
    case 1:
        if (v0->unk_6C == 0) {
            ov34_022569E8(v0);
            ov34_0225667C(param1);
            break;
        }

        if (ov25_AnimNotPlaying(v0->unk_34)) {
            ov34_022569E8(v0);
            ov34_0225667C(param1);
        }
        break;
    }
}

static void ov34_0225684C(SysTask *param0, void *param1)
{
    UnkStruct_ov34_02256540 *v0 = PoketchTask_GetTaskData(param1);
    const UnkStruct_ov34_02256540_1 *v1 = PoketchTask_GetConstTaskData(param1);

    switch (PoketchTask_GetState(param1)) {
    case 0:
        ov25_SetPosition(v0->unk_34, v1->unk_00 << FX32_SHIFT, v1->unk_04 << FX32_SHIFT);
        ov25_InitAnimation(v0->unk_34, 0);
        ov25_540_Hide(v0->unk_34, 0);
        PoketchTask_IncrementState(param1);
        break;
    case 1:
        if (v0->unk_6C == 0) {
            ov34_022569E8(v0);
            ov34_0225667C(param1);
            break;
        }

        if (ov25_AnimNotPlaying(v0->unk_34)) {
            ov25_InitAnimation(v0->unk_34, 0);
        }
        break;
    }
}

static void ov34_022568C0(SysTask *param0, void *param1)
{
    UnkStruct_ov34_02256540 *v0 = PoketchTask_GetTaskData(param1);
    const UnkStruct_ov34_02256540_1 *v1 = PoketchTask_GetConstTaskData(param1);

    switch (PoketchTask_GetState(param1)) {
    case 0:
        ov34_02256974(v0, v1);
        ov25_SetPosition(v0->unk_34, v1->unk_00 << FX32_SHIFT, v1->unk_04 << FX32_SHIFT);
        ov25_InitAnimation(v0->unk_34, 0);
        ov25_540_Hide(v0->unk_34, 0);
        PoketchTask_IncrementState(param1);
        break;
    case 1:
        if (v0->unk_6C == 0) {
            ov34_022569E8(v0);
            ov34_0225667C(param1);
            return;
        }

        if (ov25_AnimNotPlaying(v0->unk_34)) {
            ov34_022569A0(v0, v1);
            PoketchTask_IncrementState(param1);
        }
        break;
    case 2:
        if (v0->unk_6C == 0) {
            ov34_022569E8(v0);
            ov34_0225667C(param1);
            return;
        }

        if (ov34_022569DC(v0)) {
            ov25_InitAnimation(v0->unk_34, 0);
            PoketchTask_SetState(param1, 1);
        }
        break;
    }
}

static void ov34_02256974(UnkStruct_ov34_02256540 *param0, const UnkStruct_ov34_02256540_1 *param1)
{
    u32 v0;

    for (v0 = 0; v0 < param1->unk_0C; v0++) {
        ov25_SetPosition(param0->unk_38[v0], (param1->unk_10[v0].unk_00 << FX32_SHIFT), (param1->unk_10[v0].unk_02 << FX32_SHIFT));
    }
}

static void ov34_022569A0(UnkStruct_ov34_02256540 *param0, const UnkStruct_ov34_02256540_1 *param1)
{
    u32 v0, v1;

    for (v0 = 0; v0 < param1->unk_0C; v0++) {
        v1 = 1 + param1->unk_10[v0].unk_04;

        if (v1 >= 3) {
            v1 = 3;
        }

        ov25_540_Hide(param0->unk_38[v0], 0);
        ov25_InitAnimation(param0->unk_38[v0], v1);
    }
}

static BOOL ov34_022569DC(UnkStruct_ov34_02256540 *param0)
{
    return ov25_AnimNotPlaying(param0->unk_38[0]);
}

static void ov34_022569E8(UnkStruct_ov34_02256540 *param0)
{
    int v0;

    ov25_540_Hide(param0->unk_34, 1);

    for (v0 = 0; v0 < 8; v0++) {
        ov25_540_Hide(param0->unk_38[v0], 1);
    }
}

void ov34_02256A0C(UnkStruct_ov34_02256540 *param0)
{
    ov34_022569E8(param0);
    param0->unk_6C = 0;
}
