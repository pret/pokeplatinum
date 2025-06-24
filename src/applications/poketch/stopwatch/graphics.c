#include "graphics.h"

#include <nitro.h>
#include <string.h>

#include "applications/poketch/poketch_animation.h"
#include "applications/poketch/poketch_graphics.h"
#include "applications/poketch/poketch_system.h"
#include "applications/poketch/poketch_task.h"
#include "applications/poketch/stopwatch/ov27_0225680C.h"
#include "applications/poketch/stopwatch/struct_ov27_0225680C_1.h"
#include "applications/poketch/stopwatch/struct_ov27_0225680C_decl.h"

#include "bg_window.h"
#include "heap.h"
#include "sys_task.h"
#include "sys_task_manager.h"

typedef struct {
    u16 unk_00;
    u8 unk_02;
    u8 unk_03;
} UnkStruct_ov27_02256E90;

struct PoketchStopwatchGraphics {
    const PoketchStopwatchGraphics_1 *unk_00;
    BgConfig *bgConfig;
    u32 activeTasks[10];
    NNSG2dOamManagerInstance *oamMan; // Unused
    PoketchAnimation_SpriteData unk_34;
    PoketchAnimation_SpriteData unk_48;
    PoketchAnimation_AnimationManager *animMan;
    PoketchAnimation_AnimatedSpriteData *animatedSprites[9];
    SysTask *task;
};

static void ov27_022568A8(SysTask *task, void *param1);
static void ov27_022568B4(PoketchStopwatchGraphics *graphics);
static void EndTask(PoketchTaskManager *taskMan);
static void ov27_02256A18(SysTask *task, void *param1);
static BOOL ov27_02256AEC(PoketchStopwatchGraphics *graphics);
static void ov27_02256B24(PoketchStopwatchGraphics *graphics, const PoketchStopwatchGraphics_1 *param1);
static void ov27_02256B80(SysTask *task, void *param1);
static void ov27_02256BB0(SysTask *task, void *param1);
static void ov27_02256BE8(SysTask *task, void *param1);
static void ov27_02256C2C(SysTask *task, void *param1);
static void ov27_02256C80(SysTask *task, void *param1);
static void ov27_02256D00(SysTask *task, void *param1);
static void ov27_02256D80(SysTask *task, void *param1);
static void ov27_02256E1C(SysTask *task, void *param1);
static BOOL ov27_02256E90(UnkStruct_ov27_02256E90 *param0, u32 param1);
static void ov27_02256EC4(BgConfig *bgConfig, u32 param1);
static void ov27_02256F24(SysTask *task, void *taskMan);
static void RemoveAnimatedSprites(PoketchStopwatchGraphics *graphics);
struct PoketchSystem *FieldSystem_GetPoketchSystem(void);

BOOL ov27_0225680C(PoketchStopwatchGraphics **param0, const PoketchStopwatchGraphics_1 *param1, BgConfig *param2)
{
    PoketchStopwatchGraphics *v0 = (PoketchStopwatchGraphics *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(PoketchStopwatchGraphics));

    if (v0 != NULL) {
        v0->unk_00 = param1;
        v0->animMan = PoketchGraphics_GetAnimationManager();
        v0->bgConfig = BgConfig_New(HEAP_ID_POKETCH_APP);

        if (v0->bgConfig == NULL) {
            return 0;
        }

        if (PoketchAnimation_LoadSpriteFromNARC(&v0->unk_34, 12, 18, 19, 8)) {
            if (PoketchAnimation_LoadSpriteFromNARC(&v0->unk_48, 12, 3, 4, 8)) {
                PoketchTask_InitActiveTaskList(v0->activeTasks, 8);
                v0->task = NULL;
                *param0 = v0;
                return 1;
            } else {
                PoketchAnimation_FreeSpriteData(&(v0->unk_34));
            }
        }
    }

    return 0;
}

void ov27_02256890(PoketchStopwatchGraphics *graphics)
{
    if (graphics) {
        if (graphics->bgConfig) {
            Heap_FreeToHeap(graphics->bgConfig);
        }

        Heap_FreeToHeap(graphics);
    }
}

