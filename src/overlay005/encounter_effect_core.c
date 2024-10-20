#include "overlay005/encounter_effect_core.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"
#include "constants/trainer.h"

#include "struct_defs/struct_0205AA50.h"

#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "overlay005/encounter_effect.h"
#include "overlay005/field_motion_blur.h"
#include "overlay005/hblank_system.h"
#include "overlay005/linear_interpolation_task_fx32.h"
#include "overlay005/linear_interpolation_task_s32.h"
#include "overlay005/quadratic_interpolation_task_fx32.h"
#include "overlay005/struct_ov5_021DE47C.h"
#include "overlay005/struct_ov5_021DE5A4.h"
#include "overlay005/struct_ov5_021E52A8_sub1.h"
#include "overlay005/struct_ov5_021E52A8_sub2.h"
#include "overlay115/camera_angle.h"

#include "camera.h"
#include "cell_actor.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "save_player.h"
#include "screen_scroll_manager.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_02006E3C.h"
#include "unk_0200A9DC.h"
#include "unk_0200F174.h"
#include "unk_02018340.h"
#include "unk_0202419C.h"

// EncounterEffect_Grass_HigherLevel
#define GRASS_HIGHER_LEVEL_PIXELS_PER_SLICE     2
#define GRASS_HIGHER_LEVEL_INTERPOLATION_FRAMES 6
#define GRASS_HIGHER_LEVEL_SLICE_START_X_1      0
#define GRASS_HIGHER_LEVEL_SLICE_END_X_1        (FX32_ONE * -3)
#define GRASS_HIGHER_LEVEL_SLICE_START_SPEED_1  (FX32_ONE * -12)
#define GRASS_HIGHER_LEVEL_CAMERA_OFFSET_1      (FX32_ONE * 50)
#define GRASS_HIGHER_LEVEL_CAMERA_SPEED_1       (FX32_ONE * 30)
#define GRASS_HIGHER_LEVEL_SLICE_START_X_2      (FX32_ONE * -3)
#define GRASS_HIGHER_LEVEL_SLICE_END_X_2        (FX32_ONE * 255)
#define GRASS_HIGHER_LEVEL_SLICE_START_SPEED_2  (FX32_ONE * 30)
#define GRASS_HIGHER_LEVEL_CAMERA_OFFSET_2      (FX32_ONE * -50)
#define GRASS_HIGHER_LEVEL_CAMERA_SPEED_2       (FX32_ONE * -255)

// EncounterEffect_Grass_LowerLevel
#define GRASS_LOWER_LEVEL_PIXELS_PER_SLICE     5
#define GRASS_LOWER_LEVEL_INTERPOLATION_FRAMES 6
#define GRASS_LOWER_LEVEL_SLICE_START_X_1      0
#define GRASS_LOWER_LEVEL_SLICE_END_X_1        (FX32_ONE * -2)
#define GRASS_LOWER_LEVEL_SLICE_START_SPEED_1  (FX32_ONE * -12)
#define GRASS_LOWER_LEVEL_CAMERA_OFFSET_1      (FX32_ONE * 50)
#define GRASS_LOWER_LEVEL_CAMERA_SPEED_1       (FX32_ONE * 30)
#define GRASS_LOWER_LEVEL_SLICE_START_X_2      (FX32_ONE * -2)
#define GRASS_LOWER_LEVEL_SLICE_END_X_2        (FX32_ONE * 255)
#define GRASS_LOWER_LEVEL_SLICE_START_SPEED_2  (FX32_ONE * 30)
#define GRASS_LOWER_LEVEL_CAMERA_OFFSET_2      (FX32_ONE * -30)
#define GRASS_LOWER_LEVEL_CAMERA_SPEED_2       (FX32_ONE * -100)

// EncounterEffect_Cave_LowerLevel
#define CAVE_LOWER_LEVEL_INTERPOLATION_FRAMES 12
#define CAVE_LOWER_LEVEL_CAMERA_OFFSET        (FX32_ONE * -400)
#define CAVE_LOWER_LEVEL_CAMERA_SPEED         (FX32_ONE * -2)

// EncounterEffect_Cave_HigherLevel
#define CAVE_HIGHER_LEVEL_INTERPOLATION_FRAMES 12
#define CAVE_HIGHER_LEVEL_CAMERA_OFFSET        (FX32_ONE * -800)
#define CAVE_HIGHER_LEVEL_CAMERA_SPEED         (FX32_ONE * -5)

typedef struct GrassEncounterEffect {
    Camera *camera;
    QuadraticInterpolationTaskFX32 camDistanceTask;
    ScreenSliceEffect *screenSliceEfx;
} GrassEncounterEffect;

typedef struct ScreenShakeEffect {
    ScreenScrollManager *screenScrollMgr;
    SysTask *dmaTransferTask;
    u32 dmaCounter;
} ScreenShakeEffect;

typedef struct WaterEncounterEffect {
    ScreenShakeEffect screenShakeEfx;
    s32 counter;
} WaterEncounterEffect;

typedef struct CaveEncounterEffect {
    Camera *camera;
    QuadraticInterpolationTaskFX32 camInterpolation;
} CaveEncounterEffect;

static SysTask *ScreenShakeEffect_CreateDMATransferTask(ScreenShakeEffect *screenShake);
static void ScreenShakeEffect_DMATransfer(SysTask *task, void *param);
static void ScreenShakeEffect_Init(ScreenShakeEffect *screenShake, enum HeapId heapID);
static void ScreenShakeEffect_Finish(ScreenShakeEffect *screenShake);
static void ScreenShakeEffect_Start(ScreenShakeEffect *screenShake, u8 startX, u8 endX, u16 angleIncrement, fx32 amplitude, s16 shakeSpeed, u32 bg, u32 defaultValue, u32 priority);
static void ScreenShakeEffect_InvertBuffer(ScreenShakeEffect *screenShake, u32 interval);

void EncounterEffect_Grass_HigherLevel(SysTask *task, void *param)
{
    EncounterEffect *encEffect = param;
    GrassEncounterEffect *grassEffect = encEffect->param;
    fx32 distance;
    BOOL done;

    switch (encEffect->state) {
    case 0:
        encEffect->param = Heap_AllocFromHeap(4, sizeof(GrassEncounterEffect));
        memset(encEffect->param, 0, sizeof(GrassEncounterEffect));
        grassEffect = encEffect->param;
        grassEffect->screenSliceEfx = ScreenSliceEffect_New();
        encEffect->state++;
        break;
    case 1:
        EncounterEffect_Flash(1, 16, -16, &encEffect->effectComplete, 2);
        encEffect->state++;
        break;
    case 2:
        if (encEffect->effectComplete) {
            encEffect->effectComplete = 0;
            encEffect->state++;
            EncounterEffect_ScreenSlice(
                encEffect,
                grassEffect->screenSliceEfx,
                GRASS_HIGHER_LEVEL_PIXELS_PER_SLICE,
                GRASS_HIGHER_LEVEL_INTERPOLATION_FRAMES + 1,
                GRASS_HIGHER_LEVEL_SLICE_START_X_1,
                GRASS_HIGHER_LEVEL_SLICE_END_X_1,
                GRASS_HIGHER_LEVEL_SLICE_START_SPEED_1);
            grassEffect->camera = encEffect->fieldSystem->camera;
            distance = Camera_GetDistance(grassEffect->camera);
            QuadraticInterpolationTaskFX32_Init(
                &grassEffect->camDistanceTask,
                distance,
                distance + GRASS_HIGHER_LEVEL_CAMERA_OFFSET_1,
                GRASS_HIGHER_LEVEL_CAMERA_SPEED_1,
                GRASS_HIGHER_LEVEL_INTERPOLATION_FRAMES);
        }
        break;
    case 3:
        done = QuadraticInterpolationTaskFX32_Update(&grassEffect->camDistanceTask);
        Camera_SetDistance(grassEffect->camDistanceTask.currentValue, grassEffect->camera);

        if (done == TRUE) {
            encEffect->state++;
            ScreenSliceEffect_Modify(
                encEffect,
                grassEffect->screenSliceEfx,
                GRASS_HIGHER_LEVEL_PIXELS_PER_SLICE,
                GRASS_HIGHER_LEVEL_INTERPOLATION_FRAMES,
                GRASS_HIGHER_LEVEL_SLICE_START_X_2,
                GRASS_HIGHER_LEVEL_SLICE_END_X_2,
                GRASS_HIGHER_LEVEL_SLICE_START_SPEED_2);
            grassEffect->camera = encEffect->fieldSystem->camera;
            distance = Camera_GetDistance(grassEffect->camera);
            QuadraticInterpolationTaskFX32_Init(
                &grassEffect->camDistanceTask,
                distance,
                distance + GRASS_HIGHER_LEVEL_CAMERA_OFFSET_2,
                GRASS_HIGHER_LEVEL_CAMERA_SPEED_2,
                GRASS_HIGHER_LEVEL_INTERPOLATION_FRAMES);
        }
        break;
    case 4:
        done = QuadraticInterpolationTaskFX32_Update(&grassEffect->camDistanceTask);
        Camera_SetDistance(grassEffect->camDistanceTask.currentValue, grassEffect->camera);

        if (done == TRUE && EncounterEffect_GetHBlankFlag(encEffect) == TRUE) {
            encEffect->state++;
        }
        break;
    case 5:
        sub_0200F370(0x0);

        G2_SetBG0Offset(0, 0);
        G2_SetBG1Offset(0, 0);
        G2_SetBG2Offset(0, 0);
        G2_SetBG3Offset(0, 0);

        if (encEffect->done != NULL) {
            *(encEffect->done) = 1;
        }

        ScreenSliceEffect_Delete(grassEffect->screenSliceEfx);
        EncounterEffect_Finish(encEffect, task);
        break;
    default:
        break;
    }
}

void EncounterEffect_Grass_LowerLevel(SysTask *task, void *param)
{
    EncounterEffect *encEffect = param;
    GrassEncounterEffect *grassEffect = encEffect->param;
    fx32 distance;
    BOOL done;

    switch (encEffect->state) {
    case 0:
        encEffect->param = Heap_AllocFromHeap(HEAP_ID_FIELD, sizeof(GrassEncounterEffect));
        memset(encEffect->param, 0, sizeof(GrassEncounterEffect));
        grassEffect = encEffect->param;
        grassEffect->screenSliceEfx = ScreenSliceEffect_New();
        encEffect->state++;
        break;
    case 1:
        EncounterEffect_Flash(1, -16, -16, &encEffect->effectComplete, 2);
        encEffect->state++;
        break;
    case 2:
        if (encEffect->effectComplete) {
            encEffect->effectComplete = FALSE;
            encEffect->state++;
            EncounterEffect_ScreenSlice(
                encEffect,
                grassEffect->screenSliceEfx,
                GRASS_LOWER_LEVEL_PIXELS_PER_SLICE,
                GRASS_LOWER_LEVEL_INTERPOLATION_FRAMES + 1,
                GRASS_LOWER_LEVEL_SLICE_START_X_1,
                GRASS_LOWER_LEVEL_SLICE_END_X_1,
                GRASS_LOWER_LEVEL_SLICE_START_SPEED_1);
            grassEffect->camera = encEffect->fieldSystem->camera;
            distance = Camera_GetDistance(grassEffect->camera);
            QuadraticInterpolationTaskFX32_Init(
                &grassEffect->camDistanceTask,
                distance,
                distance + GRASS_LOWER_LEVEL_CAMERA_OFFSET_1,
                GRASS_LOWER_LEVEL_CAMERA_SPEED_1,
                GRASS_LOWER_LEVEL_INTERPOLATION_FRAMES);
        }
        break;
    case 3:
        done = QuadraticInterpolationTaskFX32_Update(&grassEffect->camDistanceTask);
        Camera_SetDistance(grassEffect->camDistanceTask.currentValue, grassEffect->camera);

        if (done == TRUE) {
            encEffect->state++;
            ScreenSliceEffect_Modify(
                encEffect,
                grassEffect->screenSliceEfx,
                GRASS_LOWER_LEVEL_PIXELS_PER_SLICE,
                GRASS_LOWER_LEVEL_INTERPOLATION_FRAMES,
                GRASS_LOWER_LEVEL_SLICE_START_X_2,
                GRASS_LOWER_LEVEL_SLICE_END_X_2,
                GRASS_LOWER_LEVEL_SLICE_START_SPEED_2);
            grassEffect->camera = encEffect->fieldSystem->camera;
            distance = Camera_GetDistance(grassEffect->camera);
            QuadraticInterpolationTaskFX32_Init(
                &grassEffect->camDistanceTask,
                distance,
                distance + GRASS_LOWER_LEVEL_CAMERA_OFFSET_2,
                GRASS_LOWER_LEVEL_CAMERA_SPEED_2,
                GRASS_LOWER_LEVEL_INTERPOLATION_FRAMES);
        }
        break;
    case 4:
        done = QuadraticInterpolationTaskFX32_Update(&grassEffect->camDistanceTask);
        Camera_SetDistance(grassEffect->camDistanceTask.currentValue, grassEffect->camera);

        if (done == TRUE && EncounterEffect_GetHBlankFlag(encEffect) == TRUE) {
            encEffect->state++;
        }
        break;
    case 5:
        sub_0200F370(0x0);

        G2_SetBG0Offset(0, 0);
        G2_SetBG1Offset(0, 0);
        G2_SetBG2Offset(0, 0);
        G2_SetBG3Offset(0, 0);

        if (encEffect->done != NULL) {
            *(encEffect->done) = TRUE;
        }

        ScreenSliceEffect_Delete(grassEffect->screenSliceEfx);
        EncounterEffect_Finish(encEffect, task);
        break;
    default:
        break;
    }
}

void EncounterEffect_Water_LowerLevel(SysTask *task, void *param)
{
    EncounterEffect *encEffect = param;
    WaterEncounterEffect *waterEffect = encEffect->param;

    switch (encEffect->state) {
    case 0:
        encEffect->param = Heap_AllocFromHeap(4, sizeof(WaterEncounterEffect));
        memset(encEffect->param, 0, sizeof(WaterEncounterEffect));
        waterEffect = encEffect->param;
        ScreenShakeEffect_Init(&waterEffect->screenShakeEfx, 4);
        HBlankSystem_Stop(encEffect->fieldSystem->unk_04->hBlankSystem);
        encEffect->state++;
        break;
    case 1:
        EncounterEffect_Flash(1, -16, -16, &encEffect->effectComplete, 2);
        waterEffect->counter = 10;
        encEffect->state++;
        break;
    case 2:
        waterEffect->counter--;

        if (waterEffect->counter < 0) {
            encEffect->state++;
            waterEffect->counter = 12;
            ScreenShakeEffect_Start(&waterEffect->screenShakeEfx, 0, 191, ((0xffff / 192) * 2), (FX32_CONST(12)), 800, REG_BG0HOFS_ADDR, 0, (5 - 1));
        }
        break;
    case 3:
        waterEffect->counter--;

        if (waterEffect->counter < 0) {
            encEffect->state++;
        }
        break;
    case 4:
        sub_0200F174(3, 30, 0, 0x0, 8, 1, 4);
        encEffect->state++;
        break;
    case 5:
        if (ScreenWipe_Done()) {
            encEffect->state++;
        }
        break;
    case 6:
        ScreenShakeEffect_Finish(&waterEffect->screenShakeEfx);
        HBlankSystem_Start(encEffect->fieldSystem->unk_04->hBlankSystem);

        if (encEffect->done != NULL) {
            *(encEffect->done) = TRUE;
        }

        EncounterEffect_Finish(encEffect, task);
        sub_0200F344(1, 0x0);
        break;
    }
}

