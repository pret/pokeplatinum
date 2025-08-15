#include "overlay034/ov34_02256540.h"

#include <nitro.h>
#include <string.h>

#include "applications/poketch/poketch_animation.h"
#include "applications/poketch/poketch_graphics.h"
#include "applications/poketch/poketch_task.h"
#include "overlay034/dowsing_machine_task_data.h"
#include "overlay034/struct_ov34_02256540_decl.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "sys_task_manager.h"

struct UnkStruct_ov34_02256540_t {
    const DowsingMachineTaskData *unk_00;
    BgConfig *unk_04;
    u32 unk_08[10];
    PoketchAnimation_AnimationManager *unk_30;
    PoketchAnimation_AnimatedSpriteData *unk_34;
    PoketchAnimation_AnimatedSpriteData *unk_38[8];
    PoketchAnimation_SpriteData unk_58;
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
static void ov34_02256974(UnkStruct_ov34_02256540 *param0, const DowsingMachineTaskData *param1);
static void ov34_022569A0(UnkStruct_ov34_02256540 *param0, const DowsingMachineTaskData *param1);
static BOOL ov34_022569DC(UnkStruct_ov34_02256540 *param0);
static void ov34_022569E8(UnkStruct_ov34_02256540 *param0);

BOOL ov34_02256540(UnkStruct_ov34_02256540 **param0, const DowsingMachineTaskData *param1, BgConfig *param2)
{
    UnkStruct_ov34_02256540 *v0 = (UnkStruct_ov34_02256540 *)Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov34_02256540));

    if (v0 != NULL) {
        int v1;

        PoketchTask_InitActiveTaskList(v0->unk_08, 8);

        v0->unk_00 = param1;
        v0->unk_04 = PoketchGraphics_GetBgConfig();
        v0->unk_6C = 0;
        v0->unk_30 = PoketchGraphics_GetAnimationManager();
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
    static const PoketchAnimation_AnimationData v0 = {
        { 0, 0 },
        0,
        0,
        2,
        0,
        1,
    };
    static const PoketchAnimation_AnimationData v1 = {
        { 0, 0 },
        1,
        0,
        2,
        1,
        0,
    };

    if (PoketchAnimation_LoadSpriteFromNARC(&param0->unk_58, 12, 40, 41, 8)) {
        int v2;

        Graphics_LoadObjectTiles(12, 42, 1, 0, 0, 1, HEAP_ID_POKETCH_APP);
        param0->unk_34 = PoketchAnimation_SetupNewAnimatedSprite(param0->unk_30, &v0, &param0->unk_58);
        PoketchAnimation_HideSprite(param0->unk_34, 1);

        for (v2 = 0; v2 < 8; v2++) {
            param0->unk_38[v2] = PoketchAnimation_SetupNewAnimatedSprite(param0->unk_30, &v1, &param0->unk_58);
            PoketchAnimation_HideSprite(param0->unk_38[v2], 1);
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
                PoketchAnimation_RemoveAnimatedSprite(param0->unk_30, param0->unk_38[v0]);
            }
        }

        if (param0->unk_34) {
            PoketchAnimation_RemoveAnimatedSprite(param0->unk_30, param0->unk_34);
        }

        PoketchAnimation_FreeSpriteData(&(param0->unk_58));
        Heap_Free(param0);
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
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x7000,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 2,
        .areaOver = 0,
        .mosaic = FALSE,
    };
    GXSDispCnt v1;
    UnkStruct_ov34_02256540 *v2;
    void *v3;
    NNSG2dPaletteData *v4;

    v2 = PoketchTask_GetTaskData(param1);

    Bg_InitFromTemplate(v2->unk_04, BG_LAYER_SUB_2, &v0, 0);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, 39, v2->unk_04, 6, 0, 0, 1, HEAP_ID_POKETCH_APP);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, 38, v2->unk_04, 6, 0, 0, 1, HEAP_ID_POKETCH_APP);

    PoketchGraphics_LoadActivePalette(0, 0);

    {
        PoketchGraphics_CopyActivePalette(v2->unk_70);

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

    Bg_FreeTilemapBuffer(v0->unk_04, BG_LAYER_SUB_2);
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
    const DowsingMachineTaskData *v2 = PoketchTask_GetConstTaskData(param1);
    u32 *v3 = PoketchTask_GetExtraData(param1);

    if (PoketchTask_GetState(param1) == 0) {
        v1->unk_6C = 1;
        *v3 = v2->foundItemType;
    }

    v0[*v3](param0, param1);
}