static void ov27_022568A8(SysTask *task, void *param1)
{
    PoketchStopwatchGraphics *graphics = param1;
    ov27_022568B4(graphics);
}

static void ov27_022568B4(PoketchStopwatchGraphics *graphics)
{
    u32 v0, v1;

    CP_SetDiv32_32(graphics->unk_00->unk_14, 10);

    v0 = CP_GetDivResult32();
    v1 = CP_GetDivRemainder32();

    PoketchAnimation_UpdateAnimationIdx(graphics->animatedSprites[0], 0 + v0);
    PoketchAnimation_UpdateAnimationIdx(graphics->animatedSprites[1], 0 + v1);

    CP_SetDiv32_32(graphics->unk_00->unk_10, 10);

    v0 = CP_GetDivResult32();
    v1 = CP_GetDivRemainder32();

    PoketchAnimation_UpdateAnimationIdx(graphics->animatedSprites[2], 0 + v0);
    PoketchAnimation_UpdateAnimationIdx(graphics->animatedSprites[3], 0 + v1);

    CP_SetDiv32_32(graphics->unk_00->unk_0C, 10);

    v0 = CP_GetDivResult32();
    v1 = CP_GetDivRemainder32();

    PoketchAnimation_UpdateAnimationIdx(graphics->animatedSprites[4], 0 + v0);
    PoketchAnimation_UpdateAnimationIdx(graphics->animatedSprites[5], 0 + v1);

    CP_SetDiv32_32(graphics->unk_00->unk_08, 10);

    v0 = CP_GetDivResult32();
    v1 = CP_GetDivRemainder32();

    PoketchAnimation_UpdateAnimationIdx(graphics->animatedSprites[6], 0 + v0);
    PoketchAnimation_UpdateAnimationIdx(graphics->animatedSprites[7], 0 + v1);
}

static const PoketchTask sStopwatchTasks[] = {
    { 0x0, ov27_02256A18, 0x0 },
    { 0x1, ov27_02256B80, sizeof(UnkStruct_ov27_02256E90) },
    { 0x3, ov27_02256F24, 0x0 },
    { 0x0, NULL, 0x0 }
};

void PoketchStopwatchGraphics_StartTask(PoketchStopwatchGraphics *graphics, u32 taskID)
{
    PoketchTask_Start(sStopwatchTasks, taskID, graphics, graphics->unk_00, graphics->activeTasks, 2, HEAP_ID_POKETCH_APP);
}

BOOL PoketchStopwatchGraphics_TaskIsNotActive(PoketchStopwatchGraphics *graphics, u32 taskID)
{
    return PoketchTask_TaskIsNotActive(graphics->activeTasks, taskID);
}

BOOL PoketchStopwatchGraphics_NoActiveTasks(PoketchStopwatchGraphics *graphics)
{
    return PoketchTask_NoActiveTasks(graphics->activeTasks);
}

static void EndTask(PoketchTaskManager *taskMan)
{
    PoketchStopwatchGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    PoketchTask_EndTask(graphics->activeTasks, taskMan);
}

static void ov27_02256A18(SysTask *task, void *param1)
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
    PoketchStopwatchGraphics *v2 = PoketchTask_GetTaskData(param1);

    Bg_InitFromTemplate(v2->bgConfig, 6, &v0, 0);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, 21, v2->bgConfig, 6, 0, 0, 1, HEAP_ID_POKETCH_APP);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, 20, v2->bgConfig, 6, 0, 0, 1, HEAP_ID_POKETCH_APP);

    PoketchGraphics_LoadActivePalette(0, 0);
    Bg_CopyTilemapBufferToVRAM(v2->bgConfig, 6);

    {
        PoketchStopwatchGraphics *v3 = PoketchTask_GetTaskData(param1);
        const PoketchStopwatchGraphics_1 *v4 = PoketchTask_GetConstTaskData(param1);

        ov27_02256AEC(v3);
        ov27_02256B24(v3, v4);

        v2->task = SysTask_Start(ov27_022568A8, v2, 2 + 1);

        ov27_022568B4(v3);

        if (v4->unk_00) {
            PoketchStopwatchGraphics_StartTask(v3, 1);
        }
    }

    v1 = GXS_GetDispCnt();

    GXS_SetVisiblePlane(v1.visiblePlane | GX_PLANEMASK_BG2 | GX_PLANEMASK_OBJ);
    EndTask(param1);
}

