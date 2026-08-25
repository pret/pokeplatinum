#include <nitro.h>
#include <string.h>

#include "cutscenes/trade_sequence/3d_scene.h"
#include "cutscenes/trade_sequence/main.h"

#include "bg_window.h"
#include "camera.h"
#include "enums.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "screen_fade.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "unk_0202419C.h"

#define MAIN_BG2_START_Y -384

#define MAIN_BG2_END_Y    0
#define BG_SLIDE_DURATION 40

#define SUB_BG2_START_Y -192

#define SUB_BG2_END_Y 192

#define MODEL_Y_POSITION (140 << FX32_SHIFT)

#define MODEL_SLIDE_TARGET_Y 204800
#define MODEL_SLIDE_DURATION 16

#define BG_SCALE_END          1024
#define BG_SCALE_RATE         1
#define BG_SCALE_ACCELERATION 296

typedef struct TradePokemonRevealPhase {
    TradeSequenceData *sequenceData;
    int subStepCounter;
    int timer;
    BgConfig *bgConfig;
    PaletteShimmerEffect *shimmerEffect;
    BOOL shimmerActive;
    BgScaleAnimation *bgScaleAnim;
    volatile BOOL bgScaleAnimDone;
    Trade3DScene *scene;
    Trade3DModel *model;
    VecFx16 modelRotation;
    SysTask *task0;
    SysTask *task1;
    SysTask *task2;
} TradePokemonRevealPhase;

typedef struct BgSlideState {
    TradePokemonRevealPhase *phase;
    BgConfig *bgConfig;
    int framesRemaining;
    fx32 mainBgOffset;
    fx32 subBgOffset;
    fx32 offsetStep;
    fx32 unused_18;
    SysTask **taskHandle;
    SysTask *unused_20;
} BgSlideState;

typedef struct ModelSlideState {
    SysTask **taskHandle;
    int framesRemaining;
    Trade3DModel *model;
    VecFx32 position;
    fx32 yStep;
} ModelSlideState;

typedef struct ModelFadeState {
    SysTask **taskHandle;
    fx32 currentValue;
    fx32 step;
    fx32 targetValue;
    int framesRemaining;
    Trade3DModel *model;
} ModelFadeState;

static void TradePokemonRevealPhase_Tick(TradePokemonRevealPhase *tprPhase);
static int TradePokemonRevealPhase_Setup(TradePokemonRevealPhase *tprPhase, int *unused);
static int TradePokemonRevealPhase_Animate(TradePokemonRevealPhase *tprPhase, int *subStepCounter);
static int TradePokemonRevealPhase_Exit(TradePokemonRevealPhase *tprPhase, int *subStepCounter);
static void TradePokemonRevealPhase_InitGraphics(TradePokemonRevealPhase *tprPhase);
static void TradePokemonRevealPhase_FreeGraphics(TradePokemonRevealPhase *tprPhase);
static void TradePokemonRevealPhase_Init3DScene(TradePokemonRevealPhase *tprPhase);
static void TradePokemonRevealPhase_Free3DScene(TradePokemonRevealPhase *tprPhase);
static void BgSlideState_Start(TradePokemonRevealPhase *tprPhase, SysTask **task);
static void BgSlideState_Task(SysTask *task, void *param);
static void BgSlideState_Free(SysTask *task);
static void ModelSlideState_Start(TradePokemonRevealPhase *tprPhase, SysTask **task);
static void ModelSlideState_Task(SysTask *task, void *param);
static void ModelSlideState_Free(SysTask *task);
static void ModelFadeState_Start(Trade3DModel *model, int startValue, int targetValue, int duration, SysTask **task);
static void ModelFadeState_Task(SysTask *task, void *param);
static void ModelFadeState_Free(SysTask *task);