void EncounterEffect_Water_HigherLevel(SysTask *task, void *param)
{
    EncounterEffect *encEffect = param;
    WaterEncounterEffect *waterEffect = encEffect->param;

    switch (encEffect->state) {
    case 0:
        encEffect->param = Heap_AllocFromHeap(4, sizeof(WaterEncounterEffect));
        memset(encEffect->param, 0, sizeof(WaterEncounterEffect));
        waterEffect = encEffect->param;
        ScreenShakeEffect_Init(&waterEffect->screenShakeEfx, 4);
        HBlankSystem_Stop(encEffect->fieldSystem->unk_04->hBlankSystem);
        encEffect->state++;
        break;
    case 1:
        EncounterEffect_Flash(1, 16, -16, &encEffect->effectComplete, 2);
        waterEffect->counter = 10;
        encEffect->state++;
        break;
    case 2:
        waterEffect->counter--;

        if (waterEffect->counter < 0) {
            encEffect->state++;
            waterEffect->counter = 12;
            ScreenShakeEffect_Start(&waterEffect->screenShakeEfx, 0, 191, ((0xffff / 192) * 3), (FX32_CONST(15)), 800, REG_BG0HOFS_ADDR, 0, (5 - 1));
        }
        break;
    case 3:
        waterEffect->counter--;

        if (waterEffect->counter < 0) {
            encEffect->state++;
        }
        break;
    case 4:
        sub_0200F174(3, 30, 0, 0x0, 8, 1, 4);
        encEffect->state++;
        break;
    case 5:
        if (ScreenWipe_Done()) {
            encEffect->state++;
        }
        break;
    case 6:
        ScreenShakeEffect_Finish(&waterEffect->screenShakeEfx);
        HBlankSystem_Start(encEffect->fieldSystem->unk_04->hBlankSystem);

        if (encEffect->done != NULL) {
            *(encEffect->done) = TRUE;
        }

        EncounterEffect_Finish(encEffect, task);
        sub_0200F344(1, 0x0);
        break;
    }
}

static SysTask *ScreenShakeEffect_CreateDMATransferTask(ScreenShakeEffect *screenShakeEfx)
{
    return SysTask_ExecuteOnVBlank(ScreenShakeEffect_DMATransfer, screenShakeEfx, 1024);
}

static void ScreenShakeEffect_DMATransfer(SysTask *task, void *param)
{
    ScreenShakeEffect *screenShakeEfx = param;

    if (screenShakeEfx->dmaCounter >= 2) {
        ScreenScrollManager_SwapBuffers(screenShakeEfx->screenScrollMgr);
        screenShakeEfx->dmaCounter = 0;
    }

    ScreenScrollManager_RestartDMA(screenShakeEfx->screenScrollMgr);
    screenShakeEfx->dmaCounter++;
}

static void ScreenShakeEffect_Init(ScreenShakeEffect *screenShake, enum HeapId heapID)
{
    screenShake->screenScrollMgr = ScreenScrollManager_New(heapID);
    screenShake->dmaCounter = 0;
    screenShake->dmaTransferTask = ScreenShakeEffect_CreateDMATransferTask(screenShake);
}

static void ScreenShakeEffect_Finish(ScreenShakeEffect *screenShake)
{
    SysTask_Done(screenShake->dmaTransferTask);
    ScreenScrollManager_Stop(screenShake->screenScrollMgr);
    ScreenScrollManager_Delete(screenShake->screenScrollMgr);
}

static void ScreenShakeEffect_Start(ScreenShakeEffect *screenShake, u8 startX, u8 endX, u16 angleIncrement, fx32 amplitude, s16 shakeSpeed, u32 bg, u32 defaultValue, u32 priority)
{
    ScreenScrollManager_ScrollX(screenShake->screenScrollMgr, startX, endX, angleIncrement, amplitude, shakeSpeed, bg, defaultValue, priority);
}

static void ScreenShakeEffect_InvertBuffer(ScreenShakeEffect *screenShake, u32 interval)
{
    u32 *writeBuffer = ScreenScrollManager_GetWriteBuffer(screenShake->screenScrollMgr);

    for (int i = 0; i < SCREEN_SCROLL_MANAGER_BUFFER_SIZE; i++) {
        s16 xOff = writeBuffer[i] & 0xffff;

        if (((i / interval) % 2) == 0) {
            writeBuffer[i] = (xOff & 0xffff);
        } else {
            writeBuffer[i] = (-xOff & 0xffff);
        }
    }
}

void EncounterEffect_Cave_LowerLevel(SysTask *task, void *param)
{
    EncounterEffect *encEffect = param;
    CaveEncounterEffect *caveEffect = encEffect->param;
    fx32 distance;

    switch (encEffect->state) {
    case 0:
        encEffect->param = Heap_AllocFromHeap(4, sizeof(CaveEncounterEffect));
        memset(encEffect->param, 0, sizeof(CaveEncounterEffect));
        caveEffect = encEffect->param;
        encEffect->state++;
        break;
    case 1:
        EncounterEffect_Flash(1, -16, -16, &encEffect->effectComplete, 2);
        encEffect->state++;
        break;
    case 2:
        if (encEffect->effectComplete) {
            encEffect->state++;
        }
        break;
    case 3:
        HBlankSystem_Stop(encEffect->fieldSystem->unk_04->hBlankSystem);
        sub_0200F174(3, 16, 16, 0x0, 12, 1, 4);

        caveEffect->camera = encEffect->fieldSystem->camera;
        distance = Camera_GetDistance(caveEffect->camera);

        QuadraticInterpolationTaskFX32_Init(
            &caveEffect->camInterpolation,
            distance,
            distance + CAVE_LOWER_LEVEL_CAMERA_OFFSET,
            CAVE_LOWER_LEVEL_CAMERA_SPEED,
            CAVE_LOWER_LEVEL_INTERPOLATION_FRAMES);
        encEffect->state++;
        break;
    case 4:
        QuadraticInterpolationTaskFX32_Update(&caveEffect->camInterpolation);
        Camera_SetDistance(caveEffect->camInterpolation.currentValue, caveEffect->camera);

        if (ScreenWipe_Done()) {
            encEffect->state++;
        }
        break;
    case 5:
        HBlankSystem_Start(encEffect->fieldSystem->unk_04->hBlankSystem);

        if (encEffect->done != NULL) {
            *(encEffect->done) = TRUE;
        }

        EncounterEffect_Finish(encEffect, task);
        sub_0200F344(1, 0x0);
        break;
    }
}

void EncounterEffect_Cave_HigherLevel(SysTask *task, void *param)
{
    EncounterEffect *encEffect = param;
    CaveEncounterEffect *caveEffect = encEffect->param;
    fx32 distance;

    switch (encEffect->state) {
    case 0:
        encEffect->param = Heap_AllocFromHeap(4, sizeof(CaveEncounterEffect));
        memset(encEffect->param, 0, sizeof(CaveEncounterEffect));
        caveEffect = encEffect->param;
        encEffect->state++;
        break;
    case 1:
        EncounterEffect_Flash(1, 16, -16, &encEffect->effectComplete, 2);
        encEffect->state++;
        break;
    case 2:
        if (encEffect->effectComplete) {
            encEffect->state++;
        }
        break;
    case 3:
        HBlankSystem_Stop(encEffect->fieldSystem->unk_04->hBlankSystem);
        sub_0200F174(3, 16, 16, 0x0, 12, 1, 4);

        caveEffect->camera = encEffect->fieldSystem->camera;
        distance = Camera_GetDistance(caveEffect->camera);

        QuadraticInterpolationTaskFX32_Init(
            &caveEffect->camInterpolation,
            distance,
            distance + CAVE_HIGHER_LEVEL_CAMERA_OFFSET,
            CAVE_HIGHER_LEVEL_CAMERA_SPEED,
            CAVE_HIGHER_LEVEL_INTERPOLATION_FRAMES);
        encEffect->state++;
        break;
    case 4:
        QuadraticInterpolationTaskFX32_Update(&caveEffect->camInterpolation);
        Camera_SetDistance(caveEffect->camInterpolation.currentValue, caveEffect->camera);

        if (ScreenWipe_Done()) {
            encEffect->state++;
        }
        break;
    case 5:
        HBlankSystem_Start(encEffect->fieldSystem->unk_04->hBlankSystem);

        if (encEffect->done != NULL) {
            *(encEffect->done) = TRUE;
        }

        EncounterEffect_Finish(encEffect, task);
        sub_0200F344(1, 0x0);
        break;
    }
}

typedef struct TrainerGrassEncounterEffect {
    QuadraticInterpolationTaskFX32 pokeballScale;
    LinearInterpolationTaskS32 pokeballRotation;
    QuadraticInterpolationTaskFX32 unk_2C;
    ScreenSliceEffect *screenSliceEfx;
    UnkStruct_ov5_021DE47C unk_48;
    UnkStruct_ov5_021DE5A4 unk_1E8;
    CellActor *pokeballSprites[2];
    Camera *camera;
    QuadraticInterpolationTaskFX32 unk_228;
    s32 unk_240;
} TrainerGrassEncounterEffect;

typedef struct {
    LinearInterpolationTaskFX32 unk_00;
    LinearInterpolationTaskS32 unk_14;
    ScreenSplitEffect *unk_28;
    UnkStruct_ov5_021DE47C unk_2C;
    UnkStruct_ov5_021DE5A4 unk_1CC;
    CellActor *unk_200[2];
    Camera *camera;
    QuadraticInterpolationTaskFX32 unk_20C;
    s32 unk_224;
} UnkStruct_ov5_021E2EB0;

typedef struct {
    QuadraticInterpolationTaskFX32 unk_00;
    LinearInterpolationTaskS32 unk_18;
    LinearInterpolationTaskS32 unk_2C;
    ScreenShakeEffect unk_40;
    BOOL unk_4C;
    UnkStruct_ov5_021DE47C unk_50;
    UnkStruct_ov5_021DE5A4 unk_1F0;
    CellActor *unk_224[2];
    Camera *camera;
    QuadraticInterpolationTaskFX32 unk_230;
    s32 unk_248;
} UnkStruct_ov5_021E31A4;

typedef struct {
    UnkStruct_ov5_021DE47C unk_00;
    UnkStruct_ov5_021DE5A4 unk_1A0;
    CellActor *unk_1D4[3];
    LinearInterpolationTaskS32 unk_1E0[3];
    LinearInterpolationTaskS32 unk_21C[3];
    UnkStruct_ov5_021DE6BC *unk_258[3];
    BOOL unk_264[3];
    Window *unk_270;
    ScreenShakeEffect unk_274;
    BOOL unk_280;
    Camera *camera;
    QuadraticInterpolationTaskFX32 unk_288;
    s32 unk_2A0;
} UnkStruct_ov5_021E3560;

typedef struct {
    QuadraticInterpolationTaskFX32 unk_00;
    QuadraticInterpolationTaskFX32 unk_18;
    QuadraticInterpolationTaskFX32 unk_30;
    LinearInterpolationTaskS32 unk_48;
    UnkStruct_ov5_021DE47C unk_5C;
    UnkStruct_ov5_021DE5A4 unk_1FC;
    CellActor *unk_230;
    Camera *camera;
    QuadraticInterpolationTaskFX32 unk_238;
    s32 unk_250;
} UnkStruct_ov5_021E3AD0;

typedef struct {
    UnkStruct_ov5_021DE47C unk_00;
    UnkStruct_ov5_021DE5A4 unk_1A0;
    CellActor *unk_1D4[3];
    LinearInterpolationTaskS32 unk_1E0[3];
    LinearInterpolationTaskS32 unk_21C[3];
    BOOL unk_258[3];
    Window *unk_264;
    UnkStruct_ov5_021DE928 *unk_268;
    Camera *camera;
    QuadraticInterpolationTaskFX32 unk_270;
    s16 unk_288;
} UnkStruct_ov5_021E3D8C;

void EncounterEffect_Trainer_Grass_LowerLevel(SysTask *task, void *param)
{
    EncounterEffect *encEffect = param;
    TrainerGrassEncounterEffect *trainerEffect = encEffect->param;
    BOOL done;
    fx32 v3;
    int i;
    VecFx32 v5;
    u16 v6;

    switch (encEffect->state) {
    case 0:
        encEffect->param = Heap_AllocFromHeap(4, sizeof(TrainerGrassEncounterEffect));
        memset(encEffect->param, 0, sizeof(TrainerGrassEncounterEffect));
        trainerEffect = encEffect->param;

        trainerEffect->camera = encEffect->fieldSystem->camera;
        trainerEffect->screenSliceEfx = ScreenSliceEffect_New();

        ov5_021DE47C(&trainerEffect->unk_48, 2, 1);

        ov5_021DE4CC(
            encEffect->narc, &trainerEffect->unk_48, &trainerEffect->unk_1E8, 0, 1, 5, 7, 6, 600000);

        for (i = 0; i < 2; i++) {
            trainerEffect->pokeballSprites[i] = ov5_021DE62C(
                &trainerEffect->unk_48, &trainerEffect->unk_1E8, (128 * FX32_ONE), (96 * FX32_ONE), 0, 0);
            CellActor_SetDrawFlag(trainerEffect->pokeballSprites[i], 0);
            CellActor_SetPriority(trainerEffect->pokeballSprites[i], i * 2);
        }

        GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);

        encEffect->state++;
        break;

    case 1:
        EncounterEffect_Flash(1, -16, -16, &encEffect->effectComplete, 2);
        encEffect->state++;
        break;

    case 2:
        if (encEffect->effectComplete) {
            encEffect->state++;
        }

        break;

    case 3:
        QuadraticInterpolationTaskFX32_Init(&trainerEffect->pokeballScale, (FX32_CONST(0.01f)), (FX32_CONST(1.0f)), 2, 10);

        v5 = VecFx32_FromXYZ(
            trainerEffect->pokeballScale.currentValue,
            trainerEffect->pokeballScale.currentValue,
            trainerEffect->pokeballScale.currentValue);

        for (i = 0; i < 2; i++) {
            CellActor_SetDrawFlag(
                trainerEffect->pokeballSprites[i], 1);
            CellActor_SetAffineOverwriteMode(
                trainerEffect->pokeballSprites[i], 2);
            CellActor_SetAffineScale(
                trainerEffect->pokeballSprites[i], &v5);
        }

        LinearInterpolationTaskS32_Init(&trainerEffect->pokeballRotation, 0, (0xffff * 1), 10);
        encEffect->state++;
        break;

    case 4:
        done = QuadraticInterpolationTaskFX32_Update(&trainerEffect->pokeballScale);
        v5 = VecFx32_FromXYZ(trainerEffect->pokeballScale.currentValue, trainerEffect->pokeballScale.currentValue, trainerEffect->pokeballScale.currentValue);

        v6 = trainerEffect->pokeballRotation.currentValue;

        LinearInterpolationTaskS32_Update(&trainerEffect->pokeballRotation);

        for (i = 0; i < 2; i++) {
            CellActor_SetAffineScale(
                trainerEffect->pokeballSprites[i], &v5);
        }

        CellActor_SetAffineZRotation(
            trainerEffect->pokeballSprites[0], 0xffff & trainerEffect->pokeballRotation.currentValue);

        CellActor_SetAffineZRotation(
            trainerEffect->pokeballSprites[1], 0xffff & (trainerEffect->pokeballRotation.currentValue - 0x100));

        if (done == TRUE) {
            encEffect->state++;
        }

        break;

    case 5:

        EncounterEffect_ScreenSlice(encEffect, trainerEffect->screenSliceEfx, 96, 6, 0, (255 * FX32_ONE), (FX32_ONE * 10));

        CellActor_SetAnim(
            trainerEffect->pokeballSprites[0], 1);
        CellActor_SetAnim(
            trainerEffect->pokeballSprites[1], 2);

        QuadraticInterpolationTaskFX32_Init(&trainerEffect->unk_2C, 0, (255 * FX32_ONE), (FX32_ONE * 10), 6);

        v3 = Camera_GetDistance(trainerEffect->camera);
        QuadraticInterpolationTaskFX32_Init(&trainerEffect->unk_228, v3, v3 + (-FX32_CONST(500)), (-FX32_CONST(10)), 6);

        CellActor_SetAffineZRotation(
            trainerEffect->pokeballSprites[0], 0xffff & 0);
        CellActor_SetAffineZRotation(
            trainerEffect->pokeballSprites[1], 0xffff & 0);

        encEffect->state++;
        break;

    case 6:

        done = QuadraticInterpolationTaskFX32_Update(&trainerEffect->unk_2C);
        {
            VecFx32 v7 = VecFx32_FromXYZ((128 * FX32_ONE) - trainerEffect->unk_2C.currentValue, (96 * FX32_ONE), 0);
            VecFx32 v8 = VecFx32_FromXYZ((128 * FX32_ONE) + trainerEffect->unk_2C.currentValue, (96 * FX32_ONE), 0);

            CellActor_SetPosition(
                trainerEffect->pokeballSprites[0], &v7);
            CellActor_SetPosition(
                trainerEffect->pokeballSprites[1], &v8);
        }

        QuadraticInterpolationTaskFX32_Update(&trainerEffect->unk_228);
        Camera_SetDistance(trainerEffect->unk_228.currentValue, trainerEffect->camera);

        if (EncounterEffect_GetHBlankFlag(encEffect)) {
            encEffect->state++;
        }

        break;

    case 7:
        sub_0200F370(0x0);

        if (encEffect->done != NULL) {
            *(encEffect->done) = 1;
        }

        {
            int v9;

            for (v9 = 0; v9 < 2; v9++) {
                CellActor_Delete(trainerEffect->pokeballSprites[v9]);
            }
        }
        ov5_021DE5A4(&trainerEffect->unk_48, &trainerEffect->unk_1E8);
        ov5_021DE4AC(&trainerEffect->unk_48);
        ScreenSliceEffect_Delete(trainerEffect->screenSliceEfx);
        EncounterEffect_Finish(encEffect, task);
        break;
    }

    if (encEffect->state != 7) {
        CellActorCollection_Update(trainerEffect->unk_48.unk_00);
    }
}

