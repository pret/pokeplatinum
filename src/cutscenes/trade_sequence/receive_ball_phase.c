#include "cutscenes/trade_sequence/trade_sequence.h"

#include <nitro.h>
#include <string.h>

#include "cutscenes/trade_sequence/trade_3d_scene.h"
#include "cutscenes/trade_sequence/trade_sequence.h"

#include "bg_window.h"
#include "camera.h"
#include "enums.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "math_util.h"
#include "network_icon.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "unk_0202419C.h"

enum {
    CAMERA_ANGLE_X_ARRIVE = 0x18E3,
    CAMERA_ANGLE_X_EXIT = 0x1150
};

enum {
    BALL_TARGET_ORBIT_RADIUS_X = 75776,
    BALL_TARGET_ORBIT_RADIUS_Y = 101376,
    BALL_INITIAL_ORBIT_RADIUS_X = 2048,
    BALL_INITIAL_ORBIT_RADIUS_Y = 2048,
    BALL_INITIAL_SCALE = 512,
    BALL_TRANSITION_DURATION = 12,
    BALL_INITIAL_ROTATION_ANGLE = 55408,
    BALL_ROTATION_SPEED = 62800,
    BALL_TARGET_ORBIT_CENTER_Y = 0xFFF3CE00,
    BALL_TARGET_ORBIT_CENTER_Z = 823296,
    BALL_INITIAL_ORBIT_CENTER_Y = 4025344,
    BALL_INITIAL_ORBIT_CENTER_Z = 0xFFE44000,
    BALL_ENTRY_DURATION = 70,
    BALL_INITIAL_ROTATION_X = 8192
};

typedef struct BallArrivalPathState {
    void *arrivalPhase;
    SysTask *task;
    Trade3DScene *scene;
    Trade3DModel *model;
    VecFx32 orbitCenter;
    VecFx32 orbitOffset;
    VecFx32 modelPos;
    VecFx16 rotation;
    fx32 orbitCenterStepY;
    fx32 orbitCenterStepZ;
    fx32 orbitRadiusX;
    fx32 orbitRadiusY;
    fx32 orbitRadiusXStep;
    fx32 orbitRadiusYStep;
    fx32 targetOrbitRadiusX;
    fx32 targetOrbitRadiusY;
    fx32 scale;
    fx32 scaleStep;
    fx32 targetScale;
    int transitionFrames;
    int subState;
    int exitTimer;
    int frameCount;
    fx16 rotationAngle;
    fx16 rotationSpeed;
} BallArrivalPathState;

typedef struct TradeBallArrivalPhase {
    TradeSequenceData *sequenceData;
    int subStepCounter;
    int unused_08;
    BOOL screenSwapPending;
    SpriteAnimResources animResources;
    Sprite *sprite;
    BgConfig *bgConfig;
    Trade3DScene *scene;
    Trade3DModel *model;
    SysTask *task;
    BallArrivalPathState bapState;
} TradeBallArrivalPhase;

static int ReceiveBall_Setup(TradeBallArrivalPhase *arrivalPhase, int *unused);
static int ReceiveBall_Animate(TradeBallArrivalPhase *arrivalPhase, int *state);
static void ReceiveBall_InitGraphics(TradeBallArrivalPhase *arrivalPhase);
static void ReceiveBall_FreeGraphics(TradeBallArrivalPhase *arrivalPhase);
static void ReceiveBall_Init3DScene(TradeBallArrivalPhase *arrivalPhase);
static void ReceiveBall_Free3DScene(TradeBallArrivalPhase *arrivalPhase);
static void ReceiveBall_CreateSprite(TradeBallArrivalPhase *arrivalPhase);
static void ReceiveBall_DeleteSprite(TradeBallArrivalPhase *arrivalPhase);
static void BallArrivalPathState_Init(BallArrivalPathState *bapState);
static void BallArrivalPathState_Stop(BallArrivalPathState *bapState);
static void BallArrivalPathState_Start(TradeBallArrivalPhase *arrivalPhase, BallArrivalPathState *bapState);
static BOOL BallArrivalPathState_IsDone(BallArrivalPathState *bapState);
static void BallArrivalPathState_BeginTransition(BallArrivalPathState *bapState, fx32 targetRadiusX, fx32 targetRadiusY, fx32 targetScale, int duration);
static void BallArrivalPathState_Tick(BallArrivalPathState *bapState);
static void BallArrivalPathState_Task(SysTask *task, void *param);
static void ReceiveBall_ScreenSwapPending(TradeBallArrivalPhase *arrivalPhase);
static void ReceiveBall_VBlankCallback(void *param);

