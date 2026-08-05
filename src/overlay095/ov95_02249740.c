#include "overlay095/ov95_02249740.h"

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
#include "system.h"
#include "unk_0202419C.h"

enum {
    CAMERA_ANGLE_X_ARRIVE = 6371,
    CAMERA_ANGLE_X_EXIT = 4432
};

enum {
    BALL_TARGET_ORBIT_RADIUS_X = 75776,
    BALL_TARGET_ORBIT_RADIUS_Y = 101376,
    BALL_INITIAL_ROTATION_ANGLE = 55408,
    BALL_ROTATION_SPEED = 62800,
    BALL_INITIAL_CENTER_Y = 0xFFF50E00,
    BALL_INITIAL_CENTER_Z = 925696,
    BALL_TARGET_CENTER_Y = 4025344,
    BALL_TARGET_CENTER_Z = 0xFFE44000,
    BALL_FLYBY_DURATION = 60,
    BALL_INITIAL_ROTATION_X = 8192
};

enum {
    BALL_EXIT_ORBIT_RADIUS_X = 2048,
    BALL_EXIT_ORBIT_RADIUS_Y = 2048,
    BALL_EXIT_SCALE = 512,
    BALL_EXIT_TRANSITION_DURATION = 12
};

enum {
    SPRITE_X = 128,
    SPRITE_Y = 96
};

typedef struct BallOrbitState {
    void *phase;
    SysTask *taskHandle;
    Trade3DScene *scene;
    Trade3DModel *model;
    VecFx32 center;
    VecFx32 orbitOffset;
    VecFx32 currentPos;
    VecFx16 rotation;
    fx32 centerYStep;
    fx32 centerZStep;
    fx32 orbitRadiusX;
    fx32 orbitRadiusY;
    fx32 orbitRadiusXStep;
    fx32 orbitRadiusYStep;
    fx32 scale;
    fx32 scaleStep;
    int transitionFrames;
    int state;
    int timer;
    int frameCount;
    fx16 angle;
    fx16 angleSpeed;
} BallOrbitState;

typedef struct TradeBallFlybyPhase {
    TradeSequenceData *sequenceData;
    int subStepCounter;
    int timer;
    BOOL screenSwapPending;
    SpriteAnimResources animResources;
    Sprite *sprite;
    BgConfig *bgConfig;
    Trade3DScene *scene;
    Trade3DModel *model;
    SysTask *unused_30;
    BallOrbitState ballOrbit;
} TradeBallFlybyPhase;

static void TradeBallFlybyPhase_Tick(TradeBallFlybyPhase *tbfPhase);
static int TradeBallFlybyPhase_Setup(TradeBallFlybyPhase *tbfPhase, int *unused);
static int TradeBallFlybyPhase_Animate(TradeBallFlybyPhase *tbfPhase, int *subStateCounter);
static void TradeBallFlybyPhase_InitGraphics(TradeBallFlybyPhase *tbfPhase);
static void TradeBallFlybyPhase_FreeGraphics(TradeBallFlybyPhase *tbfPhase);
static void TradeBallFlybyPhase_Init3DScene(TradeBallFlybyPhase *tbfPhase);
static void TradeBallFlybyPhase_Free3DScene(TradeBallFlybyPhase *tbfPhase);
static void TradeBallFlybyPhase_CreateSprite(TradeBallFlybyPhase *tbfPhase);
static void TradeBallFlybyPhase_DeleteSprite(TradeBallFlybyPhase *tbfPhase);
static void BallOrbitState_Init(BallOrbitState *boState);
static void BallOrbitState_Stop(BallOrbitState *boState);
static void BallOrbitState_Start(TradeBallFlybyPhase *tbfPhase, BallOrbitState *boState);
static BOOL BallOrbitState_IsDone(BallOrbitState *boState);
static void BallOrbitState_SetOrbitRadius(BallOrbitState *boState, fx32 targetRadiusX, fx32 targetRadiusY, fx32 targetScale, int duration);
static void BallOrbitState_Tick(BallOrbitState *boState);
static void BallOrbitState_Task(SysTask *task, void *param);
static void TradeBallFlybyPhase_OnBallExited(TradeBallFlybyPhase *tbfPhase);
static void TradeBallFlybyPhase_ScreenSwapTask(SysTask *task, void *param);