static BOOL ov27_02256AEC(PoketchStopwatchGraphics *graphics)
{
    Graphics_LoadObjectTiles(12, 2, 1, 0, 0, 1, HEAP_ID_POKETCH_APP);
    Graphics_LoadObjectTiles(12, 22, 1, 80 * 0x20, 0, 1, HEAP_ID_POKETCH_APP);

    return 1;
}

static void ov27_02256B24(PoketchStopwatchGraphics *graphics, const PoketchStopwatchGraphics_1 *param1)
{
    static const PoketchAnimation_AnimationData v0[] = {
        {
            { 32 << FX32_SHIFT, 40 << FX32_SHIFT },
            0,
            0,
            2,
            0,
            0,
        },
        {
            { (32 + 16) << FX32_SHIFT, 40 << FX32_SHIFT },
            0,
            0,
            2,
            0,
            0,
        },
        {
            { 80 << FX32_SHIFT, 40 << FX32_SHIFT },
            0,
            0,
            2,
            0,
            0,
        },
        {
            { (80 + 16) << FX32_SHIFT, 40 << FX32_SHIFT },
            0,
            0,
            2,
            0,
            0,
        },
        {
            { 128 << FX32_SHIFT, 40 << FX32_SHIFT },
            0,
            0,
            2,
            0,
            0,
        },
        {
            { (128 + 16) << FX32_SHIFT, 40 << FX32_SHIFT },
            0,
            0,
            2,
            0,
            0,
        },
        {
            { 176 << FX32_SHIFT, 40 << FX32_SHIFT },
            0,
            0,
            2,
            0,
            0,
        },
        {
            { (176 + 16) << FX32_SHIFT, 40 << FX32_SHIFT },
            0,
            0,
            2,
            0,
            0,
        },
        {
            { 112 << FX32_SHIFT, 96 << FX32_SHIFT },
            10,
            0,
            2,
            2,
            0,
        },
    };
    u32 v1;

    for (v1 = 0; v1 <= 7; v1++) {
        graphics->animatedSprites[0 + v1] = PoketchAnimation_SetupNewAnimatedSprite(graphics->animMan, &v0[v1], &graphics->unk_48);
    }

    graphics->animatedSprites[8] = PoketchAnimation_SetupNewAnimatedSprite(graphics->animMan, &v0[v1], &graphics->unk_34);

    if (param1->unk_00 == 0) {
        PoketchAnimation_HideSprite(graphics->animatedSprites[8], 1);
    }
}

static void ov27_02256B80(SysTask *task, void *param1)
{
    static void (*const v0[])(SysTask *, void *) = {
        ov27_02256BB0,
        ov27_02256BE8,
        ov27_02256C2C,
        ov27_02256C80,
        ov27_02256D00,
        ov27_02256D80,
        ov27_02256E1C
    };

    const PoketchStopwatchGraphics_1 *v1 = PoketchTask_GetConstTaskData(param1);

    SysTask_SetCallback(task, v0[v1->unk_18]);
    v0[v1->unk_18](task, param1);
}

static void ov27_02256BB0(SysTask *task, void *param1)
{
    PoketchStopwatchGraphics *v0 = PoketchTask_GetTaskData(param1);
    const PoketchStopwatchGraphics_1 *v1 = PoketchTask_GetConstTaskData(param1);

    PoketchAnimation_HideSprite(v0->animatedSprites[8], 1);
    ov27_02256EC4(v0->bgConfig, 0);
    Bg_CopyTilemapBufferToVRAM(v0->bgConfig, 6);
    EndTask(param1);
}

