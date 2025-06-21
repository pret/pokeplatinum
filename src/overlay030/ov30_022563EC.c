#include "overlay030/ov30_022563EC.h"

#include <nitro.h>
#include <string.h>

#include "applications/poketch/base/poketch_animation.h"
#include "applications/poketch/base/poketch_graphics.h"
#include "applications/poketch/base/poketch_task.h"
#include "overlay030/struct_ov30_022563EC_1.h"
#include "overlay030/struct_ov30_022563EC_decl.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "sys_task.h"
#include "sys_task_manager.h"

struct UnkStruct_ov30_022563EC_t {
    const UnkStruct_ov30_022563EC_1 *unk_00;
    BgConfig *unk_04;
    u32 unk_08[10];
    SysTask *unk_30;
    PoketchAnimation_SpriteData unk_34;
    PoketchAnimation_AnimationManager *unk_48;
    PoketchAnimation_AnimatedSpriteData *unk_4C[2];
};

static void ov30_02256460(SysTask *param0, void *param1);
static void ov30_022564A0(PoketchTaskManager *param0);
static void ov30_022564B4(SysTask *param0, void *param1);
static void ov30_02256548(SysTask *param0, void *param1);
static void ov30_02256568(SysTask *param0, void *param1);
static void ov30_02256594(SysTask *param0, void *param1);
static void ov30_022565B0(UnkStruct_ov30_022563EC *param0);
static BOOL ov30_022565F4(UnkStruct_ov30_022563EC *param0);
static void ov30_02256658(UnkStruct_ov30_022563EC *param0);

BOOL ov30_022563EC(UnkStruct_ov30_022563EC **param0, const UnkStruct_ov30_022563EC_1 *param1, BgConfig *param2)
{
    UnkStruct_ov30_022563EC *v0 = (UnkStruct_ov30_022563EC *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov30_022563EC));

    if (v0 != NULL) {
        NNSG2dScreenData *v1;
        void *v2;

        PoketchTask_InitActiveTaskList(v0->unk_08, 8);

        v0->unk_00 = param1;
        v0->unk_04 = PoketchGraphics_GetBgConfig();
        v0->unk_48 = PoketchGraphics_GetAnimationManager();

        if (ov30_022565F4(v0) == 0) {
            Heap_FreeToHeap(v0);
            return 0;
        }

        v0->unk_30 = SysTask_Start(ov30_02256460, v0, 3);
        *param0 = v0;

        return 1;
    }

    return 0;
}

void ov30_02256444(UnkStruct_ov30_022563EC *param0)
{
    if (param0 != NULL) {
        ov30_02256658(param0);

        if (param0->unk_30) {
            SysTask_Done(param0->unk_30);
        }

        Heap_FreeToHeap(param0);
    }
}

static void ov30_02256460(SysTask *param0, void *param1)
{
    return;
}

static const PoketchTask Unk_ov30_022566C4[] = {
    { 0x0, ov30_022564B4, 0x0 },
    { 0x1, ov30_02256548, 0x0 },
    { 0x2, ov30_02256568, 0x0 },
    { 0x3, ov30_02256594, 0x0 },
    { 0x0, NULL, 0x0 }
};

void ov30_02256464(UnkStruct_ov30_022563EC *param0, u32 param1)
{
    PoketchTask_Start(Unk_ov30_022566C4, param1, param0, param0->unk_00, param0->unk_08, 2, 8);
}

BOOL ov30_02256488(UnkStruct_ov30_022563EC *param0, u32 param1)
{
    return PoketchTask_TaskIsNotActive(param0->unk_08, param1);
}

BOOL ov30_02256494(UnkStruct_ov30_022563EC *param0)
{
    return PoketchTask_NoActiveTasks(param0->unk_08);
}

static void ov30_022564A0(PoketchTaskManager *param0)
{
    UnkStruct_ov30_022563EC *v0 = PoketchTask_GetTaskData(param0);

    PoketchTask_EndTask(v0->unk_08, param0);
}

