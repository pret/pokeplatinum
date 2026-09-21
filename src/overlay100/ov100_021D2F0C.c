#include "overlay100/ov100_021D2F0C.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"
#include "constants/species.h"

#include "overlay100/ov100_021D46C8.h"
#include "overlay100/ov100_021D4E04.h"
#include "overlay100/struct_ov100_021D3084.h"
#include "overlay100/struct_ov100_021D36CC.h"
#include "overlay100/struct_ov100_021D37F4.h"
#include "overlay100/struct_ov100_021D4DD8.h"
#include "overlay100/struct_ov100_021D4EBC.h"

#include "bg_window.h"
#include "camera.h"
#include "easy3d_object.h"
#include "graphics.h"
#include "heap.h"
#include "narc.h"
#include "palette.h"
#include "screen_fade.h"
#include "sound.h"
#include "sound_playback.h"
#include "sprite_system.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_0202419C.h"

enum DialgaPalkiaArrivalState {
    DIALGA_PALKIA_ARRIVAL_STATE_WAIT_FADE_IN,
    DIALGA_PALKIA_ARRIVAL_STATE_PAN_CAMERA,
    DIALGA_PALKIA_ARRIVAL_STATE_WAIT_PAN_CAMERA,
    DIALGA_PALKIA_ARRIVAL_STATE_WAIT_INTRODUCE_DIALGA,
    DIALGA_PALKIA_ARRIVAL_STATE_WAIT_INTRODUCE_PALKIA,
    DIALGA_PALKIA_ARRIVAL_STATE_WAIT_PALKIA_BALL_DELAY,
    DIALGA_PALKIA_ARRIVAL_STATE_WAIT_DIALGA_BALL_LAND,
    DIALGA_PALKIA_ARRIVAL_STATE_WAIT_PALKIA_BALL_LAND,
    DIALGA_PALKIA_ARRIVAL_STATE_WAIT_SUMMON_BUBBLE_DELAY,
    DIALGA_PALKIA_ARRIVAL_STATE_FLASH_PULSE_1,
    DIALGA_PALKIA_ARRIVAL_STATE_FLASH_PULSE_2,
    DIALGA_PALKIA_ARRIVAL_STATE_FLASH_PULSE_3,
    DIALGA_PALKIA_ARRIVAL_STATE_FADE_FROM_FLASH,
    DIALGA_PALKIA_ARRIVAL_STATE_GROW_WHIRLPOOL,
    DIALGA_PALKIA_ARRIVAL_STATE_WAIT_CREATION_SPEECH,
    DIALGA_PALKIA_ARRIVAL_STATE_SHRINK_WHIRLPOOL,
    DIALGA_PALKIA_ARRIVAL_STATE_WAIT_FADE_OUT,
    DIALGA_PALKIA_ARRIVAL_STATE_DONE,
};

enum DialgaPalkiaArrivalCameraShakeStep {
    DIALGA_PALKIA_ARRIVAL_CAMERA_SHAKE_STEP_START_PAN,
    DIALGA_PALKIA_ARRIVAL_CAMERA_SHAKE_STEP_WAIT_PAN,
};

enum DialgaPalkiaArrivalSummonBubbleStep {
    DIALGA_PALKIA_ARRIVAL_SUMMON_BUBBLE_STEP_REVEAL,
    DIALGA_PALKIA_ARRIVAL_SUMMON_BUBBLE_STEP_GROW,
};

enum DialgaPalkiaArrivalExitState {
    DIALGA_PALKIA_ARRIVAL_EXIT_STATE_RELEASE_MODELS,
};

static void DialgaPalkiaArrival_InitCastModels(DialgaPalkiaArrivalContext *context);
static void DialgaPalkiaArrival_ReleaseModels(DialgaPalkiaArrivalContext *context);
static void DialgaPalkiaArrival_ReleaseFallingBalls(DialgaPalkiaArrivalContext *context);
static void DialgaPalkiaArrival_InitCamera(Camera *camera, VecFx32 *target);
static void DialgaPalkiaArrival_UpdateScene(DialgaPalkiaArrivalContext *context);

static void DialgaPalkiaArrival_InitSubScreenBackground(BgConfig *bgConfig, PaletteData *plttData)
{
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, 10, bgConfig, 4, 0, 0, 1, HEAP_ID_SPEAR_PILLAR_CUTSCENE);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, 11, bgConfig, 4, 0, 0, 1, HEAP_ID_SPEAR_PILLAR_CUTSCENE);
    PaletteData_LoadBufferFromFileStart(plttData, NARC_INDEX_GRAPHIC__POKETCH, 12, HEAP_ID_SPEAR_PILLAR_CUTSCENE, PLTTBUF_SUB_BG, PALETTE_SIZE_BYTES, 0);
}

