#include <nitro.h>
#include <string.h>

#include "constants/heap.h"
#include "message.h"
#include "struct_decls/struct_02013BE0_decl.h"
#include "struct_decls/sys_task.h"
#include "struct_decls/struct_020203AC_decl.h"
#include "struct_decls/struct_02022550_decl.h"
#include "strbuf.h"
#include "trainer_info.h"
#include "overlay005/encounter_effect.h"
#include "overlay005/struct_ov5_021E2310_decl.h"

#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "struct_defs/struct_0205AA50.h"
#include "overlay005/encounter_effect.h"
#include "overlay005/struct_ov5_021DDD80.h"
#include "overlay005/struct_ov5_021DDDBC.h"
#include "overlay005/struct_ov5_021DDE14.h"
#include "overlay005/struct_ov5_021DE47C.h"
#include "overlay005/struct_ov5_021DE5A4.h"
#include "overlay005/struct_ov5_021E52A8_sub1.h"
#include "overlay005/struct_ov5_021E52A8_sub2.h"
#include "overlay115/struct_ov115_0226527C.h"

#include "unk_02006E3C.h"
#include "unk_0200A9DC.h"
#include "message.h"
#include "string_template.h"
#include "unk_0200D9E8.h"
#include "unk_0200F174.h"
#include "unk_02013B10.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "gx_layers.h"
#include "unk_02020020.h"
#include "unk_020218BC.h"
#include "strbuf.h"
#include "unk_0202419C.h"
#include "unk_02025E08.h"
#include "trainer_info.h"
#include "overlay005/encounter_effect.h"
#include "overlay005/ov5_021E22B0.h"
#include "overlay005/ov5_021E2338.h"
#include "overlay005/hblank_system.h"

// EncounterEffect_TallGrass_HigherLevel
#define TALL_GRASS_HIGHER_LEVEL_PIXELS_PER_SLICE        2
#define TALL_GRASS_HIGHER_LEVEL_INTERPOLATION_FRAMES    6
#define TALL_GRASS_HIGHER_LEVEL_SLICE_START_X_1         0
#define TALL_GRASS_HIGHER_LEVEL_SLICE_END_X_1           (FX32_ONE * -3)
#define TALL_GRASS_HIGHER_LEVEL_SLICE_START_SPEED_1     (FX32_ONE * -12)
#define TALL_GRASS_HIGHER_LEVEL_CAMERA_OFFSET_1         (FX32_ONE * 50)
#define TALL_GRASS_HIGHER_LEVEL_CAMERA_SPEED_1          (FX32_ONE * 30)
#define TALL_GRASS_HIGHER_LEVEL_SLICE_START_X_2         (FX32_ONE * -3)
#define TALL_GRASS_HIGHER_LEVEL_SLICE_END_X_2           (FX32_ONE * 255)
#define TALL_GRASS_HIGHER_LEVEL_SLICE_START_SPEED_2     (FX32_ONE * 30)
#define TALL_GRASS_HIGHER_LEVEL_CAMERA_OFFSET_2         (FX32_ONE * -50)
#define TALL_GRASS_HIGHER_LEVEL_CAMERA_SPEED_2          (FX32_ONE * -255)

// EncounterEffect_TallGrass_LowerLevel
#define TALL_GRASS_LOWER_LEVEL_PIXELS_PER_SLICE         5
#define TALL_GRASS_LOWER_LEVEL_INTERPOLATION_FRAMES     6
#define TALL_GRASS_LOWER_LEVEL_SLICE_START_X_1          0
#define TALL_GRASS_LOWER_LEVEL_SLICE_END_X_1            (FX32_ONE * -2)
#define TALL_GRASS_LOWER_LEVEL_SLICE_START_SPEED_1      (FX32_ONE * -12)
#define TALL_GRASS_LOWER_LEVEL_CAMERA_OFFSET_1          (FX32_ONE * 50)
#define TALL_GRASS_LOWER_LEVEL_CAMERA_SPEED_1           (FX32_ONE * 30)
#define TALL_GRASS_LOWER_LEVEL_SLICE_START_X_2          (FX32_ONE * -2)
#define TALL_GRASS_LOWER_LEVEL_SLICE_END_X_2            (FX32_ONE * 255)
#define TALL_GRASS_LOWER_LEVEL_SLICE_START_SPEED_2      (FX32_ONE * 30)
#define TALL_GRASS_LOWER_LEVEL_CAMERA_OFFSET_2          (FX32_ONE * -30)
#define TALL_GRASS_LOWER_LEVEL_CAMERA_SPEED_2           (FX32_ONE * -100)

// EncounterEffect_Cave_LowerLevel
#define CAVE_LOWER_LEVEL_INTERPOLATION_FRAMES           12
#define CAVE_LOWER_LEVEL_CAMERA_OFFSET                  (FX32_ONE * -400)
#define CAVE_LOWER_LEVEL_CAMERA_SPEED                   (FX32_ONE * -2)

// EncounterEffect_Cave_HigherLevel
#define CAVE_HIGHER_LEVEL_INTERPOLATION_FRAMES          12
#define CAVE_HIGHER_LEVEL_CAMERA_OFFSET                 (FX32_ONE * -800)
#define CAVE_HIGHER_LEVEL_CAMERA_SPEED                  (FX32_ONE * -5)

typedef struct TallGrassEncounterEffect {
    UnkStruct_020203AC * camera;
    QuadraticInterpolationTaskFX32 camDistanceTask;
    ScreenSliceEffect * screenSliceEfx;
} TallGrassEncounterEffect;

typedef struct {
    UnkStruct_02013BE0 * unk_00;
    SysTask * dmaTransferTask;
    u32 unk_08;
} ScreenShakeEffect;

typedef struct WaterEncounterEffect {
    ScreenShakeEffect screenShakeEfx;
    s32 counter;
} WaterEncounterEffect;

typedef struct CaveEncounterEffect {
    UnkStruct_020203AC * camera;
    QuadraticInterpolationTaskFX32 camInterpolation;
} CaveEncounterEffect;

static SysTask * ScreenShakeEffect_CreateDMATransferTask(ScreenShakeEffect * param0);
static void ScreenShakeEffect_DMATransfer(SysTask * param0, void * param1);
static void ScreenShakeEffect_Init(ScreenShakeEffect * param0, u32 param1);
static void ScreenShakeEffect_Finish(ScreenShakeEffect * param0);
static void ScreenShakeEffect_Start(ScreenShakeEffect * param0, u8 param1, u8 param2, u16 param3, fx32 param4, s16 param5, u32 param6, u32 param7, u32 param8);
static void ov5_021E290C(ScreenShakeEffect * param0, u32 param1);

void EncounterEffect_TallGrass_HigherLevel(SysTask *task, void *param)
{
    EncounterEffect *encEffect = param;
    TallGrassEncounterEffect *tallGrassEffect = encEffect->param;
    fx32 distance;
    BOOL done;

    switch (encEffect->state) {
    case 0:
        encEffect->param = Heap_AllocFromHeap(4, sizeof(TallGrassEncounterEffect));
        memset(encEffect->param, 0, sizeof(TallGrassEncounterEffect));
        tallGrassEffect = encEffect->param;
        tallGrassEffect->screenSliceEfx = ScreenSliceEffect_New();
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
                tallGrassEffect->screenSliceEfx, 
                TALL_GRASS_HIGHER_LEVEL_PIXELS_PER_SLICE, 
                TALL_GRASS_HIGHER_LEVEL_INTERPOLATION_FRAMES + 1, 
                TALL_GRASS_HIGHER_LEVEL_SLICE_START_X_1, 
                TALL_GRASS_HIGHER_LEVEL_SLICE_END_X_1, 
                TALL_GRASS_HIGHER_LEVEL_SLICE_START_SPEED_1
            );
            tallGrassEffect->camera = encEffect->fieldSystem->unk_24;
            distance = Camera_GetDistance(tallGrassEffect->camera);
            QuadraticInterpolationTaskFX32_Init(
                &tallGrassEffect->camDistanceTask, 
                distance, 
                distance + TALL_GRASS_HIGHER_LEVEL_CAMERA_OFFSET_1, 
                TALL_GRASS_HIGHER_LEVEL_CAMERA_SPEED_1, 
                TALL_GRASS_HIGHER_LEVEL_INTERPOLATION_FRAMES
            );
        }
        break;
    case 3:
        done = QuadraticInterpolationTaskFX32_Update(&tallGrassEffect->camDistanceTask);
        Camera_SetDistance(tallGrassEffect->camDistanceTask.currentValue, tallGrassEffect->camera);

        if (done == TRUE) {
            encEffect->state++;
            ScreenSliceEffect_Modify(
                encEffect, 
                tallGrassEffect->screenSliceEfx, 
                TALL_GRASS_HIGHER_LEVEL_PIXELS_PER_SLICE, 
                TALL_GRASS_HIGHER_LEVEL_INTERPOLATION_FRAMES, 
                TALL_GRASS_HIGHER_LEVEL_SLICE_START_X_2, 
                TALL_GRASS_HIGHER_LEVEL_SLICE_END_X_2, 
                TALL_GRASS_HIGHER_LEVEL_SLICE_START_SPEED_2
            );
            tallGrassEffect->camera = encEffect->fieldSystem->unk_24;
            distance = Camera_GetDistance(tallGrassEffect->camera);
            QuadraticInterpolationTaskFX32_Init(
                &tallGrassEffect->camDistanceTask, 
                distance, 
                distance + TALL_GRASS_HIGHER_LEVEL_CAMERA_OFFSET_2, 
                TALL_GRASS_HIGHER_LEVEL_CAMERA_SPEED_2, 
                TALL_GRASS_HIGHER_LEVEL_INTERPOLATION_FRAMES
            );
        }
        break;
    case 4:
        done = QuadraticInterpolationTaskFX32_Update(&tallGrassEffect->camDistanceTask);
        Camera_SetDistance(tallGrassEffect->camDistanceTask.currentValue, tallGrassEffect->camera);

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

        ScreenSliceEffect_Delete(tallGrassEffect->screenSliceEfx);
        EncounterEffect_Finish(encEffect, task);
        break;
    default:
        break;
    }
}