void *TradePokemonRevealPhase_New(TradeSequenceData *sequenceData)
{
    TradePokemonRevealPhase *tprPhase = Heap_Alloc(HEAP_ID_TRADE_SEQUENCE_PHASE, sizeof(TradePokemonRevealPhase));

    if (tprPhase) {
        tprPhase->sequenceData = sequenceData;
        tprPhase->subStepCounter = 0;
        tprPhase->bgConfig = TradeSequence_GetBgConfig(sequenceData);
        tprPhase->scene = NULL;
        tprPhase->shimmerEffect = NULL;
        tprPhase->shimmerActive = 0;
        tprPhase->bgScaleAnim = NULL;
        tprPhase->task0 = NULL;
        tprPhase->task1 = NULL;
        tprPhase->task2 = NULL;
    }

    return tprPhase;
}

void TradePokemonRevealPhase_Free(void *param)
{
    TradePokemonRevealPhase *tprPhase = param;

    if (tprPhase) {
        TradePokemonRevealPhase_FreeGraphics(tprPhase);
        TradePokemonRevealPhase_Free3DScene(tprPhase);

        if (tprPhase->task0) {
            ModelSlideState_Free(tprPhase->task0);
        }

        if (tprPhase->task1) {
            BgSlideState_Free(tprPhase->task1);
        }

        if (tprPhase->task2) {
            ModelFadeState_Free(tprPhase->task2);
        }

        Heap_Free(tprPhase);
    }
}

BOOL TradePokemonRevealPhase_Run(void *param, int *state)
{
    static int (*const sStepFuncs[])(TradePokemonRevealPhase *, int *) = {
        TradePokemonRevealPhase_Setup,
        TradePokemonRevealPhase_Animate,
        TradePokemonRevealPhase_Exit
    };

    TradePokemonRevealPhase *tprPhase = param;

    if ((*state) < NELEMS(sStepFuncs)) {
        if (sStepFuncs[*state](tprPhase, &(tprPhase->subStepCounter))) {
            (*state)++;
            tprPhase->subStepCounter = 0;
        }

        TradePokemonRevealPhase_Tick(tprPhase);

        return FALSE;
    }

    return TRUE;
}

static void TradePokemonRevealPhase_Tick(TradePokemonRevealPhase *tprPhase)
{
    if (tprPhase->scene) {
        tprPhase->modelRotation.y += 0x1000;

        Trade3DModel_SetRotation(tprPhase->model, &(tprPhase->modelRotation));
        G3X_Reset();
        Trade3DScene_Render(tprPhase->scene);
        G3_RequestSwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_Z);
    }
}

static int TradePokemonRevealPhase_Setup(TradePokemonRevealPhase *tprPhase, int *unused)
{
    TradePokemonRevealPhase_InitGraphics(tprPhase);
    TradePokemonRevealPhase_Init3DScene(tprPhase);
    StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_WHITE, 8, 1, HEAP_ID_TRADE_SEQUENCE_PHASE);

    return 1;
}

static int TradePokemonRevealPhase_Animate(TradePokemonRevealPhase *tprPhase, int *subStepCounter)
{
    switch (*subStepCounter) {
    case 0:
        if (IsScreenFadeDone()) {
            tprPhase->timer = 0;
            ModelSlideState_Start(tprPhase, &(tprPhase->task0));
            (*subStepCounter)++;
        }
        break;
    case 1:
        if (++(tprPhase->timer) > 8) {
            BgSlideState_Start(tprPhase, &(tprPhase->task1));
            (*subStepCounter)++;
        }
        break;
    case 2:
        if ((tprPhase->task1 == NULL) && (tprPhase->task0 == NULL)) {
            (*subStepCounter)++;
        }
        break;
    case 3:
        tprPhase->shimmerEffect = PaletteShimmerEffect_New(&(tprPhase->shimmerActive), -1);
        tprPhase->timer = 0;
        (*subStepCounter)++;
        break;
    case 4:
        if (++(tprPhase->timer) > 30) {
            ModelFadeState_Start(tprPhase->model, 31, 0, 40, &(tprPhase->task2));
            (*subStepCounter)++;
        }
        break;
    case 5:
        if (tprPhase->task2 == NULL) {
            PaletteShimmerEffect_Stop(tprPhase->shimmerEffect);
            (*subStepCounter)++;
        }
        break;
    case 6:
        if (tprPhase->shimmerActive == 0) {
            return 1;
        }
        break;
    }

    return 0;
}