static void DialgaPalkiaArrival_InitWhirlpool(DialgaPalkiaArrivalContext *context)
{
    CutsceneModel_LoadMesh(&context->models.unk_934[0], 84, context->graphics->narc);
    CutsceneModel_LoadAnim(0, &context->models.unk_934[0], 82, context->graphics->narc, &context->graphics->allocator);
    CutsceneModel_LoadAnim(1, &context->models.unk_934[0], 83, context->graphics->narc, &context->graphics->allocator);
    Easy3DObject_SetPosition(&context->models.unk_934[0].object, FX32_CONST(-48), FX32_CONST(-5), FX32_CONST(-70));

    context->models.unk_934[0].playing = 0;

    CutsceneModel_CloneMesh(&context->models.unk_934[0], &context->models.unk_934[1], 84, context->graphics->narc);
    CutsceneModel_CloneAnim(0, &context->models.unk_934[0], &context->models.unk_934[1], 82, context->graphics->narc, &context->graphics->allocator);
    CutsceneModel_CloneAnim(1, &context->models.unk_934[0], &context->models.unk_934[1], 83, context->graphics->narc, &context->graphics->allocator);
    Easy3DObject_SetPosition(&context->models.unk_934[1].object, FX32_CONST(+48), FX32_CONST(-5), FX32_CONST(-70));

    context->models.unk_934[1].playing = 0;
    context->models.unk_934[0].scale = FX32_CONST(0.1);
    context->models.unk_934[1].scale = FX32_CONST(0.1);

    Easy3DObject_SetScale(&context->models.unk_934[0].object, context->models.unk_934[0].scale, FX32_CONST(1.0), context->models.unk_934[0].scale);
    Easy3DObject_SetScale(&context->models.unk_934[1].object, context->models.unk_934[1].scale, FX32_CONST(1.0), context->models.unk_934[1].scale);
}

