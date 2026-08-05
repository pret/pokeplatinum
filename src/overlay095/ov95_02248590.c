#include "overlay095/ov95_02248590.h"

#include <nitro.h>
#include <string.h>

#include "overlay095/ov95_02246C20.h"
#include "overlay095/ov95_022476F0.h"

#include "bg_window.h"
#include "camera.h"
#include "enums.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "math_util.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "unk_0202419C.h"

enum {
    BG_SCALE_START = 1152,
    BG_SCALE_RATE = 1,
    BG_SCALE_DURATION = 296
};

enum {
    TUBE_MODEL_SCALE = 7168,
    TUBE_MODEL_Y_OFFSET = 0xFFFE6800,
    TUBE_CAMERA_ANGLE_X = 60384
};

enum {
    BALL_ORBIT_RADIUS_Z = 81920,
    BALL_ORBIT_RADIUS_X = 167936,
    BALL_ENTRY_TARGET_Y = -8 << 12,
    BALL_ENTRY_DURATION = 30,
    BALL_INITIAL_ROTATION_SPEED = 16384,
    BALL_TARGET_ROTATION_SPEED = 3328
};

enum {
    BALL_EXIT_Y_ACCEL = 512
};

enum {
    BALL_RETURN_START_Y = -128 << 12,
    BALL_RETURN_TARGET_Y = 0xFFFEF000,
    BALL_RETURN_ENTRY_DURATION = 20,
    BALL_RETURN_SCALE = 8192
};

enum {
    BALL_RETURN_COAST_DURATION = 110,
    BALL_RETURN_FINAL_TARGET_Y = 0xFFFC5800,
    BALL_RETURN_FINAL_APPROACH_DURATION = 53,
};

enum {
    BALL_RETURN_COAST2_DURATION = 1,
    BALL_RETURN_EXIT_Y_STEP = 131072
};

enum {
    BG_SCROLL_ACCEL = 288,
    BG_SCROLL_MAX = 512 << 12
};

enum {
    PARTICLE_ACTIVATE_INTERVAL = 12
};

enum {
    PARTICLE_SCROLL_SPEED = 135168,
    SPRITE_RNG_SEED = 56182737
};

typedef struct AxisRotAnimator {
    fx16 currentValue;
    fx16 step;
    fx16 targetValue;
    u16 framesRemaining;
} AxisRotAnimator;

typedef struct BallPathState {
    Trade3DModel *model;
    Trade3DScene *scene;
    VecFx32 orbitCenter;
    VecFx32 currentPos;
    VecFx16 rotation;
    fx32 currentY;
    fx32 yStep;
    fx32 yAccel;
    fx32 unused_34;
    fx32 orbitRadiusX;
    fx32 orbitRadiusZ;
    fx32 orbitRadiusXStep;
    fx32 orbitRadiusZStep;
    fx32 targetOrbitRadiusX;
    fx32 targetOrbitRadiusZ;
    u32 orbitTransitionFrames;
    s16 angleAccum;
    s16 rotationSpeed;
    s16 targetRotationSpeed;
    s16 rotationSpeedStep;
    AxisRotAnimator axisRotAnimators[3];
    u32 rotSpeedTransitionFrames;
    BOOL exitedView;
    BOOL midpointReached;
    int entryFramesRemaining;
} BallPathState;

typedef struct TradeTubePhase {
    TradeSequenceData *sequenceData;
    int subStepCounter;
    int timer;
    SpriteAnimResources animResources;
    Sprite *sprites[20][2];
    u32 rngSeed;
    BgConfig *bgConfig;
    PaletteShimmerEffect *shimmerEffect;
    BOOL shimmerActive;
    BgScaleAnimation *bgScaleAnim;
    volatile BOOL bgScaleAnimDone;
    Trade3DScene *scene;
    Trade3DModel *model;
    BallPathState ballAnim;
    SysTask *task0;
    SysTask *task1;
    BOOL screenSwapPending;
} TradeTubePhase;

typedef struct TubeParticleScrollState {
    SysTask **taskHandle;
    TradeTubePhase *phase;
    BOOL spriteActive[20];
    VecFx32 spritePos[20];
    int activateTimer;
    int nextSpriteToActivate;
} TubeParticleScrollState;

typedef struct TubeBgScrollState {
    TradeTubePhase *phase;
    TubeParticleScrollState particleState;
    BgConfig *bgConfig;
    fx32 mainBgStartOffset;
    fx32 subBgStartOffset;
    fx32 scrollAccel;
    fx32 totalScrolled;
    SysTask **taskHandle;
    SysTask *particleTask;
} TubeBgScrollState;

typedef struct ModelFadeState {
    fx32 currentValue;
    fx32 step;
    fx32 targetValue;
    int framesRemaining;
    Trade3DModel *model;
} ModelFadeState;