void EncounterEffect_Trainer_Grass_HigherLevel(SysTask *param0, void *param1)
{
    EncounterEffect *encEffect = param1;
    UnkStruct_ov5_021E2EB0 *v1 = encEffect->param;
    BOOL v2;
    fx32 v3;

    switch (encEffect->state) {
    case 0:
        encEffect->param = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov5_021E2EB0));
        memset(encEffect->param, 0, sizeof(UnkStruct_ov5_021E2EB0));
        v1 = encEffect->param;

        v1->camera = encEffect->fieldSystem->camera;

        v1->unk_28 = ScreenSplitEffect_New();

        ov5_021DE47C(&v1->unk_2C, 2, 1);

        ov5_021DE4CC(
            encEffect->narc, &v1->unk_2C, &v1->unk_1CC, 0, 1, 2, 4, 3, 600000);

        {
            int v4;

            for (v4 = 0; v4 < 2; v4++) {
                v1->unk_200[v4] = ov5_021DE62C(
                    &v1->unk_2C, &v1->unk_1CC, (128 * FX32_ONE), 0, 0, 0);
                CellActor_SetDrawFlag(v1->unk_200[v4], 0);
                CellActor_SetAffineOverwriteMode(v1->unk_200[v4], 2);
            }
        }
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);

        encEffect->state++;
        break;

    case 1:

        EncounterEffect_Flash(1, 16, -16, &encEffect->effectComplete, 2);
        encEffect->state++;
        break;

    case 2:
        if (encEffect->effectComplete) {
            encEffect->state++;
        }

        break;

    case 3:
        LinearInterpolationTaskFX32_Init(&v1->unk_00, (-192 * FX32_ONE), (192 * FX32_ONE), 8);
        CellActor_SetDrawFlag(
            v1->unk_200[0], 1);
        CellActor_SetDrawFlag(
            v1->unk_200[1], 1);

        {
            VecFx32 v5 = VecFx32_FromXYZ((128 * FX32_ONE) - v1->unk_00.currentValue, (64 * FX32_ONE), 0);
            VecFx32 v6 = VecFx32_FromXYZ((128 * FX32_ONE) + v1->unk_00.currentValue, (128 * FX32_ONE), 0);

            CellActor_SetPosition(
                v1->unk_200[0], &v5);
            CellActor_SetPosition(
                v1->unk_200[1], &v6);
        }

        LinearInterpolationTaskS32_Init(&v1->unk_14, 0, (0xffff * 2), 8);

        encEffect->state++;
        break;

    case 4:
        v2 = LinearInterpolationTaskFX32_Update(&v1->unk_00);

        {
            VecFx32 v7 = VecFx32_FromXYZ((128 * FX32_ONE) - v1->unk_00.currentValue, (64 * FX32_ONE), 0);
            VecFx32 v8 = VecFx32_FromXYZ((128 * FX32_ONE) + v1->unk_00.currentValue, (128 * FX32_ONE), 0);

            CellActor_SetPosition(
                v1->unk_200[0], &v7);
            CellActor_SetPosition(
                v1->unk_200[1], &v8);
        }

        LinearInterpolationTaskS32_Update(&v1->unk_14);
        CellActor_SetAffineZRotation(
            v1->unk_200[0], v1->unk_14.currentValue);
        CellActor_SetAffineZRotation(
            v1->unk_200[1], -v1->unk_14.currentValue);

        if (v2 == 1) {
            encEffect->state++;
        }

        break;

    case 5:

        EncounterEffect_ScreenSplit(encEffect, v1->unk_28, 8, (FX32_ONE * 1), (FX32_ONE * 1));

        v3 = Camera_GetDistance(v1->camera);
        QuadraticInterpolationTaskFX32_Init(&v1->unk_20C, v3, v3 + (-FX32_CONST(500)), (-FX32_CONST(10)), 8);

        encEffect->state++;
        break;

    case 6:

        QuadraticInterpolationTaskFX32_Update(&v1->unk_20C);
        Camera_SetDistance(v1->unk_20C.currentValue, v1->camera);

        if (EncounterEffect_GetHBlankFlag(encEffect) == 1) {
            encEffect->state++;
        }

        break;

    case 7:
        sub_0200F370(0x0);

        if (encEffect->done != NULL) {
            *(encEffect->done) = 1;
        }

        {
            int v9;

            for (v9 = 0; v9 < 2; v9++) {
                CellActor_Delete(v1->unk_200[v9]);
            }
        }
        ov5_021DE5A4(&v1->unk_2C, &v1->unk_1CC);
        ov5_021DE4AC(&v1->unk_2C);
        ScreenSplitEffect_Delete(v1->unk_28);
        EncounterEffect_Finish(encEffect, param0);
        break;
    }

    if (encEffect->state != 7) {
        CellActorCollection_Update(v1->unk_2C.unk_00);
    }
}

void EncounterEffect_Trainer_Water_LowerLevel(SysTask *param0, void *param1)
{
    EncounterEffect *v0 = param1;
    UnkStruct_ov5_021E31A4 *v1 = v0->param;
    BOOL v2;
    BOOL v3;
    fx32 v4;
    int v5;
    u16 v6;

    switch (v0->state) {
    case 0:
        v0->param = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov5_021E31A4));
        memset(v0->param, 0, sizeof(UnkStruct_ov5_021E31A4));
        v1 = v0->param;

        v1->camera = v0->fieldSystem->camera;

        ScreenShakeEffect_Init(&v1->unk_40, 4);
        v1->unk_248 = 12;

        ov5_021DE47C(&v1->unk_50, 2, 1);

        ov5_021DE4CC(
            v0->narc, &v1->unk_50, &v1->unk_1F0, 0, 1, 5, 7, 6, 600000);

        for (v5 = 0; v5 < 2; v5++) {
            v1->unk_224[v5] = ov5_021DE62C(
                &v1->unk_50, &v1->unk_1F0, (128 * FX32_ONE), (96 * FX32_ONE), 0, 0);
            CellActor_SetDrawFlag(v1->unk_224[v5], 0);
            CellActor_SetPriority(v1->unk_224[v5], v5);
        }

        GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);

        v0->state++;
        break;

    case 1:

        EncounterEffect_Flash(1, -16, -16, &v0->effectComplete, 2);
        v0->state++;
        break;

    case 2:
        v1->unk_248--;

        if (v1->unk_248 == 0) {
            ScreenShakeEffect_Start(&v1->unk_40, 0, 191, ((0xffff / 192) * 2), (FX32_CONST(12)), 800, REG_BG0HOFS_ADDR, 0, (5 - 1));
            v1->unk_4C = 1;
        }

        if (v0->effectComplete) {
            v0->state++;
        }

        break;

    case 3:
        LinearInterpolationTaskS32_Init(&v1->unk_18, 0, 16, 8);
        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, v1->unk_18.currentValue, 16 - v1->unk_18.currentValue);

        for (v5 = 0; v5 < 2; v5++) {
            CellActor_SetDrawFlag(
                v1->unk_224[v5], 1);

            CellActor_SetAffineOverwriteMode(
                v1->unk_224[v5], 2);
            CellActor_SetExplicitOAMMode(v1->unk_224[v5], GX_OAM_MODE_XLU);
        }

        LinearInterpolationTaskS32_Init(&v1->unk_2C, 0, 0xffff, 8);

        v0->state++;
        break;

    case 4:
        v2 = LinearInterpolationTaskS32_Update(&v1->unk_18);
        G2_ChangeBlendAlpha(v1->unk_18.currentValue, 16 - v1->unk_18.currentValue);

        v6 = v1->unk_2C.currentValue;
        v3 = LinearInterpolationTaskS32_Update(&v1->unk_2C);

        if (v3 == 0) {
            CellActor_SetAffineZRotation(v1->unk_224[0], 0xffff & v1->unk_2C.currentValue);
            CellActor_SetAffineZRotation(v1->unk_224[1], 0xffff & v6);
        } else {
            CellActor_SetAffineZRotation(v1->unk_224[0], 0);
            CellActor_SetAffineZRotation(v1->unk_224[1], 0);
        }

        if (v2 == 1) {
            G2_BlendNone();

            for (v5 = 0; v5 < 2; v5++) {
                CellActor_SetExplicitOAMMode(v1->unk_224[v5], GX_OAM_MODE_NORMAL);
            }

            v0->state++;
        }

        break;

    case 5:

        QuadraticInterpolationTaskFX32_Init(&v1->unk_00, (FX32_CONST(1.0f)), (FX32_CONST(0.01f)), (FX32_CONST(0.1f)), 8);

        {
            VecFx32 v7 = VecFx32_FromXYZ(v1->unk_00.currentValue, v1->unk_00.currentValue, v1->unk_00.currentValue);

            for (v5 = 0; v5 < 2; v5++) {
                CellActor_SetAffineScale(
                    v1->unk_224[v5], &v7);
            }
        }

        v4 = Camera_GetDistance(v1->camera);
        QuadraticInterpolationTaskFX32_Init(&v1->unk_230, v4, v4 + (-FX32_CONST(500)), (-FX32_CONST(10)), 8);

        sub_0200F174(3, 24, 0, 0x0, 8, 1, 4);
        v0->state++;
        break;

    case 6:
        v2 = QuadraticInterpolationTaskFX32_Update(&v1->unk_00);
        {
            VecFx32 v8 = VecFx32_FromXYZ(v1->unk_00.currentValue, v1->unk_00.currentValue, v1->unk_00.currentValue);

            for (v5 = 0; v5 < 2; v5++) {
                CellActor_SetAffineScale(
                    v1->unk_224[v5], &v8);
            }
        }

        QuadraticInterpolationTaskFX32_Update(&v1->unk_230);
        Camera_SetDistance(v1->unk_230.currentValue, v1->camera);

        if ((v2 == 1) && (ScreenWipe_Done() == 1)) {
            v0->state++;
        }

        break;

    case 7:
        sub_0200F344(1, 0x0);

        if (v0->done != NULL) {
            *(v0->done) = 1;
        }

        ScreenShakeEffect_Finish(&v1->unk_40);
        v1->unk_4C = 0;

        for (v5 = 0; v5 < 2; v5++) {
            CellActor_Delete(v1->unk_224[v5]);
        }

        ov5_021DE5A4(&v1->unk_50, &v1->unk_1F0);
        ov5_021DE4AC(&v1->unk_50);
        EncounterEffect_Finish(v0, param0);
        return;
    }

    if (v1->unk_4C == 1) {
        ScreenShakeEffect_InvertBuffer(&v1->unk_40, 2);
    }

    if (v0->state != 7) {
        CellActorCollection_Update(v1->unk_50.unk_00);
    }
}