static void ov30_022564B4(SysTask *param0, void *param1)
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
    UnkStruct_ov30_022563EC *v2 = PoketchTask_GetTaskData(param1);

    Bg_InitFromTemplate(v2->unk_04, 6, &v0, 0);
    Graphics_LoadTilesToBgLayer(12, 23, v2->unk_04, 6, 0, 0, 1, HEAP_ID_POKETCH_APP);
    Graphics_LoadTilemapToBgLayer(12, 26, v2->unk_04, 6, 0, 0, 1, HEAP_ID_POKETCH_APP);

    PoketchGraphics_LoadActivePalette(0, 0);
    ov30_022565B0(v2);

    Bg_CopyTilemapBufferToVRAM(v2->unk_04, 6);

    v1 = GXS_GetDispCnt();
    GXS_SetVisiblePlane(v1.visiblePlane | GX_PLANEMASK_BG2 | GX_PLANEMASK_OBJ);
    ov30_022564A0(param1);
}

static void ov30_02256548(SysTask *param0, void *param1)
{
    UnkStruct_ov30_022563EC *v0 = PoketchTask_GetTaskData(param1);

    ov30_022565B0(v0);
    Bg_CopyTilemapBufferToVRAM(v0->unk_04, 6);
    ov30_022564A0(param1);
}

static void ov30_02256568(SysTask *param0, void *param1)
{
    UnkStruct_ov30_022563EC *v0 = PoketchTask_GetTaskData(param1);

    if (v0->unk_00->unk_0C) {
        PoketchGraphics_LoadActiveBacklightPalette(0, 0);
    } else {
        PoketchGraphics_LoadActivePalette(0, 0);
    }

    ov30_022564A0(param1);
}

static void ov30_02256594(SysTask *param0, void *param1)
{
    UnkStruct_ov30_022563EC *v0 = PoketchTask_GetTaskData(param1);

    Bg_FreeTilemapBuffer(v0->unk_04, 6);
    ov30_022564A0(param1);
}

static void ov30_022565B0(UnkStruct_ov30_022563EC *param0)
{
    u32 v0;

    CP_SetDiv32_32(param0->unk_00->unk_00.hour, 10);

    v0 = 60 + ((param0->unk_00->unk_00.hour % 12) * 30) + (param0->unk_00->unk_00.minute / 2);
    PoketchAnimation_UpdateAnimationIdx(param0->unk_4C[0], v0);

    v0 = 0 + param0->unk_00->unk_00.minute;
    PoketchAnimation_UpdateAnimationIdx(param0->unk_4C[1], v0);
}

static BOOL ov30_022565F4(UnkStruct_ov30_022563EC *param0)
{
    static const PoketchAnimation_AnimationData v0[] = {
        {
            { 116 << FX32_SHIFT, 100 << FX32_SHIFT },
            60,
            0,
            2,
            0,
            1,
        },
        {
            { 116 << FX32_SHIFT, 100 << FX32_SHIFT },
            0,
            0,
            2,
            0,
            1,
        },
    };

    Graphics_LoadObjectTiles(12, 29, 1, 0, 0, 1, HEAP_ID_POKETCH_APP);

    if (PoketchAnimation_LoadSpriteFromNARC(&param0->unk_34, 12, 27, 28, 8)) {
        int v1;

        for (v1 = 0; v1 < 2; v1++) {
            param0->unk_4C[v1] = PoketchAnimation_SetupNewAnimatedSprite(param0->unk_48, &v0[v1], &param0->unk_34);
        }

        return 1;
    }

    return 0;
}

static void ov30_02256658(UnkStruct_ov30_022563EC *param0)
{
    int v0;

    PoketchAnimation_FreeSpriteData(&(param0->unk_34));

    for (v0 = 0; v0 < 2; v0++) {
        PoketchAnimation_RemoveAnimatedSprite(param0->unk_48, param0->unk_4C[v0]);
    }
}