static void TradeTubePhase_Free3DScene(TradeTubePhase *ttPhase);
static void TradeTubePhase_Tick(TradeTubePhase *ttPhase);
static int TradeTubePhase_Setup(TradeTubePhase *ttPhase, int *unused);
static int TradeTubePhase_WaitForAnimation(TradeTubePhase *ttPhase, int *subStepCounter);
static int TradeTubePhase_AnimateBall(TradeTubePhase *ttPhase, int *subStepCounter);
static int TradeTubePhase_Exit(TradeTubePhase *ttPhase, int *subStepCounter);
static void TradeTubePhase_InitGraphics(TradeTubePhase *ttPhase);
static void TradeTubePhase_FreeGraphics(TradeTubePhase *ttPhase);
static void TradeTubePhase_Init3DScene(TradeTubePhase *ttPhase);
static void TradeTubePhase_CreateSprites(TradeTubePhase *ttPhase);
static void TradeTubePhase_DeleteSprites(TradeTubePhase *ttPhase);
static void TradeTubePhase_RequestScreenSwap(TradeTubePhase *ttPhase);
static void TradeTubePhase_ScreenSwapTask(SysTask *task, void *param);
static void TubeParticleScrollState_Task(SysTask *task, void *param);
static void TubeParticleScrollState_Stop(SysTask *task);
static void TubeBgScrollState_Start(TradeTubePhase *ttPhase, SysTask **task);
static void TubeBgScrollState_Task(SysTask *task, void *param);
static void TubeBgScrollState_Stop(SysTask *task);
static void ModelFadeState_Start(Trade3DModel *model, int currentValue, int targetValue, int framesRemaining);
static void ModelFadeState_Task(SysTask *task, void *param);
static SysTask *BallPathState_Start(TradeTubePhase *ttPhase);
static void BallPathState_SetRotationSpeed(BallPathState *bpState, fx32 targetSpeed, int duration);
static void BallPathState_SetOrbitRadius(BallPathState *bpState, fx32 targetRadiusX, fx32 targetRadiusZ, int duration);
static void BallPathState_SetAxisRotStep(BallPathState *bpState, int axis, fx32 targetValue, int duration);
static void BallPathState_Tick(BallPathState *bpState);
static void BallPathState_EntryTask(SysTask *task, void *param);
static void BallPathState_ExitTask(SysTask *task, void *param);
static BOOL BallPathState_IsDone(SysTask *task);
static BOOL BallPathState_IsAtMidpoint(SysTask *task);
static void BallPathState_StartReturn(SysTask *task);
static void BallPathState_ReturnApproachTask(SysTask *task, void *param);
static void BallPathState_ReturnCoastTask(SysTask *task, void *param);
static void BallPathState_ReturnFinalApproachTask(SysTask *task, void *param);
static void BallPathState_ReturnCoast2Task(SysTask *task, void *param);
static void BallPathState_ReturnExitTask(SysTask *task, void *param);

void *TradeTubePhase_New(TradeSequenceData *sequenceData)
{
    TradeTubePhase *ttPhase = Heap_Alloc(HEAP_ID_58, sizeof(TradeTubePhase));

    if (ttPhase) {
        ttPhase->sequenceData = sequenceData;
        ttPhase->subStepCounter = 0;
        ttPhase->bgConfig = TradeSequence_GetBgConfig(sequenceData);
        ttPhase->scene = NULL;
        ttPhase->shimmerEffect = NULL;
        ttPhase->bgScaleAnim = NULL;
        ttPhase->task0 = NULL;
        ttPhase->task1 = NULL;
        ttPhase->rngSeed = MTRNG_Next();
        ttPhase->bgScaleAnimDone = 0;
        ttPhase->screenSwapPending = 0;

        SysTask_ExecuteAfterVBlank(TradeTubePhase_ScreenSwapTask, ttPhase, 0);
    }

    return ttPhase;
}

void TradeTubePhase_Free(void *param)
{
    TradeTubePhase *ttPhase = param;
    OSIntrMode mode = OS_DisableInterrupts();

    if (ttPhase) {
        TradeTubePhase_FreeGraphics(ttPhase);
        TradeTubePhase_Free3DScene(ttPhase);
        TradeTubePhase_DeleteSprites(ttPhase);

        if (ttPhase->task0) {
            SysTask_Done(ttPhase->task0);
        }

        if (ttPhase->task1) {
            TubeBgScrollState_Stop(ttPhase->task1);
        }

        MTRNG_SetSeed(ttPhase->rngSeed);
        Heap_Free(ttPhase);
    }

    OS_RestoreInterrupts(mode);
}

BOOL TradeTubePhase_Run(void *param, int *state)
{
    static int (*const sStepFuncs[])(TradeTubePhase *, int *) = {
        TradeTubePhase_Setup,
        TradeTubePhase_WaitForAnimation,
        TradeTubePhase_AnimateBall,
        TradeTubePhase_Exit
    };

    TradeTubePhase *ttPhase = param;

    if ((*state) < NELEMS(sStepFuncs)) {
        if (sStepFuncs[*state](ttPhase, &(ttPhase->subStepCounter))) {
            (*state)++;
            ttPhase->subStepCounter = 0;
        }

        TradeTubePhase_Tick(ttPhase);

        return FALSE;
    }

    return TRUE;
}

static void TradeTubePhase_Tick(TradeTubePhase *ttPhase)
{
    if (ttPhase->scene) {
        G3X_Reset();

        Trade3DScene_Render(ttPhase->scene);
        G3_RequestSwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_Z);
    }
}

static int TradeTubePhase_Setup(TradeTubePhase *ttPhase, int *unused)
{
    TradeTubePhase_InitGraphics(ttPhase);
    TradeTubePhase_Init3DScene(ttPhase);
    TradeTubePhase_CreateSprites(ttPhase);
    StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 8, 1, HEAP_ID_58);

    return 1;
}