void EncounterEffect_TallGrass_LowerLevel(SysTask *task, void *param)
{
    EncounterEffect *encEffect = param;
    TallGrassEncounterEffect *tallGrassEffect = encEffect->param;
    fx32 distance;
    BOOL done;

    switch (encEffect->state) {
    case 0:
        encEffect->param = Heap_AllocFromHeap(HEAP_ID_FIELD, sizeof(TallGrassEncounterEffect));
        memset(encEffect->param, 0, sizeof(TallGrassEncounterEffect));
        tallGrassEffect = encEffect->param;
        tallGrassEffect->screenSliceEfx = ScreenSliceEffect_New();
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
                tallGrassEffect->screenSliceEfx, 
                TALL_GRASS_LOWER_LEVEL_PIXELS_PER_SLICE, 
                TALL_GRASS_LOWER_LEVEL_INTERPOLATION_FRAMES + 1, 
                TALL_GRASS_LOWER_LEVEL_SLICE_START_X_1, 
                TALL_GRASS_LOWER_LEVEL_SLICE_END_X_1, 
                TALL_GRASS_LOWER_LEVEL_SLICE_START_SPEED_1
            );
            tallGrassEffect->camera = encEffect->fieldSystem->unk_24;
            distance = Camera_GetDistance(tallGrassEffect->camera);
            QuadraticInterpolationTaskFX32_Init(
                &tallGrassEffect->camDistanceTask, 
                distance, 
                distance + TALL_GRASS_LOWER_LEVEL_CAMERA_OFFSET_1, 
                TALL_GRASS_LOWER_LEVEL_CAMERA_SPEED_1, 
                TALL_GRASS_LOWER_LEVEL_INTERPOLATION_FRAMES
            );
        }
        break;
    case 3:
        done = QuadraticInterpolationTaskFX32_Update(&tallGrassEffect->camDistanceTask);
        Camera_SetDistance(tallGrassEffect->camDistanceTask.currentValue, tallGrassEffect->camera);

        if (done == TRUE) {
            encEffect->state++;
            ScreenSliceEffect_Modify(
                encEffect, 
                tallGrassEffect->screenSliceEfx, 
                TALL_GRASS_LOWER_LEVEL_PIXELS_PER_SLICE, 
                TALL_GRASS_LOWER_LEVEL_INTERPOLATION_FRAMES, 
                TALL_GRASS_LOWER_LEVEL_SLICE_START_X_2, 
                TALL_GRASS_LOWER_LEVEL_SLICE_END_X_2, 
                TALL_GRASS_LOWER_LEVEL_SLICE_START_SPEED_2
            );
            tallGrassEffect->camera = encEffect->fieldSystem->unk_24;
            distance = Camera_GetDistance(tallGrassEffect->camera);
            QuadraticInterpolationTaskFX32_Init(
                &tallGrassEffect->camDistanceTask, 
                distance, 
                distance + TALL_GRASS_LOWER_LEVEL_CAMERA_OFFSET_2, 
                TALL_GRASS_LOWER_LEVEL_CAMERA_SPEED_2, 
                TALL_GRASS_LOWER_LEVEL_INTERPOLATION_FRAMES
            );
        }
        break;
    case 4:
        done = QuadraticInterpolationTaskFX32_Update(&tallGrassEffect->camDistanceTask);
        Camera_SetDistance(tallGrassEffect->camDistanceTask.currentValue, tallGrassEffect->camera);

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

        ScreenSliceEffect_Delete(tallGrassEffect->screenSliceEfx);
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
    return CoreSys_ExecuteOnVBlank(ScreenShakeEffect_DMATransfer, screenShakeEfx, 1024);
}

static void ScreenShakeEffect_DMATransfer(SysTask *task, void *param)
{
    ScreenShakeEffect *screenShakeEfx = param;

    if (screenShakeEfx->unk_08 >= 2) {
        sub_02013DA4(screenShakeEfx->unk_00);
        screenShakeEfx->unk_08 = 0;
    }

    sub_02013DDC(screenShakeEfx->unk_00);
    screenShakeEfx->unk_08++;
}

static void ScreenShakeEffect_Init(ScreenShakeEffect *screenShake, u32 heapID)
{
    screenShake->unk_00 = sub_02013BE0(heapID);
    screenShake->unk_08 = 0;
    screenShake->dmaTransferTask = ScreenShakeEffect_CreateDMATransferTask(screenShake);
}

static void ScreenShakeEffect_Finish (ScreenShakeEffect *screenShake)
{
    SysTask_Done(screenShake->dmaTransferTask);
    sub_02013D38(screenShake->unk_00);
    sub_02013D74(screenShake->unk_00);
}

static void ScreenShakeEffect_Start(ScreenShakeEffect *screenShake, u8 startX, u8 endX, u16 angleIncrement, fx32 sineRadius, s16 shakeSpeed, u32 bg, u32 defaultValue, u32 priority)
{
    sub_02013C10(screenShake->unk_00, startX, endX, angleIncrement, sineRadius, shakeSpeed, bg, defaultValue, priority);
}

static void ov5_021E290C(ScreenShakeEffect *screenShake, u32 param1)
{
    u32 * v0;
    int v1;
    s16 v2;

    v0 = sub_02013D94(screenShake->unk_00);

    for (v1 = 0; v1 < 192; v1++) {
        v2 = v0[v1] & 0xffff;

        if (((v1 / param1) % 2) == 0) {
            v0[v1] = (v2 & 0xffff);
        } else {
            v0[v1] = (-v2 & 0xffff);
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

        caveEffect->camera = encEffect->fieldSystem->unk_24;
        distance = Camera_GetDistance(caveEffect->camera);

        QuadraticInterpolationTaskFX32_Init(
            &caveEffect->camInterpolation, 
            distance, 
            distance + CAVE_LOWER_LEVEL_CAMERA_OFFSET, 
            CAVE_LOWER_LEVEL_CAMERA_SPEED, 
            CAVE_LOWER_LEVEL_INTERPOLATION_FRAMES
        );
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

        caveEffect->camera = encEffect->fieldSystem->unk_24;
        distance = Camera_GetDistance(caveEffect->camera);

        QuadraticInterpolationTaskFX32_Init(
            &caveEffect->camInterpolation, 
            distance, 
            distance + CAVE_HIGHER_LEVEL_CAMERA_OFFSET, 
            CAVE_HIGHER_LEVEL_CAMERA_SPEED, 
            CAVE_HIGHER_LEVEL_INTERPOLATION_FRAMES
        );
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

        EncounterEffect_Finish(encEffect, param);
        sub_0200F344(1, 0x0);
        break;
    }
}

typedef struct {
    QuadraticInterpolationTaskFX32 unk_00;
    LinearInterpolationTaskS32 unk_18;
    QuadraticInterpolationTaskFX32 unk_2C;
    ScreenSliceEffect * unk_44;
    UnkStruct_ov5_021DE47C unk_48;
    UnkStruct_ov5_021DE5A4 unk_1E8;
    GraphicElementData * unk_21C[2];
    UnkStruct_020203AC * unk_224;
    QuadraticInterpolationTaskFX32 unk_228;
    s32 unk_240;
} UnkStruct_ov5_021E2B54;

typedef struct {
    LinearInterpolationTaskFX32 unk_00;
    LinearInterpolationTaskS32 unk_14;
    ScreenSplitEffect * unk_28;
    UnkStruct_ov5_021DE47C unk_2C;
    UnkStruct_ov5_021DE5A4 unk_1CC;
    GraphicElementData * unk_200[2];
    UnkStruct_020203AC * unk_208;
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
    GraphicElementData * unk_224[2];
    UnkStruct_020203AC * unk_22C;
    QuadraticInterpolationTaskFX32 unk_230;
    s32 unk_248;
} UnkStruct_ov5_021E31A4;

typedef struct {
    UnkStruct_ov5_021DE47C unk_00;
    UnkStruct_ov5_021DE5A4 unk_1A0;
    GraphicElementData * unk_1D4[3];
    LinearInterpolationTaskS32 unk_1E0[3];
    LinearInterpolationTaskS32 unk_21C[3];
    UnkStruct_ov5_021DE6BC * unk_258[3];
    BOOL unk_264[3];
    Window * unk_270;
    ScreenShakeEffect unk_274;
    BOOL unk_280;
    UnkStruct_020203AC * unk_284;
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
    GraphicElementData * unk_230;
    UnkStruct_020203AC * unk_234;
    QuadraticInterpolationTaskFX32 unk_238;
    s32 unk_250;
} UnkStruct_ov5_021E3AD0;

typedef struct {
    UnkStruct_ov5_021DE47C unk_00;
    UnkStruct_ov5_021DE5A4 unk_1A0;
    GraphicElementData * unk_1D4[3];
    LinearInterpolationTaskS32 unk_1E0[3];
    LinearInterpolationTaskS32 unk_21C[3];
    BOOL unk_258[3];
    Window * unk_264;
    UnkStruct_ov5_021DE928 * unk_268;
    UnkStruct_020203AC * unk_26C;
    QuadraticInterpolationTaskFX32 unk_270;
    s16 unk_288;
} UnkStruct_ov5_021E3D8C;

void ov5_021E2B54 (SysTask * param0, void * param1)
{
    EncounterEffect * v0 = param1;
    UnkStruct_ov5_021E2B54 * v1 = v0->param;
    BOOL v2;
    fx32 v3;
    int v4;
    VecFx32 v5;
    u16 v6;

    switch (v0->state) {
    case 0:
        v0->param = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov5_021E2B54));
        memset(v0->param, 0, sizeof(UnkStruct_ov5_021E2B54));
        v1 = v0->param;

        v1->unk_224 = v0->fieldSystem->unk_24;

        v1->unk_44 = ScreenSliceEffect_New();

        ov5_021DE47C(&v1->unk_48, 2, 1);

        ov5_021DE4CC(
            v0->narc, &v1->unk_48, &v1->unk_1E8, 0, 1, 5, 7, 6, 600000);

        for (v4 = 0; v4 < 2; v4++) {
            v1->unk_21C[v4] = ov5_021DE62C(
                &v1->unk_48, &v1->unk_1E8, (128 * FX32_ONE), (96 * FX32_ONE), 0, 0);
            sub_02021CAC(v1->unk_21C[v4], 0);
            sub_02021F58(v1->unk_21C[v4], v4 * 2);
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
        }

        break;

    case 3:
        QuadraticInterpolationTaskFX32_Init(&v1->unk_00, (FX32_CONST(0.01f)), (FX32_CONST(1.0f)), 2, 10);

        v5 = VecFx32_FromXYZ(v1->unk_00.currentValue, v1->unk_00.currentValue, v1->unk_00.currentValue);

        for (v4 = 0; v4 < 2; v4++) {
            sub_02021CAC(
                v1->unk_21C[v4], 1);
            sub_02021CF8(
                v1->unk_21C[v4], 2);
            sub_02021C70(
                v1->unk_21C[v4], &v5);
        }

        LinearInterpolationTaskS32_Init(&v1->unk_18, 0, (0xffff * 1), 10);
        v0->state++;
        break;

    case 4:
        v2 = QuadraticInterpolationTaskFX32_Update(&v1->unk_00);
        v5 = VecFx32_FromXYZ(v1->unk_00.currentValue, v1->unk_00.currentValue, v1->unk_00.currentValue);

        v6 = v1->unk_18.currentValue;

        LinearInterpolationTaskS32_Update(&v1->unk_18);

        for (v4 = 0; v4 < 2; v4++) {
            sub_02021C70(
                v1->unk_21C[v4], &v5);
        }

        sub_02021C94(
            v1->unk_21C[0], 0xffff & v1->unk_18.currentValue);

        sub_02021C94(
            v1->unk_21C[1], 0xffff & (v1->unk_18.currentValue - 0x100));

        if (v2 == 1) {
            v0->state++;
        }

        break;

    case 5:

        EncounterEffect_ScreenSlice(v0, v1->unk_44, 96, 6, 0, (255 * FX32_ONE), (FX32_ONE * 10));

        SpriteActor_SetSpriteAnimActive(
            v1->unk_21C[0], 1);
        SpriteActor_SetSpriteAnimActive(
            v1->unk_21C[1], 2);

        QuadraticInterpolationTaskFX32_Init(&v1->unk_2C, 0, (255 * FX32_ONE), (FX32_ONE * 10), 6);

        v3 = Camera_GetDistance(v1->unk_224);
        QuadraticInterpolationTaskFX32_Init(&v1->unk_228, v3, v3 + (-FX32_CONST(500)), (-FX32_CONST(10)), 6);

        sub_02021C94(
            v1->unk_21C[0], 0xffff & 0);
        sub_02021C94(
            v1->unk_21C[1], 0xffff & 0);

        v0->state++;
        break;

    case 6:

        v2 = QuadraticInterpolationTaskFX32_Update(&v1->unk_2C);
        {
            VecFx32 v7 = VecFx32_FromXYZ((128 * FX32_ONE) - v1->unk_2C.currentValue, (96 * FX32_ONE), 0);
            VecFx32 v8 = VecFx32_FromXYZ((128 * FX32_ONE) + v1->unk_2C.currentValue, (96 * FX32_ONE), 0);

            sub_02021C50(
                v1->unk_21C[0], &v7);
            sub_02021C50(
                v1->unk_21C[1], &v8);
        }

        QuadraticInterpolationTaskFX32_Update(&v1->unk_228);
        Camera_SetDistance(v1->unk_228.currentValue, v1->unk_224);

        if (EncounterEffect_GetHBlankFlag(v0)) {
            v0->state++;
        }

        break;

    case 7:
        sub_0200F370(0x0);

        if (v0->done != NULL) {
            *(v0->done) = 1;
        }

        {
            int v9;

            for (v9 = 0; v9 < 2; v9++) {
                sub_02021BD4(v1->unk_21C[v9]);
            }
        }
        ov5_021DE5A4(&v1->unk_48, &v1->unk_1E8);
        ov5_021DE4AC(&v1->unk_48);
        ScreenSliceEffect_Delete(v1->unk_44);
        EncounterEffect_Finish(v0, param0);
        break;
    }

    if (v0->state != 7) {
        sub_020219F8(v1->unk_48.unk_00);
    }
}

