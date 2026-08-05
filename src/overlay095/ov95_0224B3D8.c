#include "overlay095/ov95_0224B3D8.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/sprite_animation_frame.h"

#include "overlay095/ov95_02246C20.h"
#include "overlay095/ov95_022476F0.h"
#include "overlay095/struct_ov95_02247568.h"
#include "overlay095/struct_ov95_0224773C_decl.h"
#include "overlay095/struct_ov95_02247958_decl.h"

#include "bg_window.h"
#include "enums.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "pokemon.h"
#include "pokemon_sprite.h"
#include "render_window.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "sprite.h"
#include "string_gf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "unk_0202419C.h"

#include "res/text/bank/trade.h"

enum {
    BALL_GRAVITY = -1920,
    BALL_ROTATION_SPEED = 384,
    BALL_FLOOR_Y = 0xffff5000
};

enum {
    BALL_INITIAL_ROTATION_SPEED = 4096,
    BALL_FADE_IN_DURATION = 20
};

enum {
    BALL_REST_Y = 77824,
};

typedef struct TradeReceivePhase {
    TradeSequenceData *sequenceData;
    int subStepCounter;
    int timer;
    BOOL fanfarePlaying;
    PokemonSpriteManager *spriteManager;
    PokemonSprite *pokemonSprite;
    SpriteAnimFrame animFrames[10];
    Sprite *sprites[2];
    SpriteAnimResources animResources;
    BgConfig *bgConfig;
    Window window;
    String *string0;
    String *string1;
    Trade3DScene *scene;
    Trade3DModel *model;
    SysTask *task0;
    SysTask *task1;
    NARC *pokeDataNarc;
} TradeReceivePhase;

typedef struct BrightnessAnimState {
    TradeReceivePhase *phase;
    fx32 currentValue;
    fx32 targetValue;
    fx32 step;
    int framesRemaining;
} BrightnessAnimState;

typedef struct BallOpenState {
    SysTask **taskHandle;
    int subState;
    void *phase;
    int timer;
    Trade3DScene *scene;
    Trade3DModel *model;
    fx32 currentAlpha;
    fx32 alphaStep;
    int alphaFrames;
    VecFx32 position;
    fx32 velocityY;
    VecFx16 rotation;
    fx16 rotationSpeed;
    fx16 rotationSpeedStep;
    fx16 targetRotationSpeed;
    int rotationTransitionFrames;
} BallOpenState;

static void TradeReceivePhase_Tick(TradeReceivePhase *trPhase);
static int TradeReceivePhase_InitGraphics(TradeReceivePhase *trPhase, int *unused);
static int TradeReceivePhase_Animate(TradeReceivePhase *trPhase, int *subStepCounter);
static int TradeReceivePhase_RevealPokemon(TradeReceivePhase *trPhase, int *subStepCounter);
static int TradeReceivePhase_ShowMessage(TradeReceivePhase *trPhase, int *subStepCounter);
static BOOL TradeReceivePhase_IsTimerAndFanfareDone(TradeReceivePhase *trPhase, int timerTarget);
static void TradeReceivePhase_Init3DScene(TradeReceivePhase *trPhase);
static PokemonSprite *TradeReceivePhase_CreatePokemonSprite(TradeReceivePhase *trPhase);
static void TradeReceivePhase_CreateBallSprites(TradeReceivePhase *trPhase);
static void TradeReceivePhase_DeleteBallSprites(TradeReceivePhase *trPhase);
static void BrightnessAnimState_Start(TradeReceivePhase *trPhase, int startValue, int targetValue, int duration);
static BOOL TradeReceivePhase_IsBrightnessAnimDone(TradeReceivePhase *trPhase);
static void TradeReceivePhase_FreeBrightnessAnimState(TradeReceivePhase *trPhase);
static void BrightnessAnimState_Task(SysTask *unused, void *param);
static void BallOpenState_Start(TradeReceivePhase *trPhase, SysTask **task);
static void BallOpenState_Free(SysTask *task);
static void BallOpenState_UpdateRotation(BallOpenState *boState);
static void BallOpenState_SetRotationTarget(BallOpenState *boState, fx32 targetSpeed, int duration);
static void BallOpenState_Task(SysTask *task, void *param);