static void ov34_022567D4(SysTask *param0, void *param1)
{
    UnkStruct_ov34_02256540 *v0 = PoketchTask_GetTaskData(param1);
    const DowsingMachineTaskData *v1 = PoketchTask_GetConstTaskData(param1);

    switch (PoketchTask_GetState(param1)) {
    case 0:
        PoketchAnimation_SetSpritePosition(v0->unk_34, v1->touchX << FX32_SHIFT, v1->touchZ << FX32_SHIFT);
        PoketchAnimation_HideSprite(v0->unk_34, 0);
        PoketchAnimation_UpdateAnimationIdx(v0->unk_34, 0);
        PoketchTask_IncrementState(param1);
        break;
    case 1:
        if (v0->unk_6C == 0) {
            ov34_022569E8(v0);
            ov34_0225667C(param1);
            break;
        }

        if (PoketchAnimation_AnimationInactive(v0->unk_34)) {
            ov34_022569E8(v0);
            ov34_0225667C(param1);
        }
        break;
    }
}

static void ov34_0225684C(SysTask *param0, void *param1)
{
    UnkStruct_ov34_02256540 *v0 = PoketchTask_GetTaskData(param1);
    const DowsingMachineTaskData *v1 = PoketchTask_GetConstTaskData(param1);

    switch (PoketchTask_GetState(param1)) {
    case 0:
        PoketchAnimation_SetSpritePosition(v0->unk_34, v1->touchX << FX32_SHIFT, v1->touchZ << FX32_SHIFT);
        PoketchAnimation_UpdateAnimationIdx(v0->unk_34, 0);
        PoketchAnimation_HideSprite(v0->unk_34, 0);
        PoketchTask_IncrementState(param1);
        break;
    case 1:
        if (v0->unk_6C == 0) {
            ov34_022569E8(v0);
            ov34_0225667C(param1);
            break;
        }

        if (PoketchAnimation_AnimationInactive(v0->unk_34)) {
            PoketchAnimation_UpdateAnimationIdx(v0->unk_34, 0);
        }
        break;
    }
}

static void ov34_022568C0(SysTask *param0, void *param1)
{
    UnkStruct_ov34_02256540 *v0 = PoketchTask_GetTaskData(param1);
    const DowsingMachineTaskData *v1 = PoketchTask_GetConstTaskData(param1);

    switch (PoketchTask_GetState(param1)) {
    case 0:
        ov34_02256974(v0, v1);
        PoketchAnimation_SetSpritePosition(v0->unk_34, v1->touchX << FX32_SHIFT, v1->touchZ << FX32_SHIFT);
        PoketchAnimation_UpdateAnimationIdx(v0->unk_34, 0);
        PoketchAnimation_HideSprite(v0->unk_34, 0);
        PoketchTask_IncrementState(param1);
        break;
    case 1:
        if (v0->unk_6C == 0) {
            ov34_022569E8(v0);
            ov34_0225667C(param1);
            return;
        }

        if (PoketchAnimation_AnimationInactive(v0->unk_34)) {
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
            PoketchAnimation_UpdateAnimationIdx(v0->unk_34, 0);
            PoketchTask_SetState(param1, 1);
        }
        break;
    }
}

static void ov34_02256974(UnkStruct_ov34_02256540 *param0, const DowsingMachineTaskData *param1)
{
    u32 v0;

    for (v0 = 0; v0 < param1->nearbyItemCount; v0++) {
        PoketchAnimation_SetSpritePosition(param0->unk_38[v0], param1->hiddenItemPositions[v0].screenX << FX32_SHIFT, param1->hiddenItemPositions[v0].screenZ << FX32_SHIFT);
    }
}

static void ov34_022569A0(UnkStruct_ov34_02256540 *param0, const DowsingMachineTaskData *param1)
{
    u32 v0, v1;

    for (v0 = 0; v0 < param1->nearbyItemCount; v0++) {
        v1 = 1 + param1->hiddenItemPositions[v0].range;

        if (v1 >= 3) {
            v1 = 3;
        }

        PoketchAnimation_HideSprite(param0->unk_38[v0], 0);
        PoketchAnimation_UpdateAnimationIdx(param0->unk_38[v0], v1);
    }
}

static BOOL ov34_022569DC(UnkStruct_ov34_02256540 *param0)
{
    return PoketchAnimation_AnimationInactive(param0->unk_38[0]);
}

static void ov34_022569E8(UnkStruct_ov34_02256540 *param0)
{
    int v0;

    PoketchAnimation_HideSprite(param0->unk_34, 1);

    for (v0 = 0; v0 < 8; v0++) {
        PoketchAnimation_HideSprite(param0->unk_38[v0], 1);
    }
}

void ov34_02256A0C(UnkStruct_ov34_02256540 *param0)
{
    ov34_022569E8(param0);
    param0->unk_6C = 0;
}