void ov5_021E2EB0 (SysTask * param0, void * param1)
{
    EncounterEffect * v0 = param1;
    UnkStruct_ov5_021E2EB0 * v1 = v0->param;
    BOOL v2;
    fx32 v3;

    switch (v0->state) {
    case 0:
        v0->param = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov5_021E2EB0));
        memset(v0->param, 0, sizeof(UnkStruct_ov5_021E2EB0));
        v1 = v0->param;

        v1->unk_208 = v0->fieldSystem->unk_24;

        v1->unk_28 = ScreenSplitEffect_New();

        ov5_021DE47C(&v1->unk_2C, 2, 1);

        ov5_021DE4CC(
            v0->narc, &v1->unk_2C, &v1->unk_1CC, 0, 1, 2, 4, 3, 600000);

        {
            int v4;

            for (v4 = 0; v4 < 2; v4++) {
                v1->unk_200[v4] = ov5_021DE62C(
                    &v1->unk_2C, &v1->unk_1CC, (128 * FX32_ONE), 0, 0, 0);
                sub_02021CAC(v1->unk_200[v4], 0);
                sub_02021CF8(v1->unk_200[v4], 2);
            }
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
        LinearInterpolationTaskFX32_Init(&v1->unk_00, (-192 * FX32_ONE), (192 * FX32_ONE), 8);
        sub_02021CAC(
            v1->unk_200[0], 1);
        sub_02021CAC(
            v1->unk_200[1], 1);

        {
            VecFx32 v5 = VecFx32_FromXYZ((128 * FX32_ONE) - v1->unk_00.currentValue, (64 * FX32_ONE), 0);
            VecFx32 v6 = VecFx32_FromXYZ((128 * FX32_ONE) + v1->unk_00.currentValue, (128 * FX32_ONE), 0);

            sub_02021C50(
                v1->unk_200[0], &v5);
            sub_02021C50(
                v1->unk_200[1], &v6);
        }

        LinearInterpolationTaskS32_Init(&v1->unk_14, 0, (0xffff * 2), 8);

        v0->state++;
        break;

    case 4:
        v2 = LinearInterpolationTaskFX32_Update(&v1->unk_00);

        {
            VecFx32 v7 = VecFx32_FromXYZ((128 * FX32_ONE) - v1->unk_00.currentValue, (64 * FX32_ONE), 0);
            VecFx32 v8 = VecFx32_FromXYZ((128 * FX32_ONE) + v1->unk_00.currentValue, (128 * FX32_ONE), 0);

            sub_02021C50(
                v1->unk_200[0], &v7);
            sub_02021C50(
                v1->unk_200[1], &v8);
        }

        LinearInterpolationTaskS32_Update(&v1->unk_14);
        sub_02021C94(
            v1->unk_200[0], v1->unk_14.currentValue);
        sub_02021C94(
            v1->unk_200[1], -v1->unk_14.currentValue);

        if (v2 == 1) {
            v0->state++;
        }

        break;

    case 5:

        EncounterEffect_ScreenSplit(v0, v1->unk_28, 8, (FX32_ONE * 1), (FX32_ONE * 1));

        v3 = Camera_GetDistance(v1->unk_208);
        QuadraticInterpolationTaskFX32_Init(&v1->unk_20C, v3, v3 + (-FX32_CONST(500)), (-FX32_CONST(10)), 8);

        v0->state++;
        break;

    case 6:

        QuadraticInterpolationTaskFX32_Update(&v1->unk_20C);
        Camera_SetDistance(v1->unk_20C.currentValue, v1->unk_208);

        if (EncounterEffect_GetHBlankFlag(v0) == 1) {
            v0->state++;
        }

        break;

    case 7:
        sub_0200F370(0x0);

        if (v0->done != NULL) {
            *(v0->done) = 1;
        }

        {
            int v9;

            for (v9 = 0; v9 < 2; v9++) {
                sub_02021BD4(v1->unk_200[v9]);
            }
        }
        ov5_021DE5A4(&v1->unk_2C, &v1->unk_1CC);
        ov5_021DE4AC(&v1->unk_2C);
        ScreenSplitEffect_Delete(v1->unk_28);
        EncounterEffect_Finish(v0, param0);
        break;
    }

    if (v0->state != 7) {
        sub_020219F8(v1->unk_2C.unk_00);
    }
}

void ov5_021E31A4 (SysTask * param0, void * param1)
{
    EncounterEffect * v0 = param1;
    UnkStruct_ov5_021E31A4 * v1 = v0->param;
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

        v1->unk_22C = v0->fieldSystem->unk_24;

        ScreenShakeEffect_Init(&v1->unk_40, 4);
        v1->unk_248 = 12;

        ov5_021DE47C(&v1->unk_50, 2, 1);

        ov5_021DE4CC(
            v0->narc, &v1->unk_50, &v1->unk_1F0, 0, 1, 5, 7, 6, 600000);

        for (v5 = 0; v5 < 2; v5++) {
            v1->unk_224[v5] = ov5_021DE62C(
                &v1->unk_50, &v1->unk_1F0, (128 * FX32_ONE), (96 * FX32_ONE), 0, 0);
            sub_02021CAC(v1->unk_224[v5], 0);
            sub_02021F58(v1->unk_224[v5], v5);
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
            sub_02021CAC(
                v1->unk_224[v5], 1);

            sub_02021CF8(
                v1->unk_224[v5], 2);
            sub_02021FE0(v1->unk_224[v5], GX_OAM_MODE_XLU);
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
            sub_02021C94(v1->unk_224[0], 0xffff & v1->unk_2C.currentValue);
            sub_02021C94(v1->unk_224[1], 0xffff & v6);
        } else {
            sub_02021C94(v1->unk_224[0], 0);
            sub_02021C94(v1->unk_224[1], 0);
        }

        if (v2 == 1) {
            G2_BlendNone();

            for (v5 = 0; v5 < 2; v5++) {
                sub_02021FE0(v1->unk_224[v5], GX_OAM_MODE_NORMAL);
            }

            v0->state++;
        }

        break;

    case 5:

        QuadraticInterpolationTaskFX32_Init(&v1->unk_00, (FX32_CONST(1.0f)), (FX32_CONST(0.01f)), (FX32_CONST(0.1f)), 8);

        {
            VecFx32 v7 = VecFx32_FromXYZ(v1->unk_00.currentValue, v1->unk_00.currentValue, v1->unk_00.currentValue);

            for (v5 = 0; v5 < 2; v5++) {
                sub_02021C70(
                    v1->unk_224[v5], &v7);
            }
        }

        v4 = Camera_GetDistance(v1->unk_22C);
        QuadraticInterpolationTaskFX32_Init(&v1->unk_230, v4, v4 + (-FX32_CONST(500)), (-FX32_CONST(10)), 8);

        sub_0200F174(3, 24, 0, 0x0, 8, 1, 4);
        v0->state++;
        break;

    case 6:
        v2 = QuadraticInterpolationTaskFX32_Update(&v1->unk_00);
        {
            VecFx32 v8 = VecFx32_FromXYZ(v1->unk_00.currentValue, v1->unk_00.currentValue, v1->unk_00.currentValue);

            for (v5 = 0; v5 < 2; v5++) {
                sub_02021C70(
                    v1->unk_224[v5], &v8);
            }
        }

        QuadraticInterpolationTaskFX32_Update(&v1->unk_230);
        Camera_SetDistance(v1->unk_230.currentValue, v1->unk_22C);

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
            sub_02021BD4(v1->unk_224[v5]);
        }

        ov5_021DE5A4(&v1->unk_50, &v1->unk_1F0);
        ov5_021DE4AC(&v1->unk_50);
        EncounterEffect_Finish(v0, param0);
        return;
    }

    if (v1->unk_4C == 1) {
        ov5_021E290C(&v1->unk_40, 2);
    }

    if (v0->state != 7) {
        sub_020219F8(v1->unk_50.unk_00);
    }
}