void *TradeReceivePhase_New(TradeSequenceData *sequenceData)
{
    TradeReceivePhase *trPhase = Heap_Alloc(HEAP_ID_58, sizeof(TradeReceivePhase));

    if (trPhase) {
        trPhase->sequenceData = sequenceData;
        trPhase->subStepCounter = 0;
        trPhase->bgConfig = TradeSequence_GetBgConfig(sequenceData);
        trPhase->spriteManager = PokemonSpriteManager_New(HEAP_ID_58);
        trPhase->pokemonSprite = NULL;
        trPhase->string0 = String_Init(300, HEAP_ID_58);
        trPhase->string1 = String_Init(300, HEAP_ID_58);
        trPhase->task0 = NULL;
        trPhase->task1 = NULL;
        trPhase->scene = NULL;
        trPhase->pokeDataNarc = NARC_ctor(NARC_INDEX_POKETOOL__POKE_EDIT__PL_POKE_DATA, HEAP_ID_58);
    }

    return trPhase;
}

void TradeReceivePhase_Free(void *param)
{
    TradeReceivePhase *trPhase = param;

    if (trPhase) {
        TradeReceivePhase_FreeBrightnessAnimState(trPhase);
        TradeReceivePhase_DeleteBallSprites(trPhase);
        BallOpenState_Free(trPhase->task1);

        String_Free(trPhase->string0);
        String_Free(trPhase->string1);

        if (trPhase->scene) {
            Trade3DScene_Free(trPhase->scene);
        }

        Bg_FreeTilemapBuffer(trPhase->bgConfig, BG_LAYER_MAIN_1);
        Window_Remove(&(trPhase->window));

        if (trPhase->pokemonSprite) {
            PokemonSprite_Delete(trPhase->pokemonSprite);
        }

        NARC_dtor(trPhase->pokeDataNarc);
        PokemonSpriteManager_Free(trPhase->spriteManager);
        Heap_Free(trPhase);
    }
}

BOOL TradeReceivePhase_Run(void *param, int *state)
{
    static int (*const sStepFuncs[])(TradeReceivePhase *, int *) = {
        TradeReceivePhase_InitGraphics,
        TradeReceivePhase_Animate,
        TradeReceivePhase_RevealPokemon,
        TradeReceivePhase_ShowMessage
    };

    TradeReceivePhase *trPhase = param;

    if ((*state) < NELEMS(sStepFuncs)) {
        if (sStepFuncs[*state](trPhase, &(trPhase->subStepCounter))) {
            (*state)++;
            trPhase->subStepCounter = 0;
        }

        TradeReceivePhase_Tick(trPhase);

        return FALSE;
    }

    return TRUE;
}

static void TradeReceivePhase_Tick(TradeReceivePhase *trPhase)
{
    G3X_Reset();

    NNS_G3dGePushMtx();

    NNS_G3dGeFlushBuffer();
    NNS_G2dSetupSoftwareSpriteCamera();

    PokemonSpriteManager_UpdateCharAndPltt(trPhase->spriteManager);
    PokemonSpriteManager_DrawSprites(trPhase->spriteManager);

    NNS_G3dGePopMtx(1);

    if (trPhase->scene) {
        Trade3DScene_Render(trPhase->scene);
    }

    G3_RequestSwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_Z);
}

