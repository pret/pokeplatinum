#include "overlay038/ov38_0225632C.h"

#include <nitro.h>
#include <string.h>

#include "overlay038/struct_ov38_0225632C_1.h"
#include "overlay038/struct_ov38_0225632C_decl.h"
#include "poketch/poketch_graphics.h"
#include "poketch/poketch_task.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "sys_task_manager.h"

struct UnkStruct_ov38_0225632C_t {
    const UnkStruct_ov38_0225632C_1 *unk_00;
    BgConfig *unk_04;
    u32 unk_08[10];
};

static void ov38_022563A4(PoketchTaskManager *param0);
static void ov38_022563B8(SysTask *param0, void *param1);
static void ov38_02256458(SysTask *param0, void *param1);

BOOL ov38_0225632C(UnkStruct_ov38_0225632C **param0, const UnkStruct_ov38_0225632C_1 *param1, BgConfig *param2)
{
    UnkStruct_ov38_0225632C *v0 = (UnkStruct_ov38_0225632C *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov38_0225632C));

    if (v0 != NULL) {
        PoketchTask_InitActiveTaskList(v0->unk_08, 8);

        v0->unk_00 = param1;
        v0->unk_04 = PoketchGraphics_GetBgConfig();

        if (v0->unk_04 != NULL) {
            *param0 = v0;
            return 1;
        }
    }

    return 0;
}

void ov38_0225635C(UnkStruct_ov38_0225632C *param0)
{
    if (param0 != NULL) {
        Heap_FreeToHeap(param0);
    }
}

static const PoketchTask Unk_ov38_0225649C[] = {
    { 0x0, ov38_022563B8, 0x0 },
    { 0x1, ov38_02256458, 0x0 },
    { 0x0, NULL, 0x0 }
};

void ov38_02256368(UnkStruct_ov38_0225632C *param0, u32 param1)
{
    PoketchTask_Start(Unk_ov38_0225649C, param1, param0, param0->unk_00, param0->unk_08, 2, 8);
}

BOOL ov38_0225638C(UnkStruct_ov38_0225632C *param0, u32 param1)
{
    return PoketchTask_TaskIsNotActive(param0->unk_08, param1);
}

BOOL ov38_02256398(UnkStruct_ov38_0225632C *param0)
{
    return PoketchTask_NoActiveTasks(param0->unk_08);
}

static void ov38_022563A4(PoketchTaskManager *param0)
{
    UnkStruct_ov38_0225632C *v0 = PoketchTask_GetTaskData(param0);
    PoketchTask_EndTask(v0->unk_08, param0);
}

static void ov38_022563B8(SysTask *param0, void *param1)
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
    UnkStruct_ov38_0225632C *v2 = PoketchTask_GetTaskData(param1);

    Bg_InitFromTemplate(v2->unk_04, 6, &v0, 0);
    Graphics_LoadTilesToBgLayer(12, 8, v2->unk_04, 6, 0, 0, 0, HEAP_ID_POKETCH_APP);
    Bg_FillTilemapRect(v2->unk_04, 6, 0, 0, 0, 32, 24, 0);
    Graphics_LoadPalette(12, 9, 4, 0 * 0x20, 0x20, HEAP_ID_POKETCH_APP);

    ov25_02255440(v2->unk_04, 12, 6);
    Bg_CopyTilemapBufferToVRAM(v2->unk_04, 6);

    v1 = GXS_GetDispCnt();
    GXS_SetVisiblePlane(v1.visiblePlane | GX_PLANEMASK_BG2);

    ov38_022563A4(param1);
}

static void ov38_02256458(SysTask *param0, void *param1)
{
    UnkStruct_ov38_0225632C *v0 = PoketchTask_GetTaskData(param1);

    Bg_FreeTilemapBuffer(v0->unk_04, 6);
    ov38_022563A4(param1);
}