void ov5_021E3560 (SysTask * param0, void * param1)
{
    EncounterEffect * v0 = param1;
    UnkStruct_ov5_021E3560 * v1 = v0->param;
    BOOL v2;
    int v3;
    VecFx32 v4;
    fx32 v5;

    switch (v0->state) {
    case 0:
        v0->param = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov5_021E3560));
        memset(v0->param, 0, sizeof(UnkStruct_ov5_021E3560));
        v1 = v0->param;

        v1->unk_284 = v0->fieldSystem->unk_24;

        ScreenShakeEffect_Init(&v1->unk_274, 4);
        v1->unk_2A0 = 14;

        ov5_021DE47C(&v1->unk_00, 3, 1);

        ov5_021DE4CC(
            v0->narc, &v1->unk_00, &v1->unk_1A0, 0, 1, 2, 4, 3, 600000);

        for (v3 = 0; v3 < 3; v3++) {
            v1->unk_1D4[v3] = ov5_021DE62C(
                &v1->unk_00, &v1->unk_1A0, 0, 0, 0, 0);
            sub_02021CAC(v1->unk_1D4[v3], 0);
            sub_02021CF8(v1->unk_1D4[v3], 2);

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

        v5 = Camera_GetDistance(v1->unk_284);
        QuadraticInterpolationTaskFX32_Init(&v1->unk_288, v5, v5 + (-FX32_CONST(500)), (-FX32_CONST(10)), 16);

        LinearInterpolationTaskS32_Init(&v1->unk_21C[0], 0, (0xffff * 1), 6);

        LinearInterpolationTaskS32_Init(&v1->unk_1E0[0], 231, -32, 6);

        ov5_021DE6C4(v1->unk_258[0], 43, 43, 312, 0, 6, v1->unk_270, 86, 64, 15);

        v4 = VecFx32_FromXYZ(
            43 * FX32_ONE, 231 * FX32_ONE, 0);
        sub_02021C50(v1->unk_1D4[0], &v4);
        sub_02021CAC(v1->unk_1D4[0], 1);
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
        sub_02021C50(v1->unk_1D4[1], &v4);
        sub_02021CAC(v1->unk_1D4[1], 1);
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
        sub_02021C50(v1->unk_1D4[2], &v4);
        sub_02021CAC(v1->unk_1D4[2], 1);
        v1->unk_264[2] = 1;

        v0->state++;
        break;

    case 6:

        QuadraticInterpolationTaskFX32_Update(&v1->unk_288);
        Camera_SetDistance(v1->unk_288.currentValue, v1->unk_284);

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
            sub_02021BD4(v1->unk_1D4[v3]);
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
        ov5_021E290C(&v1->unk_274, 2);
    }

    for (v3 = 0; v3 < 3; v3++) {
        if (v1->unk_264[v3] == 1) {
            const VecFx32 * v7;
            VecFx32 v8;

            v2 = ov5_021DE71C(v1->unk_258[v3]);

            if (v2) {
                v1->unk_264[v3] = 0;
            }

            LinearInterpolationTaskS32_Update(&v1->unk_1E0[v3]);
            LinearInterpolationTaskS32_Update(&v1->unk_21C[v3]);

            sub_02021C94(v1->unk_1D4[v3], v1->unk_21C[v3].currentValue);

            v7 = sub_02021D28(v1->unk_1D4[v3]);
            v8 = *v7;
            v8.y = v1->unk_1E0[v3].currentValue * FX32_ONE;
            sub_02021C50(v1->unk_1D4[v3], &v8);
        }
    }

    sub_0201A9A4(v1->unk_270);

    if (v0->state != 7) {
        sub_020219F8(v1->unk_00.unk_00);
    }
}

void ov5_021E3AD0 (SysTask * param0, void * param1)
{
    EncounterEffect * v0 = param1;
    UnkStruct_ov5_021E3AD0 * v1 = v0->param;
    BOOL v2;
    fx32 v3;
    VecFx32 v4;

    switch (v0->state) {
    case 0:
        v0->param = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov5_021E3AD0));
        memset(v0->param, 0, sizeof(UnkStruct_ov5_021E3AD0));
        v1 = v0->param;

        v1->unk_234 = v0->fieldSystem->unk_24;

        ov5_021DE47C(&v1->unk_5C, 1, 1);

        ov5_021DE4CC(
            v0->narc, &v1->unk_5C, &v1->unk_1FC, 0, 1, 2, 4, 3, 600000);

        v1->unk_230 = ov5_021DE62C(
            &v1->unk_5C, &v1->unk_1FC, (128 * FX32_ONE), (-32 * FX32_ONE), 0, 0);
        sub_02021CAC(v1->unk_230, 0);
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
        sub_02021CAC(
            v1->unk_230, 1);

        QuadraticInterpolationTaskFX32_Init(&v1->unk_18, (FX32_CONST(0.10f)), (FX32_CONST(2.0f)), (FX32_CONST(0.0f)), 12);

        QuadraticInterpolationTaskFX32_Init(&v1->unk_30, (FX32_CONST(0.10f)), (FX32_CONST(2.0f)), (FX32_CONST(0.0f)), 12);

        v4 = VecFx32_FromXYZ(v1->unk_18.currentValue, v1->unk_30.currentValue, 0);
        sub_02021C80(v1->unk_230, &v4, 2);

        LinearInterpolationTaskS32_Init(&v1->unk_48, 0, (0xffff * 1), 12);
        v0->state++;
        break;

    case 4:
        v2 = QuadraticInterpolationTaskFX32_Update(&v1->unk_00);
        {
            VecFx32 v5 = VecFx32_FromXYZ((128 * FX32_ONE), (-32 * FX32_ONE) + (v1->unk_00.currentValue), 0);

            sub_02021C50(
                v1->unk_230, &v5);
        }
        QuadraticInterpolationTaskFX32_Update(&v1->unk_18);
        QuadraticInterpolationTaskFX32_Update(&v1->unk_30);
        v4 = VecFx32_FromXYZ(v1->unk_18.currentValue, v1->unk_30.currentValue, 0);
        sub_02021C70(v1->unk_230, &v4);

        LinearInterpolationTaskS32_Update(&v1->unk_48);
        sub_02021C94(v1->unk_230, v1->unk_48.currentValue);

        if (v2 == 1) {
            sub_02021CAC(
                v1->unk_230, 0);
            v0->state++;
        }

        break;

    case 5:

        HBlankSystem_Stop(v0->fieldSystem->unk_04->hBlankSystem);

        v3 = Camera_GetDistance(v1->unk_234);
        QuadraticInterpolationTaskFX32_Init(&v1->unk_238, v3, v3 + (-FX32_CONST(1000)), (FX32_CONST(10)), 8);

        sub_0200F174(3, 18, 0, 0x0, 8, 1, 4);
        v0->state++;
        break;

    case 6:

        QuadraticInterpolationTaskFX32_Update(&v1->unk_238);
        Camera_SetDistance(v1->unk_238.currentValue, v1->unk_234);

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

        sub_02021BD4(v1->unk_230);
        ov5_021DE5A4(&v1->unk_5C, &v1->unk_1FC);
        ov5_021DE4AC(&v1->unk_5C);
        EncounterEffect_Finish(v0, param0);
        break;
    }

    if (v0->state != 7) {
        sub_020219F8(v1->unk_5C.unk_00);
    }
}

void ov5_021E3D8C (SysTask * param0, void * param1)
{
    EncounterEffect * v0 = param1;
    UnkStruct_ov5_021E3D8C * v1 = v0->param;
    VecFx32 v2;
    BOOL v3;
    int v4;
    fx32 v5;

    switch (v0->state) {
    case 0:
        v0->param = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov5_021E3D8C));
        memset(v0->param, 0, sizeof(UnkStruct_ov5_021E3D8C));
        v1 = v0->param;

        v1->unk_26C = v0->fieldSystem->unk_24;

        ov5_021DE47C(&v1->unk_00, 3, 1);

        ov5_021DE4CC(
            v0->narc, &v1->unk_00, &v1->unk_1A0, 0, 1, 2, 4, 3, 600000);

        for (v4 = 0; v4 < 3; v4++) {
            v1->unk_1D4[v4] = ov5_021DE62C(
                &v1->unk_00, &v1->unk_1A0, 0, -32, 0, 0);
            sub_02021CAC(v1->unk_1D4[v4], 0);
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
        sub_02021C50(v1->unk_1D4[0], &v2);
        sub_02021CAC(
            v1->unk_1D4[0], 1);

        LinearInterpolationTaskS32_Init(&v1->unk_21C[0], 0, (0xffff * 1), 5);
        sub_02021CF8(v1->unk_1D4[0], 2);

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
        sub_02021C50(v1->unk_1D4[1], &v2);
        sub_02021CAC(
            v1->unk_1D4[1], 1);

        LinearInterpolationTaskS32_Init(&v1->unk_21C[1], 0, (0xffff * -1), 5);

        sub_02021CF8(v1->unk_1D4[1], 2);
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
        sub_02021C50(v1->unk_1D4[2], &v2);
        sub_02021CAC(
            v1->unk_1D4[2], 1);

        LinearInterpolationTaskS32_Init(&v1->unk_21C[2], 0, (0xffff * 1), 5);
        sub_02021CF8(v1->unk_1D4[2], 2);

        v1->unk_258[2] = 1;
        v0->state++;
        break;

    case 6:

        if ((v1->unk_258[0] == 0) && (v1->unk_258[1] == 0) && (v1->unk_258[2] == 0)) {
            for (v4 = 0; v4 < 3; v4++) {
                sub_02021CAC(
                    v1->unk_1D4[v4], 0);
            }

            v0->state++;
        }

        break;

    case 7:
        ov5_021DE948(v1->unk_268, 1, 1, v1->unk_264, 15);

        v5 = Camera_GetDistance(v1->unk_26C);
        QuadraticInterpolationTaskFX32_Init(&v1->unk_270, v5, v5 + (-FX32_CONST(1000)), (FX32_CONST(10)), 64);

        v0->state++;
        break;

    case 8:
        v3 = ov5_021DE988(v1->unk_268);
        sub_0201A9A4(v1->unk_264);

        QuadraticInterpolationTaskFX32_Update(&v1->unk_270);
        Camera_SetDistance(v1->unk_270.currentValue, v1->unk_26C);

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
            sub_02021BD4(v1->unk_1D4[v4]);
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
            const VecFx32 * v7;
            VecFx32 v8;

            v3 = LinearInterpolationTaskS32_Update(&v1->unk_1E0[v4]);
            LinearInterpolationTaskS32_Update(&v1->unk_21C[v4]);

            if (v3) {
                v1->unk_258[v4] = 0;
            }

            v7 = sub_02021D28(v1->unk_1D4[v4]);
            v8 = *v7;
            v8.y = v1->unk_1E0[v4].currentValue * FX32_ONE;
            sub_02021C50(v1->unk_1D4[v4], &v8);
            sub_02021C94(v1->unk_1D4[v4], (0xffff & v1->unk_21C[v4].currentValue));
        }
    }

    if (v0->state != 9) {
        sub_020219F8(v1->unk_00.unk_00);
    }
}