static void DialgaPalkiaArrival_InitCastModels(DialgaPalkiaArrivalContext *context)
{
    CutsceneModel_LoadMesh(&context->models.unk_04, 46, context->graphics->narc);
    CutsceneModel_LoadMesh(&context->models.shockwave, 24, context->graphics->narc);
    CutsceneModel_LoadAnim(0, &context->models.shockwave, 22, context->graphics->narc, &context->graphics->allocator);
    CutsceneModel_LoadAnim(1, &context->models.shockwave, 23, context->graphics->narc, &context->graphics->allocator);

    CutsceneModel_LoadMesh(&context->models.unk_10DC[0], 79, context->graphics->narc);
    CutsceneModel_LoadAnim(0, &context->models.unk_10DC[0], 77, context->graphics->narc, &context->graphics->allocator);
    CutsceneModel_LoadAnim(1, &context->models.unk_10DC[0], 78, context->graphics->narc, &context->graphics->allocator);
    CutsceneModel_LoadAnim(2, &context->models.unk_10DC[0], 80, context->graphics->narc, &context->graphics->allocator);
    CutsceneModel_LoadAnim(3, &context->models.unk_10DC[0], 81, context->graphics->narc, &context->graphics->allocator);
    Easy3DObject_SetPosition(&context->models.unk_10DC[0].object, FX32_CONST(-48), FX32_CONST(-10), FX32_CONST(-70));

    context->models.unk_10DC[0].playing = 0;
    context->models.unk_10DC[0].useAllAnimTracks = 0;

    CutsceneModel_LoadMesh(&context->models.unk_10DC[1], 79, context->graphics->narc);
    CutsceneModel_LoadAnim(0, &context->models.unk_10DC[1], 77, context->graphics->narc, &context->graphics->allocator);
    CutsceneModel_LoadAnim(1, &context->models.unk_10DC[1], 78, context->graphics->narc, &context->graphics->allocator);
    CutsceneModel_LoadAnim(2, &context->models.unk_10DC[1], 80, context->graphics->narc, &context->graphics->allocator);
    CutsceneModel_LoadAnim(3, &context->models.unk_10DC[1], 81, context->graphics->narc, &context->graphics->allocator);
    Easy3DObject_SetPosition(&context->models.unk_10DC[1].object, FX32_CONST(+48), FX32_CONST(-10), FX32_CONST(-70));

    context->models.unk_10DC[1].playing = 0;
    context->models.unk_10DC[1].useAllAnimTracks = 0;

    for (int i = 0; i < 4; i++) {
        CutsceneModel_LoadMesh(&context->models.shadow[i], 65, context->graphics->narc);
        Easy3DObject_SetScale(&context->models.shadow[i].object, FX32_CONST(1.2), FX32_CONST(1.0), FX32_CONST(1.2));
    }

    CutsceneModel_LoadMesh(&context->models.summonBubble[0], 66, context->graphics->narc);
    Easy3DObject_SetPosition(&context->models.summonBubble[0].object, FX32_CONST(-50), FX32_CONST(+0), FX32_CONST(-50));
    CutsceneModel_LoadAnim(0, &context->models.summonBubble[0], 67, context->graphics->narc, &context->graphics->allocator);

    context->models.summonBubble[0].playing = 1;
    context->models.summonBubble[0].looping = 1;
    context->models.summonBubble[0].animSpeed = FX32_HALF;

    Easy3DObject_SetVisible(&context->models.summonBubble[0].object, 0);
    Easy3DObject_SetVisible(&context->models.shadow[0].object, 0);

    CutsceneModel_LoadMesh(&context->models.summonBubble[1], 68, context->graphics->narc);
    Easy3DObject_SetPosition(&context->models.summonBubble[1].object, FX32_CONST(+50), FX32_CONST(+0), FX32_CONST(-50));
    CutsceneModel_LoadAnim(0, &context->models.summonBubble[1], 69, context->graphics->narc, &context->graphics->allocator);

    context->models.summonBubble[1].playing = 1;
    context->models.summonBubble[1].looping = 1;
    context->models.summonBubble[1].animSpeed = FX32_HALF;

    Easy3DObject_SetVisible(&context->models.summonBubble[1].object, 0);
    Easy3DObject_SetVisible(&context->models.shadow[1].object, 0);

    if (TrainerInfo_Gender(context->args->trainerInfo) != 1) {
        CutsceneModel_LoadMesh(&context->models.trainers[0], 61, context->graphics->narc);
        CutsceneModel_LoadAnim(0, &context->models.trainers[0], 62, context->graphics->narc, &context->graphics->allocator);
    } else {
        CutsceneModel_LoadMesh(&context->models.trainers[0], 63, context->graphics->narc);
        CutsceneModel_LoadAnim(0, &context->models.trainers[0], 64, context->graphics->narc, &context->graphics->allocator);
    }

    Easy3DObject_SetPosition(&context->models.trainers[0].object, FX32_CONST(1), FX32_CONST(+0), FX32_CONST(+140));

    context->models.trainers[0].looping = 1;
    context->models.trainers[0].animSpeed = (FX32_HALF >> 1);
    context->models.trainers[0].pose = 2;

    CutsceneModel_LoadMesh(&context->models.trainers[1], 13, context->graphics->narc);
    Easy3DObject_SetPosition(&context->models.trainers[1].object, FX32_CONST(1), FX32_CONST(+0), FX32_CONST(+60));
    CutsceneModel_LoadAnim(0, &context->models.trainers[1], 14, context->graphics->narc, &context->graphics->allocator);

    context->models.trainers[1].looping = 1;
    context->models.trainers[1].animSpeed = (FX32_HALF >> 1);
    context->models.trainers[1].pose = 2;
}

static void DialgaPalkiaArrival_ReleaseModels(DialgaPalkiaArrivalContext *context)
{
    CutsceneModel_Release(&context->models.unk_04, &context->graphics->allocator, 0);

    for (int i = 0; i < 4; i++) {
        CutsceneModel_Release(&context->models.shadow[i], &context->graphics->allocator, 0);
    }

    CutsceneModel_Release(&context->models.shockwave, &context->graphics->allocator, 2);

    CutsceneModel_Release(&context->models.summonBubble[0], &context->graphics->allocator, 1);
    CutsceneModel_Release(&context->models.summonBubble[1], &context->graphics->allocator, 1);

    CutsceneModel_Release(&context->models.unk_934[0], &context->graphics->allocator, 2);
    CutsceneModel_Release(&context->models.unk_934[1], &context->graphics->allocator, 2);

    CutsceneModel_Release(&context->models.trainers[0], &context->graphics->allocator, 1);
    CutsceneModel_Release(&context->models.trainers[1], &context->graphics->allocator, 1);
}