static int TradeTubePhase_WaitForAnimation(TradeTubePhase *ttPhase, int *subStepCounter)
{
    static int frameCount = 0;

    switch (*subStepCounter) {
    case 0:
        if (IsScreenFadeDone()) {
            frameCount = 0;
            (*subStepCounter)++;
        }
        break;

    case 1:
        if (frameCount < 30) {
            frameCount++;
        }

        if (ttPhase->bgScaleAnimDone) {
            return 1;
        }
        break;
    }

    return 0;
}

static int TradeTubePhase_AnimateBall(TradeTubePhase *ttPhase, int *subStepCounter)
{
    switch (*subStepCounter) {
    case 0:
        ttPhase->timer = 0;
        (*subStepCounter)++;
        break;
    case 1:
        if (++(ttPhase->timer) > 8) {
            ModelFadeState_Start(ttPhase->model, 0, 31, 24);
            ttPhase->task0 = BallPathState_Start(ttPhase);
            Trade3DModel_SetAlpha(ttPhase->model, 0);
            Trade3DModel_SetEnabled(ttPhase->model, 1);
            (*subStepCounter)++;
        }
        break;
    case 2:
        if (BallPathState_IsAtMidpoint(ttPhase->task0)) {
            (*subStepCounter)++;
        }
        break;
    case 3:
        if (BallPathState_IsDone(ttPhase->task0)) {
            (*subStepCounter)++;
        }
        break;
    case 4:
        TradeTubePhase_RequestScreenSwap(ttPhase);
        return 1;
    }

    return 0;
}

static int TradeTubePhase_Exit(TradeTubePhase *ttPhase, int *subStepCounter)
{
    switch (*subStepCounter) {
    case 0:
        BallPathState_StartReturn(ttPhase->task0);
        ttPhase->timer = 0;
        (*subStepCounter)++;
        break;
    case 1:
        if (++(ttPhase->timer) > 2) {
            ttPhase->timer = 0;
            PaletteShimmerEffect_Stop(ttPhase->shimmerEffect);
            (*subStepCounter)++;
        }
        break;
    case 2:
        if (ttPhase->shimmerActive == 0) {
            TubeBgScrollState_Start(ttPhase, &(ttPhase->task1));
            (*subStepCounter)++;
        }
        break;
    case 3:
        if (ttPhase->timer < 40) {
            if (++(ttPhase->timer) == 40) {
                Sound_PlayEffect(SEQ_SE_DP_KOUKAN10);
            }
        }

        if (BallPathState_IsDone(ttPhase->task0)) {
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_WHITE, 4, 1, HEAP_ID_58);
            (*subStepCounter)++;
        }
        break;
    case 4:
        if (IsScreenFadeDone()) {
            return 1;
        }
    }

    return 0;
}

static void TradeTubePhase_InitGraphics(TradeTubePhase *ttPhase)
{
    static const GXBanks banks = {
        GX_VRAM_BG_128_B,
        GX_VRAM_BGEXTPLTT_23_G,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_32_H,
        GX_VRAM_OBJ_16_F,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_0_A,
        GX_VRAM_TEXPLTT_0123_E
    };
    static const GraphicsModes modes = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_4,
        GX_BGMODE_4,
        GX_BG0_AS_3D
    };
    static const BgTemplate template1 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_1024x1024,
        .colorMode = GX_BG_COLORMODE_256,
        .screenBase = GX_BG_SCRBASE_0xb000,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 2,
        .areaOver = 1,
        .mosaic = FALSE,
    };
    static const BgTemplate template2 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_256,
        .screenBase = GX_BG_SCRBASE_0xf000,
        .charBase = GX_BG_CHARBASE_0x10000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 3,
        .areaOver = 1,
        .mosaic = FALSE,
    };
    static const u16 sPaletteOffsets[] = {
        32,
        96,
        160,
        224,
    };
    u32 backgroundIndex;

    GXLayers_SetBanks(&banks);
    GX_SetDispSelect(GX_DISP_SELECT_SUB_MAIN);
    SetAllGraphicsModes(&modes);

    Bg_InitFromTemplate(ttPhase->bgConfig, BG_LAYER_MAIN_2, &template1, 1);
    Bg_InitFromTemplate(ttPhase->bgConfig, BG_LAYER_SUB_2, &template1, 1);

    OSIntrMode savedInterrupts = OS_DisableInterrupts();

    Bg_InitFromTemplate(ttPhase->bgConfig, BG_LAYER_MAIN_3, &template2, 2);
    Bg_InitFromTemplate(ttPhase->bgConfig, BG_LAYER_SUB_3, &template2, 2);

    OS_RestoreInterrupts(savedInterrupts);

    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__DEMO_TRADE, 2, ttPhase->bgConfig, 2, 0, 0, 1, HEAP_ID_58);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__DEMO_TRADE, 2, ttPhase->bgConfig, 6, 0, 0, 1, HEAP_ID_58);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__DEMO_TRADE, 0, ttPhase->bgConfig, 2, 0, 0, 1, HEAP_ID_58);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__DEMO_TRADE, 0, ttPhase->bgConfig, 6, 0, 0, 1, HEAP_ID_58);

    backgroundIndex = TradeSequence_GetBackground(ttPhase->sequenceData);

    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__DEMO_TRADE, 3, 0, 0, 0x20, HEAP_ID_58);
    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__DEMO_TRADE, 3, 4, 0, 0x20, HEAP_ID_58);
    Graphics_LoadPaletteWithSrcOffset(93, 3, 0, sPaletteOffsets[backgroundIndex], 0x20, 0x40, HEAP_ID_58);
    Graphics_LoadPaletteWithSrcOffset(93, 3, 4, sPaletteOffsets[backgroundIndex], 0x20, 0x40, HEAP_ID_58);

    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__DEMO_TRADE, 5, ttPhase->bgConfig, 3, 0, 0, 1, HEAP_ID_58);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__DEMO_TRADE, 5, ttPhase->bgConfig, 7, 0, 0, 1, HEAP_ID_58);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__DEMO_TRADE, 4, ttPhase->bgConfig, 3, 0, 0, 1, HEAP_ID_58);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__DEMO_TRADE, 4, ttPhase->bgConfig, 7, 0, 0, 1, HEAP_ID_58);

    u8 *clearBuf = Heap_Alloc(HEAP_ID_58, 96);

    if (clearBuf) {
        MI_CpuClear32(clearBuf, 96);
        DC_FlushRange(clearBuf, 96);

        GX_BeginLoadBGExtPltt();
        GXS_BeginLoadBGExtPltt();
        GX_LoadBGExtPltt(clearBuf, 0x6000, 96);
        GXS_LoadBGExtPltt(clearBuf, 0x6000, 96);
        GX_EndLoadBGExtPltt();
        GXS_EndLoadBGExtPltt();

        Heap_Free(clearBuf);
    }

    Bg_SetOffset(ttPhase->bgConfig, BG_LAYER_SUB_2, 3, -256);
    Bg_ToggleLayer(BG_LAYER_SUB_3, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
    Bg_SetOffset(ttPhase->bgConfig, BG_LAYER_MAIN_3, 3, 0);

    ttPhase->shimmerEffect = PaletteShimmerEffect_New(&(ttPhase->shimmerActive), 1);
    ttPhase->bgScaleAnim = BgScaleAnimation_New(ttPhase->bgConfig, BG_SCALE_START, 0x1000, BG_SCALE_RATE, BG_SCALE_DURATION, 0, &(ttPhase->bgScaleAnimDone));
}