void EncounterEffect_Trainer_Water_HigherLevel(SysTask *param0, void *param1)
{
    EncounterEffect *v0 = param1;
    UnkStruct_ov5_021E3560 *v1 = v0->param;
    BOOL v2;
    int v3;
    VecFx32 v4;
    fx32 v5;

    switch (v0->state) {
    case 0:
        v0->param = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov5_021E3560));
        memset(v0->param, 0, sizeof(UnkStruct_ov5_021E3560));
        v1 = v0->param;

        v1->camera = v0->fieldSystem->camera;

        ScreenShakeEffect_Init(&v1->unk_274, 4);
        v1->unk_2A0 = 14;

        ov5_021DE47C(&v1->unk_00, 3, 1);

        ov5_021DE4CC(
            v0->narc, &v1->unk_00, &v1->unk_1A0, 0, 1, 2, 4, 3, 600000);

        for (v3 = 0; v3 < 3; v3++) {
            v1->unk_1D4[v3] = ov5_021DE62C(
                &v1->unk_00, &v1->unk_1A0, 0, 0, 0, 0);
            CellActor_SetDrawFlag(v1->unk_1D4[v3], 0);
            CellActor_SetAffineOverwriteMode(v1->unk_1D4[v3], 2);

            v1->unk_258[v3] = ov5_021DE6A4(4);
        }

        GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);

        v1->unk_270 = sub_0201A778(4, 1);
        BGL_AddWindow(v0->fieldSystem->unk_08, v1->unk_270, 3, 0, 0, 32, 32, 0, 0);

        {
            GXRgb v6 = 0;

            sub_0201972C(3, &v6, sizeof(short), 2 * 15);
        }

        BGL_FillWindow(v1->unk_270, 0);
        sub_0201A9A4(v1->unk_270);

        v0->state++;
        break;

    case 1:

        EncounterEffect_Flash(1, 16, -16, &v0->effectComplete, 2);
        v0->state++;
        break;

    case 2:
        v1->unk_2A0--;

        if (v1->unk_2A0 == 0) {
            ScreenShakeEffect_Start(&v1->unk_274, 0, 191, ((0xffff / 192) * 2), (FX32_CONST(12)), 800, REG_BG0HOFS_ADDR, 0, (5 - 1));
            v1->unk_280 = 1;
        }

        if (v0->effectComplete) {
            v1->unk_2A0 = 6;
            v0->state++;
        }

        break;

    case 3:
        v1->unk_2A0--;

        if (v1->unk_2A0 >= 0) {
            break;
        }

        v5 = Camera_GetDistance(v1->camera);
        QuadraticInterpolationTaskFX32_Init(&v1->unk_288, v5, v5 + (-FX32_CONST(500)), (-FX32_CONST(10)), 16);

        LinearInterpolationTaskS32_Init(&v1->unk_21C[0], 0, (0xffff * 1), 6);

        LinearInterpolationTaskS32_Init(&v1->unk_1E0[0], 231, -32, 6);

        ov5_021DE6C4(v1->unk_258[0], 43, 43, 312, 0, 6, v1->unk_270, 86, 64, 15);

        v4 = VecFx32_FromXYZ(
            43 * FX32_ONE, 231 * FX32_ONE, 0);
        CellActor_SetPosition(v1->unk_1D4[0], &v4);
        CellActor_SetDrawFlag(v1->unk_1D4[0], 1);
        v1->unk_264[0] = 1;
        v0->state++;
        v1->unk_2A0 = 4;
        break;

    case 4:
        v1->unk_2A0--;

        if (v1->unk_2A0 >= 0) {
            break;
        }

        LinearInterpolationTaskS32_Init(&v1->unk_1E0[1], 231, -32, 6);

        LinearInterpolationTaskS32_Init(&v1->unk_21C[1], 0, (0xffff * -1), 6);

        ov5_021DE6C4(v1->unk_258[1], 215, 215, 312, 0, 6, v1->unk_270, 86, 64, 15);
        v4 = VecFx32_FromXYZ(
            215 * FX32_ONE, 231 * FX32_ONE, 1);
        CellActor_SetPosition(v1->unk_1D4[1], &v4);
        CellActor_SetDrawFlag(v1->unk_1D4[1], 1);
        v1->unk_264[1] = 1;
        v0->state++;
        v1->unk_2A0 = 2;
        break;

    case 5:
        v1->unk_2A0--;

        if (v1->unk_2A0 >= 0) {
            break;
        }

        LinearInterpolationTaskS32_Init(&v1->unk_1E0[2], 231, -32, 6);

        LinearInterpolationTaskS32_Init(&v1->unk_21C[2], 0, (0xffff * 1), 6);

        ov5_021DE6C4(v1->unk_258[2], 129, 129, 312, 0, 6, v1->unk_270, 86, 64, 15);
        v4 = VecFx32_FromXYZ(
            129 * FX32_ONE, 231 * FX32_ONE, 2);
        CellActor_SetPosition(v1->unk_1D4[2], &v4);
        CellActor_SetDrawFlag(v1->unk_1D4[2], 1);
        v1->unk_264[2] = 1;

        v0->state++;
        break;

    case 6:

        QuadraticInterpolationTaskFX32_Update(&v1->unk_288);
        Camera_SetDistance(v1->unk_288.currentValue, v1->camera);

        if ((v1->unk_264[0] == 0) && (v1->unk_264[1] == 0) && (v1->unk_264[2] == 0)) {
            v0->state++;
        }

        break;

    case 7:
        sub_0200F370(0x0);

        if (v0->done != NULL) {
            *(v0->done) = 1;
        }

        ScreenShakeEffect_Finish(&v1->unk_274);
        v1->unk_280 = 0;

        for (v3 = 0; v3 < 3; v3++) {
            CellActor_Delete(v1->unk_1D4[v3]);
            ov5_021DE6BC(v1->unk_258[v3]);
        }

        ov5_021DE5A4(&v1->unk_00, &v1->unk_1A0);
        ov5_021DE4AC(&v1->unk_00);

        sub_0201ACF4(v1->unk_270);
        BGL_DeleteWindow(v1->unk_270);
        sub_0201A928(v1->unk_270, 1);

        sub_02019690(3, 32, 0, 4);
        sub_02019EBC(v0->fieldSystem->unk_08, 3);

        EncounterEffect_Finish(v0, param0);
        return;
    }

    if (v1->unk_280 == 1) {
        ScreenShakeEffect_InvertBuffer(&v1->unk_274, 2);
    }

    for (v3 = 0; v3 < 3; v3++) {
        if (v1->unk_264[v3] == 1) {
            const VecFx32 *v7;
            VecFx32 v8;

            v2 = ov5_021DE71C(v1->unk_258[v3]);

            if (v2) {
                v1->unk_264[v3] = 0;
            }

            LinearInterpolationTaskS32_Update(&v1->unk_1E0[v3]);
            LinearInterpolationTaskS32_Update(&v1->unk_21C[v3]);

            CellActor_SetAffineZRotation(v1->unk_1D4[v3], v1->unk_21C[v3].currentValue);

            v7 = CellActor_GetPosition(v1->unk_1D4[v3]);
            v8 = *v7;
            v8.y = v1->unk_1E0[v3].currentValue * FX32_ONE;
            CellActor_SetPosition(v1->unk_1D4[v3], &v8);
        }
    }

    sub_0201A9A4(v1->unk_270);

    if (v0->state != 7) {
        CellActorCollection_Update(v1->unk_00.unk_00);
    }
}

void EncounterEffect_Trainer_Cave_LowerLevel(SysTask *param0, void *param1)
{
    EncounterEffect *v0 = param1;
    UnkStruct_ov5_021E3AD0 *v1 = v0->param;
    BOOL v2;
    fx32 v3;
    VecFx32 v4;

    switch (v0->state) {
    case 0:
        v0->param = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov5_021E3AD0));
        memset(v0->param, 0, sizeof(UnkStruct_ov5_021E3AD0));
        v1 = v0->param;

        v1->camera = v0->fieldSystem->camera;

        ov5_021DE47C(&v1->unk_5C, 1, 1);

        ov5_021DE4CC(
            v0->narc, &v1->unk_5C, &v1->unk_1FC, 0, 1, 2, 4, 3, 600000);

        v1->unk_230 = ov5_021DE62C(
            &v1->unk_5C, &v1->unk_1FC, (128 * FX32_ONE), (-32 * FX32_ONE), 0, 0);
        CellActor_SetDrawFlag(v1->unk_230, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);

        v0->state++;
        break;

    case 1:

        EncounterEffect_Flash(1, -16, -16, &v0->effectComplete, 2);
        v0->state++;
        break;

    case 2:
        if (v0->effectComplete) {
            v0->state++;
        }

        break;

    case 3:
        QuadraticInterpolationTaskFX32_Init(&v1->unk_00, 0, (256 * FX32_ONE), (2 * FX32_ONE), 12);
        CellActor_SetDrawFlag(
            v1->unk_230, 1);

        QuadraticInterpolationTaskFX32_Init(&v1->unk_18, (FX32_CONST(0.10f)), (FX32_CONST(2.0f)), (FX32_CONST(0.0f)), 12);

        QuadraticInterpolationTaskFX32_Init(&v1->unk_30, (FX32_CONST(0.10f)), (FX32_CONST(2.0f)), (FX32_CONST(0.0f)), 12);

        v4 = VecFx32_FromXYZ(v1->unk_18.currentValue, v1->unk_30.currentValue, 0);
        CellActor_SetAffineScaleEx(v1->unk_230, &v4, 2);

        LinearInterpolationTaskS32_Init(&v1->unk_48, 0, (0xffff * 1), 12);
        v0->state++;
        break;

    case 4:
        v2 = QuadraticInterpolationTaskFX32_Update(&v1->unk_00);
        {
            VecFx32 v5 = VecFx32_FromXYZ((128 * FX32_ONE), (-32 * FX32_ONE) + (v1->unk_00.currentValue), 0);

            CellActor_SetPosition(
                v1->unk_230, &v5);
        }
        QuadraticInterpolationTaskFX32_Update(&v1->unk_18);
        QuadraticInterpolationTaskFX32_Update(&v1->unk_30);
        v4 = VecFx32_FromXYZ(v1->unk_18.currentValue, v1->unk_30.currentValue, 0);
        CellActor_SetAffineScale(v1->unk_230, &v4);

        LinearInterpolationTaskS32_Update(&v1->unk_48);
        CellActor_SetAffineZRotation(v1->unk_230, v1->unk_48.currentValue);

        if (v2 == 1) {
            CellActor_SetDrawFlag(
                v1->unk_230, 0);
            v0->state++;
        }

        break;

    case 5:

        HBlankSystem_Stop(v0->fieldSystem->unk_04->hBlankSystem);

        v3 = Camera_GetDistance(v1->camera);
        QuadraticInterpolationTaskFX32_Init(&v1->unk_238, v3, v3 + (-FX32_CONST(1000)), (FX32_CONST(10)), 8);

        sub_0200F174(3, 18, 0, 0x0, 8, 1, 4);
        v0->state++;
        break;

    case 6:

        QuadraticInterpolationTaskFX32_Update(&v1->unk_238);
        Camera_SetDistance(v1->unk_238.currentValue, v1->camera);

        if (ScreenWipe_Done()) {
            v0->state++;
        }

        break;

    case 7:
        sub_0200F344(1, 0x0);

        HBlankSystem_Start(v0->fieldSystem->unk_04->hBlankSystem);

        if (v0->done != NULL) {
            *(v0->done) = 1;
        }

        CellActor_Delete(v1->unk_230);
        ov5_021DE5A4(&v1->unk_5C, &v1->unk_1FC);
        ov5_021DE4AC(&v1->unk_5C);
        EncounterEffect_Finish(v0, param0);
        break;
    }

    if (v0->state != 7) {
        CellActorCollection_Update(v1->unk_5C.unk_00);
    }
}

void EncounterEffect_Trainer_Cave_HigherLevel(SysTask *param0, void *param1)
{
    EncounterEffect *v0 = param1;
    UnkStruct_ov5_021E3D8C *v1 = v0->param;
    VecFx32 v2;
    BOOL v3;
    int v4;
    fx32 v5;

    switch (v0->state) {
    case 0:
        v0->param = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov5_021E3D8C));
        memset(v0->param, 0, sizeof(UnkStruct_ov5_021E3D8C));
        v1 = v0->param;

        v1->camera = v0->fieldSystem->camera;

        ov5_021DE47C(&v1->unk_00, 3, 1);

        ov5_021DE4CC(
            v0->narc, &v1->unk_00, &v1->unk_1A0, 0, 1, 2, 4, 3, 600000);

        for (v4 = 0; v4 < 3; v4++) {
            v1->unk_1D4[v4] = ov5_021DE62C(
                &v1->unk_00, &v1->unk_1A0, 0, -32, 0, 0);
            CellActor_SetDrawFlag(v1->unk_1D4[v4], 0);
        }

        GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);

        v1->unk_264 = sub_0201A778(4, 1);
        BGL_AddWindow(v0->fieldSystem->unk_08, v1->unk_264, 3, 0, 0, 32, 32, 0, 0);

        {
            GXRgb v6 = 0;

            sub_0201972C(3, &v6, sizeof(short), 2 * 15);
        }

        BGL_FillWindow(v1->unk_264, 0);
        sub_0201A9A4(v1->unk_264);

        v1->unk_268 = ov5_021DE8F8(4);

        v0->state++;
        break;

    case 1:

        EncounterEffect_Flash(1, 16, -16, &v0->effectComplete, 2);
        v0->state++;
        break;

    case 2:
        if (v0->effectComplete) {
            v0->state++;
            v1->unk_288 = 0;
        }

        break;

    case 3:
        v1->unk_288--;

        if (v1->unk_288 > 0) {
            break;
        }

        LinearInterpolationTaskS32_Init(&v1->unk_1E0[0], -32, 224, 5);
        v2 = VecFx32_FromXYZ(
            128 * FX32_ONE, -32 * FX32_ONE, 0);
        CellActor_SetPosition(v1->unk_1D4[0], &v2);
        CellActor_SetDrawFlag(
            v1->unk_1D4[0], 1);

        LinearInterpolationTaskS32_Init(&v1->unk_21C[0], 0, (0xffff * 1), 5);
        CellActor_SetAffineOverwriteMode(v1->unk_1D4[0], 2);

        v1->unk_258[0] = 1;
        v0->state++;
        v1->unk_288 = 1;
        break;

    case 4:
        v1->unk_288--;

        if (v1->unk_288 > 0) {
            break;
        }

        LinearInterpolationTaskS32_Init(&v1->unk_1E0[1], -32, 224, 5);
        v2 = VecFx32_FromXYZ(
            208 * FX32_ONE, -32 * FX32_ONE, 0);
        CellActor_SetPosition(v1->unk_1D4[1], &v2);
        CellActor_SetDrawFlag(
            v1->unk_1D4[1], 1);

        LinearInterpolationTaskS32_Init(&v1->unk_21C[1], 0, (0xffff * -1), 5);

        CellActor_SetAffineOverwriteMode(v1->unk_1D4[1], 2);
        v1->unk_258[1] = 1;
        v0->state++;
        v1->unk_288 = 3;
        break;

    case 5:
        v1->unk_288--;

        if (v1->unk_288 > 0) {
            break;
        }

        LinearInterpolationTaskS32_Init(&v1->unk_1E0[2], -32, 224, 5);
        v2 = VecFx32_FromXYZ(
            48 * FX32_ONE, -32 * FX32_ONE, 0);
        CellActor_SetPosition(v1->unk_1D4[2], &v2);
        CellActor_SetDrawFlag(
            v1->unk_1D4[2], 1);

        LinearInterpolationTaskS32_Init(&v1->unk_21C[2], 0, (0xffff * 1), 5);
        CellActor_SetAffineOverwriteMode(v1->unk_1D4[2], 2);

        v1->unk_258[2] = 1;
        v0->state++;
        break;

    case 6:

        if ((v1->unk_258[0] == 0) && (v1->unk_258[1] == 0) && (v1->unk_258[2] == 0)) {
            for (v4 = 0; v4 < 3; v4++) {
                CellActor_SetDrawFlag(
                    v1->unk_1D4[v4], 0);
            }

            v0->state++;
        }

        break;

    case 7:
        ov5_021DE948(v1->unk_268, 1, 1, v1->unk_264, 15);

        v5 = Camera_GetDistance(v1->camera);
        QuadraticInterpolationTaskFX32_Init(&v1->unk_270, v5, v5 + (-FX32_CONST(1000)), (FX32_CONST(10)), 64);

        v0->state++;
        break;

    case 8:
        v3 = ov5_021DE988(v1->unk_268);
        sub_0201A9A4(v1->unk_264);

        QuadraticInterpolationTaskFX32_Update(&v1->unk_270);
        Camera_SetDistance(v1->unk_270.currentValue, v1->camera);

        if (v3 == 1) {
            v0->state++;
        }

        break;

    case 9:
        sub_0200F370(0x0);

        if (v0->done != NULL) {
            *(v0->done) = 1;
        }

        for (v4 = 0; v4 < 3; v4++) {
            CellActor_Delete(v1->unk_1D4[v4]);
        }

        ov5_021DE5A4(&v1->unk_00, &v1->unk_1A0);
        ov5_021DE4AC(&v1->unk_00);

        ov5_021DE928(v1->unk_268);

        sub_0201ACF4(v1->unk_264);
        BGL_DeleteWindow(v1->unk_264);
        sub_0201A928(v1->unk_264, 1);

        sub_02019690(3, 32, 0, 4);
        sub_02019EBC(v0->fieldSystem->unk_08, 3);

        EncounterEffect_Finish(v0, param0);
        break;
    }

    for (v4 = 0; v4 < 3; v4++) {
        if (v1->unk_258[v4] == 1) {
            const VecFx32 *v7;
            VecFx32 v8;

            v3 = LinearInterpolationTaskS32_Update(&v1->unk_1E0[v4]);
            LinearInterpolationTaskS32_Update(&v1->unk_21C[v4]);

            if (v3) {
                v1->unk_258[v4] = 0;
            }

            v7 = CellActor_GetPosition(v1->unk_1D4[v4]);
            v8 = *v7;
            v8.y = v1->unk_1E0[v4].currentValue * FX32_ONE;
            CellActor_SetPosition(v1->unk_1D4[v4], &v8);
            CellActor_SetAffineZRotation(v1->unk_1D4[v4], (0xffff & v1->unk_21C[v4].currentValue));
        }
    }

    if (v0->state != 9) {
        CellActorCollection_Update(v1->unk_00.unk_00);
    }
}

typedef struct {
    LinearInterpolationTaskS32 unk_00;
    QuadraticInterpolationTaskFX32 unk_14;
    UnkStruct_ov5_021DE47C unk_2C;
    UnkStruct_ov5_021DE5A4 unk_1CC;
    CellActor *unk_200;
    s32 unk_204;
} UnkStruct_ov5_021E4260;

typedef struct {
    UnkStruct_ov5_021DE47C unk_00;
    UnkStruct_ov5_021DE5A4 unk_1A0;
    CellActor *unk_1D4[4];
    QuadraticInterpolationTaskFX32 unk_1E4[2];
} UnkStruct_ov5_021E44C0;