static void ov27_02256BE8(SysTask *task, void *param1)
{
    PoketchStopwatchGraphics *v0 = PoketchTask_GetTaskData(param1);

    PoketchAnimation_HideSprite(v0->animatedSprites[8], 0);
    PoketchAnimation_UpdateAnimationIdx(v0->animatedSprites[8], 11);
    ov27_02256EC4(v0->bgConfig, 1);

    Bg_CopyTilemapBufferToVRAM(v0->bgConfig, 6);

    PoketchSystem_PlaySoundEffect(1641);
    EndTask(param1);
}

static void ov27_02256C2C(SysTask *task, void *param1)
{
    const PoketchStopwatchGraphics_1 *v0 = PoketchTask_GetConstTaskData(param1);
    PoketchStopwatchGraphics *v1 = PoketchTask_GetTaskData(param1);

    if (v0->unk_18 != 2) {
        EndTask(param1);
        return;
    }

    switch (PoketchTask_GetState(param1)) {
    case 0:
        PoketchAnimation_UpdateAnimationIdx(v1->animatedSprites[8], 12);
        ov27_02256EC4(v1->bgConfig, 0);
        Bg_CopyTilemapBufferToVRAM(v1->bgConfig, 6);
        PoketchTask_IncrementState(param1);
        break;
    case 1:
        break;
    }
}

static void ov27_02256C80(SysTask *task, void *param1)
{
    const PoketchStopwatchGraphics_1 *v0;
    PoketchStopwatchGraphics *v1;
    UnkStruct_ov27_02256E90 *v2;

    v0 = PoketchTask_GetConstTaskData(param1);
    v1 = PoketchTask_GetTaskData(param1);
    v2 = PoketchTask_GetExtraData(param1);

    if (v0->unk_18 != 3) {
        EndTask(param1);
        return;
    }

    switch (PoketchTask_GetState(param1)) {
    case 0:
        v2->unk_00 = 6;
        v2->unk_03 = 2;
        v2->unk_02 = 0;

        PoketchAnimation_UpdateAnimationIdx(v1->animatedSprites[8], 13);
        PoketchTask_IncrementState(param1);
    case 1:
        if (ov27_02256E90(v2, 6)) {
            PoketchSystem_PlaySoundEffect(1641);
            ov27_02256EC4(v1->bgConfig, v2->unk_03);
            Bg_CopyTilemapBufferToVRAM(v1->bgConfig, 6);
        }
        break;
    }
}

static void ov27_02256D00(SysTask *task, void *param1)
{
    const PoketchStopwatchGraphics_1 *v0;
    PoketchStopwatchGraphics *v1;
    UnkStruct_ov27_02256E90 *v2;

    v0 = PoketchTask_GetConstTaskData(param1);
    v1 = PoketchTask_GetTaskData(param1);
    v2 = PoketchTask_GetExtraData(param1);

    if (v0->unk_18 != 4) {
        EndTask(param1);
        return;
    }

    switch (PoketchTask_GetState(param1)) {
    case 0:
        v2->unk_00 = 3;
        v2->unk_03 = 2;
        v2->unk_02 = 0;

        PoketchAnimation_UpdateAnimationIdx(v1->animatedSprites[8], 14);
        PoketchTask_IncrementState(param1);
    case 1:
        if (ov27_02256E90(v2, 3)) {
            PoketchSystem_PlaySoundEffect(1641);
            ov27_02256EC4(v1->bgConfig, v2->unk_03);
            Bg_CopyTilemapBufferToVRAM(v1->bgConfig, 6);
        }
        break;
    }
}