static void TradeTubePhase_FreeGraphics(TradeTubePhase *ttPhase)
{
    if (ttPhase->shimmerActive) {
        PaletteShimmerEffect_Free(ttPhase->shimmerEffect);
    }

    Bg_FreeTilemapBuffer(ttPhase->bgConfig, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(ttPhase->bgConfig, BG_LAYER_SUB_2);
    Bg_FreeTilemapBuffer(ttPhase->bgConfig, BG_LAYER_MAIN_3);
    Bg_FreeTilemapBuffer(ttPhase->bgConfig, BG_LAYER_SUB_3);
}

static void TradeTubePhase_Init3DScene(TradeTubePhase *ttPhase)
{
    static const GXRgb sEdgeColors[8] = {
        GX_RGB(4, 4, 4),
        GX_RGB(4, 4, 4),
        GX_RGB(4, 4, 4),
        GX_RGB(4, 4, 4),
        GX_RGB(4, 4, 4),
        GX_RGB(4, 4, 4),
        GX_RGB(4, 4, 4),
        GX_RGB(4, 4, 4)
    };

    NNS_G3dInit();

    G3X_InitMtxStack();
    G3X_SetShading(GX_SHADING_TOON);
    G3X_AntiAlias(1);
    G3X_AlphaTest(0, 0);
    G3X_AlphaBlend(1);
    G3X_EdgeMarking(1);
    G3X_SetEdgeColorTable(sEdgeColors);
    G3X_SetClearColor(GX_RGB(31, 31, 16), 0, 0x7fff, 63, 0);
    G3_SwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_W);
    G3_ViewPort(0, 0, 255, 191);

    NNS_GfdInitFrmTexVramManager(1, 1);
    NNS_GfdInitFrmPlttVramManager(0x4000, 1);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    G2_SetBG0Priority(0);

    ttPhase->scene = Trade3DScene_New(1, 0, 0, 0);
    ttPhase->model = Trade3DModel_Load(ttPhase->scene, 0, NARC_INDEX_GRAPHIC__DEMO_TRADE, 27, 0, -122880 + TUBE_MODEL_Y_OFFSET, 0, 0);

    static CameraAngle cameraAngle;

    cameraAngle.x = TUBE_CAMERA_ANGLE_X;
    cameraAngle.y = 0;
    cameraAngle.z = 0;

    Trade3DScene_SetCameraAngle(ttPhase->scene, &cameraAngle);

    Trade3DModel_SetScale(ttPhase->model, TUBE_MODEL_SCALE);
}

static void TradeTubePhase_Free3DScene(TradeTubePhase *ttPhase)
{
    if (ttPhase->scene) {
        Trade3DScene_Free(ttPhase->scene);
    }
}

