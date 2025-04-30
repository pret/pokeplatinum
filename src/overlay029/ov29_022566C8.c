#include "overlay029/ov29_022566C8.h"

#include <nitro.h>
#include <string.h>

#include "overlay025/ov25_02254560.h"
#include "overlay025/ov25_02255090.h"
#include "overlay025/ov25_02255540.h"
#include "overlay025/poketch_system.h"
#include "overlay025/struct_ov25_022555E8_decl.h"
#include "overlay025/struct_ov25_02255810.h"
#include "overlay025/struct_ov25_022558C4_decl.h"
#include "overlay025/struct_ov25_02255958.h"
#include "overlay029/struct_ov29_022566C8_1.h"
#include "overlay029/struct_ov29_022566C8_decl.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "poketch_memory.h"
#include "sys_task_manager.h"

struct UnkStruct_ov29_022566C8_t {
    const UnkStruct_ov29_022566C8_1 *unk_00;
    BgConfig *unk_04;
    u32 unk_08[18];
    Ov25_540_GraphicManager *unk_50;
    UnkStruct_ov25_02255958 unk_54;
    ov25_540_GraphicObject *unk_68[2];
    Window *unk_70;
};

static BOOL ov29_02256728(UnkStruct_ov29_022566C8 *param0);
static void ov29_022567F0(PoketchTaskManager *param0);
static void ov29_02256804(SysTask *param0, void *param1);
static void ov29_02256908(SysTask *param0, void *param1);
static void ov29_02256950(SysTask *param0, void *param1);
static void ov29_022569DC(SysTask *param0, void *param1);
static void ov29_02256A7C(SysTask *param0, void *param1);
static void ov29_02256A94(SysTask *param0, void *param1);
static void ov29_02256ABC(UnkStruct_ov29_022566C8 *param0);
static void ov29_02256B18(UnkStruct_ov29_022566C8 *param0);

BOOL ov29_022566C8(UnkStruct_ov29_022566C8 **param0, const UnkStruct_ov29_022566C8_1 *param1, BgConfig *param2)
{
    UnkStruct_ov29_022566C8 *v0 = (UnkStruct_ov29_022566C8 *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov29_022566C8));

    if (v0 != NULL) {
        GF_ASSERT(GF_heap_c_dummy_return_true(HEAP_ID_POKETCH_MAIN));
        PoketchTask_InitActiveTaskList(v0->unk_08, 16);

        GF_ASSERT(GF_heap_c_dummy_return_true(HEAP_ID_POKETCH_MAIN));
        v0->unk_00 = param1;
        v0->unk_04 = Poketch_GetBgConfig();
        v0->unk_50 = ov25_02254664();

        GF_ASSERT(GF_heap_c_dummy_return_true(HEAP_ID_POKETCH_MAIN));
        *param0 = v0;
        return 1;
    }

    return 0;
}

static BOOL ov29_02256728(UnkStruct_ov29_022566C8 *param0)
{
    static const WindowTemplate v0 = {
        7, 2, 2, 20, 19, 0, 12
    };

    param0->unk_70 = Window_New(HEAP_ID_POKETCH_APP, 1);

    if (param0->unk_70) {
        Window_AddFromTemplate(param0->unk_04, param0->unk_70, &v0);

        if (PoketchMemory_ReadFast(param0->unk_00->unk_16E8, param0->unk_70->pixels, (20 * 19 * 0x20)) == FALSE) {
            Window_FillTilemap(param0->unk_70, 0x4);
        }

        return 1;
    }

    return 0;
}

void ov29_02256770(UnkStruct_ov29_022566C8 *param0)
{
    if (param0 != NULL) {
        GF_ASSERT(GF_heap_c_dummy_return_true(HEAP_ID_POKETCH_MAIN));

        if (param0->unk_70) {
            PoketchMemory_WriteFast(param0->unk_00->unk_16E8, param0->unk_70->pixels, (20 * 19 * 0x20));
            Window_Remove(param0->unk_70);
            Heap_FreeToHeap(param0->unk_70);
        }

        Heap_FreeToHeap(param0);
    }
}

