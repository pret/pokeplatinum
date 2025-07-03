#include "overlay050/ov50_02256510.h"

#include <nitro.h>
#include <string.h>

#include "applications/poketch/poketch_animation.h"
#include "applications/poketch/poketch_graphics.h"
#include "applications/poketch/poketch_task.h"
#include "overlay050/struct_ov50_02256510_1.h"
#include "overlay050/struct_ov50_02256510_decl.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "sys_task_manager.h"

struct UnkStruct_ov50_02256510_t {
    const UnkStruct_ov50_02256510_1 *unk_00;
    BgConfig *unk_04;
    u32 unk_08[6];
    PoketchAnimation_AnimationManager *unk_20;
    PoketchAnimation_AnimatedSpriteData *unk_24;
    PoketchAnimation_SpriteData unk_28;
};

static void ov50_02256560(UnkStruct_ov50_02256510 *param0, const UnkStruct_ov50_02256510_1 *param1);
static void ov50_022565B0(PoketchAnimation_AnimatedSpriteData *param0, u32 param1);
static void ov50_022565E4(UnkStruct_ov50_02256510 *param0);
static void ov50_02256638(PoketchTaskManager *param0);
static void ov50_0225664C(SysTask *param0, void *param1);
static void ov50_022566F0(SysTask *param0, void *param1);
static void ov50_02256714(SysTask *param0, void *param1);
static void ov50_0225675C(UnkStruct_ov50_02256510 *param0, const UnkStruct_ov50_02256510_1 *param1);
static void ov50_022567A8(BgConfig *param0, u16 param1, u32 param2);
static void ov50_022567F4(UnkStruct_ov50_02256510 *param0, const UnkStruct_ov50_02256510_1 *param1);
static void ov50_0225683C(BgConfig *param0, u32 param1);
static void ov50_02256894(BgConfig *param0, u32 param1, u32 param2);

BOOL ov50_02256510(UnkStruct_ov50_02256510 **param0, const UnkStruct_ov50_02256510_1 *param1, BgConfig *param2)
{
    UnkStruct_ov50_02256510 *v0 = (UnkStruct_ov50_02256510 *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov50_02256510));

    if (v0 != NULL) {
        PoketchTask_InitActiveTaskList(v0->unk_08, 4);
        v0->unk_00 = param1;
        v0->unk_04 = PoketchGraphics_GetBgConfig();
        v0->unk_20 = PoketchGraphics_GetAnimationManager();
        ov50_02256560(v0, param1);
        *param0 = v0;

        return 1;
    }

    return 0;
}

void ov50_0225654C(UnkStruct_ov50_02256510 *param0)
{
    if (param0 != NULL) {
        ov50_022565E4(param0);
        Heap_Free(param0);
    }
}

static void ov50_02256560(UnkStruct_ov50_02256510 *param0, const UnkStruct_ov50_02256510_1 *param1)
{
    static const PoketchAnimation_AnimationData v0 = {
        { (0 << FX32_SHIFT), (0 << FX32_SHIFT) },
        0,
        0,
        2,
        0,
        0,
    };

    Graphics_LoadObjectTiles(12, 114, 1, 0, 0, 1, HEAP_ID_POKETCH_APP);

    PoketchAnimation_LoadSpriteFromNARC(&param0->unk_28, 12, 112, 113, 8);
    param0->unk_24 = PoketchAnimation_SetupNewAnimatedSprite(param0->unk_20, &v0, &param0->unk_28);
    ov50_022565B0(param0->unk_24, param1->unk_0C[param1->unk_08 - 1].unk_02);
}

static void ov50_022565B0(PoketchAnimation_AnimatedSpriteData *param0, u32 param1)
{
    fx32 v0, v1;

    v0 = (((4 + 3 * (param1 % 7)) + 1) * 8) << FX32_SHIFT;
    v1 = (((5 + 3 * (param1 / 7)) + 1) * 8) << FX32_SHIFT;

    PoketchAnimation_SetSpritePosition(param0, v0, v1);
}

static void ov50_022565E4(UnkStruct_ov50_02256510 *param0)
{
    PoketchAnimation_RemoveAnimatedSprite(param0->unk_20, param0->unk_24);
    PoketchAnimation_FreeSpriteData(&(param0->unk_28));
}

static const PoketchTask Unk_ov50_02256AC0[] = {
    { 0x0, ov50_0225664C, 0x0 },
    { 0x1, ov50_022566F0, 0x0 },
    { 0x2, ov50_02256714, 0x0 },
    { 0x0, NULL, 0x0 }
};

void ov50_022565FC(UnkStruct_ov50_02256510 *param0, u32 param1)
{
    PoketchTask_Start(Unk_ov50_02256AC0, param1, param0, param0->unk_00, param0->unk_08, 2, 8);
}

BOOL ov50_02256620(UnkStruct_ov50_02256510 *param0, u32 param1)
{
    return PoketchTask_TaskIsNotActive(param0->unk_08, param1);
}

BOOL ov50_0225662C(UnkStruct_ov50_02256510 *param0)
{
    return PoketchTask_NoActiveTasks(param0->unk_08);
}

static void ov50_02256638(PoketchTaskManager *param0)
{
    UnkStruct_ov50_02256510 *v0 = PoketchTask_GetTaskData(param0);
    PoketchTask_EndTask(v0->unk_08, param0);
}