typedef struct {
    LinearInterpolationTaskS32 unk_00;
    QuadraticInterpolationTaskFX32 unk_14;
    UnkStruct_ov5_021DE47C unk_2C;
    UnkStruct_ov5_021DE5A4 unk_1CC;
    GraphicElementData * unk_200;
    s32 unk_204;
} UnkStruct_ov5_021E4260;

typedef struct {
    UnkStruct_ov5_021DE47C unk_00;
    UnkStruct_ov5_021DE5A4 unk_1A0;
    GraphicElementData * unk_1D4[4];
    QuadraticInterpolationTaskFX32 unk_1E4[2];
} UnkStruct_ov5_021E44C0;

void ov5_021E4260 (SysTask * param0, void * param1)
{
    EncounterEffect * v0 = param1;
    UnkStruct_ov5_021E4260 * v1 = v0->param;
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
        sub_02021CAC(v1->unk_200, 0);
        sub_02021FE0(v1->unk_200, GX_OAM_MODE_XLU);
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

        sub_02021CAC(
            v1->unk_200, 1);
        v0->state++;
        break;

    case 4:
        v2 = LinearInterpolationTaskS32_Update(&v1->unk_00);
        G2_ChangeBlendAlpha(v1->unk_00.currentValue, 16 - v1->unk_00.currentValue);

        if (v2 == 1) {
            G2_BlendNone();
            sub_02021FE0(v1->unk_200, GX_OAM_MODE_NORMAL);
            v0->state++;
        }

        break;

    case 5:
        QuadraticInterpolationTaskFX32_Init(&v1->unk_14, (FX32_CONST(1.0f)), (FX32_CONST(0.1f)), 1, 6);

        sub_02021CF8(
            v1->unk_200, 2);
        {
            VecFx32 v3 = VecFx32_FromXYZ(v1->unk_14.currentValue, v1->unk_14.currentValue, v1->unk_14.currentValue);

            sub_02021C70(
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

            sub_02021C70(
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

        sub_02021BD4(v1->unk_200);
        ov5_021DE5A4(&v1->unk_2C, &v1->unk_1CC);
        ov5_021DE4AC(&v1->unk_2C);
        EncounterEffect_Finish(v0, param0);
        break;
    }

    if (v0->state != 7) {
        sub_020219F8(v1->unk_2C.unk_00);
    }
}

void ov5_021E44C0 (SysTask * param0, void * param1)
{
    EncounterEffect * v0 = param1;
    UnkStruct_ov5_021E44C0 * v1 = v0->param;
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
            sub_02021CAC(v1->unk_1D4[v3], 0);
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
            sub_02021CAC(v1->unk_1D4[v3], 1);
        }

        v0->state++;
        break;

    case 4:
        for (v3 = 0; v3 < 2; v3++) {
            v2 = QuadraticInterpolationTaskFX32_Update(&v1->unk_1E4[v3]);
        }

        v4 = VecFx32_FromXYZ(
            (128 * FX32_ONE), (96 * FX32_ONE) - v1->unk_1E4[0].currentValue, 0);
        sub_02021C50(v1->unk_1D4[0], &v4);

        v4 = VecFx32_FromXYZ(
            (128 * FX32_ONE), (96 * FX32_ONE) + v1->unk_1E4[0].currentValue, 0);
        sub_02021C50(v1->unk_1D4[1], &v4);

        v4 = VecFx32_FromXYZ(
            (128 * FX32_ONE) - v1->unk_1E4[1].currentValue, (96 * FX32_ONE), 0);
        sub_02021C50(v1->unk_1D4[2], &v4);

        v4 = VecFx32_FromXYZ(
            (128 * FX32_ONE) + v1->unk_1E4[1].currentValue, (96 * FX32_ONE), 0);
        sub_02021C50(v1->unk_1D4[3], &v4);

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
            sub_02021BD4(v1->unk_1D4[v3]);
        }

        ov5_021DE5A4(&v1->unk_00, &v1->unk_1A0);
        ov5_021DE4AC(&v1->unk_00);
        EncounterEffect_Finish(v0, param0);
        break;
    }

    if (v0->state != 7) {
        sub_020219F8(v1->unk_00.unk_00);
    }
}

static const s32 Unk_ov5_021F9E94[6][8] = {
    {
        FX32_CONST(260), FX32_CONST(128), -FX32_CONST(30), FX32_CONST(0), FX32_CONST(100), FX32_CONST(20), 4, 0xffff * 2
    }, {
        FX32_CONST(-16), FX32_CONST(128), FX32_CONST(30), FX32_CONST(160), FX32_CONST(100), -FX32_CONST(20), 3, 0xffff * 1
    }, {
        FX32_CONST(0), FX32_CONST(128), FX32_CONST(30), FX32_CONST(-16), FX32_CONST(100), FX32_CONST(20), 4, -0xffff * 3
    }, {
        FX32_CONST(140), FX32_CONST(128), -FX32_CONST(10), FX32_CONST(160), FX32_CONST(100), -FX32_CONST(20), 2, -0xffff * 2
    }, {
        FX32_CONST(260), FX32_CONST(128), -FX32_CONST(30), FX32_CONST(80), FX32_CONST(100), FX32_CONST(1), 3, -0xffff * 3
    }, {
        FX32_CONST(0), FX32_CONST(128), FX32_CONST(30), FX32_CONST(160), FX32_CONST(100), -FX32_CONST(20), 3, 0xffff * 1
    },
};

typedef struct {
    UnkStruct_ov5_021DE47C unk_00;
    UnkStruct_ov5_021DE5A4 unk_1A0;
    GraphicElementData * unk_1D4[6];
    QuadraticInterpolationTaskFX32 unk_1EC[6];
    QuadraticInterpolationTaskFX32 unk_27C[6];
    QuadraticInterpolationTaskFX32 unk_30C[6];
    LinearInterpolationTaskS32 unk_39C[6];
    BOOL unk_414[6];
    s32 unk_42C;
    s32 unk_430;
} UnkStruct_ov5_021E4738;

typedef struct {
    Window * unk_00;
    UnkStruct_ov5_021DEC18 * unk_04;
    UnkStruct_ov5_021DE47C unk_08;
    UnkStruct_ov5_021DE5A4 unk_1A8;
    GraphicElementData * unk_1DC;
    LinearInterpolationTaskS32 unk_1E0;
    LinearInterpolationTaskS32 unk_1F4;
    LinearInterpolationTaskS32 unk_208;
    s32 unk_21C;
} UnkStruct_ov5_021E4B3C;

void ov5_021E4738 (SysTask * param0, void * param1)
{
    EncounterEffect * v0 = param1;
    UnkStruct_ov5_021E4738 * v1 = v0->param;
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
            sub_02021CAC(v1->unk_1D4[v3], 0);
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

            sub_02021CAC(v1->unk_1D4[v1->unk_42C], 1);
            v4 = VecFx32_FromXYZ(
                Unk_ov5_021F9E94[v1->unk_42C][0], Unk_ov5_021F9E94[v1->unk_42C][3], 0);
            sub_02021C50(v1->unk_1D4[v1->unk_42C], &v4);
            v5 = VecFx32_FromXYZ(
                (FX32_CONST(2.0f)), (FX32_CONST(2.0f)), 0);
            sub_02021C80(v1->unk_1D4[v1->unk_42C], &v5, 2);

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
            sub_02021BD4(v1->unk_1D4[v3]);
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
                sub_02021CAC(v1->unk_1D4[v3], 0);
            }

            v4 = VecFx32_FromXYZ(
                v1->unk_27C[v3].currentValue, v1->unk_30C[v3].currentValue, 0);
            sub_02021C50(v1->unk_1D4[v3], &v4);
            v5 = VecFx32_FromXYZ(
                v1->unk_1EC[v3].currentValue, v1->unk_1EC[v3].currentValue, 0);
            sub_02021C70(v1->unk_1D4[v3], &v5);
            sub_02021C94(v1->unk_1D4[v3], v1->unk_39C[v3].currentValue);
        }
    }

    if (v0->state != 7) {
        sub_020219F8(v1->unk_00.unk_00);
    }
}

void ov5_021E4B3C (SysTask * param0, void * param1)
{
    EncounterEffect * v0 = param1;
    UnkStruct_ov5_021E4B3C * v1 = v0->param;
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
        sub_02021CAC(v1->unk_1DC, 0);
        sub_02021FE0(v1->unk_1DC, GX_OAM_MODE_XLU);
        sub_02021E80(v1->unk_1DC, 1);
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
        sub_02021CAC(v1->unk_1DC, 1);
        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, v1->unk_1F4.currentValue, 16 - v1->unk_1F4.currentValue);
        v0->state++;
        break;

    case 4:
        v2 = LinearInterpolationTaskS32_Update(&v1->unk_1F4);
        G2_ChangeBlendAlpha(v1->unk_1F4.currentValue, 16 - v1->unk_1F4.currentValue);

        if (v2 == 1) {
            G2_BlendNone();
            sub_02021FE0(v1->unk_1DC, GX_OAM_MODE_NORMAL);
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

        sub_02021BD4(v1->unk_1DC);
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
        sub_020219F8(v1->unk_08.unk_00);
    }
}

typedef struct {
    u32 unk_00;
    u16 unk_04;
    u16 unk_06;
    u16 unk_08;
    u16 unk_0A;
} UnkStruct_ov5_021F9DD4;

static const UnkStruct_ov5_021F9DD4 Unk_ov5_021F9DD4[16] = {
    {
        0x29AEC1, 0xD602, 0x0, 0x5C1, 4,
    }, {
        0x29AEC1, 0xcf02, 0xff00, 0x601, 4,
    }, {
        0x29AEC1, 0xe602, 0x1000, 0x691, 4,
    }, {
        0x29AEC1, 0xD602, 0xa00, 0x711, 3,
    }, {
        0x29AEC1, 0xe102, 0xf000, 0x780, 3,
    }, {
        0x29AEC1, 0xc602, 0x0, 0x751, 3,
    }, {
        0x29AEC1, 0xe002, 0xf000, 0x800, 3,
    }, {
        0x29AEC1, 0xD602, 0, 0x802, 3,
    }, {
        0x29AEC1, 0xD002, 0x1000, 0x800, 3,
    }, {
        0x29AEC1, 0xD902, 0xf500, 0x751, 3,
    }, {
        0x29AEC1, 0xD002, 0xa00, 0x4C1, 2,
    }, {
        0x29AEC1, 0xe002, 0xf000, 0x3C1, 2,
    }, {
        0x29AEC1, 0xD002, 0xf000, 0x650, 1,
    }, {
        0x29AEC1, 0xe002, 0xa000, 0x241, 1,
    }, {
        0x29AEC1, 0xe1a2, 0x500, 0x500, 1,
    }, {
        0x29AEC1, 0xD602, 0, 0x241, 1,
    },
};