static void TradeTubePhase_CreateSprites(TradeTubePhase *ttPhase)
{
    NNSG2dImagePaletteProxy plttProxy;
    NNSG2dImageProxy imgProxy;
    SpriteResourcesHeader header;
    fx32 x, y;

    SpriteAnimResources_Load(&ttPhase->animResources, 93, 11, 12);

    NNS_G2dInitImagePaletteProxy(&plttProxy);
    NNS_G2dInitImageProxy(&imgProxy);

    Graphics_LoadImageMapping(93, 13, 1, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 0, 58, &imgProxy);
    Graphics_LoadImageMapping(93, 13, 1, 0, 0, NNS_G2D_VRAM_TYPE_2DSUB, 0, 58, &imgProxy);
    Graphics_LoadPartialPalette(93, 14, NNS_G2D_VRAM_TYPE_2DMAIN, 0, 58, &plttProxy);
    Graphics_LoadPartialPalette(93, 14, NNS_G2D_VRAM_TYPE_2DSUB, 0, 58, &plttProxy);
    SpriteResourcesHeader_InitFromAnimResources(&header, &ttPhase->animResources, &imgProxy, &plttProxy, 1);
    MTRNG_SetSeed(SPRITE_RNG_SEED);

    for (int i = 0; i < 20; i++) {
        x = 12 + (MTRNG_Next() % 232);
        y = -28 + (MTRNG_Next() % 452);

        ttPhase->sprites[i][0] = TradeSequence_AddSprite(ttPhase->sequenceData, &header, x, y, 0, NNS_G2D_VRAM_TYPE_2DMAIN);
        ttPhase->sprites[i][1] = TradeSequence_AddSprite(ttPhase->sequenceData, &header, x, y + 56, 0, NNS_G2D_VRAM_TYPE_2DMAIN);

        Sprite_SetAnim(ttPhase->sprites[i][0], 0);
        Sprite_SetAnim(ttPhase->sprites[i][1], 1);
        Sprite_SetDrawFlag(ttPhase->sprites[i][0], FALSE);
        Sprite_SetDrawFlag(ttPhase->sprites[i][1], FALSE);
    }
}

static void TradeTubePhase_DeleteSprites(TradeTubePhase *ttPhase)
{
    for (int i = 0; i < 20; i++) {
        if (ttPhase->sprites[i][0]) {
            Sprite_Delete(ttPhase->sprites[i][0]);
        }

        if (ttPhase->sprites[i][1]) {
            Sprite_Delete(ttPhase->sprites[i][1]);
        }
    }

    SpriteAnimResources_Free(&ttPhase->animResources);
}

static void TradeTubePhase_RequestScreenSwap(TradeTubePhase *ttPhase)
{
    ttPhase->screenSwapPending = 1;
}

static void TradeTubePhase_ScreenSwapTask(SysTask *task, void *param)
{
    TradeTubePhase *ttPhase = param;

    if (ttPhase->screenSwapPending) {
        ttPhase->screenSwapPending = 0;

        Bg_SetOffset(ttPhase->bgConfig, BG_LAYER_MAIN_2, 3, -256);
        Bg_SetOffset(ttPhase->bgConfig, BG_LAYER_SUB_2, 3, 0);
        Bg_ToggleLayer(BG_LAYER_MAIN_3, 0);
        Bg_ToggleLayer(BG_LAYER_SUB_3, 1);
        GX_SetDispSelect(GX_DISP_SELECT_MAIN_SUB);
        SysTask_Done(task);
    }
}

static void TubeParticleScrollState_Start(TradeTubePhase *ttPhase, SysTask **task, TubeParticleScrollState *tpsState)
{
    tpsState->phase = ttPhase;
    tpsState->taskHandle = task;
    tpsState->activateTimer = 0;
    tpsState->nextSpriteToActivate = 0;

    for (int i = 0; i < 20; i++) {
        tpsState->spriteActive[i] = 0;
        tpsState->spritePos[i] = *(Sprite_GetPosition(ttPhase->sprites[i][0]));
    }

    *(tpsState->taskHandle) = SysTask_Start(TubeParticleScrollState_Task, tpsState, 0);

    if (*(tpsState->taskHandle) == NULL) {
        Heap_Free(tpsState);
    }
}

static void TubeParticleScrollState_Task(SysTask *unused, void *param)
{
    TubeParticleScrollState *tpsState = param;
    VecFx32 spritePos;

    if (++(tpsState->activateTimer) > PARTICLE_ACTIVATE_INTERVAL) {
        tpsState->activateTimer = 0;

        if (tpsState->nextSpriteToActivate < 20) {
            tpsState->spriteActive[tpsState->nextSpriteToActivate] = 1;
            tpsState->nextSpriteToActivate++;
        }
    }

    for (int i = 0; i < 20; i++) {
        tpsState->spritePos[i].y += PARTICLE_SCROLL_SPEED;

        if (tpsState->spritePos[i].y >= (424 << 12)) {
            tpsState->spritePos[i].y = -114688 + (tpsState->spritePos[i].y - 1736704);

            if (tpsState->spriteActive[i]) {
                Sprite_SetDrawFlag(tpsState->phase->sprites[i][0], TRUE);
                Sprite_SetDrawFlag(tpsState->phase->sprites[i][1], TRUE);
            }
        }

        Sprite_SetPosition(tpsState->phase->sprites[i][0], &(tpsState->spritePos[i]));

        spritePos = tpsState->spritePos[i];
        spritePos.y += 229376;

        Sprite_SetPosition(tpsState->phase->sprites[i][1], &spritePos);
    }
}