static int TradePokemonRevealPhase_Exit(TradePokemonRevealPhase *tprPhase, int *subStepCounter)
{
    switch (*subStepCounter) {
    case 0:
        tprPhase->bgScaleAnim = BgScaleAnimation_New(tprPhase->bgConfig, 0x1000, BG_SCALE_END, BG_SCALE_RATE, BG_SCALE_ACCELERATION, 1, &(tprPhase->bgScaleAnimDone));
        tprPhase->timer = 0;
        (*subStepCounter)++;
        break;
    case 1:
        if (++(tprPhase->timer) > 13) {
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 8, 1, HEAP_ID_TRADE_SEQUENCE_PHASE);
            (*subStepCounter)++;
        }
        break;
    case 2:
        if (IsScreenFadeDone() && (tprPhase->bgScaleAnimDone)) {
            return 1;
        }
        break;
    }

    return 0;
}

static void TradePokemonRevealPhase_InitGraphics(TradePokemonRevealPhase *tprPhase)
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
    static const BgTemplate bgTemplate1 = {
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
    static const BgTemplate bgTemplate2 = {
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
        0x20,
        0x60,
        0xa0,
        0xe0,
    };
    u32 background;

    GXLayers_SetBanks(&banks);
    GX_SetDispSelect(GX_DISP_SELECT_MAIN_SUB);
    SetAllGraphicsModes(&modes);
    Bg_InitFromTemplate(tprPhase->bgConfig, BG_LAYER_MAIN_2, &bgTemplate1, 1);
    Bg_InitFromTemplate(tprPhase->bgConfig, BG_LAYER_SUB_2, &bgTemplate1, 1);

    OSIntrMode savedInterrupts = OS_DisableInterrupts();

    Bg_InitFromTemplate(tprPhase->bgConfig, BG_LAYER_MAIN_3, &bgTemplate2, 2);
    Bg_InitFromTemplate(tprPhase->bgConfig, BG_LAYER_SUB_3, &bgTemplate2, 2);

    OS_RestoreInterrupts(savedInterrupts);

    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__DEMO_TRADE, 2, tprPhase->bgConfig, 2, 0, 0, 1, HEAP_ID_TRADE_SEQUENCE_PHASE);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__DEMO_TRADE, 2, tprPhase->bgConfig, 6, 0, 0, 1, HEAP_ID_TRADE_SEQUENCE_PHASE);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__DEMO_TRADE, 1, tprPhase->bgConfig, 2, 0, 0, 1, HEAP_ID_TRADE_SEQUENCE_PHASE);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__DEMO_TRADE, 1, tprPhase->bgConfig, 6, 0, 0, 1, HEAP_ID_TRADE_SEQUENCE_PHASE);

    background = TradeSequence_GetBackground(tprPhase->sequenceData);

    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__DEMO_TRADE, 3, 0, 0, 0x20, HEAP_ID_TRADE_SEQUENCE_PHASE);
    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__DEMO_TRADE, 3, 4, 0, 0x20, HEAP_ID_TRADE_SEQUENCE_PHASE);
    Graphics_LoadPaletteWithSrcOffset(93, 3, 0, sPaletteOffsets[background], 0x20, 0x40, HEAP_ID_TRADE_SEQUENCE_PHASE);
    Graphics_LoadPaletteWithSrcOffset(93, 3, 4, sPaletteOffsets[background], 0x20, 0x40, HEAP_ID_TRADE_SEQUENCE_PHASE);

    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__DEMO_TRADE, 5, tprPhase->bgConfig, 3, 0, 0, 1, HEAP_ID_TRADE_SEQUENCE_PHASE);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__DEMO_TRADE, 5, tprPhase->bgConfig, 7, 0, 0, 1, HEAP_ID_TRADE_SEQUENCE_PHASE);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__DEMO_TRADE, 4, tprPhase->bgConfig, 3, 0, 0, 1, HEAP_ID_TRADE_SEQUENCE_PHASE);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__DEMO_TRADE, 4, tprPhase->bgConfig, 7, 0, 0, 1, HEAP_ID_TRADE_SEQUENCE_PHASE);

    u8 *clearBuf = Heap_Alloc(HEAP_ID_TRADE_SEQUENCE_PHASE, 96);

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

    Bg_SetOffset(tprPhase->bgConfig, BG_LAYER_MAIN_2, 3, MAIN_BG2_START_Y);
    Bg_SetOffset(tprPhase->bgConfig, BG_LAYER_SUB_2, 3, SUB_BG2_START_Y);
    Bg_SetOffset(tprPhase->bgConfig, BG_LAYER_MAIN_3, 3, 67);

    Bg_ToggleLayer(BG_LAYER_SUB_3, 0);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void TradePokemonRevealPhase_FreeGraphics(TradePokemonRevealPhase *tprPhase)
{
    if (tprPhase->shimmerActive) {
        PaletteShimmerEffect_Free(tprPhase->shimmerEffect);
    }

    Bg_FreeTilemapBuffer(tprPhase->bgConfig, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(tprPhase->bgConfig, BG_LAYER_SUB_2);
    Bg_FreeTilemapBuffer(tprPhase->bgConfig, BG_LAYER_MAIN_3);
    Bg_FreeTilemapBuffer(tprPhase->bgConfig, BG_LAYER_SUB_3);
}

static void TradePokemonRevealPhase_Init3DScene(TradePokemonRevealPhase *tprPhase)
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

    tprPhase->scene = Trade3DScene_New(1, 0, 0, 0);
    tprPhase->model = Trade3DModel_Load(tprPhase->scene, 0, NARC_INDEX_GRAPHIC__DEMO_TRADE, 27, 0, MODEL_Y_POSITION, 0, 1);

    static CameraAngle cameraAngle;

    cameraAngle.x = 0;
    cameraAngle.y = 0;
    cameraAngle.z = 0;

    Trade3DScene_SetCameraAngle(tprPhase->scene, &cameraAngle);
    Trade3DScene_ComputeProjection(tprPhase->scene, 1);

    Trade3DModel_SetScale(tprPhase->model, 0x2000);
    Trade3DModel_GetRotation(tprPhase->model, &tprPhase->modelRotation);
}