static BOOL sOrbitEnabled = TRUE;

void *ReceiveBall_New(TradeSequenceData *sequenceData)
{
    TradeBallArrivalPhase *arrivalPhase = Heap_Alloc(HEAP_ID_TRADE_SEQUENCE_PHASE, sizeof(TradeBallArrivalPhase));

    if (arrivalPhase) {
        arrivalPhase->sequenceData = sequenceData;
        arrivalPhase->subStepCounter = 0;
        arrivalPhase->bgConfig = TradeSequence_GetBgConfig(sequenceData);
        arrivalPhase->scene = NULL;
        arrivalPhase->screenSwapPending = 0;

        BallArrivalPathState_Init(&(arrivalPhase->bapState));
        SetVBlankCallback(ReceiveBall_VBlankCallback, arrivalPhase);
    }

    return arrivalPhase;
}

void ReceiveBall_Free(void *param)
{
    TradeBallArrivalPhase *arrivalPhase = param;

    if (arrivalPhase) {
        SetVBlankCallback(NULL, NULL);

        ReceiveBall_FreeGraphics(arrivalPhase);
        ReceiveBall_Free3DScene(arrivalPhase);
        ReceiveBall_DeleteSprite(arrivalPhase);
        BallArrivalPathState_Stop(&(arrivalPhase->bapState));

        Heap_Free(arrivalPhase);
    }
}

BOOL ReceiveBall_Run(void *param, int *state)
{
    static int (*const sSubSteps[])(TradeBallArrivalPhase *, int *) = {
        ReceiveBall_Setup,
        ReceiveBall_Animate,
    };

    TradeBallArrivalPhase *arrivalPhase = param;

    if ((*state) < NELEMS(sSubSteps)) {
        if (sSubSteps[*state](arrivalPhase, &(arrivalPhase->subStepCounter))) {
            (*state)++;
            arrivalPhase->subStepCounter = 0;
        }

        return FALSE;
    }

    return TRUE;
}

static int ReceiveBall_Setup(TradeBallArrivalPhase *arrivalPhase, int *unused)
{
    ReceiveBall_InitGraphics(arrivalPhase);
    ReceiveBall_Init3DScene(arrivalPhase);
    ReceiveBall_CreateSprite(arrivalPhase);

    StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_WHITE, 8, 1, HEAP_ID_TRADE_SEQUENCE_PHASE);

    return 1;
}

static int ReceiveBall_Animate(TradeBallArrivalPhase *arrivalPhase, int *state)
{
    switch (*state) {
    case 0:
        if (IsScreenFadeDone()) {
            Sprite_SetAnim(arrivalPhase->sprite, 3);
            Sprite_SetDrawFlag(arrivalPhase->sprite, TRUE);
            (*state)++;
        }
        break;
    case 1:
        if (Sprite_IsAnimated(arrivalPhase->sprite) == 0) {
            Sound_PlayEffect(SEQ_SE_DP_KOUKAN05_sseq);
            BallArrivalPathState_Start(arrivalPhase, &(arrivalPhase->bapState));
            Trade3DModel_SetEnabled(arrivalPhase->model, 1);
            (*state)++;
        }
        break;
    case 2:
        if (BallArrivalPathState_IsDone(&(arrivalPhase->bapState))) {
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_WHITE, 16, 1, HEAP_ID_TRADE_SEQUENCE_PHASE);
            (*state)++;
        }
        break;
    case 3:
        if (IsScreenFadeDone()) {
            return 1;
        }
        break;
    }

    return 0;
}