static void TubeParticleScrollState_Stop(SysTask *task)
{
    if (task) {
        TubeParticleScrollState *tpsState = SysTask_GetParam(task);

        *(tpsState->taskHandle) = NULL;
        SysTask_Done(task);
    }
}

static void TubeBgScrollState_Start(TradeTubePhase *ttPhase, SysTask **task)
{
    TubeBgScrollState *tbsState = Heap_Alloc(HEAP_ID_58, sizeof(TubeBgScrollState));

    if (tbsState) {
        tbsState->phase = ttPhase;
        tbsState->bgConfig = ttPhase->bgConfig;
        tbsState->mainBgStartOffset = Bg_GetYOffset(tbsState->bgConfig, 2) << 12;
        tbsState->subBgStartOffset = Bg_GetYOffset(tbsState->bgConfig, 6) << 12;
        tbsState->scrollAccel = 0;
        tbsState->totalScrolled = 0;
        tbsState->taskHandle = task;
        tbsState->particleTask = NULL;

        *task = SysTask_ExecuteOnVBlank(TubeBgScrollState_Task, tbsState, 0);

        if (*task == NULL) {
            Heap_Free(tbsState);
        }
    }
}

static void TubeBgScrollState_Task(SysTask *unused, void *param)
{
    TubeBgScrollState *tbsState = param;

    if (tbsState->totalScrolled < BG_SCROLL_MAX) {
        tbsState->scrollAccel += BG_SCROLL_ACCEL;
        tbsState->totalScrolled += tbsState->scrollAccel;

        Bg_SetOffset(tbsState->bgConfig, BG_LAYER_MAIN_2, 3, (tbsState->mainBgStartOffset - tbsState->totalScrolled) >> 12);
        Bg_SetOffset(tbsState->bgConfig, BG_LAYER_SUB_2, 3, (tbsState->subBgStartOffset - tbsState->totalScrolled) >> 12);

        if (tbsState->totalScrolled >= (128 << 12)) {
            if (tbsState->particleTask == NULL) {
                TubeParticleScrollState_Start(tbsState->phase, &(tbsState->particleTask), &(tbsState->particleState));
            }
        }
    }
}

static void TubeBgScrollState_Stop(SysTask *task)
{
    if (task) {
        TubeBgScrollState *tbsState = SysTask_GetParam(task);

        *(tbsState->taskHandle) = NULL;
        TubeParticleScrollState_Stop(tbsState->particleTask);
        Heap_Free(tbsState);
        SysTask_Done(task);
    }
}

static void ModelFadeState_Start(Trade3DModel *model, int currentValue, int targetValue, int framesRemaining)
{
    ModelFadeState *mfState = Heap_Alloc(HEAP_ID_58, sizeof(ModelFadeState));

    if (mfState) {
        mfState->currentValue = currentValue << 12;
        mfState->targetValue = targetValue << 12;
        mfState->step = (mfState->targetValue - mfState->currentValue) / framesRemaining;
        mfState->framesRemaining = framesRemaining;
        mfState->model = model;

        Trade3DModel_SetAlpha(model, currentValue);
        SysTask_Start(ModelFadeState_Task, mfState, 0);
    }
}

static void ModelFadeState_Task(SysTask *task, void *param)
{
    ModelFadeState *mfState = param;

    if (--(mfState->framesRemaining) > 0) {
        mfState->currentValue += mfState->step;
        Trade3DModel_SetAlpha(mfState->model, mfState->currentValue >> 12);
    } else {
        Trade3DModel_SetAlpha(mfState->model, mfState->targetValue >> 12);
        Heap_Free(mfState);
        SysTask_Done(task);
    }
}

static SysTask *BallPathState_Start(TradeTubePhase *ttPhase)
{
    BallPathState *bpState = &(ttPhase->ballAnim);

    Trade3DModel_GetPosition(ttPhase->model, &bpState->orbitCenter);
    Trade3DModel_GetRotation(ttPhase->model, &bpState->rotation);

    bpState->currentPos = bpState->orbitCenter;
    bpState->scene = ttPhase->scene;
    bpState->model = ttPhase->model;
    bpState->currentY = bpState->orbitCenter.y;
    bpState->yStep = (BALL_ENTRY_TARGET_Y - bpState->orbitCenter.y) / BALL_ENTRY_DURATION;
    bpState->entryFramesRemaining = BALL_ENTRY_DURATION;
    bpState->orbitRadiusX = 0;
    bpState->orbitRadiusZ = 0;
    bpState->orbitRadiusXStep = 0;
    bpState->orbitRadiusZStep = 0;
    bpState->angleAccum = 0;
    bpState->rotationSpeed = BALL_INITIAL_ROTATION_SPEED;
    bpState->rotationSpeedStep = 0;
    bpState->midpointReached = 0;

    for (int i = 0; i < 3; i++) {
        bpState->axisRotAnimators[i].currentValue = 0;
        bpState->axisRotAnimators[i].step = 0;
        bpState->axisRotAnimators[i].targetValue = 0;
        bpState->axisRotAnimators[i].framesRemaining = 0;
    }

    bpState->exitedView = 0;

    BallPathState_SetRotationSpeed(bpState, BALL_TARGET_ROTATION_SPEED, BALL_ENTRY_DURATION);
    BallPathState_SetOrbitRadius(bpState, BALL_ORBIT_RADIUS_X, BALL_ORBIT_RADIUS_Z, BALL_ENTRY_DURATION);

    return SysTask_Start(BallPathState_EntryTask, bpState, 0);
}