void EncounterEffect_Frontier(SysTask *param0, void *param1)
{
    EncounterEffect *v0 = param1;
    UnkStruct_ov5_021E4260 *v1 = v0->param;
    BOOL v2;

    switch (v0->state) {
    case 0:
        v0->param = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov5_021E4260));
        memset(v0->param, 0, sizeof(UnkStruct_ov5_021E4260));
        v1 = v0->param;

        ov5_021DE47C(&v1->unk_2C, 1, 1);

        ov5_021DE4CC(
            v0->narc, &v1->unk_2C, &v1->unk_1CC, 0, 1, 5, 7, 6, 600000);

        v1->unk_200 = ov5_021DE62C(
            &v1->unk_2C, &v1->unk_1CC, (128 * FX32_ONE), (96 * FX32_ONE), 0, 0);
        CellActor_SetDrawFlag(v1->unk_200, 0);
        CellActor_SetExplicitOAMMode(v1->unk_200, GX_OAM_MODE_XLU);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);

        v0->state++;
        break;

    case 1:

        EncounterEffect_Flash(1, 16, -16, &v0->effectComplete, 2);
        v0->state++;
        break;

    case 2:
        if (v0->effectComplete) {
            v0->state++;
        }

        break;

    case 3:
        LinearInterpolationTaskS32_Init(&v1->unk_00, 0, 16, 12);
        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, v1->unk_00.currentValue, 16 - v1->unk_00.currentValue);

        CellActor_SetDrawFlag(
            v1->unk_200, 1);
        v0->state++;
        break;

    case 4:
        v2 = LinearInterpolationTaskS32_Update(&v1->unk_00);
        G2_ChangeBlendAlpha(v1->unk_00.currentValue, 16 - v1->unk_00.currentValue);

        if (v2 == 1) {
            G2_BlendNone();
            CellActor_SetExplicitOAMMode(v1->unk_200, GX_OAM_MODE_NORMAL);
            v0->state++;
        }

        break;

    case 5:
        QuadraticInterpolationTaskFX32_Init(&v1->unk_14, (FX32_CONST(1.0f)), (FX32_CONST(0.1f)), 1, 6);

        CellActor_SetAffineOverwriteMode(
            v1->unk_200, 2);
        {
            VecFx32 v3 = VecFx32_FromXYZ(v1->unk_14.currentValue, v1->unk_14.currentValue, v1->unk_14.currentValue);

            CellActor_SetAffineScale(
                v1->unk_200, &v3);
        }

        HBlankSystem_Stop(v0->fieldSystem->unk_04->hBlankSystem);
        sub_0200F174(3, 16, 0, 0x0, 6, 1, 4);
        v0->state++;
        break;

    case 6:
        v2 = QuadraticInterpolationTaskFX32_Update(&v1->unk_14);
        {
            VecFx32 v4 = VecFx32_FromXYZ(v1->unk_14.currentValue, v1->unk_14.currentValue, v1->unk_14.currentValue);

            CellActor_SetAffineScale(
                v1->unk_200, &v4);
        }

        if ((v2 == 1) && (ScreenWipe_Done() == 1)) {
            v0->state++;
        }

        break;

    case 7:
        sub_0200F344(1, 0x0);

        HBlankSystem_Start(v0->fieldSystem->unk_04->hBlankSystem);

        if (v0->done != NULL) {
            *(v0->done) = 1;
        }

        CellActor_Delete(v1->unk_200);
        ov5_021DE5A4(&v1->unk_2C, &v1->unk_1CC);
        ov5_021DE4AC(&v1->unk_2C);
        EncounterEffect_Finish(v0, param0);
        break;
    }

    if (v0->state != 7) {
        CellActorCollection_Update(v1->unk_2C.unk_00);
    }
}

void EncounterEffect_Double(SysTask *param0, void *param1)
{
    EncounterEffect *v0 = param1;
    UnkStruct_ov5_021E44C0 *v1 = v0->param;
    BOOL v2;
    int v3;
    VecFx32 v4;

    switch (v0->state) {
    case 0:
        v0->param = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov5_021E44C0));
        memset(v0->param, 0, sizeof(UnkStruct_ov5_021E44C0));
        v1 = v0->param;

        ov5_021DE47C(&v1->unk_00, 4, 1);

        ov5_021DE4CC(
            v0->narc, &v1->unk_00, &v1->unk_1A0, 0, 1, 2, 4, 3, 600000);

        for (v3 = 0; v3 < 4; v3++) {
            v1->unk_1D4[v3] = ov5_021DE62C(
                &v1->unk_00, &v1->unk_1A0, (128 * FX32_ONE), (96 * FX32_ONE), 0, 0);
            CellActor_SetDrawFlag(v1->unk_1D4[v3], 0);
        }

        GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);

        v0->state++;
        break;

    case 1:

        EncounterEffect_Flash(1, 16, -16, &v0->effectComplete, 2);
        v0->state++;
        break;

    case 2:
        if (v0->effectComplete) {
            v0->state++;
        }

        break;

    case 3:
        QuadraticInterpolationTaskFX32_Init(&v1->unk_1E4[0], 0, (128 * FX32_ONE), (FX32_CONST(0.1f)), 4);
        QuadraticInterpolationTaskFX32_Init(&v1->unk_1E4[1], 0, (160 * FX32_ONE), (FX32_CONST(0.1f)), 4);

        for (v3 = 0; v3 < 4; v3++) {
            CellActor_SetDrawFlag(v1->unk_1D4[v3], 1);
        }

        v0->state++;
        break;

    case 4:
        for (v3 = 0; v3 < 2; v3++) {
            v2 = QuadraticInterpolationTaskFX32_Update(&v1->unk_1E4[v3]);
        }

        v4 = VecFx32_FromXYZ(
            (128 * FX32_ONE), (96 * FX32_ONE) - v1->unk_1E4[0].currentValue, 0);
        CellActor_SetPosition(v1->unk_1D4[0], &v4);

        v4 = VecFx32_FromXYZ(
            (128 * FX32_ONE), (96 * FX32_ONE) + v1->unk_1E4[0].currentValue, 0);
        CellActor_SetPosition(v1->unk_1D4[1], &v4);

        v4 = VecFx32_FromXYZ(
            (128 * FX32_ONE) - v1->unk_1E4[1].currentValue, (96 * FX32_ONE), 0);
        CellActor_SetPosition(v1->unk_1D4[2], &v4);

        v4 = VecFx32_FromXYZ(
            (128 * FX32_ONE) + v1->unk_1E4[1].currentValue, (96 * FX32_ONE), 0);
        CellActor_SetPosition(v1->unk_1D4[3], &v4);

        if (v2 == 1) {
            v0->state++;
        }

        break;

    case 5:

        HBlankSystem_Stop(v0->fieldSystem->unk_04->hBlankSystem);
        sub_0200F174(3, 34, 0, 0x0, 8, 1, 4);
        v0->state++;
        break;

    case 6:
        if (ScreenWipe_Done() == 1) {
            v0->state++;
        }

        break;

    case 7:
        sub_0200F344(1, 0x0);

        HBlankSystem_Start(v0->fieldSystem->unk_04->hBlankSystem);

        if (v0->done != NULL) {
            *(v0->done) = 1;
        }

        for (v3 = 0; v3 < 4; v3++) {
            CellActor_Delete(v1->unk_1D4[v3]);
        }

        ov5_021DE5A4(&v1->unk_00, &v1->unk_1A0);
        ov5_021DE4AC(&v1->unk_00);
        EncounterEffect_Finish(v0, param0);
        break;
    }

    if (v0->state != 7) {
        CellActorCollection_Update(v1->unk_00.unk_00);
    }
}

static const s32 Unk_ov5_021F9E94[6][8] = {
    { FX32_CONST(260), FX32_CONST(128), -FX32_CONST(30), FX32_CONST(0), FX32_CONST(100), FX32_CONST(20), 4, 0xffff * 2 },
    { FX32_CONST(-16), FX32_CONST(128), FX32_CONST(30), FX32_CONST(160), FX32_CONST(100), -FX32_CONST(20), 3, 0xffff * 1 },
    { FX32_CONST(0), FX32_CONST(128), FX32_CONST(30), FX32_CONST(-16), FX32_CONST(100), FX32_CONST(20), 4, -0xffff * 3 },
    { FX32_CONST(140), FX32_CONST(128), -FX32_CONST(10), FX32_CONST(160), FX32_CONST(100), -FX32_CONST(20), 2, -0xffff * 2 },
    { FX32_CONST(260), FX32_CONST(128), -FX32_CONST(30), FX32_CONST(80), FX32_CONST(100), FX32_CONST(1), 3, -0xffff * 3 },
    { FX32_CONST(0), FX32_CONST(128), FX32_CONST(30), FX32_CONST(160), FX32_CONST(100), -FX32_CONST(20), 3, 0xffff * 1 },
};

typedef struct {
    UnkStruct_ov5_021DE47C unk_00;
    UnkStruct_ov5_021DE5A4 unk_1A0;
    CellActor *unk_1D4[6];
    QuadraticInterpolationTaskFX32 unk_1EC[6];
    QuadraticInterpolationTaskFX32 unk_27C[6];
    QuadraticInterpolationTaskFX32 unk_30C[6];
    LinearInterpolationTaskS32 unk_39C[6];
    BOOL unk_414[6];
    s32 unk_42C;
    s32 unk_430;
} UnkStruct_ov5_021E4738;

typedef struct {
    Window *unk_00;
    UnkStruct_ov5_021DEC18 *unk_04;
    UnkStruct_ov5_021DE47C unk_08;
    UnkStruct_ov5_021DE5A4 unk_1A8;
    CellActor *unk_1DC;
    LinearInterpolationTaskS32 unk_1E0;
    LinearInterpolationTaskS32 unk_1F4;
    LinearInterpolationTaskS32 unk_208;
    s32 unk_21C;
} UnkStruct_ov5_021E4B3C;

void EncounterEffect_GalacticGrunt(SysTask *param0, void *param1)
{
    EncounterEffect *v0 = param1;
    UnkStruct_ov5_021E4738 *v1 = v0->param;
    BOOL v2;
    int v3;
    VecFx32 v4;
    VecFx32 v5;

    switch (v0->state) {
    case 0:
        v0->param = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov5_021E4738));
        memset(v0->param, 0, sizeof(UnkStruct_ov5_021E4738));
        v1 = v0->param;

        ov5_021DE47C(&v1->unk_00, 6, 1);

        ov5_021DE4CC(
            v0->narc, &v1->unk_00, &v1->unk_1A0, 0, 1, 2, 4, 3, 600000);

        for (v3 = 0; v3 < 6; v3++) {
            v1->unk_1D4[v3] = ov5_021DE62C(
                &v1->unk_00, &v1->unk_1A0, 0, 0, 0, 0);
            CellActor_SetDrawFlag(v1->unk_1D4[v3], 0);
        }

        GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);

        v0->state++;
        break;

    case 1:

        EncounterEffect_Flash(1, -16, -16, &v0->effectComplete, 2);
        v0->state++;
        break;

    case 2:
        if (v0->effectComplete) {
            v0->state++;
            v1->unk_42C = 0;
            v1->unk_430 = Unk_ov5_021F9E94[v1->unk_42C][6];
        }

        break;

    case 3:
        v1->unk_430--;

        if (v1->unk_430 < 0) {
            QuadraticInterpolationTaskFX32_Init(&v1->unk_27C[v1->unk_42C], Unk_ov5_021F9E94[v1->unk_42C][0], Unk_ov5_021F9E94[v1->unk_42C][1], Unk_ov5_021F9E94[v1->unk_42C][2], 8);

            QuadraticInterpolationTaskFX32_Init(&v1->unk_30C[v1->unk_42C], Unk_ov5_021F9E94[v1->unk_42C][3], Unk_ov5_021F9E94[v1->unk_42C][4], Unk_ov5_021F9E94[v1->unk_42C][5], 8);

            QuadraticInterpolationTaskFX32_Init(&v1->unk_1EC[v1->unk_42C], (FX32_CONST(2.0f)), (FX32_CONST(0.01f)), (-FX32_CONST(0.40f)), 8);

            LinearInterpolationTaskS32_Init(&v1->unk_39C[v1->unk_42C], 0, Unk_ov5_021F9E94[v1->unk_42C][7], 8);

            CellActor_SetDrawFlag(v1->unk_1D4[v1->unk_42C], 1);
            v4 = VecFx32_FromXYZ(
                Unk_ov5_021F9E94[v1->unk_42C][0], Unk_ov5_021F9E94[v1->unk_42C][3], 0);
            CellActor_SetPosition(v1->unk_1D4[v1->unk_42C], &v4);
            v5 = VecFx32_FromXYZ(
                (FX32_CONST(2.0f)), (FX32_CONST(2.0f)), 0);
            CellActor_SetAffineScaleEx(v1->unk_1D4[v1->unk_42C], &v5, 2);

            v1->unk_414[v1->unk_42C] = 1;

            v1->unk_42C++;

            if (v1->unk_42C >= 6) {
                v0->state++;
            } else {
                v1->unk_430 = Unk_ov5_021F9E94[v1->unk_42C][6];
            }
        }

        break;

    case 4:

        if (v1->unk_414[6 - 1] == 0) {
            v0->state++;
        }

        break;

    case 5:

        HBlankSystem_Stop(v0->fieldSystem->unk_04->hBlankSystem);

        sub_0200F174(3, 34, 0, 0x0, 12, 1, 4);
        v0->state++;
        break;

    case 6:
        if (ScreenWipe_Done()) {
            v0->state++;
        }

        break;

    case 7:
        sub_0200F344(1, 0x0);

        HBlankSystem_Start(v0->fieldSystem->unk_04->hBlankSystem);

        if (v0->done != NULL) {
            *(v0->done) = 1;
        }

        for (v3 = 0; v3 < 6; v3++) {
            CellActor_Delete(v1->unk_1D4[v3]);
        }

        ov5_021DE5A4(&v1->unk_00, &v1->unk_1A0);
        ov5_021DE4AC(&v1->unk_00);

        EncounterEffect_Finish(v0, param0);
        break;
    }

    for (v3 = 0; v3 < 6; v3++) {
        if (v1->unk_414[v3] == 1) {
            v2 = QuadraticInterpolationTaskFX32_Update(&v1->unk_27C[v3]);
            QuadraticInterpolationTaskFX32_Update(&v1->unk_30C[v3]);
            QuadraticInterpolationTaskFX32_Update(&v1->unk_1EC[v3]);
            LinearInterpolationTaskS32_Update(&v1->unk_39C[v3]);

            if (v2) {
                v1->unk_414[v3] = 0;
                CellActor_SetDrawFlag(v1->unk_1D4[v3], 0);
            }

            v4 = VecFx32_FromXYZ(
                v1->unk_27C[v3].currentValue, v1->unk_30C[v3].currentValue, 0);
            CellActor_SetPosition(v1->unk_1D4[v3], &v4);
            v5 = VecFx32_FromXYZ(
                v1->unk_1EC[v3].currentValue, v1->unk_1EC[v3].currentValue, 0);
            CellActor_SetAffineScale(v1->unk_1D4[v3], &v5);
            CellActor_SetAffineZRotation(v1->unk_1D4[v3], v1->unk_39C[v3].currentValue);
        }
    }

    if (v0->state != 7) {
        CellActorCollection_Update(v1->unk_00.unk_00);
    }
}