static void DialgaPalkiaArrival_ReleaseFallingBalls(DialgaPalkiaArrivalContext *context)
{
    CutsceneModel_Release(&context->models.unk_10DC[0], &context->graphics->allocator, 4);
    CutsceneModel_Release(&context->models.unk_10DC[1], &context->graphics->allocator, 4);

    context->models.unk_10DC[0].loaded = 0;
    context->models.unk_10DC[1].loaded = 0;
}

static void DialgaPalkiaArrival_InitCamera(Camera *camera, VecFx32 *target)
{
    CameraAngle cameraAngle = { .x = -0x29fe, .y = 0, .z = 0 };

    Camera_InitWithTarget(target, 0x13c805, &cameraAngle, 0xc01, 0, 1, camera);
    Camera_SetAsActive(camera);
    Camera_SetClipping(FX32_ONE * 10, FX32_ONE * 1008, camera);
}

static void DialgaPalkiaArrival_UpdateScene(DialgaPalkiaArrivalContext *context)
{
    G3_ResetG3X();
    Camera_ComputeViewMatrix();

    SpearPillarCutscene_InitLighting(context->graphics);
    SpearPillarCutscene_UpdateCamera(context->graphics);

    CutsceneModel_Update(&context->models.unk_04);
    CutsceneModel_Update(&context->models.shockwave);

    CutsceneModel_Update(&context->models.summonBubble[0]);
    CutsceneModel_Update(&context->models.summonBubble[1]);

    CutsceneModel_Update(&context->models.unk_10DC[0]);
    CutsceneModel_Update(&context->models.unk_10DC[1]);

    CutsceneModel_Update(&context->models.unk_934[0]);
    CutsceneModel_Update(&context->models.unk_934[1]);

    CutsceneModel_Update(&context->models.trainers[0]);
    CutsceneModel_Update(&context->models.trainers[1]);

    CutsceneModel_Update(&context->models.shadow[0]);
    CutsceneModel_Update(&context->models.shadow[1]);
    CutsceneModel_Update(&context->models.shadow[2]);
    CutsceneModel_Update(&context->models.shadow[3]);

    G3_RequestSwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_W);
}

void *DialgaPalkiaArrival_Init(SpearPillarCutsceneData *cutscene)
{
    DialgaPalkiaArrivalContext *context = Heap_Alloc(HEAP_ID_SPEAR_PILLAR_CUTSCENE, sizeof(DialgaPalkiaArrivalContext));

    memset(context, 0, sizeof(DialgaPalkiaArrivalContext));

    context->graphics = &cutscene->scene;
    context->args = cutscene->args;

    DialgaPalkiaArrival_InitCastModels(context);
    DialgaPalkiaArrival_InitSubScreenBackground(context->graphics->bgConfig, context->graphics->paletteData);

    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD, 7, 8);
    G2S_SetBlendAlpha(GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ, 7, 10);

    static const GXRgb edgeColorTable[8] = {
        GX_RGB(2, 2, 2),
        GX_RGB(10, 10, 10),
        GX_RGB(10, 10, 10),
        GX_RGB(10, 10, 10),
        GX_RGB(10, 10, 10),
        GX_RGB(10, 10, 10),
        GX_RGB(10, 10, 10),
        GX_RGB(10, 10, 10),
    };

    G3X_EdgeMarking(1);
    G3X_SetEdgeColorTable(edgeColorTable);

    context->graphics->cameraTarget.z = FX32_CONST(34);

    DialgaPalkiaArrival_InitCamera(context->graphics->camera, &context->graphics->cameraTarget);
    Sound_SetSceneAndPlayBGM(SOUND_SCENE_SUB_63, SEQ_NONE, 0);

    return context;
}