static void BallPathState_SetRotationSpeed(BallPathState *bpState, fx32 targetSpeed, int duration)
{
    if (duration) {
        bpState->rotationSpeedStep = (int)(targetSpeed - bpState->rotationSpeed) / duration;
        bpState->rotationSpeed += bpState->rotationSpeedStep;
    } else {
        bpState->rotationSpeed = targetSpeed;
    }

    bpState->targetRotationSpeed = targetSpeed;
    bpState->rotSpeedTransitionFrames = duration;
}

static void BallPathState_SetOrbitRadius(BallPathState *bpState, fx32 targetRadiusX, fx32 targetRadiusZ, int duration)
{
    if (duration) {
        bpState->orbitRadiusXStep = (targetRadiusX - bpState->orbitRadiusX) / duration;
        bpState->orbitRadiusZStep = (targetRadiusZ - bpState->orbitRadiusZ) / duration;
        bpState->orbitRadiusX += bpState->orbitRadiusXStep;
        bpState->orbitRadiusZ += bpState->orbitRadiusZStep;
        bpState->targetOrbitRadiusX = targetRadiusX;
        bpState->targetOrbitRadiusZ = targetRadiusZ;
    }

    bpState->orbitTransitionFrames = duration;
}

static void BallPathState_SetAxisRotStep(BallPathState *bpState, int axis, fx32 targetValue, int duration)
{
    if (duration) {
        bpState->axisRotAnimators[axis].step = (targetValue - bpState->axisRotAnimators[axis].currentValue) / duration;
    }

    bpState->axisRotAnimators[axis].targetValue = targetValue;
    bpState->axisRotAnimators[axis].framesRemaining = duration;
}

static void BallPathState_Tick(BallPathState *bpState)
{
    int angleDegrees;

    if (bpState->rotSpeedTransitionFrames) {
        bpState->rotSpeedTransitionFrames--;

        if (bpState->rotSpeedTransitionFrames) {
            bpState->rotationSpeed += bpState->rotationSpeedStep;
        } else {
            bpState->rotationSpeed = bpState->targetRotationSpeed;
        }
    }

    bpState->angleAccum += bpState->rotationSpeed;
    angleDegrees = (u16)(bpState->angleAccum) / (65536 / 360);

    if (angleDegrees >= 360) {
        angleDegrees -= 360;
    }

    if (bpState->orbitTransitionFrames) {
        bpState->orbitRadiusX += bpState->orbitRadiusXStep;
        bpState->orbitRadiusZ += bpState->orbitRadiusZStep;
        bpState->orbitTransitionFrames--;

        if (bpState->orbitTransitionFrames == 0) {
            bpState->orbitRadiusX = bpState->targetOrbitRadiusX;
            bpState->orbitRadiusZ = bpState->targetOrbitRadiusZ;
        }
    }

    bpState->currentPos.x = bpState->orbitCenter.x + FX_Mul(CalcCosineDegrees(angleDegrees), bpState->orbitRadiusX);
    bpState->currentPos.z = bpState->orbitCenter.z + FX_Mul(CalcSineDegrees(angleDegrees), bpState->orbitRadiusZ);
    bpState->rotation.y += bpState->rotationSpeed;

    for (int i = 0; i < 3; i++) {
        if (bpState->axisRotAnimators[i].framesRemaining) {
            bpState->axisRotAnimators[i].framesRemaining--;

            if (bpState->axisRotAnimators[i].framesRemaining == 0) {
                bpState->axisRotAnimators[i].currentValue = bpState->axisRotAnimators[i].targetValue;
            } else {
                bpState->axisRotAnimators[i].currentValue += bpState->axisRotAnimators[i].step;
            }
        }
    }

    bpState->rotation.x += bpState->axisRotAnimators[0].currentValue;
    bpState->rotation.y += bpState->axisRotAnimators[1].currentValue;
    bpState->rotation.z += bpState->axisRotAnimators[2].currentValue;
}

static void BallPathState_EntryTask(SysTask *task, void *param)
{
    BallPathState *bpState = param;

    if (bpState->entryFramesRemaining) {
        bpState->currentY += bpState->yStep;
        bpState->currentPos.y = bpState->currentY;

        if (--(bpState->entryFramesRemaining) <= 0) {
            bpState->yAccel = BALL_EXIT_Y_ACCEL;
            bpState->yStep = 0;

            BallPathState_SetOrbitRadius(bpState, 0x4000, 0x4000, 60);
            BallPathState_SetAxisRotStep(bpState, 0, -0x800, 30);
            bpState->midpointReached = 1;
            SysTask_SetCallback(task, BallPathState_ExitTask);
        }
    }

    BallPathState_Tick(bpState);
    Trade3DModel_SetPosition(bpState->model, &(bpState->currentPos));
    Trade3DModel_SetRotation(bpState->model, &(bpState->rotation));
}