typedef struct {
    UnkStruct_ov5_021E2310 * unk_00;
    UnkStruct_020203AC * unk_04;
    u32 unk_08;
    s32 unk_0C;
} UnkStruct_ov5_021E4E14;

typedef struct {
    UnkStruct_ov5_021E2310 * unk_00;
    UnkStruct_020203AC * unk_04;
    LinearInterpolationTaskS32 unk_08;
    QuadraticInterpolationTaskFX32 unk_1C;
    s32 unk_34;
} UnkStruct_ov5_021E4F7C;

static void ov5_021E4DE0 (FieldSystem * fieldSystem, const UnkStruct_ov5_021F9DD4 * param1)
{
    UnkStruct_ov115_0226527C v0;

    sub_02020910(param1->unk_08, fieldSystem->unk_24);
    Camera_SetDistance(param1->unk_00, fieldSystem->unk_24);
    v0.unk_00 = param1->unk_04;
    v0.unk_02 = param1->unk_06;
    v0.unk_04 = 0;
    sub_020209D4(&v0, fieldSystem->unk_24);
}

void ov5_021E4E14 (SysTask * param0, void * param1)
{
    EncounterEffect * v0 = param1;
    UnkStruct_ov5_021E4E14 * v1 = v0->param;

    switch (v0->state) {
    case 0:
        v0->param = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov5_021E4E14));
        memset(v0->param, 0, sizeof(UnkStruct_ov5_021E4E14));

        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 0);

        v0->state++;
        break;

    case 1:
        EncounterEffect_Flash(1, 16, 16, &v0->effectComplete, 1);

        v0->state++;
        break;

    case 2:
        if (v0->effectComplete) {
            v0->state++;
        }

        break;

    case 3:
        v1->unk_00 = ov5_021E22B0(3, 15);
        v1->unk_08 = 0;
        v1->unk_0C = Unk_ov5_021F9DD4[v1->unk_08].unk_0A;
        v0->state++;
        break;

    case 4:
        v1->unk_0C--;

        if (v1->unk_0C < 0) {
            ov5_021E4DE0(v0->fieldSystem, &Unk_ov5_021F9DD4[v1->unk_08]);

            v1->unk_08++;

            if (v1->unk_08 >= 16) {
                v0->state++;
            } else {
                v1->unk_0C = Unk_ov5_021F9DD4[v1->unk_08].unk_0A;
            }
        }

        break;

    case 5:
        sub_0200F174(3, 0, 0, 0x7fff, 10, 1, 4);
        v0->state++;
        break;

    case 6:
        if (ScreenWipe_Done()) {
            v0->effectComplete = 0;

            v0->state++;
        }

        break;

    case 7:
        sub_0200F344(1, 0x7fff);

        ov5_021E2310(&v1->unk_00);

        G2_BlendNone();

        if (v0->done != NULL) {
            *(v0->done) = 1;
        }

        EncounterEffect_Finish(v0, param0);
        sub_0200F344(1, 0x7fff);
        break;
    }
}

void ov5_021E4F7C (SysTask * param0, void * param1)
{
    EncounterEffect * v0 = param1;
    UnkStruct_ov5_021E4F7C * v1 = v0->param;
    BOOL v2;

    switch (v0->state) {
    case 0:
        v0->param = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov5_021E4F7C));
        memset(v0->param, 0, sizeof(UnkStruct_ov5_021E4F7C));

        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 0);

        v0->state++;
        break;

    case 1:
        EncounterEffect_Flash(1, 16, 16, &v0->effectComplete, 1);

        v0->state++;
        break;

    case 2:
        if (v0->effectComplete) {
            v0->state++;
        }

        break;

    case 3:
        v1->unk_00 = ov5_021E22B0(5, 13);

        {
            u16 v3 = sub_02020A88(v0->fieldSystem->unk_24);

            LinearInterpolationTaskS32_Init(&v1->unk_08, v3, v3 + 0x100, 40);
        }

        v0->state++;
        break;

    case 4:
        v2 = LinearInterpolationTaskS32_Update(&v1->unk_08);
        sub_02020910(v1->unk_08.currentValue, v0->fieldSystem->unk_24);

        if (v2 == 1) {
            v0->state++;
            v1->unk_34 = 5;
        }

        break;

    case 5:
        v1->unk_34--;

        if (v1->unk_34 < 0) {
            fx32 v4 = Camera_GetDistance(v0->fieldSystem->unk_24);

            QuadraticInterpolationTaskFX32_Init(&v1->unk_1C, v4, v4 + (-FX32_CONST(2350)), (FX32_CONST(0.5)), 8);

            v0->state++;
        }

        break;

    case 6:
        v2 = QuadraticInterpolationTaskFX32_Update(&v1->unk_1C);
        Camera_SetDistance(v1->unk_1C.currentValue, v0->fieldSystem->unk_24);

        if (v2 == 1) {
            v0->state++;
        }

        break;

    case 7:
        sub_0200F174(3, 0, 0, 0x7fff, 60, 1, 4);
        v0->state++;
        break;

    case 8:
        if (ScreenWipe_Done()) {
            v0->effectComplete = 0;

            v0->state++;
        }

        break;

    case 9:
        sub_0200F344(1, 0x7fff);

        ov5_021E2310(&v1->unk_00);

        G2_BlendNone();

        if (v0->done != NULL) {
            *(v0->done) = 1;
        }

        EncounterEffect_Finish(v0, param0);
        sub_0200F344(1, 0x7fff);
        break;
    }
}

typedef struct {
    fx32 unk_00;
    u32 unk_04;
    u16 unk_08;
    u16 unk_0A;
    u8 unk_0C;
    u8 unk_0D;
    u8 unk_0E;
    u8 unk_0F;
    u8 unk_10;
    u8 unk_11;
    u8 unk_12;
    u8 unk_13;
} UnkStruct_ov5_021F9D34;

static const UnkStruct_ov5_021F9D34 Unk_ov5_021F9D34[8] = {
    {
        214 * FX32_ONE, 246, 62, 1, 55, 56, 57, 58, 15, 16, 17, 0,
    }, {
        214 * FX32_ONE, 315, 74, 1, 59, 60, 61, 62, 18, 19, 20, 0,
    }, {
        214 * FX32_ONE, 316, 75, 0, 63, 64, 65, 66, 21, 22, 23, 0,
    }, {
        214 * FX32_ONE, 317, 76, 1, 67, 68, 69, 70, 24, 25, 26, 0,
    }, {
        214 * FX32_ONE, 318, 77, 1, 71, 72, 73, 74, 27, 28, 29, 0,
    }, {
        214 * FX32_ONE, 319, 78, 1, 75, 76, 77, 78, 30, 31, 32, 0,
    }, {
        214 * FX32_ONE, 250, 64, 1, 79, 80, 81, 82, 33, 34, 35, 0,
    }, {
        214 * FX32_ONE, 320, 79, 1, 83, 84, 85, 86, 36, 37, 38, 0,
    },
};

typedef struct {
    u16 unk_00;
    u8 unk_02;
    u8 unk_03;
    u16 unk_04;
    u16 unk_06;
} UnkStruct_ov5_021F9D0C;

static const UnkStruct_ov5_021F9D0C Unk_ov5_021F9D0C[5] = {
    {
        87, 39, 32, 65, 261
    }, {
        91, 43, 32, 66, 262
    }, {
        95, 44, 32, 67, 263
    }, {
        99, 45, 32, 68, 264
    }, {
        103, 46, 9, 69, 267
    },
};

typedef struct {
    s16 unk_00;
    s16 unk_02;
    GraphicElementData * unk_04[4];
    LinearInterpolationTaskFX32 unk_14[4];
} UnkStruct_ov5_021E5128;

typedef struct {
    QuadraticInterpolationTaskFX32 unk_00;
    LinearInterpolationTaskS32 unk_18;
    LinearInterpolationTaskFX32 unk_2C;
    UnkStruct_ov5_021DED04 * unk_40;
    UnkStruct_ov5_021DE47C unk_44;
    UnkStruct_ov5_021DE5A4 unk_1E4[2];
    GraphicElementData * unk_24C;
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
    GraphicElementData * unk_2CC[4];
    VecFx32 unk_2DC;
    VecFx32 unk_2E8;
    UnkStruct_ov5_021E5128 unk_2F4;
    Window unk_358;
    u32 unk_368;
    s32 unk_36C;
    s32 unk_370;
} UnkStruct_ov5_021E5890;

static void ov5_021E5128 (UnkStruct_ov5_021E5128 * param0, UnkStruct_ov5_021DE47C * param1, UnkStruct_ov5_021DE5A4 * param2, fx32 param3, fx32 param4, u32 param5)
{
    int v0;

    param0->unk_00 = 0;
    param0->unk_02 = 0;

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_04[v0] = ov5_021DE62C(
            param1, param2, param3, param4, 0, 0);
        sub_02021CAC(param0->unk_04[v0], 0);

        if (v0 != 3) {
            sub_02021CF8(param0->unk_04[v0], 2);
            SpriteActor_SetSpriteAnimActive(param0->unk_04[v0], 1);

            LinearInterpolationTaskFX32_Init(&param0->unk_14[v0], FX32_CONST(2), FX32_CONST(1), 6);
        } else {
            LinearInterpolationTaskFX32_Init(&param0->unk_14[v0], FX32_CONST(1), FX32_CONST(1), 6);
        }
    }
}

static void ov5_021E519C (UnkStruct_ov5_021E5128 * param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        sub_02021BD4(param0->unk_04[v0]);
    }
}

static BOOL ov5_021E51B4 (UnkStruct_ov5_021E5128 * param0)
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
        sub_02021C70(param0->unk_04[v0], &v3);
        sub_02021CAC(param0->unk_04[v0], 1);

        if (v1 == 0) {
            v2 = 0;
        }
    }

    return v2;
}

static Strbuf* ov5_021E5240 (u32 param0, u32 param1)
{
    StringTemplate * v0;
    MessageLoader * v1;
    Strbuf* v2;
    Strbuf* v3;

    v1 = MessageLoader_Init(1, 26, 359, param1);
    v0 = StringTemplate_Default(param1);
    v2 = Strbuf_Init(128, param1);
    v3 = Strbuf_Init(128, param1);
    MessageLoader_GetStrbuf(v1, 0, v3);
    StringTemplate_SetTrainerName(v0, 0, param0);
    StringTemplate_Format(v0, v2, v3);

    MessageLoader_Free(v1);
    StringTemplate_Free(v0);
    Strbuf_Free(v3);
    return v2;
}

