#include "overlay037/ov37_022563D4.h"

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
#include "overlay037/struct_ov37_022563D4_1.h"
#include "overlay037/struct_ov37_022563D4_decl.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "sys_task_manager.h"

struct UnkStruct_ov37_022563D4_t {
    const UnkStruct_ov37_022563D4_1 *unk_00;
    BgConfig *unk_04;
    u32 unk_08[6];
    UnkStruct_ov25_022555E8 *unk_20;
    ov25_LinkedElement *unk_24;
    UnkStruct_ov25_02255958 unk_28;
};

static void ov37_0225641C(UnkStruct_ov37_022563D4 *param0, const UnkStruct_ov37_022563D4_1 *param1);
static void ov37_02256470(UnkStruct_ov37_022563D4 *param0);
static void ov37_022564C4(PoketchTaskManager *param0);
static void ov37_022564D8(SysTask *param0, void *param1);
static void ov37_02256568(SysTask *param0, void *param1);
static void ov37_02256588(SysTask *param0, void *param1);

BOOL ov37_022563D4(UnkStruct_ov37_022563D4 **param0, const UnkStruct_ov37_022563D4_1 *param1, BgConfig *param2)
{
    UnkStruct_ov37_022563D4 *v0 = (UnkStruct_ov37_022563D4 *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov37_022563D4));

    if (v0 != NULL) {
        PoketchTask_InitActiveTaskList(v0->unk_08, 4);
        v0->unk_00 = param1;
        v0->unk_04 = Poketch_GetBgConfig();
        v0->unk_20 = ov25_02254664();
        ov37_0225641C(v0, param1);
        *param0 = v0;

        return 1;
    }

    return 0;
}

void ov37_02256410(UnkStruct_ov37_022563D4 *param0)
{
    if (param0 != NULL) {
        Heap_FreeToHeap(param0);
    }
}

static void ov37_0225641C(UnkStruct_ov37_022563D4 *param0, const UnkStruct_ov37_022563D4_1 *param1)
{
    static const UnkStruct_ov25_02255810 v0 = {
        { (112 << FX32_SHIFT), (104 << FX32_SHIFT) },
        0,
        0,
        2,
        0,
        0
    };
    int v1;

    Graphics_LoadObjectTiles(12, 104, 1, 0, 0, 1, HEAP_ID_POKETCH_APP);
    ov25_LoadNARCMembers(&param0->unk_28, 12, 102, 103, 8);

    param0->unk_24 = ov25_SetupNewElem(param0->unk_20, &v0, &param0->unk_28);

    if (param1->unk_00 == 0) {
        ov25_InitAnimation(param0->unk_24, 1);
    }
}

static void ov37_02256470(UnkStruct_ov37_022563D4 *param0)
{
    ov25_RemoveElem(param0->unk_20, param0->unk_24);
    ov25_FreeNARCMembers(&(param0->unk_28));
}

static const PoketchTask Unk_ov37_02256614[] = {
    { 0x0, ov37_022564D8, 0x0 },
    { 0x1, ov37_02256568, 0x0 },
    { 0x2, ov37_02256588, 0x0 },
    { 0x0, NULL, 0x0 }
};

void ov37_02256488(UnkStruct_ov37_022563D4 *param0, u32 param1)
{
    PoketchTask_Start(Unk_ov37_02256614, param1, param0, param0->unk_00, param0->unk_08, 2, 8);
}

BOOL ov37_022564AC(UnkStruct_ov37_022563D4 *param0, u32 param1)
{
    return PoketchTask_TaskIsNotActive(param0->unk_08, param1);
}

BOOL ov37_022564B8(UnkStruct_ov37_022563D4 *param0)
{
    return PoketchTask_NoActiveTasks(param0->unk_08);
}

static void ov37_022564C4(PoketchTaskManager *param0)
{
    UnkStruct_ov37_022563D4 *v0 = PoketchTask_GetTaskData(param0);

    PoketchTask_EndTask(v0->unk_08, param0);
}

static void ov37_022564D8(SysTask *param0, void *param1)
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
    UnkStruct_ov37_022563D4 *v2;
    void *v3;
    NNSG2dPaletteData *v4;

    v2 = PoketchTask_GetTaskData(param1);

    Bg_InitFromTemplate(v2->unk_04, 6, &v0, 0);
    Graphics_LoadTilesToBgLayer(12, 101, v2->unk_04, 6, 0, 0, 1, HEAP_ID_POKETCH_APP);
    Graphics_LoadTilemapToBgLayer(12, 100, v2->unk_04, 6, 0, 0, 1, HEAP_ID_POKETCH_APP);

    Poketch_LoadActivePalette(0, 0);
    Bg_CopyTilemapBufferToVRAM(v2->unk_04, 6);

    v1 = GXS_GetDispCnt();
    GXS_SetVisiblePlane(v1.visiblePlane | GX_PLANEMASK_BG2);

    ov37_022564C4(param1);
}

static void ov37_02256568(SysTask *param0, void *param1)
{
    UnkStruct_ov37_022563D4 *v0 = PoketchTask_GetTaskData(param1);

    ov37_02256470(v0);
    Bg_FreeTilemapBuffer(v0->unk_04, 6);
    ov37_022564C4(param1);
}

static void ov37_02256588(SysTask *param0, void *param1)
{
    UnkStruct_ov37_022563D4 *v0 = PoketchTask_GetTaskData(param1);
    const UnkStruct_ov37_022563D4_1 *v1 = PoketchTask_GetConstTaskData(param1);

    PoketchSystem_PlaySoundEffect(1635);

    if (v1->unk_00) {
        ov25_InitAnimation(v0->unk_24, 0);
        PM_SetBackLight(PM_LCD_BOTTOM, PM_BACKLIGHT_ON);
    } else {
        ov25_InitAnimation(v0->unk_24, 1);
        PM_SetBackLight(PM_LCD_BOTTOM, PM_BACKLIGHT_OFF);
    }

    ov37_022564C4(param1);
}