static int TradeReceivePhase_InitGraphics(TradeReceivePhase *trPhase, int *unused)
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
    static const BgTemplate bgTemplate1 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xf800,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0,
        .areaOver = 0,
        .mosaic = FALSE,
    };
    static const BgTemplate bgTemplate2 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xf000,
        .charBase = GX_BG_CHARBASE_0x04000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 2,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    GXLayers_SetBanks(&banks);
    GX_SetDispSelect(GX_DISP_SELECT_MAIN_SUB);
    SetAllGraphicsModes(&modes);

    Bg_InitFromTemplate(trPhase->bgConfig, BG_LAYER_MAIN_1, &bgTemplate1, 0);
    Bg_InitFromTemplate(trPhase->bgConfig, BG_LAYER_MAIN_2, &bgTemplate2, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);

    G2_SetBG0Priority(1);

    Bg_FillTilesRange(trPhase->bgConfig, 1, 0x0, 1, 0);
    Bg_FillTilemapRect(trPhase->bgConfig, 1, 0x0, 0, 0, 32, 32, 0);
    LoadMessageBoxGraphics(trPhase->bgConfig, BG_LAYER_MAIN_1, 109, 2, TradeSequence_GetOptionsFrame(trPhase->sequenceData), HEAP_ID_58);

    Window_Add(trPhase->bgConfig, &(trPhase->window), 1, 2, 19, 27, 4, 1, 1);
    Window_FillTilemap(&(trPhase->window), 0xf);
    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__PL_FONT, 7, 0, 1 * 0x20, 0x20, HEAP_ID_58);
    Bg_CopyTilemapBufferToVRAM(trPhase->bgConfig, 1);

    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__DEMO_TRADE, 22, trPhase->bgConfig, 2, 0, 0, 1, HEAP_ID_58);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__DEMO_TRADE, 21, trPhase->bgConfig, 2, 0, 0, 1, HEAP_ID_58);
    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__DEMO_TRADE, 23, 0, 0 * 0x20, 0x20, HEAP_ID_58);

    TradeReceivePhase_Init3DScene(trPhase);

    trPhase->scene = Trade3DScene_New(1, 0, 0, 0);
    trPhase->pokemonSprite = TradeReceivePhase_CreatePokemonSprite(trPhase);

    PokemonSprite_SetAttribute(trPhase->pokemonSprite, MON_SPRITE_HIDE, 1);

    trPhase->model = Trade3DModel_Load(trPhase->scene, 0, NARC_INDEX_GRAPHIC__DEMO_TRADE, 27, 0, BALL_REST_Y, 491520, 0);

    VecFx16 vecFx = { 0x0, 0xf000, 0x0 };
    Trade3DModel_SetRotation(trPhase->model, &vecFx);

    TradeReceivePhase_CreateBallSprites(trPhase);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);

    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG0, GX_BLEND_PLANEMASK_BG2, 16, 0);
    StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 16, 1, HEAP_ID_58);

    return 1;
}

static int TradeReceivePhase_Animate(TradeReceivePhase *trPhase, int *subStepCounter)
{
    switch (*subStepCounter) {
    case 0:
        if (IsScreenFadeDone()) {
            Sprite_SetAnim(trPhase->sprites[0], 1);
            Sprite_SetDrawFlag(trPhase->sprites[0], TRUE);
            return 1;
        }
        break;
    }

    return 0;
}

static int TradeReceivePhase_RevealPokemon(TradeReceivePhase *trPhase, int *subStepCounter)
{
    switch (*subStepCounter) {
    case 0:
        BallOpenState_Start(trPhase, &(trPhase->task1));
        (*subStepCounter)++;
    case 1:
        if (trPhase->task1 == NULL) {
            Sprite_SetAnim(trPhase->sprites[1], 2);
            Sprite_SetDrawFlag(trPhase->sprites[1], TRUE);
            Trade3DModel_SetEnabled(trPhase->model, 0);
            trPhase->timer = 0;
            (*subStepCounter)++;
        }
        break;
    case 2:
        if (++(trPhase->timer) > 10) {
            PokemonSprite_SetAttribute(trPhase->pokemonSprite, MON_SPRITE_HIDE, 0);
            BrightnessAnimState_Start(trPhase, 16, 0, 12);
            trPhase->subStepCounter++;
        }
        break;
    case 3:
        if (TradeReceivePhase_IsBrightnessAnimDone(trPhase)) {
            const BoxPokemon *boxMon = TradeSequence_GetReceivingPokemon(trPhase->sequenceData);

            if (BoxPokemon_GetValue((BoxPokemon *)boxMon, MON_DATA_IS_EGG, NULL) == 0) {
                u8 delay;

                PokemonSprite_LoadCryDelay(trPhase->pokeDataNarc, &delay, TradeSequence_GetReceivingSpecies(trPhase->sequenceData), 1);
                Sound_PlayDelayedPokemonCry(TradeSequence_GetReceivingSpecies(trPhase->sequenceData), delay, TradeSequence_GetReceivingForm(trPhase->sequenceData));
                PokemonSprite_InitAnim(trPhase->pokemonSprite, 1);
            }

            trPhase->timer = 0;
            (*subStepCounter)++;
        }
        break;
    case 4:
        if (++(trPhase->timer) > 30) {
            return 1;
        }
    }

    return 0;
}