static BOOL ov5_021E52A8 (EncounterEffect * param0, u32 param1, const UnkStruct_ov5_021F9D34 * param2)
{
    UnkStruct_ov5_021E52A8 * v0 = param0->param;
    BOOL v1;
    const VecFx32 * v2;
    VecFx32 v3;
    VecFx32 v4;
    int v5;
    int v6;
    Strbuf* v7;

    switch (param0->state) {
    case 0:
        param0->param = Heap_AllocFromHeap(param1, sizeof(UnkStruct_ov5_021E52A8));
        memset(param0->param, 0, sizeof(UnkStruct_ov5_021E52A8));
        v0 = param0->param;

        sub_02007130(param0->narc, 11, 0, 2 * 0x20, 0x20, param1);

        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        BGL_AddWindow(param0->fieldSystem->unk_08, &v0->unk_2E0, 2, 0, 10, 16, 2, 2, 1);
        BGL_FillWindow(&v0->unk_2E0, 0);
        v7 = ov5_021E5240(param2->unk_04, param1);
        sub_0201D78C(&v0->unk_2E0, 0, v7, 0, 0, 0, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
        Strbuf_Free(v7);

        ov5_021DE47C(&v0->unk_44, 8, 3);

        ov5_021DE4CC(
            param0->narc, &v0->unk_44, &v0->unk_1E4[0], param2->unk_0C, 1, param2->unk_0D, param2->unk_0E, param2->unk_0F, 600000);

        ov5_021DE4CC(
            param0->narc, &v0->unk_44, &v0->unk_1E4[1], 51, 1, 52, 53, 54, 600000 + 1);

        v0->unk_24C = ov5_021DE62C(
            &v0->unk_44, &v0->unk_1E4[0], (272 * FX32_ONE), (66 * FX32_ONE), 0, 0);
        sub_02021CAC(v0->unk_24C, 0);
        ov5_021E5128(&v0->unk_250, &v0->unk_44, &v0->unk_1E4[1], (FX32_CONST(72)), (FX32_CONST(74)), param1);

        ov5_021DE5D0(v0->unk_24C, param1, param2->unk_08, 14, (GX_RGB(0, 0, 0)));

        v0->unk_40 = ov5_021DECEC();

        param0->state++;
        break;

    case 1:

        EncounterEffect_Flash(1, 16, 16, &param0->effectComplete, 1);
        param0->state++;
        break;

    case 2:
        if (param0->effectComplete) {
            param0->state++;
        }

        break;

    case 3:

        ov5_021DE3D0(
            param0->narc, param2->unk_12, param2->unk_11, param2->unk_10, 0, 1, param0->fieldSystem->unk_08, 3);
        v0->unk_2F0 = 1;

        ov5_021DED20(param0, v0->unk_40, 6, 8, 16, (GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ), (GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_OBJ));

        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);

        param0->state++;
        break;

    case 4:

        if (EncounterEffect_GetHBlankFlag(param0)) {
            param0->state++;

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
            param0->state++;
        }

        break;

    case 6:

        QuadraticInterpolationTaskFX32_Init(&v0->unk_00, (272 * FX32_ONE), param2->unk_00, (-64 * FX32_ONE), 4);
        sub_02021CAC(v0->unk_24C, 1);
        sub_02021E80(v0->unk_24C, 0);

        v3 = VecFx32_FromXYZ(
            v0->unk_00.currentValue, (66 * FX32_ONE), 0);
        sub_02021C50(v0->unk_24C, &v3);

        param0->state++;
        break;

    case 7:

        v1 = QuadraticInterpolationTaskFX32_Update(&v0->unk_00);
        v3 = VecFx32_FromXYZ(
            v0->unk_00.currentValue, (66 * FX32_ONE), 0);
        sub_02021C50(v0->unk_24C, &v3);

        if (v1 == 1) {
            param0->state++;
        }

        break;

    case 8:
        LinearInterpolationTaskS32_Init(&v0->unk_18, 0, 16, 3);
        v0->unk_2F8 = 10;
        param0->state++;
        break;

    case 9:
        v0->unk_2F8--;

        if (v0->unk_2F8 >= 0) {
            break;
        }

        v1 = LinearInterpolationTaskS32_Update(&v0->unk_18);
        ov5_021DEF8C(&v0->unk_18.currentValue);

        if (v1 == 1) {
            ov5_021DE5D0(v0->unk_24C, param1, param2->unk_08, 0, (GX_RGB(0, 0, 0)));

            sub_0200AB4C(-14, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BD, 1);

            sub_0201C63C(param0->fieldSystem->unk_08, 2, 0, -((v0->unk_00.currentValue >> FX32_SHIFT) + -92));
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            BGL_SetPriority(2, 0);
            param0->state++;
        }

        break;

    case 10:
        LinearInterpolationTaskS32_Init(&v0->unk_18, 16, 0, 3);
        param0->state++;
        break;

    case 11:
        v1 = LinearInterpolationTaskS32_Update(&v0->unk_18);
        ov5_021DEF8C(&v0->unk_18.currentValue);

        if (v1 == 1) {
            param0->state++;
            v0->unk_2F8 = 26;
        }

        break;

    case 12:
        v0->unk_2F8--;

        if (v0->unk_2F8 < 0) {
            param0->state++;
        }

        break;

    case 13:

        sub_0200F174(3, 0, 0, 0x7fff, 15, 1, 4);
        param0->state++;
        break;

    case 14:

        if (ScreenWipe_Done()) {
            param0->state++;
        }

        break;

    case 15:
        sub_0200F344(1, 0x7fff);

        if (param0->done != NULL) {
            *(param0->done) = 1;
        }

        sub_02021BD4(v0->unk_24C);
        ov5_021E519C(&v0->unk_250);
        ov5_021DE5A4(&v0->unk_44, &v0->unk_1E4[0]);
        ov5_021DE5A4(&v0->unk_44, &v0->unk_1E4[1]);
        ov5_021DE4AC(&v0->unk_44);

        BGL_DeleteWindow(&v0->unk_2E0);

        GX_SetVisibleWnd(GX_WNDMASK_NONE);

        sub_0200AB4C(0, GX_BLEND_PLANEMASK_NONE, 1);

        sub_02019184(param0->fieldSystem->unk_08, 2, 0, 0);

        return 1;
    }

    if (v0->unk_2F0 == 1) {
        sub_0201C63C(param0->fieldSystem->unk_08, 3, 0, v0->unk_2F4);

        v0->unk_2F4 = (v0->unk_2F4 + 30) % 512;
    }

    if (param0->state != 15) {
        sub_020219F8(v0->unk_44.unk_00);
    }

    return 0;
}

void ov5_021E5760 (SysTask * param0, void * param1)
{
    EncounterEffect * v0 = param1;
    BOOL v1;

    v1 = ov5_021E52A8(v0, 4, &Unk_ov5_021F9D34[0]);

    if (v1 == 1) {
        EncounterEffect_Finish(v0, param0);
    }
}

void ov5_021E5784 (SysTask * param0, void * param1)
{
    EncounterEffect * v0 = param1;
    BOOL v1;

    v1 = ov5_021E52A8(v0, 4, &Unk_ov5_021F9D34[1]);

    if (v1 == 1) {
        EncounterEffect_Finish(v0, param0);
    }
}

void ov5_021E57A8 (SysTask * param0, void * param1)
{
    EncounterEffect * v0 = param1;
    BOOL v1;

    v1 = ov5_021E52A8(v0, 4, &Unk_ov5_021F9D34[2]);

    if (v1 == 1) {
        EncounterEffect_Finish(v0, param0);
    }
}

void ov5_021E57CC (SysTask * param0, void * param1)
{
    EncounterEffect * v0 = param1;
    BOOL v1;

    v1 = ov5_021E52A8(v0, 4, &Unk_ov5_021F9D34[3]);

    if (v1 == 1) {
        EncounterEffect_Finish(v0, param0);
    }
}

void ov5_021E57F0 (SysTask * param0, void * param1)
{
    EncounterEffect * v0 = param1;
    BOOL v1;

    v1 = ov5_021E52A8(v0, 4, &Unk_ov5_021F9D34[4]);

    if (v1 == 1) {
        EncounterEffect_Finish(v0, param0);
    }
}

void ov5_021E5814 (SysTask * param0, void * param1)
{
    EncounterEffect * v0 = param1;
    BOOL v1;

    v1 = ov5_021E52A8(v0, 4, &Unk_ov5_021F9D34[5]);

    if (v1 == 1) {
        EncounterEffect_Finish(v0, param0);
    }
}

void ov5_021E5838 (SysTask * param0, void * param1)
{
    EncounterEffect * v0 = param1;
    BOOL v1;

    v1 = ov5_021E52A8(v0, 4, &Unk_ov5_021F9D34[6]);

    if (v1 == 1) {
        EncounterEffect_Finish(v0, param0);
    }
}

void ov5_021E585C (SysTask * param0, void * param1)
{
    EncounterEffect * v0 = param1;
    BOOL v1;

    v1 = ov5_021E52A8(v0, 4, &Unk_ov5_021F9D34[7]);

    if (v1 == 1) {
        EncounterEffect_Finish(v0, param0);
    }
}

static u32 ov5_021E5880 (FieldSystem * fieldSystem)
{
    TrainerInfo * v0 = SaveData_GetTrainerInfo(fieldSystem->saveData);

    return TrainerInfo_Gender(v0);
}