static const PoketchTask Unk_ov29_02256BB0[] = {
    { 0x0, ov29_02256804, 0x0 },
    { 0x1, ov29_02256908, 0x0 },
    { 0x2, ov29_02256950, 0x0 },
    { 0x3, ov29_022569DC, 0x0 },
    { 0x4, ov29_02256A7C, 0x0 },
    { 0x5, ov29_02256A94, 0x0 },
    { 0x0, NULL, 0x0 }
};

void ov29_022567B4(UnkStruct_ov29_022566C8 *param0, u32 param1)
{
    PoketchTask_Start(Unk_ov29_02256BB0, param1, param0, param0->unk_00, param0->unk_08, 2, 8);
}

BOOL ov29_022567D8(UnkStruct_ov29_022566C8 *param0, u32 param1)
{
    return PoketchTask_TaskIsNotActive(param0->unk_08, param1);
}

BOOL ov29_022567E4(UnkStruct_ov29_022566C8 *param0)
{
    return PoketchTask_NoActiveTasks(param0->unk_08);
}

static void ov29_022567F0(PoketchTaskManager *param0)
{
    UnkStruct_ov29_022566C8 *v0 = PoketchTask_GetTaskData(param0);
    PoketchTask_EndTask(v0->unk_08, param0);
}

static void ov29_02256804(SysTask *param0, void *param1)
{
    static const BgTemplate v0 = {
        0,
        0,
        0,
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
    static const BgTemplate v1 = {
        0,
        0,
        0x800,
        0,
        1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0x7800,
        GX_BG_CHARBASE_0x00000,
        GX_BG_EXTPLTT_01,
        3,
        0,
        0,
        0
    };
    GXSDispCnt v2;
    UnkStruct_ov29_022566C8 *v3;

    GF_ASSERT(GF_heap_c_dummy_return_true(HEAP_ID_POKETCH_APP));

    v3 = PoketchTask_GetTaskData(param1);

    Bg_InitFromTemplate(v3->unk_04, 6, &v0, 0);
    Bg_InitFromTemplate(v3->unk_04, 7, &v1, 0);

    GF_ASSERT(GF_heap_c_dummy_return_true(HEAP_ID_POKETCH_APP));

    Graphics_LoadTilesToBgLayer(12, 30, v3->unk_04, 6, 0, 0, 1, HEAP_ID_POKETCH_APP);
    Graphics_LoadTilemapToBgLayer(12, 31, v3->unk_04, 6, 0, 0, 1, HEAP_ID_POKETCH_APP);
    Poketch_LoadActivePalette(0, 0);

    GF_ASSERT(GF_heap_c_dummy_return_true(HEAP_ID_POKETCH_APP));

    ov29_02256728(v3);
    Window_CopyToVRAM(v3->unk_70);

    GF_ASSERT(GF_heap_c_dummy_return_true(HEAP_ID_POKETCH_APP));

    ov29_02256ABC(v3);

    GF_ASSERT(GF_heap_c_dummy_return_true(HEAP_ID_POKETCH_APP));

    Bg_CopyTilemapBufferToVRAM(v3->unk_04, 7);

    v2 = GXS_GetDispCnt();
    GXS_SetVisiblePlane(v2.visiblePlane | GX_PLANEMASK_BG2 | GX_PLANEMASK_OBJ);
    ov29_022567F0(param1);

    GF_ASSERT(GF_heap_c_dummy_return_true(HEAP_ID_POKETCH_APP));
}

static void ov29_02256908(SysTask *param0, void *param1)
{
    UnkStruct_ov29_022566C8 *v0 = PoketchTask_GetTaskData(param1);

    if (v0->unk_00->unk_00 == 1) {
        ov25_InitAnimation(v0->unk_68[0], 0);
        ov25_InitAnimation(v0->unk_68[1], 3);
    } else {
        ov25_InitAnimation(v0->unk_68[0], 1);
        ov25_InitAnimation(v0->unk_68[1], 2);
    }

    PoketchSystem_PlaySoundEffect(1635);
    ov29_022567F0(param1);
}

static void ov29_02256950(SysTask *param0, void *param1)
{
    UnkStruct_ov29_022566C8 *v0 = PoketchTask_GetTaskData(param1);
    Window_LoadTiles(v0->unk_70);
    ov29_022567F0(param1);
}

static void ov29_02256968(u8 *param0, int param1, int param2, int param3, int param4)
{
    int v0, v1, v2, v3, v4;

    param3--;
    param4--;

    v1 = param1 / 8;
    v3 = ((param1 + param3) / 8) - v1 + 1;
    v2 = param2 / 8;
    v4 = ((param2 + param4) / 8) - v2 + 1;
    v0 = (v2 * 20) + v1;

    while (v4--) {
        DC_FlushRange(param0 + (v0 * 0x20), v3 * 0x20);
        GXS_LoadBG3Char(param0 + (v0 * 0x20), (12 + v0) * 0x20, v3 * 0x20);
        v0 += 20;
    }
}

static void ov29_022569DC(SysTask *param0, void *param1)
{
    s32 v0, v1;
    UnkStruct_ov29_022566C8 *v2 = PoketchTask_GetTaskData(param1);

    if (v2->unk_00->unk_00 == 0) {
        int v3, v4;

        v3 = v4 = 8;
        v0 = (v2->unk_00->unk_04 * 2) - (8 / 2);
        v1 = (v2->unk_00->unk_08 * 2) - (8 / 2);

        if (v0 < 0) {
            v3 += v0;
            v0 = 0;
        }

        if (v1 < 0) {
            v4 += v1;
            v1 = 0;
        }

        Window_FillRectWithColor(v2->unk_70, 0x4, v0, v1, v3, v4);
        ov29_02256968((u8 *)v2->unk_70->pixels, v0, v1, v3, v4);
    } else {
        v0 = v2->unk_00->unk_04 * 2;
        v1 = v2->unk_00->unk_08 * 2;

        Window_FillRectWithColor(v2->unk_70, 0x1, v0, v1, 2, 2);
        ov29_02256968((u8 *)v2->unk_70->pixels, v0, v1, 2, 2);
    }

    ov29_022567F0(param1);
}

static void ov29_02256A7C(SysTask *param0, void *param1)
{
    UnkStruct_ov29_022566C8 *v0 = PoketchTask_GetTaskData(param1);

    Window_LoadTiles(v0->unk_70);
    ov29_022567F0(param1);
}

static void ov29_02256A94(SysTask *param0, void *param1)
{
    UnkStruct_ov29_022566C8 *v0 = PoketchTask_GetTaskData(param1);

    ov29_02256B18(v0);
    Bg_FreeTilemapBuffer(v0->unk_04, 6);
    Bg_FreeTilemapBuffer(v0->unk_04, 7);
    ov29_022567F0(param1);
}

static void ov29_02256ABC(UnkStruct_ov29_022566C8 *param0)
{
    static const UnkStruct_ov25_02255810 v0[] = {
        {
            { 192 << FX32_SHIFT, 56 << FX32_SHIFT },
            0,
            0,
            2,
            0,
            0,
        },
        {
            { 192 << FX32_SHIFT, 136 << FX32_SHIFT },
            3,
            0,
            2,
            0,
            0,
        },
    };

    Graphics_LoadObjectTiles(12, 32, 1, 0, 0, 1, HEAP_ID_POKETCH_APP);

    if (ov25_LoadNARCMembers(&param0->unk_54, 12, 33, 34, 8)) {
        int v1;

        for (v1 = 0; v1 < 2; v1++) {
            param0->unk_68[v1] = ov25_SetupNewElem(param0->unk_50, &v0[v1], &param0->unk_54);
        }
    }
}

static void ov29_02256B18(UnkStruct_ov29_022566C8 *param0)
{
    u32 v0;

    for (v0 = 0; v0 < 2; v0++) {
        ov25_RemoveElem(param0->unk_50, param0->unk_68[v0]);
    }

    ov25_FreeNARCMembers(&param0->unk_54);
}