void *TradeBallFlybyPhase_New(TradeSequenceData *sequenceData)
{
    TradeBallFlybyPhase *tbfPhase = Heap_Alloc(HEAP_ID_58, sizeof(TradeBallFlybyPhase));

    if (tbfPhase) {
        tbfPhase->sequenceData = sequenceData;
        tbfPhase->subStepCounter = 0;
        tbfPhase->bgConfig = TradeSequence_GetBgConfig(sequenceData);
        tbfPhase->scene = NULL;

        BallOrbitState_Init(&(tbfPhase->ballOrbit));
    }

    return tbfPhase;
}

void TradeBallFlybyPhase_Free(void *param)
{
    TradeBallFlybyPhase *tbfPhase = param;

    if (tbfPhase) {
        SetVBlankCallback(NULL, NULL);

        TradeBallFlybyPhase_FreeGraphics(tbfPhase);
        TradeBallFlybyPhase_Free3DScene(tbfPhase);
        TradeBallFlybyPhase_DeleteSprite(tbfPhase);
        BallOrbitState_Stop(&(tbfPhase->ballOrbit));

        Heap_Free(tbfPhase);
    }
}

BOOL TradeBallFlybyPhase_Run(void *param, int *state)
{
    static int (*const sStepFuncs[])(TradeBallFlybyPhase *, int *) = {
        TradeBallFlybyPhase_Setup,
        TradeBallFlybyPhase_Animate
    };

    TradeBallFlybyPhase *tbfPhase = param;

    if ((*state) < NELEMS(sStepFuncs)) {
        if (sStepFuncs[*state](tbfPhase, &(tbfPhase->subStepCounter))) {
            (*state)++;
            tbfPhase->subStepCounter = 0;
        }

        TradeBallFlybyPhase_Tick(tbfPhase);

        return FALSE;
    }

    return TRUE;
}

static void TradeBallFlybyPhase_Tick(TradeBallFlybyPhase *tbfPhase)
{
    if (tbfPhase->scene) {
        G3X_Reset();

        Trade3DScene_Render(tbfPhase->scene);
        G3_RequestSwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_Z);
    }
}

static int TradeBallFlybyPhase_Setup(TradeBallFlybyPhase *tbfPhase, int *unused)
{
    TradeBallFlybyPhase_InitGraphics(tbfPhase);
    TradeBallFlybyPhase_Init3DScene(tbfPhase);
    TradeBallFlybyPhase_CreateSprite(tbfPhase);

    tbfPhase->screenSwapPending = 0;

    SysTask_ExecuteAfterVBlank(TradeBallFlybyPhase_ScreenSwapTask, tbfPhase, 0);
    StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_WHITE, 3, 1, HEAP_ID_58);

    return 1;
}

static int TradeBallFlybyPhase_Animate(TradeBallFlybyPhase *tbfPhase, int *subStateCounter)
{
    switch (*subStateCounter) {
    case 0:
        tbfPhase->timer = 0;
        (*subStateCounter)++;
        break;
    case 1:
        if (++(tbfPhase->timer) > 10) {
            Sound_PlayEffect(SEQ_SE_DP_KOUKAN06);
            BallOrbitState_Start(tbfPhase, &(tbfPhase->ballOrbit));
            Trade3DModel_SetEnabled(tbfPhase->model, 1);
            (*subStateCounter)++;
        }
        break;
    case 2:
        if (BallOrbitState_IsDone(&(tbfPhase->ballOrbit))) {
            Sound_PlayEffect(SEQ_SE_DP_KOUKAN07);
            Sprite_SetAnim(tbfPhase->sprite, 3);
            Sprite_SetDrawFlag(tbfPhase->sprite, TRUE);
            (*subStateCounter)++;
        }
        break;
    case 3:
        if (Sprite_IsAnimated(tbfPhase->sprite) == 0) {
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_WHITE, 16, 1, HEAP_ID_58);
            (*subStateCounter)++;
        }
        break;
    case 4:
        if (IsScreenFadeDone()) {
            return 1;
        }
    }

    return 0;
}

