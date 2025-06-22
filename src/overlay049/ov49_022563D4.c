#include "overlay049/ov49_022563D4.h"

#include <nitro.h>
#include <string.h>

#include "applications/poketch/poketch_animation.h"
#include "applications/poketch/poketch_graphics.h"
#include "applications/poketch/poketch_system.h"
#include "applications/poketch/poketch_task.h"
#include "overlay049/struct_ov49_022563D4_1.h"
#include "overlay049/struct_ov49_022563D4_decl.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "sys_task_manager.h"

struct UnkStruct_ov49_022563D4_t {
    const UnkStruct_ov49_022563D4_1 *unk_00;
    BgConfig *unk_04;
    u32 unk_08[6];
    PoketchAnimation_AnimationManager *unk_20;
    PoketchAnimation_AnimatedSpriteData *unk_24;
    PoketchAnimation_SpriteData unk_28;
};

static void ov49_02256410(UnkStruct_ov49_022563D4 *param0, const UnkStruct_ov49_022563D4_1 *param1);
static void ov49_02256464(UnkStruct_ov49_022563D4 *param0);
static void ov49_022564D0(PoketchTaskManager *param0);
static void ov49_022564E4(SysTask *param0, void *param1);
static void ov49_02256578(SysTask *param0, void *param1);
static void ov49_02256594(SysTask *param0, void *param1);

BOOL ov49_022563D4(UnkStruct_ov49_022563D4 **param0, const UnkStruct_ov49_022563D4_1 *param1, BgConfig *param2)
{
    UnkStruct_ov49_022563D4 *v0 = (UnkStruct_ov49_022563D4 *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov49_022563D4));

    if (v0 != NULL) {
        PoketchTask_InitActiveTaskList(v0->unk_08, 4);
        v0->unk_00 = param1;
        v0->unk_04 = PoketchGraphics_GetBgConfig();
        v0->unk_20 = PoketchGraphics_GetAnimationManager();
        ov49_02256410(v0, param1);
        *param0 = v0;

        return 1;
    }

    return 0;
}

static void ov49_02256410(UnkStruct_ov49_022563D4 *param0, const UnkStruct_ov49_022563D4_1 *param1)
{
    static const PoketchAnimation_AnimationData v0 = {
        { (56 << FX32_SHIFT), (148 << FX32_SHIFT) },
        0,
        0,
        2,
        0,
        0
    };

    Graphics_LoadObjectTiles(12, 69, 1, 0, 0, 1, HEAP_ID_POKETCH_APP);

    PoketchAnimation_LoadSpriteFromNARC(&param0->unk_28, 12, 67, 68, 8);
    param0->unk_24 = PoketchAnimation_SetupNewAnimatedSprite(param0->unk_20, &v0, &param0->unk_28);
    PoketchAnimation_SetSpritePosition(param0->unk_24, (56 + (16 * param1->unk_00)) << FX32_SHIFT, (148 << FX32_SHIFT));
}

static void ov49_02256464(UnkStruct_ov49_022563D4 *param0)
{
    int v0;

    if (param0->unk_24) {
        PoketchAnimation_RemoveAnimatedSprite(param0->unk_20, param0->unk_24);
    }

    PoketchAnimation_FreeSpriteData(&param0->unk_28);
}

void ov49_02256480(UnkStruct_ov49_022563D4 *param0)
{
    if (param0 != NULL) {
        ov49_02256464(param0);
        Heap_FreeToHeap(param0);
    }
}

static const PoketchTask Unk_ov49_0225660C[] = {
    { 0x0, ov49_022564E4, 0x0 },
    { 0x1, ov49_02256578, 0x0 },
    { 0x2, ov49_02256594 },
    { 0x0, NULL, 0x0 }
};

void ov49_02256494(UnkStruct_ov49_022563D4 *param0, u32 param1)
{
    PoketchTask_Start(Unk_ov49_0225660C, param1, param0, param0->unk_00, param0->unk_08, 2, 8);
}

BOOL ov49_022564B8(UnkStruct_ov49_022563D4 *param0, u32 param1)
{
    return PoketchTask_TaskIsNotActive(param0->unk_08, param1);
}

BOOL ov49_022564C4(UnkStruct_ov49_022563D4 *param0)
{
    return PoketchTask_NoActiveTasks(param0->unk_08);
}

static void ov49_022564D0(PoketchTaskManager *param0)
{
    UnkStruct_ov49_022563D4 *v0 = PoketchTask_GetTaskData(param0);
    PoketchTask_EndTask(v0->unk_08, param0);
}

static void ov49_022564E4(SysTask *param0, void *param1)
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
    UnkStruct_ov49_022563D4 *v2;
    const UnkStruct_ov49_022563D4_1 *v3;
    void *v4;
    NNSG2dPaletteData *v5;

    v2 = PoketchTask_GetTaskData(param1);
    v3 = PoketchTask_GetConstTaskData(param1);

    Bg_InitFromTemplate(v2->unk_04, BG_LAYER_SUB_2, &v0, 0);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, 66, v2->unk_04, BG_LAYER_SUB_2, 0, 0, 1, HEAP_ID_POKETCH_APP);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, 65, v2->unk_04, BG_LAYER_SUB_2, 0, 0, 1, HEAP_ID_POKETCH_APP);

    PoketchGraphics_LoadActivePalette(0, 0);
    Bg_CopyTilemapBufferToVRAM(v2->unk_04, 6);

    v1 = GXS_GetDispCnt();
    GXS_SetVisiblePlane(v1.visiblePlane | GX_PLANEMASK_BG2);

    ov49_022564D0(param1);
}

static void ov49_02256578(SysTask *param0, void *param1)
{
    UnkStruct_ov49_022563D4 *v0 = PoketchTask_GetTaskData(param1);

    Bg_FreeTilemapBuffer(v0->unk_04, BG_LAYER_SUB_2);
    ov49_022564D0(param1);
}

static void ov49_02256594(SysTask *param0, void *param1)
{
    UnkStruct_ov49_022563D4 *v0 = PoketchTask_GetTaskData(param1);
    const UnkStruct_ov49_022563D4_1 *v1 = PoketchTask_GetConstTaskData(param1);

    PoketchSystem_PlaySoundEffect(1635);
    PoketchGraphics_LoadActivePalette(0, 0);
    PoketchAnimation_SetSpritePosition(v0->unk_24, (56 + (16 * v1->unk_00)) << FX32_SHIFT, (148 << FX32_SHIFT));
    ov49_022564D0(param1);
}