static void TradePokemonRevealPhase_Free3DScene(TradePokemonRevealPhase *tprPhase)
{
    if (tprPhase->scene) {
        Trade3DScene_Free(tprPhase->scene);
        tprPhase->scene = NULL;
    }
}

static void BgSlideState_Start(TradePokemonRevealPhase *tprPhase, SysTask **task)
{
    BgSlideState *bgSlideState = Heap_Alloc(HEAP_ID_TRADE_SEQUENCE_PHASE, sizeof(BgSlideState));

    if (bgSlideState) {
        bgSlideState->phase = tprPhase;
        bgSlideState->bgConfig = tprPhase->bgConfig;
        bgSlideState->mainBgOffset = MAIN_BG2_START_Y << 12;
        bgSlideState->subBgOffset = SUB_BG2_START_Y << 12;
        bgSlideState->offsetStep = ((MAIN_BG2_END_Y - MAIN_BG2_START_Y) << 12) / BG_SLIDE_DURATION;
        bgSlideState->framesRemaining = BG_SLIDE_DURATION;
        bgSlideState->taskHandle = task;
        *task = SysTask_ExecuteOnVBlank(BgSlideState_Task, bgSlideState, 0);

        if (*task == NULL) {
            Heap_Free(bgSlideState);
        }
    }
}