static void TradeBallFlybyPhase_InitGraphics(TradeBallFlybyPhase *tbfPhase)
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
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_3D
    };
    static const BgTemplate bgTemplate = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x0,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x512,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xf000,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 3,
        .areaOver = 1,
        .mosaic = FALSE,
    };
    u32 tilemapMember, tilesMember, paletteMember, paletteOffset;

    GXLayers_SetBanks(&banks);

    GX_SetDispSelect(GX_DISP_SELECT_SUB_MAIN);

    SetAllGraphicsModes(&modes);
    Bg_InitFromTemplate(tbfPhase->bgConfig, BG_LAYER_MAIN_3, &bgTemplate, 0);
    Bg_InitFromTemplate(tbfPhase->bgConfig, BG_LAYER_SUB_3, &bgTemplate, 0);

    switch (TradeSequence_GetBackground(tbfPhase->sequenceData)) {
    case 0:
    default:
        tilemapMember = 15;
        tilesMember = 16;
        paletteMember = 17;
        paletteOffset = 0;
        break;
    case 1:
        tilemapMember = 15;
        tilesMember = 16;
        paletteMember = 17;
        paletteOffset = 32;
        break;
    case 2:
        tilemapMember = 15;
        tilesMember = 16;
        paletteMember = 17;
        paletteOffset = 64;
        break;
    case 3:
        tilemapMember = 24;
        tilesMember = 25;
        paletteMember = 26;
        paletteOffset = 0;
        break;
    }

    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__DEMO_TRADE, tilesMember, tbfPhase->bgConfig, 3, 0, 0, 1, HEAP_ID_58);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__DEMO_TRADE, tilesMember, tbfPhase->bgConfig, 7, 0, 0, 1, HEAP_ID_58);

    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__DEMO_TRADE, tilemapMember, tbfPhase->bgConfig, 3, 0, 0, 1, HEAP_ID_58);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__DEMO_TRADE, tilemapMember, tbfPhase->bgConfig, 7, 0, 0, 1, HEAP_ID_58);

    Graphics_LoadPaletteWithSrcOffset(93, paletteMember, 0, paletteOffset, 0, 0x20, HEAP_ID_58);
    Graphics_LoadPaletteWithSrcOffset(93, paletteMember, 4, paletteOffset, 0, 0x20, HEAP_ID_58);

    Bg_SetOffset(tbfPhase->bgConfig, BG_LAYER_MAIN_3, 3, 256);
    Bg_SetOffset(tbfPhase->bgConfig, BG_LAYER_SUB_3, 3, 0);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void TradeBallFlybyPhase_FreeGraphics(TradeBallFlybyPhase *tbfPhase)
{
    Bg_FreeTilemapBuffer(tbfPhase->bgConfig, BG_LAYER_MAIN_3);
    Bg_FreeTilemapBuffer(tbfPhase->bgConfig, BG_LAYER_SUB_3);
}

static void TradeBallFlybyPhase_Init3DScene(TradeBallFlybyPhase *tbfPhase)
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

    tbfPhase->scene = Trade3DScene_New(1, 0, 0, 0);
    tbfPhase->model = Trade3DModel_Load(tbfPhase->scene, 0, NARC_INDEX_GRAPHIC__DEMO_TRADE, 27, 0, 0, 0, 0);

    CameraAngle cameraAngle;

    cameraAngle.x = CAMERA_ANGLE_X_ARRIVE;
    cameraAngle.y = 0;
    cameraAngle.z = 0;

    Trade3DScene_SetCameraAngle(tbfPhase->scene, &cameraAngle);
    Trade3DScene_SetFOV(tbfPhase->scene, ((22 * 0xffff) / 360) / 2);

    VecFx32 vecFx;
    Trade3DScene_GetCameraPosition(tbfPhase->scene, &vecFx);
}

static void TradeBallFlybyPhase_Free3DScene(TradeBallFlybyPhase *tbfPhase)
{
    if (tbfPhase->scene) {
        Trade3DScene_Free(tbfPhase->scene);
    }
}