static void DialgaPalkiaArrival_UpdateCameraShake(SysTask *task, void *param)
{
    CameraShakeTask *shakeTask = param;

    switch (shakeTask->step) {
    case DIALGA_PALKIA_ARRIVAL_CAMERA_SHAKE_STEP_START_PAN:
        shakeTask->cameraPan->durationFrames = 2;

        if (shakeTask->direction) {
            if ((shakeTask->intensity == 4) || (shakeTask->intensity == 6)) {
                shakeTask->cameraPan->positionDeltaX = +FX32_CONST(2);
            } else if (shakeTask->intensity == 5) {
                shakeTask->cameraPan->positionDeltaX = +FX32_CONST(4);
            } else if (shakeTask->intensity == 0xFF) {
                shakeTask->cameraPan->positionDeltaX = +FX32_CONST(6);
            } else if (shakeTask->intensity == 7) {
                shakeTask->cameraPan->positionDeltaX = +FX32_CONST(2);
                shakeTask->cameraPan->durationFrames = 4;
            }
        } else {
            if ((shakeTask->intensity == 4) || (shakeTask->intensity == 6)) {
                shakeTask->cameraPan->positionDeltaX = -FX32_CONST(2);
            } else if (shakeTask->intensity == 5) {
                shakeTask->cameraPan->positionDeltaX = -FX32_CONST(4);
            } else if (shakeTask->intensity == 0xFF) {
                shakeTask->cameraPan->positionDeltaX = -FX32_CONST(6);
            } else if (shakeTask->intensity == 7) {
                shakeTask->cameraPan->positionDeltaX = -FX32_CONST(2);
                shakeTask->cameraPan->durationFrames = 4;
            }
        }

        shakeTask->direction ^= 1;
        shakeTask->cameraPan->positionDeltaY = 0;
        shakeTask->cameraPan->positionDeltaZ = 0;
        CameraPan_Start(shakeTask->cameraPan);
        shakeTask->step++;
    case DIALGA_PALKIA_ARRIVAL_CAMERA_SHAKE_STEP_WAIT_PAN:
        if (CameraPan_Update(shakeTask->cameraPan)) {
            if (shakeTask->intensity == 8) {
                shakeTask->step++;
            } else {
                shakeTask->step--;
            }
        }
        break;
    default:
        SysTask_Done(task);
        break;
    }
}

static void DialgaPalkiaArrival_InitCameraShake(DialgaPalkiaArrivalContext *context)
{
    context->graphics->cameraPan.angleDeltaX = 0;
    context->graphics->cameraPan.angleDeltaY = 0;
    context->graphics->cameraPan.angleDeltaZ = 0;
    context->graphics->cameraPan.target = &context->graphics->cameraTarget;
    context->graphics->cameraShake.cameraPan = &context->graphics->cameraPan;
    context->graphics->cameraShake.intensity = 0;

    SysTask_Start(DialgaPalkiaArrival_UpdateCameraShake, &context->graphics->cameraShake, 0x1000);
}

static void DialgaPalkiaArrival_UpdateSummonBubble(SysTask *task, void *param)
{
    SummonBubbleTask *sbtask = param;
    f32 scaleSteps[] = {
        0.0f,
        0.3f,
        0.6f,
        1.0f,
        1.2f,
        1.1f,
        1.0f,
    };

    switch (sbtask->step) {
    case DIALGA_PALKIA_ARRIVAL_SUMMON_BUBBLE_STEP_REVEAL:
        Easy3DObject_SetScale(&sbtask->summonBubble->object, FX32_CONST(scaleSteps[sbtask->scaleIndex]), FX32_CONST(1.00f), FX32_CONST(1.00f));
        Easy3DObject_SetScale(&sbtask->shadow->object, FX32_CONST(scaleSteps[sbtask->scaleIndex]), FX32_CONST(1.00f), FX32_CONST(1.00f));

        sbtask->scaleIndex++;

        Easy3DObject_SetVisible(&sbtask->summonBubble->object, 1);
        Easy3DObject_SetVisible(&sbtask->shadow->object, 1);

        sbtask->step++;
        break;
    case DIALGA_PALKIA_ARRIVAL_SUMMON_BUBBLE_STEP_GROW:
        if ((++sbtask->scaleIndex) >= NELEMS(scaleSteps)) {
            Sound_PlayPokemonCryEx(POKECRY_NORMAL, sbtask->speciesID, sbtask->pan, 80, HEAP_ID_SPEAR_PILLAR_CUTSCENE, 0);
            sbtask->step++;
        } else {
            Easy3DObject_SetScale(&sbtask->summonBubble->object, FX32_CONST(scaleSteps[sbtask->scaleIndex]), FX32_CONST(1.00f), FX32_CONST(1.00f));
            Easy3DObject_SetScale(&sbtask->shadow->object, FX32_CONST(scaleSteps[sbtask->scaleIndex]), FX32_CONST(1.00f), FX32_CONST(1.00f));
        }
        break;
    default:
        SysTask_Done(task);
        break;
    }
}

static void DialgaPalkiaArrival_InitSummonBubble(DialgaPalkiaArrivalContext *context, int index, int speciesID)
{
    SummonBubbleTask *sbTask = &context->summonBubbleTasks[index];

    sbTask->step = 0;
    sbTask->scaleIndex = 0;
    sbTask->speciesID = speciesID;
    sbTask->summonBubble = &context->models.summonBubble[index];
    sbTask->shadow = &context->models.shadow[index];

    if (index == 0) {
        sbTask->pan = -80;
    } else {
        sbTask->pan = +80;
    }

    SysTask_Start(DialgaPalkiaArrival_UpdateSummonBubble, sbTask, 0x1000);
}