static void BgSlideState_Task(SysTask *task, void *param)
{
    BgSlideState *bgSlideState = param;

    if (bgSlideState->framesRemaining) {
        bgSlideState->mainBgOffset += bgSlideState->offsetStep;
        bgSlideState->subBgOffset += bgSlideState->offsetStep;
        Bg_SetOffset(bgSlideState->bgConfig, BG_LAYER_MAIN_2, 3, bgSlideState->mainBgOffset >> 12);
        Bg_SetOffset(bgSlideState->bgConfig, BG_LAYER_SUB_2, 3, bgSlideState->subBgOffset >> 12);
        bgSlideState->framesRemaining--;
    } else {
        Bg_SetOffset(bgSlideState->bgConfig, BG_LAYER_MAIN_2, 3, MAIN_BG2_END_Y);
        Bg_SetOffset(bgSlideState->bgConfig, BG_LAYER_SUB_2, 3, SUB_BG2_END_Y);
        BgSlideState_Free(task);
    }
}

static void BgSlideState_Free(SysTask *task)
{
    if (task) {
        BgSlideState *bgSlideState = SysTask_GetParam(task);

        *(bgSlideState->taskHandle) = NULL;
        DeferredFree_Enqueue(bgSlideState);
        SysTask_Done(task);
    }
}

static void ModelSlideState_Start(TradePokemonRevealPhase *tprPhase, SysTask **task)
{
    ModelSlideState *msState = Heap_Alloc(HEAP_ID_TRADE_SEQUENCE_PHASE, sizeof(ModelSlideState));

    if (msState) {
        msState->taskHandle = task;
        msState->model = tprPhase->model;

        Trade3DModel_GetPosition(msState->model, &msState->position);

        msState->yStep = (MODEL_SLIDE_TARGET_Y - msState->position.y) / MODEL_SLIDE_DURATION;
        msState->framesRemaining = MODEL_SLIDE_DURATION;
        *task = SysTask_Start(ModelSlideState_Task, msState, 0);

        if (*task == NULL) {
            Heap_Free(msState);
        }
    }
}

static void ModelSlideState_Task(SysTask *task, void *param)
{
    ModelSlideState *msState = param;

    if (msState->framesRemaining) {
        msState->position.y += msState->yStep;
        Trade3DModel_SetPosition(msState->model, &msState->position);
        msState->framesRemaining--;
    } else {
        msState->position.y = MODEL_SLIDE_TARGET_Y;
        Trade3DModel_SetPosition(msState->model, &msState->position);
        ModelSlideState_Free(task);
    }
}

static void ModelSlideState_Free(SysTask *task)
{
    if (task) {
        ModelSlideState *msState = SysTask_GetParam(task);

        *(msState->taskHandle) = NULL;

        Heap_Free(msState);
        SysTask_Done(task);
    }
}

static void ModelFadeState_Start(Trade3DModel *model, int startValue, int targetValue, int duration, SysTask **task)
{
    ModelFadeState *mfState = Heap_Alloc(HEAP_ID_TRADE_SEQUENCE_PHASE, sizeof(ModelFadeState));

    if (mfState) {
        mfState->taskHandle = task;
        mfState->currentValue = startValue << 12;
        mfState->targetValue = targetValue << 12;
        mfState->step = (mfState->targetValue - mfState->currentValue) / duration;
        mfState->framesRemaining = duration;
        mfState->model = model;
        Trade3DModel_SetAlpha(model, startValue);
        *task = SysTask_Start(ModelFadeState_Task, mfState, 0);

        if (*task == NULL) {
            Heap_Free(mfState);
        }
    } else {
        *task = NULL;
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
        ModelFadeState_Free(task);
    }
}

static void ModelFadeState_Free(SysTask *task)
{
    if (task) {
        ModelFadeState *mfState = SysTask_GetParam(task);

        *(mfState->taskHandle) = NULL;
        Heap_Free(mfState);
        SysTask_Done(task);
    }
}