static void TradeBallFlybyPhase_CreateSprite(TradeBallFlybyPhase *tbfPhase)
{
    NNSG2dImagePaletteProxy plttProxy;
    NNSG2dImageProxy imgProxy;
    SpriteResourcesHeader header;

    SpriteAnimResources_Load(&tbfPhase->animResources, 93, 7, 8);

    NNS_G2dInitImagePaletteProxy(&plttProxy);
    NNS_G2dInitImageProxy(&imgProxy);

    Graphics_LoadImageMapping(93, 9, 1, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 0, 58, &imgProxy);
    Graphics_LoadPartialPalette(93, 10, NNS_G2D_VRAM_TYPE_2DMAIN, 0, 58, &plttProxy);
    SpriteResourcesHeader_InitFromAnimResources(&header, &tbfPhase->animResources, &imgProxy, &plttProxy, 0);

    tbfPhase->sprite = TradeSequence_AddSprite(tbfPhase->sequenceData, &header, SPRITE_X, SPRITE_Y, 0, NNS_G2D_VRAM_TYPE_2DMAIN);

    Sprite_SetDrawFlag(tbfPhase->sprite, FALSE);
}

static void TradeBallFlybyPhase_DeleteSprite(TradeBallFlybyPhase *tbfPhase)
{
    if (tbfPhase->sprite) {
        Sprite_Delete(tbfPhase->sprite);
    }

    SpriteAnimResources_Free(&tbfPhase->animResources);
}

static void BallOrbitState_Init(BallOrbitState *boState)
{
    boState->taskHandle = NULL;
}

static void BallOrbitState_Stop(BallOrbitState *boState)
{
    if (boState->taskHandle) {
        SysTask_Done(boState->taskHandle);
        boState->taskHandle = NULL;
    }
}

static void BallOrbitState_Start(TradeBallFlybyPhase *tbfPhase, BallOrbitState *boState)
{
    boState->phase = tbfPhase;
    boState->model = tbfPhase->model;
    boState->scene = tbfPhase->scene;

    boState->center.x = 0;
    boState->center.y = BALL_INITIAL_CENTER_Y;
    boState->center.z = BALL_INITIAL_CENTER_Z;
    boState->angle = BALL_INITIAL_ROTATION_ANGLE;
    boState->angleSpeed = BALL_ROTATION_SPEED;

    boState->centerYStep = (BALL_TARGET_CENTER_Y - BALL_INITIAL_CENTER_Y) / BALL_FLYBY_DURATION;
    boState->centerZStep = (BALL_TARGET_CENTER_Z - BALL_INITIAL_CENTER_Z) / BALL_FLYBY_DURATION;

    boState->state = 0;
    boState->timer = 0;
    boState->frameCount = 0;

    boState->rotation.x = BALL_INITIAL_ROTATION_X;
    boState->rotation.y = 0xe000;
    boState->rotation.z = 0;

    Trade3DModel_SetRotation(boState->model, &boState->rotation);

    boState->scale = FX32_ONE;
    boState->orbitRadiusX = BALL_TARGET_ORBIT_RADIUS_X;
    boState->orbitRadiusY = BALL_TARGET_ORBIT_RADIUS_Y;
    boState->transitionFrames = 0;

    BallOrbitState_Tick(boState);
    Trade3DModel_SetPosition(boState->model, &(boState->currentPos));
    Trade3DModel_GetRotation(boState->model, &(boState->rotation));

    boState->taskHandle = SysTask_Start(BallOrbitState_Task, boState, 0);
}

static BOOL BallOrbitState_IsDone(BallOrbitState *boState)
{
    return boState->taskHandle == NULL;
}

static void BallOrbitState_SetOrbitRadius(BallOrbitState *boState, fx32 targetRadiusX, fx32 targetRadiusY, fx32 targetScale, int duration)
{
    if (duration) {
        boState->orbitRadiusXStep = (targetRadiusX - boState->orbitRadiusX) / duration;
        boState->orbitRadiusYStep = (targetRadiusY - boState->orbitRadiusY) / duration;
        boState->scaleStep = (targetScale - boState->scale) / duration;
        boState->transitionFrames = duration;
    }
}