BOOL DialgaPalkiaArrival_Update(void *param)
{
    DialgaPalkiaArrivalContext *context = param;

    switch (context->state) {
    case DIALGA_PALKIA_ARRIVAL_STATE_WAIT_FADE_IN:
        if (IsScreenFadeDone() == FALSE) {
            break;
        }

        context->state++;
    case DIALGA_PALKIA_ARRIVAL_STATE_PAN_CAMERA: {
        context->graphics->cameraPan.angleDeltaX = 0;
        context->graphics->cameraPan.angleDeltaY = 0;
        context->graphics->cameraPan.angleDeltaZ = 0;
        context->graphics->cameraPan.durationFrames = 60;
        context->graphics->cameraPan.camera = context->graphics->camera;
        context->graphics->cameraPan.positionDeltaX = 0;
        context->graphics->cameraPan.positionDeltaY = 0;
        context->graphics->cameraPan.positionDeltaZ = -FX32_CONST(80 - 34);
        context->graphics->cameraPan.target = &context->graphics->cameraTarget;
        CameraPan_Start(&context->graphics->cameraPan);
        context->state++;
    }
    case DIALGA_PALKIA_ARRIVAL_STATE_WAIT_PAN_CAMERA:
        if (CameraPan_Update(&context->graphics->cameraPan)) {
            context->timer = 0;
            context->state++;
            SpearPillarCutscene_ShowMessage(context->graphics, context->args, 14);
        }
        break;
    case DIALGA_PALKIA_ARRIVAL_STATE_WAIT_INTRODUCE_DIALGA:
        if (Text_IsPrinterActive(context->graphics->messagePrinter)) {
            break;
        }

        SpearPillarCutscene_ClearMessage(context->graphics);
        SpearPillarCutscene_ShowMessage(context->graphics, context->args, 16);
        context->state++;
    case DIALGA_PALKIA_ARRIVAL_STATE_WAIT_INTRODUCE_PALKIA:
        if (Text_IsPrinterActive(context->graphics->messagePrinter)) {
            break;
        }

        ScreenCaptureTemplate captureTemplate = {
            .displayMode = GX_DISPMODE_VRAM_C,
            .bgMode = GX_BGMODE_0,
            .bg0As = GX_BG0_AS_3D,
            .captureSize = GX_CAPTURE_SIZE_256x192,
            .captureMode = GX_CAPTURE_MODE_AB,
            .captureSrcA = GX_CAPTURE_SRCA_2D3D,
            .captureSrcB = GX_CAPTURE_SRCB_VRAM_0x00000,
            .captureDest = GX_CAPTURE_DEST_VRAM_C_0x00000,
            .captureEva = 4,
            .captureEvb = 12,
            .heapID = HEAP_ID_SPEAR_PILLAR_CUTSCENE
        };

        context->graphics->screenCapture = ScreenCapture_Start(&captureTemplate);

        DialgaPalkiaArrival_InitCameraShake(context);
        SpearPillarCutscene_ClearMessage(context->graphics);

        context->models.unk_10DC[0].playing = 1;
        context->models.unk_10DC[0].useAllAnimTracks = 1;
        context->state++;
    case DIALGA_PALKIA_ARRIVAL_STATE_WAIT_PALKIA_BALL_DELAY:
        if ((++context->timer) >= 60) {
            context->graphics->cameraShake.intensity = 4;
            context->models.unk_10DC[1].playing = 1;
            context->models.unk_10DC[1].useAllAnimTracks = 1;
            context->state++;
        }
        break;
    case DIALGA_PALKIA_ARRIVAL_STATE_WAIT_DIALGA_BALL_LAND:
        context->timer++;

        if (context->timer == 80) {
            Sound_PlayPannedEffect(SEQ_SE_DP_CLIMAX01_sseq, -70);
        }

        if (context->timer == 135) {
            Sound_PlayPannedEffect(SEQ_SE_DP_CLIMAX01_sseq, +70);
        }

        if ((context->timer == 310) || (context->timer == 375) || (context->timer == 432)) {
            Sound_PlayEffect(SEQ_SE_DP_CLIMAX06_sseq);
        }

        if ((context->timer == 284) || (context->timer == 338) || (context->timer == 406)) {
            Sound_PlayEffect(SEQ_SE_DP_CLIMAX09_sseq);
        }

        if (context->timer == 165) {
            Sound_PlayPannedEffect(SEQ_SE_DP_CLIMAX03_sseq, -70);
        }

        if (context->timer == 220) {
            Sound_PlayPannedEffect(SEQ_SE_DP_CLIMAX03_sseq, +70);
        }

        if (context->timer == 470) {
            Sound_PlayPannedEffect(SEQ_SE_DP_CLIMAX10_sseq, -70);
        }

        if (context->timer == 520) {
            Sound_PlayPannedEffect(SEQ_SE_DP_CLIMAX10_sseq, +70);
        }

        if (context->timer == 120) {
            context->graphics->cameraShake.intensity = 5;
        }

        if (context->timer == 210) {
            context->graphics->cameraShake.intensity = 0xFF;
        }

        if (context->models.unk_10DC[0].playing == 0) {
            context->graphics->cameraShake.intensity = 6;
            DialgaPalkiaArrival_InitSummonBubble(context, 0, SPECIES_DIALGA);
            Sound_PlayPannedEffect(SEQ_SE_DP_CLIMAX12_sseq, -70);
            context->state++;
        }
        break;
    case DIALGA_PALKIA_ARRIVAL_STATE_WAIT_PALKIA_BALL_LAND:
        if (context->models.unk_10DC[1].playing == 0) {
            context->graphics->cameraShake.intensity = 7;
            DialgaPalkiaArrival_InitSummonBubble(context, 1, SPECIES_PALKIA);
            Sound_PlayPannedEffect(SEQ_SE_DP_CLIMAX12_sseq, +70);
            context->state++;
            context->timer = 0;
        }
        break;
    case DIALGA_PALKIA_ARRIVAL_STATE_WAIT_SUMMON_BUBBLE_DELAY:
        if ((++context->timer) >= 30) {
            context->timer = 0;
            context->state++;
        }
        break;
    case DIALGA_PALKIA_ARRIVAL_STATE_FLASH_PULSE_1:
        context->graphics->cameraShake.intensity = 8;

        if (context->flashState == 0) {
            if (context->graphics->tint.brightness < 8) {
                context->graphics->tint.brightness += 1;
                G2_SetBlendBrightness(GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD, context->graphics->tint.brightness);
            } else {
                context->flashState = 1;
            }
        } else {
            if (context->graphics->tint.brightness > 0) {
                context->graphics->tint.brightness -= 2;
                G2_SetBlendBrightness(GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD, context->graphics->tint.brightness);
            } else {
                context->state++;
                context->flashState = 0;
            }
        }
        break;
    case DIALGA_PALKIA_ARRIVAL_STATE_FLASH_PULSE_2:
        if (context->flashState == 0) {
            if (context->graphics->tint.brightness < 12) {
                context->graphics->tint.brightness += 1;
                G2_SetBlendBrightness(GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD, context->graphics->tint.brightness);
            } else {
                context->flashState = 1;
            }
        } else {
            if (context->graphics->tint.brightness > 0) {
                context->graphics->tint.brightness -= 2;
                G2_SetBlendBrightness(GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD, context->graphics->tint.brightness);
            } else {
                context->state++;
                context->flashState = 0;
            }
        }
        break;
    case DIALGA_PALKIA_ARRIVAL_STATE_FLASH_PULSE_3:
        if (context->graphics->tint.brightness < (+16)) {
            context->graphics->tint.brightness += 2;
            G2_SetBlendBrightness(GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD, context->graphics->tint.brightness);
        } else {
            DialgaPalkiaArrival_ReleaseFallingBalls(context);
            DialgaPalkiaArrival_InitWhirlpool(context);
            context->state++;
        }
        break;
    case DIALGA_PALKIA_ARRIVAL_STATE_FADE_FROM_FLASH:
        if (context->graphics->tint.brightness != 0) {
            context->graphics->tint.brightness--;
            G2_SetBlendBrightness(GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD, context->graphics->tint.brightness);
        } else {
            ScreenCaptureTemplate unused = { // not used, but removing it causes checksum error.
                .displayMode = GX_DISPMODE_VRAM_C,
                .bgMode = GX_BGMODE_0,
                .bg0As = GX_BG0_AS_3D,
                .captureSize = GX_CAPTURE_SIZE_256x192,
                .captureMode = GX_CAPTURE_MODE_AB,
                .captureSrcA = GX_CAPTURE_SRCA_2D3D,
                .captureSrcB = GX_CAPTURE_SRCB_VRAM_0x00000,
                .captureDest = GX_CAPTURE_DEST_VRAM_C_0x00000,
                .captureEva = 4,
                .captureEvb = 12,
                .heapID = HEAP_ID_SPEAR_PILLAR_CUTSCENE
            };

            context->models.unk_934[0].playing = 1;
            context->models.unk_934[0].looping = 1;
            context->models.unk_934[0].playSecondaryAnim = 1;
            context->models.unk_934[1].playing = 1;
            context->models.unk_934[1].looping = 1;
            context->models.unk_934[1].playSecondaryAnim = 1;
            context->state++;
        }
        break;
    case DIALGA_PALKIA_ARRIVAL_STATE_GROW_WHIRLPOOL:
        if (context->models.unk_934[0].scale < FX32_CONST(0.80)) {
            context->models.unk_934[0].scale += FX32_CONST(0.02);
            context->models.unk_934[1].scale += FX32_CONST(0.02);
            Easy3DObject_SetScale(&context->models.unk_934[0].object, context->models.unk_934[0].scale, FX32_CONST(1.0), context->models.unk_934[0].scale);
            Easy3DObject_SetScale(&context->models.unk_934[1].object, context->models.unk_934[1].scale, FX32_CONST(1.0), context->models.unk_934[1].scale);
        } else {
            SpearPillarCutscene_ShowMessage(context->graphics, context->args, 18);
            context->state++;
        }
        break;
    case DIALGA_PALKIA_ARRIVAL_STATE_WAIT_CREATION_SPEECH:
        if (Text_IsPrinterActive(context->graphics->messagePrinter)) {
            break;
        }

        SpearPillarCutscene_ClearMessage(context->graphics);
        SpearPillarCutscene_ShowMessage(context->graphics, context->args, 19);

        context->state++;
        break;
    case DIALGA_PALKIA_ARRIVAL_STATE_SHRINK_WHIRLPOOL:
        if (Text_IsPrinterActive(context->graphics->messagePrinter)) {
            break;
        }

        if (context->models.unk_934[0].scale > FX32_CONST(0.10)) {
            context->models.unk_934[0].scale -= FX32_CONST(0.02);
            context->models.unk_934[1].scale -= FX32_CONST(0.02);
            Easy3DObject_SetScale(&context->models.unk_934[0].object, context->models.unk_934[0].scale, FX32_CONST(1.0), context->models.unk_934[0].scale);
            Easy3DObject_SetScale(&context->models.unk_934[1].object, context->models.unk_934[1].scale, FX32_CONST(1.0), context->models.unk_934[1].scale);
        } else {
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_SPEAR_PILLAR_CUTSCENE);
            context->state++;
        }
        break;
    case DIALGA_PALKIA_ARRIVAL_STATE_WAIT_FADE_OUT:
        if (IsScreenFadeDone() == FALSE) {
            break;
        }

        SpearPillarCutscene_ClearMessage(context->graphics);
        context->state++;
        break;
    case DIALGA_PALKIA_ARRIVAL_STATE_DONE:
        context->state = 0;
        context->timer = 0;
        return FALSE;
        break;
    }

    context->models.shadow[0].object.position = context->models.summonBubble[0].object.position;
    context->models.shadow[1].object.position = context->models.summonBubble[1].object.position;
    context->models.shadow[2].object.position = context->models.trainers[0].object.position;
    context->models.shadow[3].object.position = context->models.trainers[1].object.position;

    context->models.shadow[0].object.position.z -= (FX32_ONE * 2);
    context->models.shadow[1].object.position.z -= (FX32_ONE * 2);
    context->models.shadow[2].object.position.z -= (FX32_ONE * 2);
    context->models.shadow[3].object.position.z -= (FX32_ONE * 2);

    context->models.shadow[2].object.position.x -= FX32_ONE;
    context->models.shadow[3].object.position.x -= FX32_ONE;

    DialgaPalkiaArrival_UpdateScene(context);

    return TRUE;
}

BOOL DialgaPalkiaArrival_Exit(void *param)
{
    DialgaPalkiaArrivalContext *context = param;

    switch (context->state) {
    case DIALGA_PALKIA_ARRIVAL_EXIT_STATE_RELEASE_MODELS:
        DialgaPalkiaArrival_ReleaseModels(context);
        ScreenCapture_End(&context->graphics->screenCapture, GX_DISPMODE_GRAPHICS, GX_BGMODE_0, GX_BG0_AS_3D);
        context->state++;
        break;
    default:
        Heap_Free(context);
        return FALSE;
    }

    return TRUE;
}