void EncounterEffect_GalacticBoss(SysTask *param0, void *param1)
{
    EncounterEffect *v0 = param1;
    UnkStruct_ov5_021E4B3C *v1 = v0->param;
    BOOL v2;

    switch (v0->state) {
    case 0:
        v0->param = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov5_021E4B3C));
        memset(v0->param, 0, sizeof(UnkStruct_ov5_021E4B3C));
        v1 = v0->param;

        ov5_021DE47C(&v1->unk_08, 1, 1);

        ov5_021DE4CC(
            v0->narc, &v1->unk_08, &v1->unk_1A8, 1, 1, 8, 10, 9, 600000);

        v1->unk_1DC = ov5_021DE62C(
            &v1->unk_08, &v1->unk_1A8, (128 * FX32_ONE), (96 * FX32_ONE), 0, 0);
        CellActor_SetDrawFlag(v1->unk_1DC, 0);
        CellActor_SetExplicitOAMMode(v1->unk_1DC, GX_OAM_MODE_XLU);
        CellActor_SetExplicitPriority(v1->unk_1DC, 1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);

        v1->unk_04 = ov5_021DEBEC(4);

        v1->unk_00 = sub_0201A778(4, 1);
        BGL_AddWindow(v0->fieldSystem->unk_08, v1->unk_00, 3, 0, 0, 32, 32, 0, 0);

        {
            GXRgb v3 = 0;

            sub_0201972C(3, &v3, sizeof(short), 2 * 15);
        }

        BGL_FillWindow(v1->unk_00, 0);
        sub_0201A9A4(v1->unk_00);

        v0->state++;
        break;

    case 1:

        EncounterEffect_Flash(1, 16, -16, &v0->effectComplete, 2);
        v0->state++;
        break;

    case 2:
        if (v0->effectComplete) {
            v0->state++;
        }

        break;

    case 3:
        LinearInterpolationTaskS32_Init(&v1->unk_1F4, 0, 16, 15);
        CellActor_SetDrawFlag(v1->unk_1DC, 1);
        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, v1->unk_1F4.currentValue, 16 - v1->unk_1F4.currentValue);
        v0->state++;
        break;

    case 4:
        v2 = LinearInterpolationTaskS32_Update(&v1->unk_1F4);
        G2_ChangeBlendAlpha(v1->unk_1F4.currentValue, 16 - v1->unk_1F4.currentValue);

        if (v2 == 1) {
            G2_BlendNone();
            CellActor_SetExplicitOAMMode(v1->unk_1DC, GX_OAM_MODE_NORMAL);
            v0->state++;
            v1->unk_21C = 16;
        }

        break;

    case 5:
        v1->unk_21C--;

        if (v1->unk_21C > 0) {
            break;
        }

        LinearInterpolationTaskS32_Init(&v1->unk_1E0, 0, 14, 16);
        ov5_021DEC38(v1->unk_04, 16, v1->unk_00, 15);
        v0->state++;
        break;

    case 6:
        LinearInterpolationTaskS32_Update(&v1->unk_1E0);
        G2_SetOBJMosaicSize(v1->unk_1E0.currentValue, v1->unk_1E0.currentValue);

        if (ov5_021DECB8(v1->unk_04)) {
            v0->state++;
        }

        sub_0201A9A4(v1->unk_00);
        break;

    case 7:
        sub_0200F370(0x0);

        ov5_021DEC18(v1->unk_04);

        if (v0->done != NULL) {
            *(v0->done) = 1;
        }

        CellActor_Delete(v1->unk_1DC);
        ov5_021DE5A4(&v1->unk_08, &v1->unk_1A8);
        ov5_021DE4AC(&v1->unk_08);

        sub_0201ACF4(v1->unk_00);
        BGL_DeleteWindow(v1->unk_00);
        sub_0201A928(v1->unk_00, 1);

        sub_02019690(3, 32, 0, 4);
        sub_02019EBC(v0->fieldSystem->unk_08, 3);

        G2_SetOBJMosaicSize(0, 0);

        EncounterEffect_Finish(v0, param0);
        break;
    }

    if (v0->state != 7) {
        CellActorCollection_Update(v1->unk_08.unk_00);
    }
}

typedef struct LegendaryEncounterCameraParam {
    u32 distance;
    u16 angleX;
    u16 angleY;
    u16 fov;
    u16 frameDelay;
} LegendaryEncounterCameraParam;

static const LegendaryEncounterCameraParam sLegendaryEncounterCameraParams[16] = {
    {
        .distance = 0x29AEC1,
        .angleX = 0xD602,
        .angleY = 0x0,
        .fov = 0x5C1,
        .frameDelay = 4,
    },
    {
        .distance = 0x29AEC1,
        .angleX = 0xcf02,
        .angleY = 0xff00,
        .fov = 0x601,
        .frameDelay = 4,
    },
    {
        .distance = 0x29AEC1,
        .angleX = 0xe602,
        .angleY = 0x1000,
        .fov = 0x691,
        .frameDelay = 4,
    },
    {
        .distance = 0x29AEC1,
        .angleX = 0xD602,
        .angleY = 0xa00,
        .fov = 0x711,
        .frameDelay = 3,
    },
    {
        .distance = 0x29AEC1,
        .angleX = 0xe102,
        .angleY = 0xf000,
        .fov = 0x780,
        .frameDelay = 3,
    },
    {
        .distance = 0x29AEC1,
        .angleX = 0xc602,
        .angleY = 0x0,
        .fov = 0x751,
        .frameDelay = 3,
    },
    {
        .distance = 0x29AEC1,
        .angleX = 0xe002,
        .angleY = 0xf000,
        .fov = 0x800,
        .frameDelay = 3,
    },
    {
        .distance = 0x29AEC1,
        .angleX = 0xD602,
        .angleY = 0,
        .fov = 0x802,
        .frameDelay = 3,
    },
    {
        .distance = 0x29AEC1,
        .angleX = 0xD002,
        .angleY = 0x1000,
        .fov = 0x800,
        .frameDelay = 3,
    },
    {
        .distance = 0x29AEC1,
        .angleX = 0xD902,
        .angleY = 0xf500,
        .fov = 0x751,
        .frameDelay = 3,
    },
    {
        .distance = 0x29AEC1,
        .angleX = 0xD002,
        .angleY = 0xa00,
        .fov = 0x4C1,
        .frameDelay = 2,
    },
    {
        .distance = 0x29AEC1,
        .angleX = 0xe002,
        .angleY = 0xf000,
        .fov = 0x3C1,
        .frameDelay = 2,
    },
    {
        .distance = 0x29AEC1,
        .angleX = 0xD002,
        .angleY = 0xf000,
        .fov = 0x650,
        .frameDelay = 1,
    },
    {
        .distance = 0x29AEC1,
        .angleX = 0xe002,
        .angleY = 0xa000,
        .fov = 0x241,
        .frameDelay = 1,
    },
    {
        .distance = 0x29AEC1,
        .angleX = 0xe1a2,
        .angleY = 0x500,
        .fov = 0x500,
        .frameDelay = 1,
    },
    {
        .distance = 0x29AEC1,
        .angleX = 0xD602,
        .angleY = 0,
        .fov = 0x241,
        .frameDelay = 1,
    },
};

typedef struct MythicalEncounterEffect {
    FieldMotionBlur *motionBlur;
    Camera *unused;
    u32 cameraState;
    s32 frameDelay;
} MythicalEncounterEffect;

typedef struct LegendaryEncounterEffect {
    FieldMotionBlur *motionBlur;
    Camera *unused;
    LinearInterpolationTaskS32 fovInterpolation;
    QuadraticInterpolationTaskFX32 distanceInterpolation;
    s32 frameDelay;
} LegendaryEncounterEffect;

static void EncounterEffect_SetLegendaryEncounterCamera(FieldSystem *fieldSystem, const LegendaryEncounterCameraParam *param)
{
    Camera_SetFOV(param->fov, fieldSystem->camera);
    Camera_SetDistance(param->distance, fieldSystem->camera);

    CameraAngle angle;
    angle.x = param->angleX;
    angle.y = param->angleY;
    angle.z = 0;

    Camera_SetAngleAroundTarget(&angle, fieldSystem->camera);
}

void EncounterEffect_Mythical(SysTask *task, void *param)
{
    EncounterEffect *encEffect = param;
    MythicalEncounterEffect *mythicalEffect = encEffect->param;

    switch (encEffect->state) {
    case 0:
        encEffect->param = Heap_AllocFromHeap(4, sizeof(MythicalEncounterEffect));
        memset(encEffect->param, 0, sizeof(MythicalEncounterEffect));

        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 0);
        encEffect->state++;
        break;

    case 1:
        EncounterEffect_Flash(1, 16, 16, &encEffect->effectComplete, 1);
        encEffect->state++;
        break;

    case 2:
        if (encEffect->effectComplete) {
            encEffect->state++;
        }

        break;

    case 3:
        mythicalEffect->motionBlur = FieldMotionBlur_Start(3, 15);
        mythicalEffect->cameraState = 0;
        mythicalEffect->frameDelay = sLegendaryEncounterCameraParams[mythicalEffect->cameraState].frameDelay;
        encEffect->state++;
        break;

    case 4:
        mythicalEffect->frameDelay--;

        if (mythicalEffect->frameDelay < 0) {
            EncounterEffect_SetLegendaryEncounterCamera(encEffect->fieldSystem, &sLegendaryEncounterCameraParams[mythicalEffect->cameraState]);

            mythicalEffect->cameraState++;

            if (mythicalEffect->cameraState >= 16) {
                encEffect->state++;
            } else {
                mythicalEffect->frameDelay = sLegendaryEncounterCameraParams[mythicalEffect->cameraState].frameDelay;
            }
        }

        break;

    case 5:
        sub_0200F174(3, 0, 0, 0x7fff, 10, 1, 4);
        encEffect->state++;
        break;

    case 6:
        if (ScreenWipe_Done()) {
            encEffect->effectComplete = FALSE;
            encEffect->state++;
        }

        break;

    case 7:
        sub_0200F344(1, 0x7fff);

        FieldMotionBlur_Stop(&mythicalEffect->motionBlur);

        G2_BlendNone();

        if (encEffect->done != NULL) {
            *(encEffect->done) = TRUE;
        }

        EncounterEffect_Finish(encEffect, task);
        sub_0200F344(1, 0x7fff);
        break;
    }
}

void EncounterEffect_Legendary(SysTask *task, void *param)
{
    EncounterEffect *encEffect = param;
    LegendaryEncounterEffect *legendaryEffect = encEffect->param;
    BOOL done;

    switch (encEffect->state) {
    case 0:
        encEffect->param = Heap_AllocFromHeap(4, sizeof(LegendaryEncounterEffect));
        memset(encEffect->param, 0, sizeof(LegendaryEncounterEffect));

        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 0);
        encEffect->state++;
        break;

    case 1:
        EncounterEffect_Flash(1, 16, 16, &encEffect->effectComplete, 1);
        encEffect->state++;
        break;

    case 2:
        if (encEffect->effectComplete) {
            encEffect->state++;
        }

        break;

    case 3:
        legendaryEffect->motionBlur = FieldMotionBlur_Start(5, 13);

        {
            u16 fov = Camera_GetFOV(encEffect->fieldSystem->camera);
            LinearInterpolationTaskS32_Init(&legendaryEffect->fovInterpolation, fov, fov + 0x100, 40);
        }

        encEffect->state++;
        break;

    case 4:
        done = LinearInterpolationTaskS32_Update(&legendaryEffect->fovInterpolation);
        Camera_SetFOV(legendaryEffect->fovInterpolation.currentValue, encEffect->fieldSystem->camera);

        if (done == TRUE) {
            encEffect->state++;
            legendaryEffect->frameDelay = 5;
        }

        break;

    case 5:
        legendaryEffect->frameDelay--;

        if (legendaryEffect->frameDelay < 0) {
            fx32 distance = Camera_GetDistance(encEffect->fieldSystem->camera);
            QuadraticInterpolationTaskFX32_Init(&legendaryEffect->distanceInterpolation, distance, distance + (-FX32_CONST(2350)), (FX32_CONST(0.5)), 8);

            encEffect->state++;
        }

        break;

    case 6:
        done = QuadraticInterpolationTaskFX32_Update(&legendaryEffect->distanceInterpolation);
        Camera_SetDistance(legendaryEffect->distanceInterpolation.currentValue, encEffect->fieldSystem->camera);

        if (done == TRUE) {
            encEffect->state++;
        }

        break;

    case 7:
        sub_0200F174(3, 0, 0, 0x7fff, 60, 1, 4);
        encEffect->state++;
        break;

    case 8:
        if (ScreenWipe_Done()) {
            encEffect->effectComplete = FALSE;
            encEffect->state++;
        }

        break;

    case 9:
        sub_0200F344(1, 0x7fff);

        FieldMotionBlur_Stop(&legendaryEffect->motionBlur);

        G2_BlendNone();

        if (encEffect->done != NULL) {
            *(encEffect->done) = TRUE;
        }

        EncounterEffect_Finish(encEffect, task);
        sub_0200F344(1, 0x7fff);
        break;
    }
}

typedef struct GymLeaderEncounterParam {
    fx32 endX;
    u32 trainerID;
    u16 trainerClass;
    u16 unk_0A;
    // The rest are NARC indices
    u8 unk_0C;
    u8 unk_0D;
    u8 unk_0E;
    u8 unk_0F;
    u8 unk_10;
    u8 unk_11;
    u8 unk_12;
    u8 padding;
} GymLeaderEncounterParam;

#define GYM_LEADER(NAME) (TRAINER_CLASS_LEADER_##NAME - TRAINER_CLASS_LEADER_ROARK)

static const GymLeaderEncounterParam sGymLeaderEncounterParams[8] = {
    {
        .endX = 214 * FX32_ONE,
        .trainerID = 246,
        .trainerClass = TRAINER_CLASS_LEADER_ROARK,
        .unk_0A = 1,
        .unk_0C = 55,
        .unk_0D = 56,
        .unk_0E = 57,
        .unk_0F = 58,
        .unk_10 = 15,
        .unk_11 = 16,
        .unk_12 = 17,
        .padding = 0,
    },
    {
        .endX = 214 * FX32_ONE,
        .trainerID = 315,
        .trainerClass = TRAINER_CLASS_LEADER_GARDENIA,
        .unk_0A = 1,
        .unk_0C = 59,
        .unk_0D = 60,
        .unk_0E = 61,
        .unk_0F = 62,
        .unk_10 = 18,
        .unk_11 = 19,
        .unk_12 = 20,
        .padding = 0,
    },
    {
        .endX = 214 * FX32_ONE,
        .trainerID = 316,
        .trainerClass = TRAINER_CLASS_LEADER_WAKE,
        .unk_0A = 0,
        .unk_0C = 63,
        .unk_0D = 64,
        .unk_0E = 65,
        .unk_0F = 66,
        .unk_10 = 21,
        .unk_11 = 22,
        .unk_12 = 23,
        .padding = 0,
    },
    {
        .endX = 214 * FX32_ONE,
        .trainerID = 317,
        .trainerClass = TRAINER_CLASS_LEADER_MAYLENE,
        .unk_0A = 1,
        .unk_0C = 67,
        .unk_0D = 68,
        .unk_0E = 69,
        .unk_0F = 70,
        .unk_10 = 24,
        .unk_11 = 25,
        .unk_12 = 26,
        .padding = 0,
    },
    {
        .endX = 214 * FX32_ONE,
        .trainerID = 318,
        .trainerClass = TRAINER_CLASS_LEADER_FANTINA,
        .unk_0A = 1,
        .unk_0C = 71,
        .unk_0D = 72,
        .unk_0E = 73,
        .unk_0F = 74,
        .unk_10 = 27,
        .unk_11 = 28,
        .unk_12 = 29,
        .padding = 0,
    },
    {
        .endX = 214 * FX32_ONE,
        .trainerID = 319,
        .trainerClass = TRAINER_CLASS_LEADER_CANDICE,
        .unk_0A = 1,
        .unk_0C = 75,
        .unk_0D = 76,
        .unk_0E = 77,
        .unk_0F = 78,
        .unk_10 = 30,
        .unk_11 = 31,
        .unk_12 = 32,
        .padding = 0,
    },
    {
        .endX = 214 * FX32_ONE,
        .trainerID = 250,
        .trainerClass = TRAINER_CLASS_LEADER_BYRON,
        .unk_0A = 1,
        .unk_0C = 79,
        .unk_0D = 80,
        .unk_0E = 81,
        .unk_0F = 82,
        .unk_10 = 33,
        .unk_11 = 34,
        .unk_12 = 35,
        .padding = 0,
    },
    {
        .endX = 214 * FX32_ONE,
        .trainerID = 320,
        .trainerClass = TRAINER_CLASS_LEADER_VOLKNER,
        .unk_0A = 1,
        .unk_0C = 83,
        .unk_0D = 84,
        .unk_0E = 85,
        .unk_0F = 86,
        .unk_10 = 36,
        .unk_11 = 37,
        .unk_12 = 38,
        .padding = 0,
    },
};