static void BallOrbitState_Tick(BallOrbitState *boState)
{
    int angleDegrees = (u16)(boState->angle) / (65536 / 360);

    if (angleDegrees >= 360) {
        angleDegrees -= 360;
    }

    boState->angle += boState->angleSpeed;

    if (boState->transitionFrames) {
        boState->orbitRadiusX += boState->orbitRadiusXStep;
        boState->orbitRadiusY += boState->orbitRadiusYStep;
        boState->scale += boState->scaleStep;
        Trade3DModel_SetScale(boState->model, boState->scale);
        boState->transitionFrames--;
    }

    boState->orbitOffset.x = FX_Mul(CalcCosineDegrees(angleDegrees), boState->orbitRadiusX);
    boState->orbitOffset.y = FX_Mul(CalcSineDegrees(angleDegrees), boState->orbitRadiusY);
    boState->orbitOffset.z = 0;
    boState->rotation.x += 0x300;

    Trade3DModel_SetRotation(boState->model, &(boState->rotation));
    VEC_Add(&boState->orbitOffset, &boState->center, &boState->currentPos);
}

static void BallOrbitState_Task(SysTask *task, void *param)
{
    BallOrbitState *boState = param;

    if (boState->frameCount < BALL_FLYBY_DURATION) {
        boState->frameCount++;
    }

    switch (boState->state) {
    case 0:
        boState->center.y += boState->centerYStep;
        boState->center.z += boState->centerZStep;

        BallOrbitState_Tick(boState);
        Trade3DModel_SetPosition(boState->model, &(boState->currentPos));

        if (Trade3DModel_IsInView(boState->model)) {
            boState->state++;
        }
        break;
    case 1:
        if (Trade3DModel_IsInView(boState->model) == 0) {
            TradeBallFlybyPhase_OnBallExited(boState->phase);
            boState->state++;
        } else {
            boState->center.y += boState->centerYStep;
            boState->center.z += boState->centerZStep;
            BallOrbitState_Tick(boState);
            Trade3DModel_SetPosition(boState->model, &(boState->currentPos));
        }
        break;
    case 2:
        boState->center.y += boState->centerYStep;
        boState->center.z += boState->centerZStep;

        BallOrbitState_Tick(boState);
        Trade3DModel_SetPosition(boState->model, &(boState->currentPos));

        if (boState->frameCount >= BALL_FLYBY_DURATION) {
            BallOrbitState_SetOrbitRadius(boState, BALL_EXIT_ORBIT_RADIUS_X, BALL_EXIT_ORBIT_RADIUS_Y, BALL_EXIT_SCALE, BALL_EXIT_TRANSITION_DURATION);
            boState->timer = 0;
            boState->state++;
        }
        break;
    case 3:
        BallOrbitState_Tick(boState);
        Trade3DModel_SetPosition(boState->model, &(boState->currentPos));

        if (++(boState->timer) >= BALL_EXIT_TRANSITION_DURATION) {
            Trade3DModel_SetEnabled(boState->model, 0);
            boState->timer = 0;
            boState->state++;
        }
        break;
    case 4:
        if (++(boState->timer) > 8) {
            boState->taskHandle = NULL;
            SysTask_Done(task);
        }
        break;
    }
}

static void TradeBallFlybyPhase_OnBallExited(TradeBallFlybyPhase *tbfPhase)
{
    tbfPhase->screenSwapPending = 1;
}

static void TradeBallFlybyPhase_ScreenSwapTask(SysTask *task, void *param)
{
    TradeBallFlybyPhase *tbfPhase = param;

    if (tbfPhase->screenSwapPending) {
        CameraAngle cameraAngle;

        tbfPhase->screenSwapPending = 0;

        cameraAngle.x = CAMERA_ANGLE_X_EXIT;
        cameraAngle.y = 0;
        cameraAngle.z = 0;

        Bg_SetOffset(tbfPhase->bgConfig, BG_LAYER_MAIN_3, 3, 0);
        Bg_SetOffset(tbfPhase->bgConfig, BG_LAYER_SUB_3, 3, 256);

        Trade3DScene_AdjustCameraAngle(tbfPhase->scene, &cameraAngle);
        GX_SetDispSelect(GX_DISP_SELECT_MAIN_SUB);

        SysTask_Done(task);
    }
}