static void ReceiveBall_InitGraphics(TradeBallArrivalPhase *arrivalPhase)
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
    static const BgTemplate template = {
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
    u32 tilemapIdx, tilesIdx, paletteIdx, paletteOffset;

    GXLayers_SetBanks(&banks);
    GX_SetDispSelect(GX_DISP_SELECT_MAIN_SUB);
    SetAllGraphicsModes(&modes);

    Bg_InitFromTemplate(arrivalPhase->bgConfig, BG_LAYER_MAIN_3, &template, 0);
    Bg_InitFromTemplate(arrivalPhase->bgConfig, BG_LAYER_SUB_3, &template, 0);

    switch (TradeSequence_GetBackground(arrivalPhase->sequenceData)) {
    case TRADE_BACKGROUND_DAY:
    default:
        tilemapIdx = 15;
        tilesIdx = 16;
        paletteIdx = 17;
        paletteOffset = 0x0;
        break;
    case TRADE_BACKGROUND_EVENING:
        tilemapIdx = 15;
        tilesIdx = 16;
        paletteIdx = 17;
        paletteOffset = 0x20;
        break;
    case TRADE_BACKGROUND_NIGHT:
        tilemapIdx = 15;
        tilesIdx = 16;
        paletteIdx = 17;
        paletteOffset = 0x40;
        break;
    case TRADE_BACKGROUND_WIFI:
        tilemapIdx = 24;
        tilesIdx = 25;
        paletteIdx = 26;
        paletteOffset = 0x0;
        break;
    }

    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__DEMO_TRADE, tilesIdx, arrivalPhase->bgConfig, 3, 0, 0, 1, HEAP_ID_TRADE_SEQUENCE_PHASE);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__DEMO_TRADE, tilesIdx, arrivalPhase->bgConfig, 7, 0, 0, 1, HEAP_ID_TRADE_SEQUENCE_PHASE);

    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__DEMO_TRADE, tilemapIdx, arrivalPhase->bgConfig, 3, 0, 0, 1, HEAP_ID_TRADE_SEQUENCE_PHASE);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__DEMO_TRADE, tilemapIdx, arrivalPhase->bgConfig, 7, 0, 0, 1, HEAP_ID_TRADE_SEQUENCE_PHASE);

    Graphics_LoadPaletteWithSrcOffset(93, paletteIdx, 0, paletteOffset, 0, 0x20, HEAP_ID_TRADE_SEQUENCE_PHASE);
    Graphics_LoadPaletteWithSrcOffset(93, paletteIdx, 4, paletteOffset, 0, 0x20, HEAP_ID_TRADE_SEQUENCE_PHASE);

    Bg_SetOffset(arrivalPhase->bgConfig, BG_LAYER_MAIN_3, 3, 0);
    Bg_SetOffset(arrivalPhase->bgConfig, BG_LAYER_SUB_3, 3, 256);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);

    NetworkIcon_Init();
    NetworkIcon_CreateOnSubScreen(1, HEAP_ID_TRADE_SEQUENCE);
}

static void ReceiveBall_FreeGraphics(TradeBallArrivalPhase *arrivalPhase)
{
    Bg_FreeTilemapBuffer(arrivalPhase->bgConfig, BG_LAYER_MAIN_3);
    Bg_FreeTilemapBuffer(arrivalPhase->bgConfig, BG_LAYER_SUB_3);
}

