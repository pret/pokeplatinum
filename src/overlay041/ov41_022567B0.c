#include "overlay041/ov41_022567B0.h"

#include <nitro.h>
#include <string.h>

#include "overlay041/struct_ov41_022567B0_1.h"
#include "overlay041/struct_ov41_022567B0_decl.h"
#include "poketch/poketch_animation.h"
#include "poketch/poketch_graphics.h"
#include "poketch/poketch_system.h"
#include "poketch/poketch_task.h"
#include "poketch/struct_ov25_022555E8_decl.h"
#include "poketch/struct_ov25_02255810.h"
#include "poketch/struct_ov25_022558C4_decl.h"
#include "poketch/struct_ov25_02255958.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "math_util.h"
#include "poketch_memory.h"
#include "sys_task_manager.h"

struct UnkStruct_ov41_022567B0_t {
    const UnkStruct_ov41_022567B0_1 *unk_00;
    BgConfig *unk_04;
    u32 unk_08[6];
    Ov25_540_AnimationManager *unk_20;
    Ov25_540_AnimatedSpriteData *unk_24[4];
    ov25_SpriteData unk_34;
    Window unk_48;
    u32 unk_58;
    BOOL unk_5C;
    BOOL unk_60;
    BOOL unk_64;
    u16 unk_68;
    u16 unk_6A;
    u32 unk_6C;
};

static void ov41_0225680C(UnkStruct_ov41_022567B0 *param0, const UnkStruct_ov41_022567B0_1 *param1);
static void ov41_02256864(UnkStruct_ov41_022567B0 *param0);
static void ov41_022568C8(PoketchTaskManager *param0);
static void ov41_022568DC(SysTask *param0, void *param1);
static void ov41_022569BC(UnkStruct_ov41_022567B0 *param0, u32 param1);
static void ov41_02256A1C(SysTask *param0, void *param1);
static void ov41_02256A74(SysTask *param0, void *param1);
static void ov41_02256A8C(SysTask *param0, void *param1);
static void ov41_02256AE4(SysTask *param0, void *param1);
static void ov41_02256AFC(SysTask *param0, void *param1);
static void ov41_02256B60(SysTask *param0, void *param1);
static void ov41_02256B8C(SysTask *param0, void *param1);
static void ov41_02256D1C(SysTask *param0, void *param1);

BOOL ov41_022567B0(UnkStruct_ov41_022567B0 **param0, const UnkStruct_ov41_022567B0_1 *param1, BgConfig *param2)
{
    UnkStruct_ov41_022567B0 *v0 = (UnkStruct_ov41_022567B0 *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov41_022567B0));

    if (v0 != NULL) {
        PoketchTask_InitActiveTaskList(v0->unk_08, 4);

        v0->unk_00 = param1;
        v0->unk_04 = Poketch_GetBgConfig();
        v0->unk_20 = Poketch_GetAnimationManager();
        v0->unk_68 = 0;

        ov41_0225680C(v0, param1);

        if (v0->unk_04 != NULL) {
            *param0 = v0;
            return 1;
        }
    }

    return 0;
}

void ov41_022567F8(UnkStruct_ov41_022567B0 *param0)
{
    if (param0 != NULL) {
        ov41_02256864(param0);
        Heap_FreeToHeap(param0);
    }
}

static void ov41_0225680C(UnkStruct_ov41_022567B0 *param0, const UnkStruct_ov41_022567B0_1 *param1)
{
    static const ov25_AnimationData v0[] = {
        {
            { (96 << FX32_SHIFT), (96 << FX32_SHIFT) },
            0,
            0,
            2,
            0,
            1,
        },
        {
            { (187 << FX32_SHIFT), (50 << FX32_SHIFT) },
            1,
            0,
            2,
            0,
            0,
        },
        {
            { (187 << FX32_SHIFT), (96 << FX32_SHIFT) },
            4,
            0,
            2,
            0,
            0,
        },
        {
            { (187 << FX32_SHIFT), (142 << FX32_SHIFT) },
            5,
            0,
            2,
            0,
            0,
        },
    };
    int v1;

    Graphics_LoadObjectTiles(12, 89, 1, 0, 0, 1, HEAP_ID_POKETCH_APP);
    ov25_540_LoadSpriteFromNARC(&param0->unk_34, 12, 87, 88, 8);

    for (v1 = 0; v1 < 4; v1++) {
        param0->unk_24[v1] = ov25_540_SetupNewAnimatedSprite(param0->unk_20, &v0[v1], &param0->unk_34);
    }
}

static void ov41_02256864(UnkStruct_ov41_022567B0 *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_24[v0]) {
            ov25_540_RemoveAnimatedSprite(param0->unk_20, param0->unk_24[v0]);
        }
    }

    ov25_540_FreeSpriteData(&param0->unk_34);
}