typedef struct EliterFourChampionEncounterParam {
    u16 unk_00;
    u8 unk_02;
    u8 facePanFrames;
    u16 trainerClass;
    u16 trainerID;
} EliterFourChampionEncounterParam;

static const EliterFourChampionEncounterParam sEliteFourChampionEncounterParams[5] = {
    { .unk_00 = 87,
        .unk_02 = 39,
        .facePanFrames = 32,
        .trainerClass = TRAINER_CLASS_ELITE_FOUR_AARON,
        .trainerID = 261 },
    { .unk_00 = 91,
        .unk_02 = 43,
        .facePanFrames = 32,
        .trainerClass = TRAINER_CLASS_ELITE_FOUR_BERTHA,
        .trainerID = 262 },
    { .unk_00 = 95,
        .unk_02 = 44,
        .facePanFrames = 32,
        .trainerClass = TRAINER_CLASS_ELITE_FOUR_FLINT,
        .trainerID = 263 },
    { .unk_00 = 99,
        .unk_02 = 45,
        .facePanFrames = 32,
        .trainerClass = TRAINER_CLASS_ELITE_FOUR_LUCIAN,
        .trainerID = 264 },
    { .unk_00 = 103,
        .unk_02 = 46,
        .facePanFrames = 9,
        .trainerClass = TRAINER_CLASS_CHAMPION_CYNTHIA,
        .trainerID = 267 },
};

typedef struct {
    s16 unk_00;
    s16 unk_02;
    CellActor *unk_04[4];
    LinearInterpolationTaskFX32 unk_14[4];
} UnkStruct_ov5_021E5128;

typedef struct {
    QuadraticInterpolationTaskFX32 unk_00;
    LinearInterpolationTaskS32 unk_18;
    LinearInterpolationTaskFX32 unk_2C;
    UnkStruct_ov5_021DED04 *unk_40;
    UnkStruct_ov5_021DE47C unk_44;
    UnkStruct_ov5_021DE5A4 unk_1E4[2];
    CellActor *unk_24C;
    UnkStruct_ov5_021E5128 unk_250;
    UnkStruct_ov5_021E52A8_sub1 unk_2B4;
    UnkStruct_ov5_021E52A8_sub2 unk_2BC;
    Window unk_2E0;
    BOOL unk_2F0;
    s32 unk_2F4;
    s32 unk_2F8;
} UnkStruct_ov5_021E52A8;

typedef struct {
    QuadraticInterpolationTaskFX32 unk_00;
    QuadraticInterpolationTaskFX32 unk_18;
    QuadraticInterpolationTaskFX32 unk_30;
    LinearInterpolationTaskS32 unk_48;
    UnkStruct_ov5_021DE47C unk_5C;
    UnkStruct_ov5_021DE5A4 unk_1FC[4];
    CellActor *unk_2CC[4];
    VecFx32 unk_2DC;
    VecFx32 unk_2E8;
    UnkStruct_ov5_021E5128 unk_2F4;
    Window unk_358;
    u32 unk_368;
    s32 unk_36C;
    s32 unk_370;
} UnkStruct_ov5_021E5890;

static void ov5_021E5128(UnkStruct_ov5_021E5128 *param0, UnkStruct_ov5_021DE47C *param1, UnkStruct_ov5_021DE5A4 *param2, fx32 param3, fx32 param4, u32 param5)
{
    int v0;

    param0->unk_00 = 0;
    param0->unk_02 = 0;

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_04[v0] = ov5_021DE62C(
            param1, param2, param3, param4, 0, 0);
        CellActor_SetDrawFlag(param0->unk_04[v0], 0);

        if (v0 != 3) {
            CellActor_SetAffineOverwriteMode(param0->unk_04[v0], 2);
            CellActor_SetAnim(param0->unk_04[v0], 1);

            LinearInterpolationTaskFX32_Init(&param0->unk_14[v0], FX32_CONST(2), FX32_CONST(1), 6);
        } else {
            LinearInterpolationTaskFX32_Init(&param0->unk_14[v0], FX32_CONST(1), FX32_CONST(1), 6);
        }
    }
}

static void ov5_021E519C(UnkStruct_ov5_021E5128 *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        CellActor_Delete(param0->unk_04[v0]);
    }
}

static BOOL ov5_021E51B4(UnkStruct_ov5_021E5128 *param0)
{
    int v0;
    BOOL v1;
    BOOL v2 = 1;
    VecFx32 v3;

    if (param0->unk_02 < 4) {
        v2 = 0;
        param0->unk_00--;

        if (param0->unk_00 <= 0) {
            param0->unk_00 = 3;
            param0->unk_02++;
        }
    }

    for (v0 = 0; v0 < param0->unk_02; v0++) {
        v1 = LinearInterpolationTaskFX32_Update(&param0->unk_14[v0]);

        v3 = VecFx32_FromXYZ(
            param0->unk_14[v0].currentValue, param0->unk_14[v0].currentValue, param0->unk_14[v0].currentValue);
        CellActor_SetAffineScale(param0->unk_04[v0], &v3);
        CellActor_SetDrawFlag(param0->unk_04[v0], 1);

        if (v1 == 0) {
            v2 = 0;
        }
    }

    return v2;
}

static Strbuf *EncounterEffect_GetGymLeaderName(u32 trainerClass, u32 heapID)
{
    StringTemplate *template;
    MessageLoader *messageLoader;
    Strbuf *result;
    Strbuf *message;

    messageLoader = MessageLoader_Init(1, 26, 359, heapID);
    template = StringTemplate_Default(heapID);
    result = Strbuf_Init(128, heapID);
    message = Strbuf_Init(128, heapID);
    MessageLoader_GetStrbuf(messageLoader, 0, message);
    StringTemplate_SetTrainerName(template, 0, trainerClass);
    StringTemplate_Format(template, result, message);

    MessageLoader_Free(messageLoader);
    StringTemplate_Free(template);
    Strbuf_Free(message);
    return result;
}

static BOOL EncounterEffect_GymLeader(EncounterEffect *encEffect, enum HeapId heapID, const GymLeaderEncounterParam *param)
{
    UnkStruct_ov5_021E52A8 *v0 = encEffect->param;
    BOOL v1;
    const VecFx32 *v2;
    VecFx32 v3;
    VecFx32 v4;
    int v5;
    int v6;
    Strbuf *v7;

    switch (encEffect->state) {
    case 0:
        encEffect->param = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov5_021E52A8));
        memset(encEffect->param, 0, sizeof(UnkStruct_ov5_021E52A8));
        v0 = encEffect->param;

        sub_02007130(encEffect->narc, 11, 0, 2 * 0x20, 0x20, heapID);

        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        BGL_AddWindow(encEffect->fieldSystem->unk_08, &v0->unk_2E0, 2, 0, 10, 16, 2, 2, 1);
        BGL_FillWindow(&v0->unk_2E0, 0);
        v7 = EncounterEffect_GetGymLeaderName(param->trainerID, heapID);
        Text_AddPrinterWithParamsAndColor(&v0->unk_2E0, FONT_SYSTEM, v7, 0, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
        Strbuf_Free(v7);

        ov5_021DE47C(&v0->unk_44, 8, 3);

        ov5_021DE4CC(
            encEffect->narc, &v0->unk_44, &v0->unk_1E4[0], param->unk_0C, 1, param->unk_0D, param->unk_0E, param->unk_0F, 600000);

        ov5_021DE4CC(
            encEffect->narc, &v0->unk_44, &v0->unk_1E4[1], 51, 1, 52, 53, 54, 600000 + 1);

        v0->unk_24C = ov5_021DE62C(
            &v0->unk_44, &v0->unk_1E4[0], (272 * FX32_ONE), (66 * FX32_ONE), 0, 0);
        CellActor_SetDrawFlag(v0->unk_24C, 0);
        ov5_021E5128(&v0->unk_250, &v0->unk_44, &v0->unk_1E4[1], (FX32_CONST(72)), (FX32_CONST(74)), heapID);

        ov5_021DE5D0(v0->unk_24C, heapID, param->trainerClass, 14, (GX_RGB(0, 0, 0)));

        v0->unk_40 = ov5_021DECEC();

        encEffect->state++;
        break;

    case 1:

        EncounterEffect_Flash(1, 16, 16, &encEffect->effectComplete, 1);
        encEffect->state++;
        break;

    case 2:
        if (encEffect->effectComplete) {
            encEffect->state++;
        }

        break;

    case 3:

        ov5_021DE3D0(
            encEffect->narc, param->unk_12, param->unk_11, param->unk_10, 0, 1, encEffect->fieldSystem->unk_08, 3);
        v0->unk_2F0 = 1;

        ov5_021DED20(encEffect, v0->unk_40, 6, 8, 16, (GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ), (GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_OBJ));

        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);

        encEffect->state++;
        break;

    case 4:

        if (EncounterEffect_GetHBlankFlag(encEffect)) {
            encEffect->state++;

            ov5_021DED04(v0->unk_40);

            v0->unk_2F8 = 10;
        }

        break;

    case 5:

        v0->unk_2F8--;

        if (v0->unk_2F8 >= 0) {
            break;
        }

        GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);

        v1 = ov5_021E51B4(&v0->unk_250);

        if (v1 == 1) {
            encEffect->state++;
        }

        break;

    case 6:

        QuadraticInterpolationTaskFX32_Init(&v0->unk_00, (272 * FX32_ONE), param->endX, (-64 * FX32_ONE), 4);
        CellActor_SetDrawFlag(v0->unk_24C, 1);
        CellActor_SetExplicitPriority(v0->unk_24C, 0);

        v3 = VecFx32_FromXYZ(
            v0->unk_00.currentValue, (66 * FX32_ONE), 0);
        CellActor_SetPosition(v0->unk_24C, &v3);

        encEffect->state++;
        break;

    case 7:

        v1 = QuadraticInterpolationTaskFX32_Update(&v0->unk_00);
        v3 = VecFx32_FromXYZ(
            v0->unk_00.currentValue, (66 * FX32_ONE), 0);
        CellActor_SetPosition(v0->unk_24C, &v3);

        if (v1 == 1) {
            encEffect->state++;
        }

        break;

    case 8:
        LinearInterpolationTaskS32_Init(&v0->unk_18, 0, 16, 3);
        v0->unk_2F8 = 10;
        encEffect->state++;
        break;

    case 9:
        v0->unk_2F8--;

        if (v0->unk_2F8 >= 0) {
            break;
        }

        v1 = LinearInterpolationTaskS32_Update(&v0->unk_18);
        ov5_021DEF8C(&v0->unk_18.currentValue);

        if (v1 == 1) {
            ov5_021DE5D0(v0->unk_24C, heapID, param->trainerClass, 0, (GX_RGB(0, 0, 0)));

            sub_0200AB4C(-14, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BD, 1);

            sub_0201C63C(encEffect->fieldSystem->unk_08, 2, 0, -((v0->unk_00.currentValue >> FX32_SHIFT) + -92));
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            BGL_SetPriority(2, 0);
            encEffect->state++;
        }

        break;

    case 10:
        LinearInterpolationTaskS32_Init(&v0->unk_18, 16, 0, 3);
        encEffect->state++;
        break;

    case 11:
        v1 = LinearInterpolationTaskS32_Update(&v0->unk_18);
        ov5_021DEF8C(&v0->unk_18.currentValue);

        if (v1 == 1) {
            encEffect->state++;
            v0->unk_2F8 = 26;
        }

        break;

    case 12:
        v0->unk_2F8--;

        if (v0->unk_2F8 < 0) {
            encEffect->state++;
        }

        break;

    case 13:

        sub_0200F174(3, 0, 0, 0x7fff, 15, 1, 4);
        encEffect->state++;
        break;

    case 14:

        if (ScreenWipe_Done()) {
            encEffect->state++;
        }

        break;

    case 15:
        sub_0200F344(1, 0x7fff);

        if (encEffect->done != NULL) {
            *(encEffect->done) = 1;
        }

        CellActor_Delete(v0->unk_24C);
        ov5_021E519C(&v0->unk_250);
        ov5_021DE5A4(&v0->unk_44, &v0->unk_1E4[0]);
        ov5_021DE5A4(&v0->unk_44, &v0->unk_1E4[1]);
        ov5_021DE4AC(&v0->unk_44);

        BGL_DeleteWindow(&v0->unk_2E0);

        GX_SetVisibleWnd(GX_WNDMASK_NONE);

        sub_0200AB4C(0, GX_BLEND_PLANEMASK_NONE, 1);

        sub_02019184(encEffect->fieldSystem->unk_08, 2, 0, 0);

        return 1;
    }

    if (v0->unk_2F0 == 1) {
        sub_0201C63C(encEffect->fieldSystem->unk_08, 3, 0, v0->unk_2F4);

        v0->unk_2F4 = (v0->unk_2F4 + 30) % 512;
    }

    if (encEffect->state != 15) {
        CellActorCollection_Update(v0->unk_44.unk_00);
    }

    return 0;
}

void EncounterEffect_LeaderRoark(SysTask *task, void *param)
{
    EncounterEffect *encEffect = param;
    BOOL done = EncounterEffect_GymLeader(encEffect, HEAP_ID_FIELD, &sGymLeaderEncounterParams[0]);

    if (done == TRUE) {
        EncounterEffect_Finish(encEffect, task);
    }
}

void EncounterEffect_LeaderGardenia(SysTask *task, void *param)
{
    EncounterEffect *encEffect = param;
    BOOL done = EncounterEffect_GymLeader(encEffect, HEAP_ID_FIELD, &sGymLeaderEncounterParams[1]);

    if (done == TRUE) {
        EncounterEffect_Finish(encEffect, task);
    }
}

void EncounterEffect_LeaderWake(SysTask *task, void *param)
{
    EncounterEffect *encEffect = param;
    BOOL done = EncounterEffect_GymLeader(encEffect, HEAP_ID_FIELD, &sGymLeaderEncounterParams[2]);

    if (done == TRUE) {
        EncounterEffect_Finish(encEffect, task);
    }
}

void EncounterEffect_LeaderMaylene(SysTask *task, void *param)
{
    EncounterEffect *encEffect = param;
    BOOL done = EncounterEffect_GymLeader(encEffect, HEAP_ID_FIELD, &sGymLeaderEncounterParams[3]);

    if (done == TRUE) {
        EncounterEffect_Finish(encEffect, task);
    }
}

void EncounterEffect_LeaderFantina(SysTask *task, void *param)
{
    EncounterEffect *encEffect = param;
    BOOL done = EncounterEffect_GymLeader(encEffect, HEAP_ID_FIELD, &sGymLeaderEncounterParams[4]);

    if (done == TRUE) {
        EncounterEffect_Finish(encEffect, task);
    }
}

void EncounterEffect_LeaderCandice(SysTask *task, void *param)
{
    EncounterEffect *encEffect = param;
    BOOL done = EncounterEffect_GymLeader(encEffect, HEAP_ID_FIELD, &sGymLeaderEncounterParams[5]);

    if (done == TRUE) {
        EncounterEffect_Finish(encEffect, task);
    }
}

void EncounterEffect_LeaderByron(SysTask *task, void *param)
{
    EncounterEffect *encEffect = param;
    BOOL done = EncounterEffect_GymLeader(encEffect, HEAP_ID_FIELD, &sGymLeaderEncounterParams[6]);

    if (done == TRUE) {
        EncounterEffect_Finish(encEffect, task);
    }
}

void EncounterEffect_LeaderVolkner(SysTask *task, void *param)
{
    EncounterEffect *encEffect = param;
    BOOL done = EncounterEffect_GymLeader(encEffect, HEAP_ID_FIELD, &sGymLeaderEncounterParams[7]);

    if (done == TRUE) {
        EncounterEffect_Finish(encEffect, task);
    }
}

