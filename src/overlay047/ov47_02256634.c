#include "overlay047/ov47_02256634.h"

#include <nitro.h>
#include <string.h>

#include "applications/poketch/ov25_02255DBC.h"
#include "applications/poketch/poketch_animation.h"
#include "applications/poketch/poketch_graphics.h"
#include "applications/poketch/poketch_task.h"
#include "overlay047/struct_ov47_02256634_1.h"
#include "overlay047/struct_ov47_02256634_decl.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "sys_task.h"
#include "sys_task_manager.h"

struct UnkStruct_ov47_02256634_t {
    const UnkStruct_ov47_02256634_1 *unk_00;
    BgConfig *unk_04;
    u32 unk_08[6];
    PoketchAnimation_AnimationManager *unk_20;
    PoketchAnimation_AnimatedSpriteData *unk_24[6];
    PoketchAnimation_AnimatedSpriteData *unk_3C[4];
    PoketchAnimation_AnimatedSpriteData *unk_4C[6];
    PoketchAnimation_AnimatedSpriteData *unk_64;
    PoketchAnimation_SpriteData unk_68;
    SysTask *unk_7C;
};

static void ov47_02256684(UnkStruct_ov47_02256634 *param0, const UnkStruct_ov47_02256634_1 *param1);
static void ov47_022567FC(UnkStruct_ov47_02256634 *param0);
static void ov47_022568A8(PoketchTaskManager *param0);
static void ov47_022568BC(SysTask *param0, void *param1);
static void ov47_0225694C(SysTask *param0, void *param1);
static void ov47_02256968(SysTask *param0, void *param1);

BOOL ov47_02256634(UnkStruct_ov47_02256634 **param0, const UnkStruct_ov47_02256634_1 *param1, BgConfig *param2)
{
    UnkStruct_ov47_02256634 *v0 = (UnkStruct_ov47_02256634 *)Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov47_02256634));

    if (v0 != NULL) {
        PoketchTask_InitActiveTaskList(v0->unk_08, 4);

        v0->unk_00 = param1;
        v0->unk_04 = PoketchGraphics_GetBgConfig();
        v0->unk_20 = PoketchGraphics_GetAnimationManager();

        ov47_02256684(v0, param1);

        *param0 = v0;
        return 1;
    }

    return 0;
}

void ov47_02256670(UnkStruct_ov47_02256634 *param0)
{
    if (param0 != NULL) {
        ov47_022567FC(param0);
        Heap_Free(param0);
    }
}

static void ov47_02256684(UnkStruct_ov47_02256634 *param0, const UnkStruct_ov47_02256634_1 *param1)
{
    PoketchAnimation_AnimationData v0;
    int v1, v2;
    u32 v3, v4;

    Graphics_LoadObjectTiles(12, 120, 1, 0, 0, 1, HEAP_ID_POKETCH_APP);

    PoketchAnimation_LoadSpriteFromNARC(&param0->unk_68, 12, 118, 119, 8);

    v0.flip = NNS_G2D_RENDERERFLIP_NONE;
    v0.oamPriority = 2;
    v0.hasAffineTransform = FALSE;

    ov25_02255DBC(param1->unk_00, param1->unk_04, &v3, &v4);

    v0.translation.x = ((v3) << FX32_SHIFT);
    v0.translation.y = ((v4) << FX32_SHIFT);
    v0.priority = 1;
    v0.animIdx = 0;
    param0->unk_64 = PoketchAnimation_SetupNewAnimatedSprite(param0->unk_20, &v0, &(param0->unk_68));
    v0.hasAffineTransform = TRUE;

    for (v1 = 0; v1 < 6; v1++) {
        v0.translation.x = ((param1->unk_0C[v1].unk_00) << FX32_SHIFT);
        v0.translation.y = ((param1->unk_0C[v1].unk_01) << FX32_SHIFT);
        v0.priority = 2 + param1->unk_0C[v1].unk_02;
        v0.animIdx = 1 + v1;
        param0->unk_24[v1] = PoketchAnimation_SetupNewAnimatedSprite(param0->unk_20, &v0, &(param0->unk_68));
    }

    for (v1 = 0; v1 < 4; v1++) {
        ov25_02255DFC(v1, &v3, &v4);

        v0.translation.x = ((v3) << FX32_SHIFT);
        v0.translation.y = ((v4) << FX32_SHIFT);
        v0.priority = 9;
        v0.animIdx = 14 + v1;

        param0->unk_3C[v1] = PoketchAnimation_SetupNewAnimatedSprite(param0->unk_20, &v0, &(param0->unk_68));

        if (param1->unk_2C[v1] == 0) {
            PoketchAnimation_HideSprite(param0->unk_3C[v1], 1);
        }
    }

    for (v1 = 0; v1 < 6; v1++) {
        v2 = ov25_02255E24(param1->unk_3C[v1].unk_04, &v3, &v4);

        v0.translation.x = ((v3) << FX32_SHIFT);
        v0.translation.y = ((v4) << FX32_SHIFT);
        v0.priority = 8;
        v0.animIdx = 18;

        param0->unk_4C[v1] = PoketchAnimation_SetupNewAnimatedSprite(param0->unk_20, &v0, &(param0->unk_68));

        if ((param1->unk_3C[v1].unk_00 == 0) || (v2 == 0)) {
            PoketchAnimation_HideSprite(param0->unk_4C[v1], 1);
        }
    }

    param0->unk_7C = SysTask_Start(ov47_02256968, param0, 3);
}