static const PoketchTask Unk_ov41_02256E00[] = {
    { 0x0, ov41_022568DC, 0x0 },
    { 0x1, ov41_02256A1C, 0x0 },
    { 0x2, ov41_02256A74, 0x0 },
    { 0x3, ov41_02256A8C, 0x0 },
    { 0x4, ov41_02256AE4, 0x0 },
    { 0x5, ov41_02256AFC, 0x0 },
    { 0x6, ov41_02256B60, 0x0 },
    { 0x7, ov41_02256B8C, 0x0 },
    { 0x8, ov41_02256D1C, 0x0 },
    { 0x0, NULL, 0x0 }
};

void ov41_0225688C(UnkStruct_ov41_022567B0 *param0, u32 param1)
{
    PoketchTask_Start(Unk_ov41_02256E00, param1, param0, param0->unk_00, param0->unk_08, 2, 8);
}

BOOL ov41_022568B0(UnkStruct_ov41_022567B0 *param0, u32 param1)
{
    return PoketchTask_TaskIsNotActive(param0->unk_08, param1);
}

BOOL ov41_022568BC(UnkStruct_ov41_022567B0 *param0)
{
    return PoketchTask_NoActiveTasks(param0->unk_08);
}

static void ov41_022568C8(PoketchTaskManager *param0)
{
    UnkStruct_ov41_022567B0 *v0 = PoketchTask_GetTaskData(param0);
    PoketchTask_EndTask(v0->unk_08, param0);
}

static void ov41_022568DC(SysTask *param0, void *param1)
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
    UnkStruct_ov41_022567B0 *v3;
    u32 v4;

    GF_ASSERT(GF_heap_c_dummy_return_true(HEAP_ID_POKETCH_APP));
    v3 = PoketchTask_GetTaskData(param1);

    Bg_InitFromTemplate(v3->unk_04, 6, &v0, 0);
    Bg_InitFromTemplate(v3->unk_04, 7, &v1, 0);

    GF_ASSERT(GF_heap_c_dummy_return_true(HEAP_ID_POKETCH_APP));

    v4 = Graphics_LoadTilesToBgLayer(12, 86, v3->unk_04, 6, 0, 0, 1, HEAP_ID_POKETCH_APP);
    v4 /= 0x20;

    Graphics_LoadTilemapToBgLayer(12, 85, v3->unk_04, 6, 0, 0, 1, HEAP_ID_POKETCH_APP);
    Poketch_LoadActivePalette(0, 0);

    GF_ASSERT(GF_heap_c_dummy_return_true(HEAP_ID_POKETCH_APP));

    ov41_022569BC(v3, v4);
    Bg_CopyTilemapBufferToVRAM(v3->unk_04, 7);

    v2 = GXS_GetDispCnt();
    GXS_SetVisiblePlane(v2.visiblePlane | GX_PLANEMASK_BG2 | GX_PLANEMASK_OBJ);

    ov41_022568C8(param1);
    GF_ASSERT(GF_heap_c_dummy_return_true(HEAP_ID_POKETCH_APP));
}

static void ov41_022569BC(UnkStruct_ov41_022567B0 *param0, u32 param1)
{
    WindowTemplate v0 = {
        7, 2, 2, 20, 19, 0, 0
    };

    param0->unk_58 = param1;
    v0.baseTile = param1;

    Window_AddFromTemplate(param0->unk_04, &param0->unk_48, &v0);

    if (PoketchMemory_ReadFast(param0->unk_00->unk_08, param0->unk_48.pixels, (20 * 19 * 0x20)) == FALSE) {
        Window_FillTilemap(&param0->unk_48, 0x4);
    }

    Window_PutToTilemap(&param0->unk_48);
    Window_LoadTiles(&param0->unk_48);
}

static void ov41_02256A1C(SysTask *param0, void *param1)
{
    UnkStruct_ov41_022567B0 *v0 = PoketchTask_GetTaskData(param1);

    switch (PoketchTask_GetState(param1)) {
    case 0:
        v0->unk_5C = 1;
        PoketchTask_IncrementState(param1);
        break;
    case 1:
        PoketchMemory_WriteFast(v0->unk_00->unk_08, v0->unk_48.pixels, (20 * 19 * 0x20));
        Window_Remove(&v0->unk_48);
        Bg_FreeTilemapBuffer(v0->unk_04, 6);
        Bg_FreeTilemapBuffer(v0->unk_04, 7);
        ov41_022568C8(param1);
    }
}

static void ov41_02256A74(SysTask *param0, void *param1)
{
    UnkStruct_ov41_022567B0 *v0 = PoketchTask_GetTaskData(param1);
    Window_LoadTiles(&v0->unk_48);
    ov41_022568C8(param1);
}