static void ov27_02256D80(SysTask *task, void *param1)
{
    const PoketchStopwatchGraphics_1 *v0;
    PoketchStopwatchGraphics *v1;
    UnkStruct_ov27_02256E90 *v2;

    v0 = PoketchTask_GetConstTaskData(param1);
    v1 = PoketchTask_GetTaskData(param1);
    v2 = PoketchTask_GetExtraData(param1);

    if (v0->unk_18 != 5) {
        EndTask(param1);
        return;
    }

    switch (PoketchTask_GetState(param1)) {
    case 0:
        v2->unk_00 = 0;
        v2->unk_02 = 0;
        PoketchAnimation_UpdateAnimationIdx(v1->animatedSprites[8], 15);
        ov27_02256EC4(v1->bgConfig, 5);
        Bg_CopyTilemapBufferToVRAM(v1->bgConfig, 6);
        PoketchSystem_PlaySoundEffect(1638);
        PoketchTask_IncrementState(param1);
    case 1:
        if (++(v2->unk_00) > 2) {
            v2->unk_00 = 0;
            v2->unk_02 ^= 1;
            v2->unk_03 = 5 + v2->unk_02;
            ov27_02256EC4(v1->bgConfig, v2->unk_03);
            Bg_CopyTilemapBufferToVRAM(v1->bgConfig, 6);
        }
        break;
    }
}

static void ov27_02256E1C(SysTask *task, void *param1)
{
    const PoketchStopwatchGraphics_1 *v0;
    PoketchStopwatchGraphics *v1;
    UnkStruct_ov27_02256E90 *v2;

    v0 = PoketchTask_GetConstTaskData(param1);
    v1 = PoketchTask_GetTaskData(param1);
    v2 = PoketchTask_GetExtraData(param1);

    if (v0->unk_18 != 6) {
        EndTask(param1);
        return;
    }

    switch (PoketchTask_GetState(param1)) {
    case 0:
        PoketchAnimation_UpdateAnimationIdx(v1->animatedSprites[8], 16);
        ov27_02256EC4(v1->bgConfig, 6);
        Bg_CopyTilemapBufferToVRAM(v1->bgConfig, 6);
        PoketchTask_IncrementState(param1);
        v2->unk_00 = 0;
    case 1:
        if (++(v2->unk_00) > 80) {
            EndTask(param1);
        }
        break;
    }
}

static BOOL ov27_02256E90(UnkStruct_ov27_02256E90 *param0, u32 param1)
{
    static const u8 v0[] = {
        2,
        3,
        4,
    };

    if (++(param0->unk_00) > param1) {
        param0->unk_00 = 0;

        if (++(param0->unk_02) >= NELEMS(v0)) {
            param0->unk_02 = 0;
        }

        param0->unk_03 = v0[param0->unk_02];
        return 1;
    }

    return 0;
}

static void ov27_02256EC4(BgConfig *bgConfig, u32 param1)
{
    u16 *v0;
    u32 v1, v2;
    u16 v3;

    v0 = Bg_GetTilemapBuffer(bgConfig, 6);
    v0 += ((9 * 32) + 9);
    v3 = 2 + param1 * 5;

    for (v2 = 0; v2 < 11; v2++) {
        for (v1 = 0; v1 < 5; v1++) {
            v0[v1] = ((0 << 1) | (v3 + v1));
            v0[5 * 2 - 1 - v1] = ((0 << 1) | (v3 + v1) | GX_SCRFMT_TEXT_HF_MASK);
        }

        v0 += 32;
        v3 += 37;
    }
}

static void ov27_02256F24(SysTask *task, void *taskMan)
{
    PoketchStopwatchGraphics *graphics = PoketchTask_GetTaskData(taskMan);
    u32 state = PoketchTask_GetState(taskMan);

    switch (state) {
    case 0:
        RemoveAnimatedSprites(graphics);
        PoketchTask_IncrementState(taskMan);
    case 1:
        PoketchAnimation_FreeSpriteData(&(graphics->unk_34));
        PoketchAnimation_FreeSpriteData(&(graphics->unk_48));
        Bg_FreeTilemapBuffer(graphics->bgConfig, 6);
        SysTask_Done(graphics->task);
        graphics->task = NULL;
        EndTask(taskMan);
        break;
    }
}

static void RemoveAnimatedSprites(PoketchStopwatchGraphics *graphics)
{
    for (u32 idx = 0; idx < 9; idx++) {
        PoketchAnimation_RemoveAnimatedSprite(graphics->animMan, graphics->animatedSprites[idx]);
    }
}