static void ov47_022567FC(UnkStruct_ov47_02256634 *param0)
{
    int v0;

    SysTask_Done(param0->unk_7C);

    for (v0 = 0; v0 < 6; v0++) {
        if (param0->unk_24[v0]) {
            PoketchAnimation_RemoveAnimatedSprite(param0->unk_20, param0->unk_24[v0]);
            param0->unk_24[v0] = NULL;
        }
    }

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_3C[v0]) {
            PoketchAnimation_RemoveAnimatedSprite(param0->unk_20, param0->unk_3C[v0]);
            param0->unk_3C[v0] = NULL;
        }
    }

    for (v0 = 0; v0 < 6; v0++) {
        if (param0->unk_4C[v0]) {
            PoketchAnimation_RemoveAnimatedSprite(param0->unk_20, param0->unk_4C[v0]);
            param0->unk_4C[v0] = NULL;
        }
    }

    PoketchAnimation_RemoveAnimatedSprite(param0->unk_20, param0->unk_64);
    PoketchAnimation_FreeSpriteData(&param0->unk_68);
}

static const PoketchTask Unk_ov47_02256A78[] = {
    { 0x0, ov47_022568BC, 0x0 },
    { 0x1, ov47_0225694C, 0x0 },
    { 0x0, NULL, 0x0 }
};

void ov47_0225686C(UnkStruct_ov47_02256634 *param0, u32 param1)
{
    PoketchTask_Start(Unk_ov47_02256A78, param1, param0, param0->unk_00, param0->unk_08, 2, 8);
}

BOOL ov47_02256890(UnkStruct_ov47_02256634 *param0, u32 param1)
{
    return PoketchTask_TaskIsNotActive(param0->unk_08, param1);
}

BOOL ov47_0225689C(UnkStruct_ov47_02256634 *param0)
{
    return PoketchTask_NoActiveTasks(param0->unk_08);
}

static void ov47_022568A8(PoketchTaskManager *param0)
{
    UnkStruct_ov47_02256634 *v0 = PoketchTask_GetTaskData(param0);

    PoketchTask_EndTask(v0->unk_08, param0);
}

static void ov47_022568BC(SysTask *param0, void *param1)
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
    UnkStruct_ov47_02256634 *v2;
    NNSG2dPaletteData *v3;

    v2 = PoketchTask_GetTaskData(param1);

    Bg_InitFromTemplate(v2->unk_04, BG_LAYER_SUB_2, &v0, 0);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, 117, v2->unk_04, BG_LAYER_SUB_2, 0, 0, 1, HEAP_ID_POKETCH_APP);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, 115, v2->unk_04, BG_LAYER_SUB_2, 0, 0, 1, HEAP_ID_POKETCH_APP);

    PoketchGraphics_LoadActivePalette(0, 0);

    Bg_CopyTilemapBufferToVRAM(v2->unk_04, 6);

    v1 = GXS_GetDispCnt();
    GXS_SetVisiblePlane(v1.visiblePlane | GX_PLANEMASK_BG2);

    ov47_022568A8(param1);
}

static void ov47_0225694C(SysTask *param0, void *param1)
{
    UnkStruct_ov47_02256634 *v0 = PoketchTask_GetTaskData(param1);

    Bg_FreeTilemapBuffer(v0->unk_04, BG_LAYER_SUB_2);
    ov47_022568A8(param1);
}

static void ov47_02256968(SysTask *param0, void *param1)
{
    UnkStruct_ov47_02256634 *v0 = param1;
    const UnkStruct_ov47_02256634_1 *v1 = v0->unk_00;
    int v2;

    if (v1->unk_28) {
        int v3 = v1->unk_24;

        if (v1->unk_0C[v3].unk_03) {
            PoketchAnimation_SetSpritePrority(v0->unk_20, v0->unk_24[v3], 0);
            PoketchAnimation_UpdateAnimationIdx(v0->unk_24[v3], 8 + v3);
        } else {
            PoketchAnimation_SetSpritePrority(v0->unk_20, v0->unk_24[v3], 2 + v1->unk_0C[v3].unk_02);
            PoketchAnimation_UpdateAnimationIdx(v0->unk_24[v3], 1 + v3);
        }

        PoketchAnimation_SetSpritePosition(v0->unk_24[v3], (v1->unk_0C[v3].unk_00) << FX32_SHIFT, (v1->unk_0C[v3].unk_01) << FX32_SHIFT);
    }

    if (v1->unk_08) {
        u32 v4, v5, v6;

        ov25_02255DBC(v1->unk_00, v1->unk_04, &v4, &v5);
        PoketchAnimation_SetSpritePosition(v0->unk_64, (v4) << FX32_SHIFT, (v5) << FX32_SHIFT);

        for (v6 = 0; v6 < 6; v6++) {
            if (v1->unk_3C[v6].unk_00) {
                if (ov25_02255E24(v1->unk_3C[v6].unk_04, &v4, &v5)) {
                    PoketchAnimation_SetSpritePosition(v0->unk_4C[v6], (v4) << FX32_SHIFT, (v5) << FX32_SHIFT);
                    PoketchAnimation_HideSprite(v0->unk_4C[v6], 0);
                } else {
                    PoketchAnimation_HideSprite(v0->unk_4C[v6], 1);
                }
            } else {
                PoketchAnimation_HideSprite(v0->unk_4C[v6], 1);
            }
        }
    }
}