static void ov41_02256A8C(SysTask *param0, void *param1)
{
    s32 v0, v1, v2, v3;
    UnkStruct_ov41_022567B0 *v4 = PoketchTask_GetTaskData(param1);
    v0 = v4->unk_00->unk_00 * 2;
    v1 = v4->unk_00->unk_04 * 2;
    v3 = ((v1 >> 3) * 20) + (v0 >> 3);

    Window_FillRectWithColor(&v4->unk_48, 0x1, v0, v1, 2, 2);
    GXS_LoadBG3Char((u8 *)(v4->unk_48.pixels) + (v3 * 0x20), (v4->unk_58 + v3) * 0x20, 0x20);
    ov41_022568C8(param1);
}

static void ov41_02256AE4(SysTask *param0, void *param1)
{
    UnkStruct_ov41_022567B0 *v0 = PoketchTask_GetTaskData(param1);
    Window_LoadTiles(&v0->unk_48);
    ov41_022568C8(param1);
}

static void ov41_02256AFC(SysTask *param0, void *param1)
{
    UnkStruct_ov41_022567B0 *v0 = PoketchTask_GetTaskData(param1);
    const UnkStruct_ov41_022567B0_1 *v1 = PoketchTask_GetConstTaskData(param1);

    ov25_540_UpdateAnimationIdx(v0->unk_24[1], (v1->unk_5B74) ? 2 : 1);
    ov25_540_UpdateAnimationIdx(v0->unk_24[2], (v1->unk_5B75) ? 4 : 3);
    ov25_540_UpdateAnimationIdx(v0->unk_24[3], (v1->unk_5B76) ? 6 : 5);
    ov41_022568C8(param1);
}

static void ov41_02256B60(SysTask *param0, void *param1)
{
    UnkStruct_ov41_022567B0 *v0 = PoketchTask_GetTaskData(param1);
    const UnkStruct_ov41_022567B0_1 *v1 = PoketchTask_GetConstTaskData(param1);

    Window_FillTilemap(&v0->unk_48, 0x4);
    Window_LoadTiles(&v0->unk_48);
    ov41_022568C8(param1);
}

static void ov41_02256B8C(SysTask *param0, void *param1)
{
    UnkStruct_ov41_022567B0 *v0 = PoketchTask_GetTaskData(param1);
    const UnkStruct_ov41_022567B0_1 *v1 = PoketchTask_GetConstTaskData(param1);
    u32 v2 = PoketchTask_GetState(param1);

    if ((v2 != 0) && v0->unk_5C) {
        ov41_022568C8(param1);
        return;
    }

    switch (v2) {
    case 0:
        v0->unk_68 += 336;
        v0->unk_6A = 336;
        ov25_540_SetSpriteRotation(v0->unk_24[0], v0->unk_68);
        v0->unk_64 = 0;
        v0->unk_60 = 0;
        v0->unk_5C = 0;
        PoketchTask_IncrementState(param1);
        break;
    case 1:
        v0->unk_68 += v0->unk_6A;
        ov25_540_SetSpriteRotation(v0->unk_24[0], v0->unk_68);
        v0->unk_6A += 336;

        if (v0->unk_6A >= 12288) {
            v0->unk_6A = 12288;
            v0->unk_64 = 1;
            PoketchTask_IncrementState(param1);
        }
        break;
    case 2:
        v0->unk_68 += v0->unk_6A;
        ov25_540_SetSpriteRotation(v0->unk_24[0], v0->unk_68);

        if (v0->unk_60) {
            v0->unk_6C = MTRNG_Next() & 7;

            if (v0->unk_6A > 6656) {
                v0->unk_6A = 6656;
            }

            PoketchTask_IncrementState(param1);
        }
        break;
    case 3:
        v0->unk_68 += v0->unk_6A;
        ov25_540_SetSpriteRotation(v0->unk_24[0], v0->unk_68);

        if (v0->unk_6C == 0) {
            v0->unk_6C--;
        } else {
            PoketchTask_IncrementState(param1);
        }
        break;
    case 4:
        if (v0->unk_6A > 80) {
            v0->unk_6A -= 80;
            v0->unk_68 += v0->unk_6A;
            ov25_540_SetSpriteRotation(v0->unk_24[0], v0->unk_68);
        } else {
            v0->unk_6A = 0;
            ov41_022568C8(param1);
        }
        break;
    }
}

static void ov41_02256D1C(SysTask *param0, void *param1)
{
    UnkStruct_ov41_022567B0 *v0 = PoketchTask_GetTaskData(param1);
    const UnkStruct_ov41_022567B0_1 *v1 = PoketchTask_GetConstTaskData(param1);

    switch (PoketchTask_GetState(param1)) {
    case 0:
        v0->unk_60 = 1;
        PoketchTask_IncrementState(param1);
        break;
    case 1:
        if (ov41_022568B0(v0, 7)) {
            PoketchSystem_PlaySoundEffect(1642);
            ov41_022568C8(param1);
        }
        break;
    }
}