static u32 FieldSystem_GetTrainerGender(FieldSystem *fieldSystem)
{
    return TrainerInfo_Gender(SaveData_GetTrainerInfo(fieldSystem->saveData));
}

static BOOL EncounterEffect_EliteFourChampion(EncounterEffect *encEffect, enum HeapId heapID, const EliterFourChampionEncounterParam *param)
{
    UnkStruct_ov5_021E5890 *v0 = encEffect->param;
    BOOL v1, v2;
    VecFx32 v3;
    VecFx32 v4;
    int v5;
    fx32 v6;
    UnkStruct_ov5_021DE5A4 *v7;
    int v8;

    switch (encEffect->state) {
    case 0:
        encEffect->param = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov5_021E5890));
        memset(encEffect->param, 0, sizeof(UnkStruct_ov5_021E5890));
        v0 = encEffect->param;

        ov5_021DE47C(&v0->unk_5C, 10, 4);

        if (FieldSystem_GetTrainerGender(encEffect->fieldSystem) == 0) {
            ov5_021DE4CC(
                encEffect->narc, &v0->unk_5C, &v0->unk_1FC[0], 147, 1, 148, 149, 150, 600000);

            v0->unk_368 = 0;
        } else {
            ov5_021DE4CC(
                encEffect->narc, &v0->unk_5C, &v0->unk_1FC[0], 151, 1, 152, 153, 154, 600000);
            v0->unk_368 = 1;
        }

        ov5_021DE4CC(
            encEffect->narc, &v0->unk_5C, &v0->unk_1FC[1], param->unk_00, 1, param->unk_00 + 1, param->unk_00 + 2, param->unk_00 + 3, 600000 + 1);

        ov5_021DE4CC(
            encEffect->narc, &v0->unk_5C, &v0->unk_1FC[2], param->unk_02, 0xC, 40, 41, 42, 600000 + 2);

        ov5_021DE4CC(
            encEffect->narc, &v0->unk_5C, &v0->unk_1FC[3], 51, 1, 52, 53, 54, 600000 + 3);

        encEffect->state++;
        break;

    case 1:

        v4 = VecFx32_FromXYZ(
            (FX32_CONST(2.0f)), (FX32_CONST(2.0f)), 0);

        for (v5 = 0; v5 < 4; v5++) {
            if (v5 < (4 - 1)) {
                v7 = &v0->unk_1FC[v5];
                v8 = 0;
            } else {
                v7 = &v0->unk_1FC[v5 - 1];
                v8 = 1;
            }

            v0->unk_2CC[v5] = ov5_021DE62C(
                &v0->unk_5C, v7, 0, 0, 0, 0);
            CellActor_SetDrawFlag(v0->unk_2CC[v5], 0);
            CellActor_SetAnim(v0->unk_2CC[v5], v8);
            CellActor_SetExplicitPriority(v0->unk_2CC[v5], 1);
        }

        if (v0->unk_368) {
            ov5_021DE5D0(v0->unk_2CC[0], heapID, 0, 14, (GX_RGB(0, 0, 0)));
        } else {
            ov5_021DE5D0(v0->unk_2CC[0], heapID, 1, 14, (GX_RGB(0, 0, 0)));
        }

        ov5_021DE5D0(v0->unk_2CC[1], heapID, param->trainerClass, 14, (GX_RGB(0, 0, 0)));

        GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);

        ov5_021E5128(&v0->unk_2F4, &v0->unk_5C, &v0->unk_1FC[3], (FX32_CONST(128)), (FX32_CONST(96)), heapID);

        ov5_021DEFA0(encEffect->fieldSystem);

        encEffect->state++;
        break;

    case 2:

        EncounterEffect_Flash(1, 16, 16, &encEffect->effectComplete, 1);
        encEffect->unk_08 = 0;
        encEffect->state++;
        break;

    case 3:
        encEffect->unk_08++;

        if (encEffect->unk_08 == 8) {
            ov5_021DF038();
        }

        if (encEffect->effectComplete) {
            encEffect->state++;
        }

        break;

    case 4:
        if (ov5_021DF054() == 1) {
            ov5_021DF0CC(encEffect->narc, 107);

            G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG0, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ, 0, 8);
            encEffect->state++;
        }

        break;

    case 5:
        QuadraticInterpolationTaskFX32_Init(&v0->unk_00, (-128 * FX32_ONE), (56 * FX32_ONE), (80 * FX32_ONE), 6);
        v3 = VecFx32_FromXYZ(
            v0->unk_00.currentValue, (92 * FX32_ONE), 0);
        CellActor_SetPosition(v0->unk_2CC[0], &v3);
        v3.y += (4 * FX32_ONE);
        v3.x += (16 * FX32_ONE);
        CellActor_SetPosition(v0->unk_2CC[2], &v3);
        CellActor_SetDrawFlag(v0->unk_2CC[0], 1);
        CellActor_SetDrawFlag(v0->unk_2CC[2], 1);

        QuadraticInterpolationTaskFX32_Init(&v0->unk_30, (384 * FX32_ONE), (200 * FX32_ONE), (-80 * FX32_ONE), 6);
        v3 = VecFx32_FromXYZ(
            v0->unk_30.currentValue, (92 * FX32_ONE), 0);
        CellActor_SetPosition(v0->unk_2CC[1], &v3);
        v3.y += (4 * FX32_ONE);
        v3.x += (-16 * FX32_ONE);
        CellActor_SetPosition(v0->unk_2CC[3], &v3);
        CellActor_SetDrawFlag(v0->unk_2CC[1], 1);
        CellActor_SetDrawFlag(v0->unk_2CC[3], 1);

        {
            Strbuf *v9;

            sub_02007130(encEffect->narc, 11, 0, 2 * 0x20, 0x20, heapID);

            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
            BGL_AddWindow(encEffect->fieldSystem->unk_08, &v0->unk_358, 2, 21, 13, 11, 2, 2, 1);
            BGL_FillWindow(&v0->unk_358, 0);
            v9 = EncounterEffect_GetGymLeaderName(param->trainerID, heapID);
            Text_AddPrinterWithParamsAndColor(&v0->unk_358, FONT_SYSTEM, v9, 0, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
            Strbuf_Free(v9);
        }

        encEffect->effectComplete = 3;
        encEffect->state++;
        break;

    case 6:

        if (encEffect->effectComplete > 0) {
            encEffect->effectComplete--;

            if (encEffect->effectComplete == 0) {
                ov5_021DF17C(3);
                GXLayers_EngineAToggleLayers(
                    GX_PLANEMASK_BG0, 1);

                GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            }
        } else {
            ov5_021E51B4(&v0->unk_2F4);
        }

        v1 = QuadraticInterpolationTaskFX32_Update(&v0->unk_00);
        v3 = VecFx32_FromXYZ(
            v0->unk_00.currentValue, (92 * FX32_ONE), 0);
        v0->unk_2DC = v3;
        CellActor_SetPosition(v0->unk_2CC[0], &v3);
        v3.y += (4 * FX32_ONE);
        v3.x += (16 * FX32_ONE);
        CellActor_SetPosition(v0->unk_2CC[2], &v3);

        v1 = QuadraticInterpolationTaskFX32_Update(&v0->unk_30);
        v3 = VecFx32_FromXYZ(
            v0->unk_30.currentValue, (92 * FX32_ONE), 0);
        v0->unk_2E8 = v3;
        CellActor_SetPosition(v0->unk_2CC[1], &v3);
        v3.y += (4 * FX32_ONE);
        v3.x += (-16 * FX32_ONE);
        CellActor_SetPosition(v0->unk_2CC[3], &v3);

        if (v1 == 1) {
            encEffect->state++;
        }

        break;

    case 7:
        v1 = ov5_021E51B4(&v0->unk_2F4);
        v2 = ov5_021DF208();

        if ((v1 == 0) || (v2 == 0)) {
            break;
        }

        LinearInterpolationTaskS32_Init(&v0->unk_48, 0, 16, 3);

        ov5_021DF224();

        encEffect->state++;
        break;

    case 8:
        v1 = LinearInterpolationTaskS32_Update(&v0->unk_48);
        ov5_021DEF8C(&v0->unk_48.currentValue);

        if (v1 == 1) {
            ov5_021DE5D0(v0->unk_2CC[0], heapID, v0->unk_368, 0, (GX_RGB(0, 0, 0)));

            ov5_021DE5D0(v0->unk_2CC[1], heapID, param->trainerClass, 0, (GX_RGB(0, 0, 0)));

            CellActor_SetAnimateFlag(v0->unk_2CC[2], 1);
            CellActor_SetAnimSpeed(v0->unk_2CC[2], FX32_ONE * 2);
            CellActor_SetAnimateFlag(v0->unk_2CC[3], 1);
            CellActor_SetAnimSpeed(v0->unk_2CC[3], FX32_ONE * 2);

            ov5_021DF0CC(encEffect->narc, 108);

            encEffect->state++;
        }

        break;

    case 9:
        LinearInterpolationTaskS32_Init(&v0->unk_48, 16, 0, 6);

        ov5_021DF17C(4);
        BGL_SetPriority(0, 1);

        encEffect->state++;
        break;

    case 10:
        v1 = LinearInterpolationTaskS32_Update(&v0->unk_48);
        ov5_021DEF8C(&v0->unk_48.currentValue);

        if (v1 == 1) {
            encEffect->state++;

            encEffect->effectComplete = 8;
        }

        break;

    case 11:

        if (encEffect->effectComplete > 0) {
            encEffect->effectComplete--;
            break;
        }

        QuadraticInterpolationTaskFX32_Init(&v0->unk_00, 0, (-FX32_CONST(2)), 0, param->facePanFrames);
        QuadraticInterpolationTaskFX32_Init(&v0->unk_18, 0, (-FX32_CONST(2)), 0, param->facePanFrames);

        encEffect->effectComplete = 0;

        encEffect->state++;
        break;

    case 12:

        encEffect->effectComplete++;

        v1 = QuadraticInterpolationTaskFX32_Update(&v0->unk_00);
        QuadraticInterpolationTaskFX32_Update(&v0->unk_18);

        if (((encEffect->effectComplete / 2) % 2) == 0) {
            v3 = VecFx32_FromXYZ(
                v0->unk_2DC.x + v0->unk_00.currentValue, v0->unk_2DC.y + v0->unk_18.currentValue, 0);
        } else {
            v3 = VecFx32_FromXYZ(
                v0->unk_2DC.x - v0->unk_00.currentValue, v0->unk_2DC.y - v0->unk_18.currentValue, 0);
        }

        if (v1) {
            v0->unk_2DC = v3;
        }

        CellActor_SetPosition(v0->unk_2CC[0], &v3);
        v3.y += (4 * FX32_ONE);
        v3.x += (16 * FX32_ONE);
        CellActor_SetPosition(v0->unk_2CC[2], &v3);

        if (((encEffect->effectComplete / 2) % 2) == 0) {
            v3 = VecFx32_FromXYZ(
                v0->unk_2E8.x - v0->unk_00.currentValue, v0->unk_2E8.y - v0->unk_18.currentValue, 0);
        } else {
            v3 = VecFx32_FromXYZ(
                v0->unk_2E8.x + v0->unk_00.currentValue, v0->unk_2E8.y + v0->unk_18.currentValue, 0);
        }

        if (v1) {
            v0->unk_2E8 = v3;
        }

        CellActor_SetPosition(v0->unk_2CC[1], &v3);
        v3.y += (4 * FX32_ONE);
        v3.x += (-16 * FX32_ONE);
        CellActor_SetPosition(v0->unk_2CC[3], &v3);

        if (v1) {
            encEffect->state++;

            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);

            QuadraticInterpolationTaskFX32_Init(&v0->unk_00, 0, (FX32_CONST(192.0f)), (FX32_CONST(24.0f)), 16);
            QuadraticInterpolationTaskFX32_Init(&v0->unk_18, 0, (FX32_CONST(192.0f)), (FX32_CONST(24.0f)), 16);

            sub_0200F174(3, 0, 0, 0x7fff, 8, 1, 4);
        }

        break;

    case 13:
        QuadraticInterpolationTaskFX32_Update(&v0->unk_00);
        QuadraticInterpolationTaskFX32_Update(&v0->unk_18);

        v3 = VecFx32_FromXYZ(
            v0->unk_2DC.x - v0->unk_00.currentValue, v0->unk_2DC.y - v0->unk_18.currentValue, 0);
        CellActor_SetPosition(v0->unk_2CC[0], &v3);
        v3.y += (4 * FX32_ONE);
        v3.x += (16 * FX32_ONE);
        CellActor_SetPosition(v0->unk_2CC[2], &v3);

        v3 = VecFx32_FromXYZ(
            v0->unk_2E8.x + v0->unk_00.currentValue, v0->unk_2E8.y + v0->unk_18.currentValue, 0);
        CellActor_SetPosition(v0->unk_2CC[1], &v3);
        v3.y += (4 * FX32_ONE);
        v3.x += (-16 * FX32_ONE);
        CellActor_SetPosition(v0->unk_2CC[3], &v3);

        if (ScreenWipe_Done()) {
            encEffect->state++;
        }

        break;

    case 14:
        sub_0200F344(1, 0x7fff);

        if (encEffect->done != NULL) {
            *(encEffect->done) = 1;
        }

        ov5_021E519C(&v0->unk_2F4);

        BGL_DeleteWindow(&v0->unk_358);

        for (v5 = 0; v5 < 4; v5++) {
            CellActor_Delete(v0->unk_2CC[v5]);
        }

        for (v5 = 0; v5 < 4; v5++) {
            ov5_021DE5A4(&v0->unk_5C, &v0->unk_1FC[v5]);
        }

        ov5_021DE4AC(&v0->unk_5C);

        ov5_021DF224();

        ov5_021DF084();

        G2_BlendNone();

        return 1;
    }

    if (encEffect->state != 14) {
        CellActorCollection_Update(v0->unk_5C.unk_00);

        if (4 < encEffect->state) {
            sub_020241B4();
            ov5_021DF1CC();
            ov5_021DF070();
            G3_RequestSwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_Z);
        }
    }

    return 0;
}

void EncounterEffect_EliteFourAaron(SysTask *task, void *param)
{
    EncounterEffect *encEffect = param;
    BOOL done = EncounterEffect_EliteFourChampion(encEffect, HEAP_ID_FIELD, &sEliteFourChampionEncounterParams[0]);

    if (done == TRUE) {
        EncounterEffect_Finish(encEffect, task);
    }
}

void EncounterEffect_EliteFourBertha(SysTask *task, void *param)
{
    EncounterEffect *encEffect = param;
    BOOL done = EncounterEffect_EliteFourChampion(encEffect, HEAP_ID_FIELD, &sEliteFourChampionEncounterParams[1]);

    if (done == TRUE) {
        EncounterEffect_Finish(encEffect, task);
    }
}

void EncounterEffect_EliteFourFlint(SysTask *task, void *param)
{
    EncounterEffect *encEffect = param;
    BOOL done = EncounterEffect_EliteFourChampion(encEffect, HEAP_ID_FIELD, &sEliteFourChampionEncounterParams[2]);

    if (done == TRUE) {
        EncounterEffect_Finish(encEffect, task);
    }
}

void EncounterEffect_EliteFourLucian(SysTask *task, void *param)
{
    EncounterEffect *encEffect = param;
    BOOL done = EncounterEffect_EliteFourChampion(encEffect, HEAP_ID_FIELD, &sEliteFourChampionEncounterParams[3]);

    if (done == TRUE) {
        EncounterEffect_Finish(encEffect, task);
    }
}

void EncounterEffect_ChampionCynthia(SysTask *task, void *param)
{
    EncounterEffect *encEffect = param;
    BOOL done = EncounterEffect_EliteFourChampion(encEffect, HEAP_ID_FIELD, &sEliteFourChampionEncounterParams[4]);

    if (done == TRUE) {
        EncounterEffect_Finish(encEffect, task);
    }
}