static void BallPathState_ExitTask(SysTask *unused, void *param)
{
    BallPathState *bpState = param;

    if (bpState->exitedView == 0) {
        bpState->yStep += bpState->yAccel;
        bpState->currentY += bpState->yStep;
        bpState->currentPos.y = bpState->currentY;

        BallPathState_Tick(bpState);
        Trade3DModel_SetPosition(bpState->model, &(bpState->currentPos));
        Trade3DModel_SetRotation(bpState->model, &(bpState->rotation));

        if (Trade3DModel_IsInView(bpState->model) == 0) {
            Trade3DModel_SetEnabled(bpState->model, 0);
            bpState->exitedView = 1;
        }
    }
}

static BOOL BallPathState_IsDone(SysTask *task)
{
    BallPathState *bpState = SysTask_GetParam(task);
    return bpState->exitedView;
}

static BOOL BallPathState_IsAtMidpoint(SysTask *task)
{
    BallPathState *bpState = SysTask_GetParam(task);
    return bpState->midpointReached;
}

static void BallPathState_StartReturn(SysTask *task)
{
    BallPathState *bpState = SysTask_GetParam(task);
    CameraAngle cameraAngle;

    bpState->exitedView = 0;
    cameraAngle.x = cameraAngle.y = cameraAngle.z = 0;

    Trade3DScene_ComputeProjection(bpState->scene, 1);
    Trade3DScene_SetCameraAngle(bpState->scene, &cameraAngle);

    bpState->yStep = (BALL_RETURN_TARGET_Y - BALL_RETURN_START_Y) / BALL_RETURN_ENTRY_DURATION;
    bpState->currentY = BALL_RETURN_START_Y + bpState->yStep;
    bpState->entryFramesRemaining = BALL_RETURN_ENTRY_DURATION;
    bpState->currentPos.y = bpState->currentY;

    BallPathState_SetOrbitRadius(bpState, 0x0, 0x0, 20);
    BallPathState_SetAxisRotStep(bpState, 1, -(bpState->rotationSpeed), 30);
    BallPathState_SetAxisRotStep(bpState, 2, 0x100, 50);
    Trade3DModel_SetScale(bpState->model, BALL_RETURN_SCALE);
    Trade3DModel_SetEnabled(bpState->model, 1);

    SysTask_SetCallback(task, BallPathState_ReturnApproachTask);
}

static void BallPathState_ReturnApproachTask(SysTask *task, void *param)
{
    BallPathState *bpState = param;

    BallPathState_Tick(bpState);

    if (bpState->entryFramesRemaining) {
        bpState->currentY += bpState->yStep;
        bpState->currentPos.y = bpState->currentY;

        if (--(bpState->entryFramesRemaining) == 0) {
            SysTask_SetCallback(task, BallPathState_ReturnCoastTask);
        }
    }

    Trade3DModel_SetPosition(bpState->model, &(bpState->currentPos));
    Trade3DModel_SetRotation(bpState->model, &(bpState->rotation));
}

static void BallPathState_ReturnCoastTask(SysTask *task, void *param)
{
    BallPathState *bpState = param;

    BallPathState_Tick(bpState);

    if (++(bpState->entryFramesRemaining) > BALL_RETURN_COAST_DURATION) {
        bpState->yStep = (BALL_RETURN_FINAL_TARGET_Y - bpState->currentY) / BALL_RETURN_FINAL_APPROACH_DURATION;
        bpState->entryFramesRemaining = BALL_RETURN_FINAL_APPROACH_DURATION;
        SysTask_SetCallback(task, BallPathState_ReturnFinalApproachTask);
    }

    Trade3DModel_SetPosition(bpState->model, &(bpState->currentPos));
    Trade3DModel_SetRotation(bpState->model, &(bpState->rotation));
}

static void BallPathState_ReturnFinalApproachTask(SysTask *task, void *param)
{
    BallPathState *bpState = param;

    BallPathState_Tick(bpState);

    if (bpState->entryFramesRemaining) {
        bpState->currentY += bpState->yStep;
        bpState->currentPos.y = bpState->currentY;

        if (--(bpState->entryFramesRemaining) == 0) {
            SysTask_SetCallback(task, BallPathState_ReturnCoast2Task);
        }
    }

    Trade3DModel_SetPosition(bpState->model, &(bpState->currentPos));
    Trade3DModel_SetRotation(bpState->model, &(bpState->rotation));
}

static void BallPathState_ReturnCoast2Task(SysTask *task, void *param)
{
    BallPathState *bpState = param;

    BallPathState_Tick(bpState);

    if (++(bpState->entryFramesRemaining) > BALL_RETURN_COAST2_DURATION) {
        bpState->yStep = BALL_RETURN_EXIT_Y_STEP;
        SysTask_SetCallback(task, BallPathState_ReturnExitTask);
    }

    Trade3DModel_SetPosition(bpState->model, &(bpState->currentPos));
    Trade3DModel_SetRotation(bpState->model, &(bpState->rotation));
}

static void BallPathState_ReturnExitTask(SysTask *unused, void *param)
{
    BallPathState *bpState = param;

    if (bpState->exitedView == 0) {
        BallPathState_Tick(bpState);

        bpState->currentY += bpState->yStep;
        bpState->currentPos.y = bpState->currentY;

        Trade3DModel_SetPosition(bpState->model, &(bpState->currentPos));
        Trade3DModel_SetRotation(bpState->model, &(bpState->rotation));

        if (Trade3DModel_IsInView(bpState->model) == 0) {
            bpState->exitedView = 1;
        }
    }
}