static void ReceiveBall_Init3DScene(TradeBallArrivalPhase *arrivalPhase)
{
    static const GXRgb sEdgeColors[8] = {
        GX_RGB(4, 4, 4),
        GX_RGB(4, 4, 4),
        GX_RGB(4, 4, 4),
        GX_RGB(4, 4, 4),
        GX_RGB(4, 4, 4),
        GX_RGB(4, 4, 4),
        GX_RGB(4, 4, 4),
        GX_RGB(4, 4, 4),
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

    arrivalPhase->scene = Trade3DScene_New(1, 0, 0, 0);
    arrivalPhase->model = Trade3DModel_Load(arrivalPhase->scene, 0, NARC_INDEX_GRAPHIC__DEMO_TRADE, 27, 0, 0, 0, 0);

    CameraAngle cameraAngle;

    cameraAngle.x = CAMERA_ANGLE_X_ARRIVE;
    cameraAngle.y = 0;
    cameraAngle.z = 0;

    Trade3DScene_SetCameraAngle(arrivalPhase->scene, &cameraAngle);
    cameraAngle.x = CAMERA_ANGLE_X_EXIT;

    Trade3DScene_AdjustCameraAngle(arrivalPhase->scene, &cameraAngle);
    Trade3DScene_SetFOV(arrivalPhase->scene, ((22 * 0xffff) / 360) / 2);

    VecFx32 vecFx;
    Trade3DScene_GetCameraPosition(arrivalPhase->scene, &vecFx);
}

static void ReceiveBall_Free3DScene(TradeBallArrivalPhase *arrivalPhase)
{
    if (arrivalPhase->scene) {
        Trade3DScene_Free(arrivalPhase->scene);
    }
}

static void ReceiveBall_CreateSprite(TradeBallArrivalPhase *arrivalPhase)
{
    NNSG2dImagePaletteProxy plttProxy;
    NNSG2dImageProxy imgProxy;
    SpriteResourcesHeader srHeader;

    SpriteAnimResources_Load(&arrivalPhase->animResources, 93, 7, 8);

    NNS_G2dInitImagePaletteProxy(&plttProxy);
    NNS_G2dInitImageProxy(&imgProxy);

    Graphics_LoadImageMapping(93, 9, 1, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 0, 58, &imgProxy);
    Graphics_LoadPartialPalette(93, 10, NNS_G2D_VRAM_TYPE_2DMAIN, 0, 58, &plttProxy);

    SpriteResourcesHeader_InitFromAnimResources(&srHeader, &arrivalPhase->animResources, &imgProxy, &plttProxy, 1);
    arrivalPhase->sprite = TradeSequence_AddSprite(arrivalPhase->sequenceData, &srHeader, 128, 96, 0, NNS_G2D_VRAM_TYPE_2DMAIN);
    Sprite_SetDrawFlag(arrivalPhase->sprite, FALSE);
}

static void ReceiveBall_DeleteSprite(TradeBallArrivalPhase *arrivalPhase)
{
    if (arrivalPhase->sprite) {
        Sprite_Delete(arrivalPhase->sprite);
    }

    SpriteAnimResources_Free(&arrivalPhase->animResources);
}

static void BallArrivalPathState_Init(BallArrivalPathState *bapState)
{
    bapState->task = NULL;
}

static void BallArrivalPathState_Stop(BallArrivalPathState *bapState)
{
    if (bapState->task) {
        SysTask_Done(bapState->task);
        bapState->task = NULL;
    }
}

static void BallArrivalPathState_Start(TradeBallArrivalPhase *arrivalPhase, BallArrivalPathState *bapState)
{
    bapState->arrivalPhase = arrivalPhase;
    bapState->model = arrivalPhase->model;
    bapState->scene = arrivalPhase->scene;

    bapState->orbitCenter.x = 0;
    bapState->orbitCenter.y = BALL_INITIAL_ORBIT_CENTER_Y;
    bapState->orbitCenter.z = BALL_INITIAL_ORBIT_CENTER_Z;
    bapState->rotationAngle = BALL_INITIAL_ROTATION_ANGLE;
    bapState->rotationSpeed = BALL_ROTATION_SPEED;

    bapState->orbitCenterStepY = (BALL_TARGET_ORBIT_CENTER_Y - BALL_INITIAL_ORBIT_CENTER_Y) / BALL_ENTRY_DURATION;
    bapState->orbitCenterStepZ = (BALL_TARGET_ORBIT_CENTER_Z - BALL_INITIAL_ORBIT_CENTER_Z) / BALL_ENTRY_DURATION;

    bapState->subState = 0;
    bapState->exitTimer = 0;
    bapState->frameCount = 0;

    bapState->rotation.x = BALL_INITIAL_ROTATION_X;
    bapState->rotation.y = 0xe000;
    bapState->rotation.z = 0;

    Trade3DModel_SetRotation(bapState->model, &bapState->rotation);

    bapState->scale = BALL_INITIAL_SCALE;
    bapState->orbitRadiusX = BALL_INITIAL_ORBIT_RADIUS_X;
    bapState->orbitRadiusY = BALL_INITIAL_ORBIT_RADIUS_Y;
    bapState->transitionFrames = 0;

    BallArrivalPathState_BeginTransition(bapState, BALL_TARGET_ORBIT_RADIUS_X, BALL_TARGET_ORBIT_RADIUS_Y, FX32_ONE, BALL_TRANSITION_DURATION);
    BallArrivalPathState_Tick(bapState);
    Trade3DModel_SetPosition(bapState->model, &(bapState->modelPos));
    Trade3DModel_GetRotation(bapState->model, &(bapState->rotation));

    bapState->task = SysTask_Start(BallArrivalPathState_Task, bapState, 0);
}

static BOOL BallArrivalPathState_IsDone(BallArrivalPathState *bapState)
{
    return bapState->task == NULL;
}

static void BallArrivalPathState_BeginTransition(BallArrivalPathState *bapState, fx32 targetRadiusX, fx32 targetRadiusY, fx32 targetScale, int duration)
{
    if (duration) {
        bapState->orbitRadiusXStep = (targetRadiusX - bapState->orbitRadiusX) / duration;
        bapState->orbitRadiusYStep = (targetRadiusY - bapState->orbitRadiusY) / duration;
        bapState->scaleStep = (targetScale - bapState->scale) / duration;
        bapState->targetOrbitRadiusX = targetRadiusX;
        bapState->targetOrbitRadiusY = targetRadiusY;
        bapState->targetScale = targetScale;
        bapState->transitionFrames = duration;
    }
}

static void BallArrivalPathState_Tick(BallArrivalPathState *bapState)
{
    if (sOrbitEnabled) {
        int angleDegrees;

        angleDegrees = (u16)(bapState->rotationAngle) / (65536 / 360);

        if (angleDegrees >= 360) {
            angleDegrees -= 360;
        }

        bapState->rotationAngle -= bapState->rotationSpeed;

        if (bapState->transitionFrames) {
            bapState->transitionFrames--;

            if (bapState->transitionFrames) {
                bapState->orbitRadiusX += bapState->orbitRadiusXStep;
                bapState->orbitRadiusY += bapState->orbitRadiusYStep;
                bapState->scale += bapState->scaleStep;
            } else {
                bapState->orbitRadiusX = bapState->targetOrbitRadiusX;
                bapState->orbitRadiusY = bapState->targetOrbitRadiusY;
                bapState->scale = bapState->targetScale;
            }

            Trade3DModel_SetScale(bapState->model, bapState->scale);
        }

        bapState->orbitOffset.x = FX_Mul(CalcCosineDegrees(angleDegrees), bapState->orbitRadiusX);
        bapState->orbitOffset.y = FX_Mul(CalcSineDegrees(angleDegrees), bapState->orbitRadiusY);
        bapState->orbitOffset.z = 0;
        bapState->rotation.x -= 0x300;

        Trade3DModel_SetRotation(bapState->model, &(bapState->rotation));
        VEC_Add(&bapState->orbitOffset, &bapState->orbitCenter, &bapState->modelPos);
    } else {
        bapState->modelPos = bapState->orbitCenter;
    }
}

static void BallArrivalPathState_Task(SysTask *task, void *param)
{
    BallArrivalPathState *bapState = param;

    if (bapState->frameCount < BALL_ENTRY_DURATION) {
        bapState->frameCount++;
    }

    switch (bapState->subState) {
    case 0:
        BallArrivalPathState_Tick(bapState);
        Trade3DModel_SetPosition(bapState->model, &(bapState->modelPos));

        if (++(bapState->frameCount) >= BALL_TRANSITION_DURATION) {
            bapState->frameCount = 0;
            bapState->subState++;
        }
        break;
    case 1:
        if (Trade3DModel_IsInView(bapState->model) == 0) {
            ReceiveBall_ScreenSwapPending(bapState->arrivalPhase);
            bapState->subState++;
        } else {
            bapState->orbitCenter.y += bapState->orbitCenterStepY;
            bapState->orbitCenter.z += bapState->orbitCenterStepZ;
            BallArrivalPathState_Tick(bapState);
            Trade3DModel_SetPosition(bapState->model, &(bapState->modelPos));
        }
        break;
    case 2:
        bapState->orbitCenter.y += bapState->orbitCenterStepY;
        bapState->orbitCenter.z += bapState->orbitCenterStepZ;

        BallArrivalPathState_Tick(bapState);
        Trade3DModel_SetPosition(bapState->model, &(bapState->modelPos));

        if (bapState->frameCount >= BALL_ENTRY_DURATION) {
            Trade3DModel_SetEnabled(bapState->model, 0);
            bapState->exitTimer = 0;
            bapState->subState++;
        }
        break;
    case 3:
        if (++(bapState->exitTimer) > 8) {
            bapState->task = NULL;
            SysTask_Done(task);
        }
        break;
    }
}

static void ReceiveBall_ScreenSwapPending(TradeBallArrivalPhase *arrivalPhase)
{
    arrivalPhase->screenSwapPending = 1;
}

static void ReceiveBall_VBlankCallback(void *param)
{
    TradeBallArrivalPhase *arrivalPhase = param;

    if (arrivalPhase->scene) {
        G3X_Reset();
        Trade3DScene_Render(arrivalPhase->scene);
        G3_RequestSwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_Z);
    }

    if (arrivalPhase->screenSwapPending) {
        CameraAngle cameraAngle;

        cameraAngle.x = -CAMERA_ANGLE_X_EXIT;
        cameraAngle.y = 0;
        cameraAngle.z = 0;

        Bg_SetOffset(arrivalPhase->bgConfig, BG_LAYER_MAIN_3, 3, 256);
        Bg_SetOffset(arrivalPhase->bgConfig, BG_LAYER_SUB_3, 3, 0);

        Trade3DScene_AdjustCameraAngle(arrivalPhase->scene, &cameraAngle);
        GX_SetDispSelect(GX_DISP_SELECT_SUB_MAIN);

        arrivalPhase->screenSwapPending = 0;
    }
}