static void ov50_0225664C(SysTask *param0, void *param1)
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
    UnkStruct_ov50_02256510 *v3;
    const UnkStruct_ov50_02256510_1 *v4;

    v3 = PoketchTask_GetTaskData(param1);
    v4 = PoketchTask_GetConstTaskData(param1);

    Bg_InitFromTemplate(v3->unk_04, BG_LAYER_SUB_2, &v0, 0);
    Bg_InitFromTemplate(v3->unk_04, BG_LAYER_SUB_3, &v1, 0);

    ov50_0225675C(v3, v4);
    ov50_022567F4(v3, v4);

    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, 111, v3->unk_04, 7, 0, 0, 1, HEAP_ID_POKETCH_APP);
    PoketchGraphics_LoadActivePalette(0, 0);

    Bg_CopyTilemapBufferToVRAM(v3->unk_04, 6);
    Bg_CopyTilemapBufferToVRAM(v3->unk_04, 7);

    v2 = GXS_GetDispCnt();
    GXS_SetVisiblePlane(v2.visiblePlane | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3);
    ov50_02256638(param1);
}

static void ov50_022566F0(SysTask *param0, void *param1)
{
    UnkStruct_ov50_02256510 *v0 = PoketchTask_GetTaskData(param1);

    Bg_FreeTilemapBuffer(v0->unk_04, BG_LAYER_SUB_2);
    Bg_FreeTilemapBuffer(v0->unk_04, BG_LAYER_SUB_3);

    ov50_02256638(param1);
}

static void ov50_02256714(SysTask *param0, void *param1)
{
    UnkStruct_ov50_02256510 *v0;
    const UnkStruct_ov50_02256510_1 *v1;
    u32 v2;

    v0 = PoketchTask_GetTaskData(param1);
    v1 = PoketchTask_GetConstTaskData(param1);
    v2 = (v1->unk_0C[v1->unk_88].unk_03) ? 143 : 131;

    ov50_022567A8(v0->unk_04, v2, v1->unk_0C[v1->unk_88].unk_02);
    Bg_CopyTilemapBufferToVRAM(v0->unk_04, 7);
    ov50_02256638(param1);
}

static void ov50_0225675C(UnkStruct_ov50_02256510 *param0, const UnkStruct_ov50_02256510_1 *param1)
{
    u32 v0;

    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, 110, param0->unk_04, 7, 0, 0, 1, HEAP_ID_POKETCH_APP);

    for (v0 = 0; v0 < param1->unk_04; v0++) {
        if (param1->unk_0C[v0].unk_03) {
            ov50_022567A8(param0->unk_04, 143, param1->unk_0C[v0].unk_02);
        }
    }
}

static void ov50_022567A8(BgConfig *param0, u16 param1, u32 param2)
{
    u32 v0 = 4 + 3 * (param2 % 7);
    u32 v1 = 5 + 3 * (param2 / 7);

    Bg_FillTilemapRect(param0, 7, param1, v0, v1, 2, 2, 0);
}

static void ov50_022567F4(UnkStruct_ov50_02256510 *param0, const UnkStruct_ov50_02256510_1 *param1)
{
    u32 v0;

    Bg_FillTilemapRect(param0->unk_04, 6, 130, 0, 0, 32, 32, 0);
    ov50_0225683C(param0->unk_04, param1->unk_00);

    for (v0 = 0; v0 < param1->unk_04; v0++) {
        ov50_02256894(param0->unk_04, v0 + 1, param1->unk_0C[v0].unk_02);
    }
}

static void ov50_0225683C(BgConfig *param0, u32 param1)
{
    static const u16 v0[12] = {
        0x0, 0x4, 0x8, 0x18, 0x1c, 0x20, 0x30, 0x34, 0x38, 0x48, 0x4c, 0x50
    };
    u32 v1 = v0[param1 - 1];
    int v2, v3;

    for (v3 = 0; v3 < 2; v3++) {
        for (v2 = 0; v2 < 4; v2++) {
            Bg_FillTilemapRect(param0, 6, v1 + v2, 12 + v2, 2 + v3, 1, 1, 0);
        }

        v1 += 12;
    }
}

static void ov50_02256894(BgConfig *param0, u32 param1, u32 param2)
{
    static const u16 v0[2][10] = {
        { 0x60, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69 },
        { 0x78, 0x79, 0x7a, 0x7b, 0x7c, 0x7d, 0x7e, 0x7f, 0x80, 0x81 }
    };
    u32 v1, v2, v3, v4;
    int v5;

    v1 = 4 + 3 * (param2 % 7);
    v2 = 5 + 3 * (param2 / 7);
    v5 = ((param2 % 7) == 0);
    v3 = param1 / 10;
    v4 = param1 % 10;

    if (v3) {
        Bg_FillTilemapRect(param0, 6, v0[v5][v3], v1, v2, 1, 1, 0);
        Bg_FillTilemapRect(param0, 6, v0[v5][v3] + 12, v1, v2 + 1, 1, 1, 0);
    }

    Bg_FillTilemapRect(param0, 6, v0[v5][v4], v1 + 1, v2, 1, 1, 0);
    Bg_FillTilemapRect(param0, 6, v0[v5][v4] + 12, v1 + 1, v2 + 1, 1, 1, 0);
}