static int TradeReceivePhase_ShowMessage(TradeReceivePhase *trPhase, int *subStepCounter)
{
    switch (*subStepCounter) {
    case 0:
        trPhase->timer = 0;
        (*subStepCounter)++;
        break;
    case 1:
        if (++(trPhase->timer) > 10) {
            MessageLoader *msgLoader = TradeSequence_GetMsgLoader(trPhase->sequenceData);
            StringTemplate *strTemplate = TradeSequence_GetStrTemplate(trPhase->sequenceData);
            int msgId, nextStep;

            if (TradeSequence_GetTradeType(trPhase->sequenceData) == TRADE_TYPE_NORMAL) {
                msgId = pl_msg_00000350_00002;
                nextStep = 2;
            } else {
                msgId = pl_msg_00000350_00005;
                nextStep = 3;
            }

            MessageLoader_GetString(msgLoader, msgId, trPhase->string0);
            StringTemplate_Format(strTemplate, trPhase->string1, trPhase->string0);
            Text_AddPrinterWithParams(&(trPhase->window), FONT_MESSAGE, trPhase->string1, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);

            Window_DrawMessageBox(&(trPhase->window), 109, 2);
            Window_CopyToVRAM(&(trPhase->window));
            Sound_PlayFanfare(SEQ_FANFA5);

            trPhase->timer = 0;
            trPhase->fanfarePlaying = 1;
            (*subStepCounter) = nextStep;
        }
        break;
    case 2:
        if (TradeReceivePhase_IsTimerAndFanfareDone(trPhase, 60)) {
            MessageLoader *msgLoader = TradeSequence_GetMsgLoader(trPhase->sequenceData);
            StringTemplate *strTemplate = TradeSequence_GetStrTemplate(trPhase->sequenceData);

            MessageLoader_GetString(msgLoader, pl_msg_00000350_00003, trPhase->string0);
            StringTemplate_Format(strTemplate, trPhase->string1, trPhase->string0);
            Window_FillTilemap(&(trPhase->window), 0xf);
            Text_AddPrinterWithParams(&(trPhase->window), FONT_MESSAGE, trPhase->string1, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
            Window_LoadTiles(&(trPhase->window));
            trPhase->timer = 0;
            (*subStepCounter)++;
        }
        break;
    case 3:
        if (TradeReceivePhase_IsTimerAndFanfareDone(trPhase, 60)) {
            Window_EraseMessageBox(&(trPhase->window), 0);
            trPhase->timer = 0;
            (*subStepCounter)++;
        }
        break;
    case 4:
        if (++(trPhase->timer) > 10) {
            StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 16, 1, HEAP_ID_58);
            (*subStepCounter)++;
        }
        break;
    case 5:
        if (IsScreenFadeDone()) {
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL TradeReceivePhase_IsTimerAndFanfareDone(TradeReceivePhase *trPhase, int timerTarget)
{
    if (trPhase->fanfarePlaying) {
        trPhase->fanfarePlaying = Sound_IsBGMPausedByFanfare();
    }

    if (trPhase->timer < timerTarget) {
        trPhase->timer++;
        return FALSE;
    }

    return trPhase->fanfarePlaying == 0;
}

static void TradeReceivePhase_Init3DScene(TradeReceivePhase *trPhase)
{
    NNSGfdTexKey texKey;
    NNSGfdPlttKey plttKey;

    NNS_G3dInit();

    G3X_InitMtxStack();
    G3X_SetShading(GX_SHADING_TOON);
    G3X_AntiAlias(1);
    G3X_AlphaTest(0, 0);
    G3X_AlphaBlend(1);
    G3X_SetClearColor(GX_RGB(0, 0, 0), 0, 0x7fff, 63, 0);

    G3_SwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_W);
    G3_ViewPort(0, 0, 255, 191);

    NNS_GfdInitFrmTexVramManager(1, 1);
    NNS_GfdInitFrmPlttVramManager(0x4000, 1);

    texKey = NNS_GfdAllocTexVram(0x4000, 0, 0);
    plttKey = NNS_GfdAllocPlttVram(0x80, 0, NNS_GFD_ALLOC_FROM_LOW);

    PokemonSpriteManager_SetCharBaseAddrAndSize(trPhase->spriteManager, NNS_GfdGetTexKeyAddr(texKey), NNS_GfdGetTexKeySize(texKey));
    PokemonSpriteManager_SetPlttBaseAddrAndSize(trPhase->spriteManager, NNS_GfdGetPlttKeyAddr(plttKey), NNS_GfdGetPlttKeySize(plttKey));
}

static PokemonSprite *TradeReceivePhase_CreatePokemonSprite(TradeReceivePhase *trPhase)
{
    PokemonSpriteTemplate template;
    BoxPokemon *boxMon;
    int y;

    boxMon = (BoxPokemon *)TradeSequence_GetReceivingPokemon(trPhase->sequenceData);

    BoxPokemon_BuildSpriteTemplate(&template, boxMon, 2, 0);
    PokemonSprite_LoadAnimFrames(trPhase->pokeDataNarc, trPhase->animFrames, TradeSequence_GetReceivingSpecies(trPhase->sequenceData), 1);

    y = (100 - 20) + BoxPokemon_SpriteYOffset(boxMon, 2, 0);
    return PokemonSpriteManager_CreateSprite(trPhase->spriteManager, &template, 128, y, 0, 0, trPhase->animFrames, NULL);
}

static void TradeReceivePhase_CreateBallSprites(TradeReceivePhase *trPhase)
{
    NNSG2dImagePaletteProxy plttProxy;
    NNSG2dImageProxy imgProxy;
    SpriteResourcesHeader header;

    SpriteAnimResources_Load(&trPhase->animResources, 93, 7, 8);

    NNS_G2dInitImagePaletteProxy(&plttProxy);
    NNS_G2dInitImageProxy(&imgProxy);

    Graphics_LoadImageMapping(93, 9, 1, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 0, 58, &imgProxy);
    Graphics_LoadPartialPalette(93, 10, NNS_G2D_VRAM_TYPE_2DMAIN, 0, 58, &plttProxy);

    SpriteResourcesHeader_InitFromAnimResources(&header, &trPhase->animResources, &imgProxy, &plttProxy, 2);

    trPhase->sprites[0] = TradeSequence_AddSprite(trPhase->sequenceData, &header, 128, 100, 0, NNS_G2D_VRAM_TYPE_2DMAIN);
    trPhase->sprites[1] = TradeSequence_AddSprite(trPhase->sequenceData, &header, 128, 90, 0, NNS_G2D_VRAM_TYPE_2DMAIN);

    Sprite_SetExplicitPriority(trPhase->sprites[1], 1);
    Sprite_SetDrawFlag(trPhase->sprites[0], FALSE);
    Sprite_SetDrawFlag(trPhase->sprites[1], FALSE);
}

static void TradeReceivePhase_DeleteBallSprites(TradeReceivePhase *trPhase)
{
    for (int i = 0; i < 2; i++) {
        if (trPhase->sprites[i]) {
            Sprite_Delete(trPhase->sprites[i]);
        }
    }

    SpriteAnimResources_Free(&trPhase->animResources);
}

static void BrightnessAnimState_Start(TradeReceivePhase *trPhase, int startValue, int targetValue, int duration)
{
    BrightnessAnimState *baState = Heap_Alloc(HEAP_ID_58, sizeof(BrightnessAnimState));

    if (baState) {
        baState->phase = trPhase;
        baState->currentValue = startValue << 12;
        baState->targetValue = targetValue << 12;
        baState->step = (baState->targetValue - baState->currentValue) / duration;
        baState->framesRemaining = duration;
        trPhase->task0 = SysTask_ExecuteOnVBlank(BrightnessAnimState_Task, baState, 0);

        G2_SetBlendBrightness(GX_BLEND_PLANEMASK_BG0, startValue);
    }
}

static BOOL TradeReceivePhase_IsBrightnessAnimDone(TradeReceivePhase *trPhase)
{
    return trPhase->task0 == NULL;
}

static void TradeReceivePhase_FreeBrightnessAnimState(TradeReceivePhase *trPhase)
{
    if (trPhase->task0) {
        DeferredFree_Enqueue(SysTask_GetParam(trPhase->task0));
        SysTask_Done(trPhase->task0);
        trPhase->task0 = NULL;
    }
}

static void BrightnessAnimState_Task(SysTask *unused, void *param)
{
    BrightnessAnimState *baState = param;
    int brightness;

    if (--(baState->framesRemaining) > 0) {
        baState->currentValue += baState->step;
        brightness = baState->currentValue >> 12;
        G2_SetBlendBrightness(GX_BLEND_PLANEMASK_BG0, brightness);
    } else {
        brightness = baState->targetValue >> 12;
        G2_SetBlendBrightness(GX_BLEND_PLANEMASK_BG0, brightness);
        TradeReceivePhase_FreeBrightnessAnimState(baState->phase);
    }
}

static void BallOpenState_Start(TradeReceivePhase *trPhase, SysTask **task)
{
    BallOpenState *boState = Heap_Alloc(HEAP_ID_58, sizeof(BallOpenState));

    if (boState) {
        boState->subState = 0;
        boState->taskHandle = task;
        boState->scene = trPhase->scene;
        boState->model = trPhase->model;
        boState->phase = trPhase;
        boState->currentAlpha = 0;
        boState->alphaStep = (31 << 12) / BALL_FADE_IN_DURATION;
        boState->alphaFrames = BALL_FADE_IN_DURATION;
        boState->rotationSpeed = BALL_INITIAL_ROTATION_SPEED;
        boState->rotationTransitionFrames = 0;

        Trade3DModel_SetAlpha(boState->model, 0);
        Trade3DModel_SetEnabled(boState->model, 1);
        Trade3DModel_GetPosition(boState->model, &(boState->position));
        Trade3DModel_GetRotation(boState->model, &(boState->rotation));

        *task = SysTask_Start(BallOpenState_Task, boState, 0);

        if (*task == NULL) {
            Heap_Free(boState);
        }
    } else {
        *task = NULL;
    }
}

static void BallOpenState_Free(SysTask *task)
{
    if (task) {
        BallOpenState *boState = SysTask_GetParam(task);

        *(boState->taskHandle) = NULL;
        Heap_Free(boState);
        SysTask_Done(task);
    }
}

static void BallOpenState_UpdateRotation(BallOpenState *boState)
{
    if (boState->rotationTransitionFrames) {
        boState->rotationSpeed += boState->rotationSpeedStep;

        if (--(boState->rotationTransitionFrames) == 0) {
            boState->rotationSpeed = boState->targetRotationSpeed;
        }
    }

    boState->rotation.y += boState->rotationSpeed;
    Trade3DModel_SetRotation(boState->model, &(boState->rotation));
}

static void BallOpenState_SetRotationTarget(BallOpenState *boState, fx32 targetSpeed, int duration)
{
    if (duration) {
        boState->rotationSpeedStep = (targetSpeed - boState->rotationSpeed) / duration;
        boState->rotationTransitionFrames = duration;
    }
}

static void BallOpenState_Task(SysTask *task, void *param)
{
    BallOpenState *boState = param;

    BallOpenState_UpdateRotation(boState);

    switch (boState->subState) {
    case 0:
        if (boState->alphaFrames) {
            boState->currentAlpha += boState->alphaStep;
            boState->alphaFrames--;
            Trade3DModel_SetAlpha(boState->model, boState->currentAlpha >> 12);
        } else {
            Trade3DModel_SetAlpha(boState->model, 31);
            boState->subState++;
        }
        break;
    case 1:
        BallOpenState_SetRotationTarget(boState, BALL_ROTATION_SPEED, 30);
        boState->timer = 0;
        boState->subState++;
        break;
    case 2:
        if (++(boState->timer) > 10) {
            boState->velocityY = 0;
            boState->subState++;
        }
        break;
    case 3:
        boState->position.y += boState->velocityY;
        boState->velocityY += BALL_GRAVITY;

        Trade3DModel_SetPosition(boState->model, &(boState->position));

        if (boState->position.y < BALL_FLOOR_Y) {
            Sound_PlayEffect(SEQ_SE_DP_KON);
            boState->velocityY *= -1;

            BrightnessAnimState_Start(boState->phase, 0, 16, 8);
            boState->subState++;
        }
        break;
    case 4:
        boState->position.y += boState->velocityY;

        if (boState->position.y >= BALL_REST_Y) {
            boState->position.y = BALL_REST_Y;
        }

        Trade3DModel_SetPosition(boState->model, &(boState->position));

        if (boState->position.y == BALL_REST_Y) {
            boState->subState++;
        }
        break;
    case 5:
        if (TradeReceivePhase_IsBrightnessAnimDone(boState->phase)) {
            BallOpenState_Free(task);
        }
    }
}