static BOOL ov5_021E5890 (EncounterEffect * param0, u32 param1, const UnkStruct_ov5_021F9D0C * param2)
{
    UnkStruct_ov5_021E5890 * v0 = param0->param;
    BOOL v1, v2;
    VecFx32 v3;
    VecFx32 v4;
    int v5;
    fx32 v6;
    UnkStruct_ov5_021DE5A4 * v7;
    int v8;

    switch (param0->state) {
    case 0:
        param0->param = Heap_AllocFromHeap(param1, sizeof(UnkStruct_ov5_021E5890));
        memset(param0->param, 0, sizeof(UnkStruct_ov5_021E5890));
        v0 = param0->param;

        ov5_021DE47C(&v0->unk_5C, 10, 4);

        if (ov5_021E5880(param0->fieldSystem) == 0) {
            ov5_021DE4CC(
                param0->narc, &v0->unk_5C, &v0->unk_1FC[0], 147, 1, 148, 149, 150, 600000);

            v0->unk_368 = 0;
        } else {
            ov5_021DE4CC(
                param0->narc, &v0->unk_5C, &v0->unk_1FC[0], 151, 1, 152, 153, 154, 600000);
            v0->unk_368 = 1;
        }

        ov5_021DE4CC(
            param0->narc, &v0->unk_5C, &v0->unk_1FC[1], param2->unk_00, 1, param2->unk_00 + 1, param2->unk_00 + 2, param2->unk_00 + 3, 600000 + 1);

        ov5_021DE4CC(
            param0->narc, &v0->unk_5C, &v0->unk_1FC[2], param2->unk_02, 0xC, 40, 41, 42, 600000 + 2);

        ov5_021DE4CC(
            param0->narc, &v0->unk_5C, &v0->unk_1FC[3], 51, 1, 52, 53, 54, 600000 + 3);

        param0->state++;
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
            sub_02021CAC(v0->unk_2CC[v5], 0);
            SpriteActor_SetSpriteAnimActive(v0->unk_2CC[v5], v8);
            sub_02021E80(v0->unk_2CC[v5], 1);
        }

        if (v0->unk_368) {
            ov5_021DE5D0(v0->unk_2CC[0], param1, 0, 14, (GX_RGB(0, 0, 0)));
        } else {
            ov5_021DE5D0(v0->unk_2CC[0], param1, 1, 14, (GX_RGB(0, 0, 0)));
        }

        ov5_021DE5D0(v0->unk_2CC[1], param1, param2->unk_04, 14, (GX_RGB(0, 0, 0)));

        GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);

        ov5_021E5128(&v0->unk_2F4, &v0->unk_5C, &v0->unk_1FC[3], (FX32_CONST(128)), (FX32_CONST(96)), param1);

        ov5_021DEFA0(param0->fieldSystem);

        param0->state++;
        break;

    case 2:

        EncounterEffect_Flash(1, 16, 16, &param0->effectComplete, 1);
        param0->unk_08 = 0;
        param0->state++;
        break;

    case 3:
        param0->unk_08++;

        if (param0->unk_08 == 8) {
            ov5_021DF038();
        }

        if (param0->effectComplete) {
            param0->state++;
        }

        break;

    case 4:
        if (ov5_021DF054() == 1) {
            ov5_021DF0CC(param0->narc, 107);

            G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG0, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ, 0, 8);
            param0->state++;
        }

        break;

    case 5:
        QuadraticInterpolationTaskFX32_Init(&v0->unk_00, (-128 * FX32_ONE), (56 * FX32_ONE), (80 * FX32_ONE), 6);
        v3 = VecFx32_FromXYZ(
            v0->unk_00.currentValue, (92 * FX32_ONE), 0);
        sub_02021C50(v0->unk_2CC[0], &v3);
        v3.y += (4 * FX32_ONE);
        v3.x += (16 * FX32_ONE);
        sub_02021C50(v0->unk_2CC[2], &v3);
        sub_02021CAC(v0->unk_2CC[0], 1);
        sub_02021CAC(v0->unk_2CC[2], 1);

        QuadraticInterpolationTaskFX32_Init(&v0->unk_30, (384 * FX32_ONE), (200 * FX32_ONE), (-80 * FX32_ONE), 6);
        v3 = VecFx32_FromXYZ(
            v0->unk_30.currentValue, (92 * FX32_ONE), 0);
        sub_02021C50(v0->unk_2CC[1], &v3);
        v3.y += (4 * FX32_ONE);
        v3.x += (-16 * FX32_ONE);
        sub_02021C50(v0->unk_2CC[3], &v3);
        sub_02021CAC(v0->unk_2CC[1], 1);
        sub_02021CAC(v0->unk_2CC[3], 1);

        {
            Strbuf* v9;

            sub_02007130(param0->narc, 11, 0, 2 * 0x20, 0x20, param1);

            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
            BGL_AddWindow(param0->fieldSystem->unk_08, &v0->unk_358, 2, 21, 13, 11, 2, 2, 1);
            BGL_FillWindow(&v0->unk_358, 0);
            v9 = ov5_021E5240(param2->unk_06, param1);
            sub_0201D78C(&v0->unk_358, 0, v9, 0, 0, 0, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
            Strbuf_Free(v9);
        }

        param0->effectComplete = 3;
        param0->state++;
        break;

    case 6:

        if (param0->effectComplete > 0) {
            param0->effectComplete--;

            if (param0->effectComplete == 0) {
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
        sub_02021C50(v0->unk_2CC[0], &v3);
        v3.y += (4 * FX32_ONE);
        v3.x += (16 * FX32_ONE);
        sub_02021C50(v0->unk_2CC[2], &v3);

        v1 = QuadraticInterpolationTaskFX32_Update(&v0->unk_30);
        v3 = VecFx32_FromXYZ(
            v0->unk_30.currentValue, (92 * FX32_ONE), 0);
        v0->unk_2E8 = v3;
        sub_02021C50(v0->unk_2CC[1], &v3);
        v3.y += (4 * FX32_ONE);
        v3.x += (-16 * FX32_ONE);
        sub_02021C50(v0->unk_2CC[3], &v3);

        if (v1 == 1) {
            param0->state++;
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

        param0->state++;
        break;

    case 8:
        v1 = LinearInterpolationTaskS32_Update(&v0->unk_48);
        ov5_021DEF8C(&v0->unk_48.currentValue);

        if (v1 == 1) {
            ov5_021DE5D0(v0->unk_2CC[0], param1, v0->unk_368, 0, (GX_RGB(0, 0, 0)));

            ov5_021DE5D0(v0->unk_2CC[1], param1, param2->unk_04, 0, (GX_RGB(0, 0, 0)));

            sub_02021CC8(v0->unk_2CC[2], 1);
            sub_02021CE4(v0->unk_2CC[2], FX32_ONE * 2);
            sub_02021CC8(v0->unk_2CC[3], 1);
            sub_02021CE4(v0->unk_2CC[3], FX32_ONE * 2);

            ov5_021DF0CC(param0->narc, 108);

            param0->state++;
        }

        break;

    case 9:
        LinearInterpolationTaskS32_Init(&v0->unk_48, 16, 0, 6);

        ov5_021DF17C(4);
        BGL_SetPriority(0, 1);

        param0->state++;
        break;

    case 10:
        v1 = LinearInterpolationTaskS32_Update(&v0->unk_48);
        ov5_021DEF8C(&v0->unk_48.currentValue);

        if (v1 == 1) {
            param0->state++;

            param0->effectComplete = 8;
        }

        break;

    case 11:

        if (param0->effectComplete > 0) {
            param0->effectComplete--;
            break;
        }

        QuadraticInterpolationTaskFX32_Init(&v0->unk_00, 0, (-FX32_CONST(2)), 0, param2->unk_03);
        QuadraticInterpolationTaskFX32_Init(&v0->unk_18, 0, (-FX32_CONST(2)), 0, param2->unk_03);

        param0->effectComplete = 0;

        param0->state++;
        break;

    case 12:

        param0->effectComplete++;

        v1 = QuadraticInterpolationTaskFX32_Update(&v0->unk_00);
        QuadraticInterpolationTaskFX32_Update(&v0->unk_18);

        if (((param0->effectComplete / 2) % 2) == 0) {
            v3 = VecFx32_FromXYZ(
                v0->unk_2DC.x + v0->unk_00.currentValue, v0->unk_2DC.y + v0->unk_18.currentValue, 0);
        } else {
            v3 = VecFx32_FromXYZ(
                v0->unk_2DC.x - v0->unk_00.currentValue, v0->unk_2DC.y - v0->unk_18.currentValue, 0);
        }

        if (v1) {
            v0->unk_2DC = v3;
        }

        sub_02021C50(v0->unk_2CC[0], &v3);
        v3.y += (4 * FX32_ONE);
        v3.x += (16 * FX32_ONE);
        sub_02021C50(v0->unk_2CC[2], &v3);

        if (((param0->effectComplete / 2) % 2) == 0) {
            v3 = VecFx32_FromXYZ(
                v0->unk_2E8.x - v0->unk_00.currentValue, v0->unk_2E8.y - v0->unk_18.currentValue, 0);
        } else {
            v3 = VecFx32_FromXYZ(
                v0->unk_2E8.x + v0->unk_00.currentValue, v0->unk_2E8.y + v0->unk_18.currentValue, 0);
        }

        if (v1) {
            v0->unk_2E8 = v3;
        }

        sub_02021C50(v0->unk_2CC[1], &v3);
        v3.y += (4 * FX32_ONE);
        v3.x += (-16 * FX32_ONE);
        sub_02021C50(v0->unk_2CC[3], &v3);

        if (v1) {
            param0->state++;

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
        sub_02021C50(v0->unk_2CC[0], &v3);
        v3.y += (4 * FX32_ONE);
        v3.x += (16 * FX32_ONE);
        sub_02021C50(v0->unk_2CC[2], &v3);

        v3 = VecFx32_FromXYZ(
            v0->unk_2E8.x + v0->unk_00.currentValue, v0->unk_2E8.y + v0->unk_18.currentValue, 0);
        sub_02021C50(v0->unk_2CC[1], &v3);
        v3.y += (4 * FX32_ONE);
        v3.x += (-16 * FX32_ONE);
        sub_02021C50(v0->unk_2CC[3], &v3);

        if (ScreenWipe_Done()) {
            param0->state++;
        }

        break;

    case 14:
        sub_0200F344(1, 0x7fff);

        if (param0->done != NULL) {
            *(param0->done) = 1;
        }

        ov5_021E519C(&v0->unk_2F4);

        BGL_DeleteWindow(&v0->unk_358);

        for (v5 = 0; v5 < 4; v5++) {
            sub_02021BD4(v0->unk_2CC[v5]);
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

    if (param0->state != 14) {
        sub_020219F8(v0->unk_5C.unk_00);

        if (4 < param0->state) {
            sub_020241B4();
            ov5_021DF1CC();
            ov5_021DF070();
            sub_020241BC(GX_SORTMODE_AUTO, GX_BUFFERMODE_Z);
        }
    }

    return 0;
}

void ov5_021E6178 (SysTask * param0, void * param1)
{
    EncounterEffect * v0 = param1;
    BOOL v1;

    v1 = ov5_021E5890(v0, 4, &Unk_ov5_021F9D0C[0]);

    if (v1 == 1) {
        EncounterEffect_Finish(v0, param0);
    }
}

void ov5_021E619C (SysTask * param0, void * param1)
{
    EncounterEffect * v0 = param1;
    BOOL v1;

    v1 = ov5_021E5890(v0, 4, &Unk_ov5_021F9D0C[1]);

    if (v1 == 1) {
        EncounterEffect_Finish(v0, param0);
    }
}

void ov5_021E61C0 (SysTask * param0, void * param1)
{
    EncounterEffect * v0 = param1;
    BOOL v1;

    v1 = ov5_021E5890(v0, 4, &Unk_ov5_021F9D0C[2]);

    if (v1 == 1) {
        EncounterEffect_Finish(v0, param0);
    }
}

void ov5_021E61E4 (SysTask * param0, void * param1)
{
    EncounterEffect * v0 = param1;
    BOOL v1;

    v1 = ov5_021E5890(v0, 4, &Unk_ov5_021F9D0C[3]);

    if (v1 == 1) {
        EncounterEffect_Finish(v0, param0);
    }
}

void ov5_021E6208 (SysTask * param0, void * param1)
{
    EncounterEffect * v0 = param1;
    BOOL v1;

    v1 = ov5_021E5890(v0, 4, &Unk_ov5_021F9D0C[4]);

    if (v1 == 1) {
        EncounterEffect_Finish(v0, param0);
    }
}
