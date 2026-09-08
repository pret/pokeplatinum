#include <nitro.h>
#include <string.h>

#include "struct_defs/sprite_animation_frame.h"

#include "cutscenes/trade_sequence/3d_scene.h"
#include "cutscenes/trade_sequence/main.h"

#include "bg_window.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "network_icon.h"
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

typedef struct TradeSendPhase {
    TradeSequenceData *sequenceData;
    int subStepCounter;
    int timer;
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
} TradeSendPhase;

typedef struct BrightnessAnimState {
    TradeSendPhase *phase;
    fx32 currentValue;
    fx32 targetValue;
    fx32 step;
    int framesRemaining;
} BrightnessAnimState;

typedef struct BallBounceState {
    TradeSendPhase *phase;
    Trade3DModel *model;
    VecFx32 position;
    VecFx16 rotation;
    fx32 velocityY;
    int bounceCount;
    BOOL settled;
    int settleTimer;
    fx16 spinSpeed;
} BallBounceState;

static void TradeSendPhase_Tick(TradeSendPhase *tsPhase);
static int TradeSendPhase_InitGraphics(TradeSendPhase *tsPhase, int *unused);
static int TradeSendPhase_RevealSprite(TradeSendPhase *tsPhase, int *subStepCounter);
static int TradeSendPhase_ShowPokemonInfo(TradeSendPhase *tsPhase, int *subStepCounter);
static int TradeSendPhase_ThrowBall(TradeSendPhase *tsPhase, int *subStepCounter);
static void TradeSendPhase_Init3DScene(TradeSendPhase *tsPhase);
static PokemonSprite *TradeSendPhase_CreatePokemonSprite(TradeSendPhase *tsPhase);
static void TradeSendPhase_CreateBallSprites(TradeSendPhase *tsPhase);
static void TradeSendPhase_DeleteBallSprites(TradeSendPhase *tsPhase);
static void BrightnessAnimState_Start(TradeSendPhase *tsPhase, int startValue, int targetValue, int duration);
static BOOL TradeSendPhase_IsBrightnessAnimDone(TradeSendPhase *tsPhase);
static void TradeSendPhase_FreeBrightnessAnimState(TradeSendPhase *tsPhase);
static void BrightnessAnimState_Task(SysTask *task, void *param);
static void BallBounceState_Start(TradeSendPhase *tsPhase);
static BOOL TradeSendPhase_IsBallBounceDone(TradeSendPhase *tsPhase);
static int TradeSendPhase_GetBounceCount(TradeSendPhase *tsPhase);
static void BallBounceState_Free(TradeSendPhase *tsPhase);
static void BallBounceState_Task(SysTask *task, void *param);

void *TradeSendPhase_New(TradeSequenceData *sequenceData)
{
    TradeSendPhase *tsPhase = Heap_Alloc(HEAP_ID_TRADE_SEQUENCE_PHASE, sizeof(TradeSendPhase));

    if (tsPhase) {
        tsPhase->sequenceData = sequenceData;
        tsPhase->subStepCounter = 0;
        tsPhase->bgConfig = TradeSequence_GetBgConfig(sequenceData);
        tsPhase->spriteManager = PokemonSpriteManager_New(HEAP_ID_TRADE_SEQUENCE_PHASE);
        tsPhase->pokemonSprite = NULL;
        tsPhase->string0 = String_Init(300, HEAP_ID_TRADE_SEQUENCE_PHASE);
        tsPhase->string1 = String_Init(300, HEAP_ID_TRADE_SEQUENCE_PHASE);
        tsPhase->task0 = NULL;
        tsPhase->task1 = NULL;
        tsPhase->pokeDataNarc = NARC_ctor(NARC_INDEX_POKETOOL__POKE_EDIT__PL_POKE_DATA, HEAP_ID_TRADE_SEQUENCE_PHASE);
    }

    return tsPhase;
}

void TradeSendPhase_Free(void *param)
{
    TradeSendPhase *tsPhase = param;

    if (tsPhase) {
        TradeSendPhase_FreeBrightnessAnimState(tsPhase);
        BallBounceState_Free(tsPhase);
        TradeSendPhase_DeleteBallSprites(tsPhase);

        String_Free(tsPhase->string0);
        String_Free(tsPhase->string1);

        Trade3DScene_Free(tsPhase->scene);

        Bg_FreeTilemapBuffer(tsPhase->bgConfig, BG_LAYER_MAIN_1);
        Bg_FreeTilemapBuffer(tsPhase->bgConfig, BG_LAYER_MAIN_2);
        Bg_FreeTilemapBuffer(tsPhase->bgConfig, BG_LAYER_SUB_2);
        Window_Remove(&(tsPhase->window));
        NARC_dtor(tsPhase->pokeDataNarc);

        if (tsPhase->pokemonSprite) {
            PokemonSprite_Delete(tsPhase->pokemonSprite);
        }

        PokemonSpriteManager_Free(tsPhase->spriteManager);
        Heap_Free(tsPhase);
    }
}

BOOL TradeSendPhase_Run(void *param, int *state)
{
    static int (*const sStepFuncs[])(TradeSendPhase *, int *) = {
        TradeSendPhase_InitGraphics,
        TradeSendPhase_RevealSprite,
        TradeSendPhase_ShowPokemonInfo,
        TradeSendPhase_ThrowBall,
    };

    TradeSendPhase *tsPhase = param;

    if ((*state) < NELEMS(sStepFuncs)) {
        if (sStepFuncs[*state](tsPhase, &(tsPhase->subStepCounter))) {
            (*state)++;
            tsPhase->subStepCounter = 0;
        }

        TradeSendPhase_Tick(tsPhase);

        return FALSE;
    }

    return TRUE;
}

static void TradeSendPhase_Tick(TradeSendPhase *tsPhase)
{
    G3X_Reset();
    NNS_G3dGePushMtx();

    NNS_G3dGeFlushBuffer();
    NNS_G2dSetupSoftwareSpriteCamera();

    PokemonSpriteManager_UpdateCharAndPltt(tsPhase->spriteManager);
    PokemonSpriteManager_DrawSprites(tsPhase->spriteManager);

    NNS_G3dGePopMtx(1);

    Trade3DScene_Render(tsPhase->scene);
    G3_RequestSwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_Z);
}

static int TradeSendPhase_InitGraphics(TradeSendPhase *tsPhase, int *unused)
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
    GX_SetDispSelect(GX_DISP_SELECT_SUB_MAIN);
    SetAllGraphicsModes(&modes);

    Bg_InitFromTemplate(tsPhase->bgConfig, BG_LAYER_MAIN_1, &bgTemplate1, 0);
    Bg_InitFromTemplate(tsPhase->bgConfig, BG_LAYER_MAIN_2, &bgTemplate2, 0);
    Bg_InitFromTemplate(tsPhase->bgConfig, BG_LAYER_SUB_2, &bgTemplate2, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);

    G2_SetBG0Priority(1);

    Bg_FillTilesRange(tsPhase->bgConfig, 1, 0x0, 1, 0);
    Bg_FillTilemapRect(tsPhase->bgConfig, 1, 0x0, 0, 0, 32, 32, 0);
    LoadMessageBoxGraphics(tsPhase->bgConfig, BG_LAYER_MAIN_1, 109, 2, TradeSequence_GetOptionsFrame(tsPhase->sequenceData), HEAP_ID_TRADE_SEQUENCE_PHASE);
    Window_Add(tsPhase->bgConfig, &(tsPhase->window), 1, 2, 19, 27, 4, 1, 1);
    Window_FillTilemap(&(tsPhase->window), 0xf);

    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__PL_FONT, 7, 0, 1 * 0x20, 0x20, HEAP_ID_TRADE_SEQUENCE_PHASE);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__DEMO_TRADE, 22, tsPhase->bgConfig, 2, 0, 0, 1, HEAP_ID_TRADE_SEQUENCE_PHASE);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__DEMO_TRADE, 21, tsPhase->bgConfig, 2, 0, 0, 1, HEAP_ID_TRADE_SEQUENCE_PHASE);
    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__DEMO_TRADE, 23, 0, 0 * 0x20, 0x20, HEAP_ID_TRADE_SEQUENCE_PHASE);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__DEMO_TRADE, 22, tsPhase->bgConfig, 6, 0, 0, 1, HEAP_ID_TRADE_SEQUENCE_PHASE);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__DEMO_TRADE, 21, tsPhase->bgConfig, 6, 0, 0, 1, HEAP_ID_TRADE_SEQUENCE_PHASE);
    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__DEMO_TRADE, 23, 4, 0 * 0x20, 0x20, HEAP_ID_TRADE_SEQUENCE_PHASE);

    Bg_CopyTilemapBufferToVRAM(tsPhase->bgConfig, 1);
    TradeSendPhase_Init3DScene(tsPhase);

    tsPhase->scene = Trade3DScene_New(1, 0, 0, 0);
    tsPhase->pokemonSprite = TradeSendPhase_CreatePokemonSprite(tsPhase);
    tsPhase->model = Trade3DModel_Load(tsPhase->scene, 0, NARC_INDEX_GRAPHIC__DEMO_TRADE, 27, 0, 147456 + 4294928384, 245760 + 227328, 0);

    VecFx16 vecFx = { 0x0, 0xf000, 0x0 };
    Trade3DModel_SetRotation(tsPhase->model, &vecFx);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
    TradeSendPhase_CreateBallSprites(tsPhase);

    G2_BlendNone();

    NetworkIcon_Init();
    NetworkIcon_CreateOnSubScreen(1, HEAP_ID_TRADE_SEQUENCE);
    StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 16, 1, HEAP_ID_TRADE_SEQUENCE_PHASE);

    return 1;
}

static int TradeSendPhase_RevealSprite(TradeSendPhase *tsPhase, int *subStepCounter)
{
    switch (*subStepCounter) {
    case 0:
        if (IsScreenFadeDone()) {
            Sprite_SetAnim(tsPhase->sprites[0], 1);
            Sprite_SetDrawFlag(tsPhase->sprites[0], TRUE);
            return 1;
        }
        break;
    }

    return 0;
}

static int TradeSendPhase_ShowPokemonInfo(TradeSendPhase *tsPhase, int *subStepCounter)
{
    switch (*subStepCounter) {
    case 0:
        tsPhase->timer = 0;
        (*subStepCounter)++;
        break;
    case 1:
        if (++(tsPhase->timer) > 10) {
            MessageLoader *msgLoader = TradeSequence_GetMsgLoader(tsPhase->sequenceData);
            StringTemplate *template = TradeSequence_GetStrTemplate(tsPhase->sequenceData);
            int msgId, nextStep;

            if (TradeSequence_GetTradeType(tsPhase->sequenceData) == TRADE_TYPE_NORMAL) {
                msgId = pl_msg_00000350_00000;
                nextStep = 2;
            } else {
                msgId = pl_msg_00000350_00004;
                nextStep = 3;
            }

            MessageLoader_GetString(msgLoader, msgId, tsPhase->string0);
            StringTemplate_Format(template, tsPhase->string1, tsPhase->string0);
            Text_AddPrinterWithParams(&(tsPhase->window), FONT_MESSAGE, tsPhase->string1, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
            Window_DrawMessageBox(&(tsPhase->window), 109, 2);
            Window_CopyToVRAM(&(tsPhase->window));
            tsPhase->timer = 0;
            (*subStepCounter) = nextStep;
        }
        break;
    case 2:
        if (++(tsPhase->timer) > 60) {
            MessageLoader *msgLoader = TradeSequence_GetMsgLoader(tsPhase->sequenceData);
            StringTemplate *template = TradeSequence_GetStrTemplate(tsPhase->sequenceData);

            MessageLoader_GetString(msgLoader, 1, tsPhase->string0);
            StringTemplate_Format(template, tsPhase->string1, tsPhase->string0);

            {
                const BoxPokemon *boxMon = TradeSequence_GetSendingPokemon(tsPhase->sequenceData);

                if (BoxPokemon_GetValue((BoxPokemon *)boxMon, MON_DATA_IS_EGG, NULL) == 0) {
                    u8 delay;

                    PokemonSprite_InitAnim(tsPhase->pokemonSprite, 1);
                    PokemonSprite_LoadCryDelay(tsPhase->pokeDataNarc, &delay, TradeSequence_GetSendingSpecies(tsPhase->sequenceData), 1);
                    Sound_PlayDelayedPokemonCry(TradeSequence_GetSendingSpecies(tsPhase->sequenceData), delay, TradeSequence_GetSendingForm(tsPhase->sequenceData));
                }

                Window_FillTilemap(&(tsPhase->window), 0xf);
                Text_AddPrinterWithParams(&(tsPhase->window), FONT_MESSAGE, tsPhase->string1, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
                Window_LoadTiles(&(tsPhase->window));
                tsPhase->timer = 0;
                (*subStepCounter)++;
            }
        }
        break;
    case 3:
        if (++(tsPhase->timer) > 60) {
            Window_EraseMessageBox(&(tsPhase->window), 0);
            tsPhase->timer = 0;
            (*subStepCounter)++;
        }
        break;
    case 4:
        if (++(tsPhase->timer) > 20) {
            return 1;
        }
        break;
    }

    return 0;
}

static int TradeSendPhase_ThrowBall(TradeSendPhase *tsPhase, int *subStepCounter)
{
    switch (*subStepCounter) {
    case 0:
        Sound_PlayEffect(SEQ_SE_DP_KOUKAN01_sseq);
        BrightnessAnimState_Start(tsPhase, 0, 16, 12);
        (*subStepCounter)++;
        break;
    case 1:
        if (TradeSendPhase_IsBrightnessAnimDone(tsPhase)) {
            PokemonSprite_Delete(tsPhase->pokemonSprite);
            Sprite_SetAnim(tsPhase->sprites[1], 0);
            Sprite_SetDrawFlag(tsPhase->sprites[1], TRUE);
            (*subStepCounter)++;
        }
        break;
    case 2:
        if (Sprite_IsAnimated(tsPhase->sprites[1]) == 0) {
            Trade3DModel_SetEnabled(tsPhase->model, 1);
            BrightnessAnimState_Start(tsPhase, 16, 0, 16);
            BallBounceState_Start(tsPhase);
            (*subStepCounter)++;
        }
        break;
    case 3:
        if ((TradeSendPhase_GetBounceCount(tsPhase) >= 2) || (TradeSendPhase_IsBallBounceDone(tsPhase) == 1)) {
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 24, 1, HEAP_ID_TRADE_SEQUENCE_PHASE);
            (*subStepCounter)++;
        }
        break;
    case 4:
        if (IsScreenFadeDone()) {
            if (TradeSendPhase_IsBallBounceDone(tsPhase)) {
                return 1;
            }
        }
        break;
    }

    return 0;
}

static void TradeSendPhase_Init3DScene(TradeSendPhase *tsPhase)
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

    PokemonSpriteManager_SetCharBaseAddrAndSize(tsPhase->spriteManager, NNS_GfdGetTexKeyAddr(texKey), NNS_GfdGetTexKeySize(texKey));
    PokemonSpriteManager_SetPlttBaseAddrAndSize(tsPhase->spriteManager, NNS_GfdGetPlttKeyAddr(plttKey), NNS_GfdGetPlttKeySize(plttKey));
}

static PokemonSprite *TradeSendPhase_CreatePokemonSprite(TradeSendPhase *tsPhase)
{
    PokemonSpriteTemplate template;
    BoxPokemon *boxMon;
    int y;

    boxMon = (BoxPokemon *)TradeSequence_GetSendingPokemon(tsPhase->sequenceData);

    BoxPokemon_BuildSpriteTemplate(&template, boxMon, 2, 0);
    PokemonSprite_LoadAnimFrames(tsPhase->pokeDataNarc, tsPhase->animFrames, TradeSequence_GetSendingSpecies(tsPhase->sequenceData), 1);

    y = (100 - 20) + BoxPokemon_SpriteYOffset(boxMon, 2, 0);

    return PokemonSpriteManager_CreateSprite(tsPhase->spriteManager, &template, 128, y, 0, 0, tsPhase->animFrames, NULL);
}

static void TradeSendPhase_CreateBallSprites(TradeSendPhase *tsPhase)
{
    NNSG2dImagePaletteProxy plttProxy;
    NNSG2dImageProxy imgProxy;
    SpriteResourcesHeader header;

    SpriteAnimResources_Load(&tsPhase->animResources, 93, 7, 8);

    NNS_G2dInitImagePaletteProxy(&plttProxy);
    NNS_G2dInitImageProxy(&imgProxy);

    Graphics_LoadImageMapping(93, 9, 1, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 0, 58, &imgProxy);
    Graphics_LoadPartialPalette(93, 10, NNS_G2D_VRAM_TYPE_2DMAIN, 0, 58, &plttProxy);

    SpriteResourcesHeader_InitFromAnimResources(&header, &tsPhase->animResources, &imgProxy, &plttProxy, 2);

    tsPhase->sprites[0] = TradeSequence_AddSprite(tsPhase->sequenceData, &header, 128, 100, 0, NNS_G2D_VRAM_TYPE_2DMAIN);
    tsPhase->sprites[1] = TradeSequence_AddSprite(tsPhase->sequenceData, &header, 128, 90, 0, NNS_G2D_VRAM_TYPE_2DMAIN);

    Sprite_SetExplicitPriority(tsPhase->sprites[1], 1);
    Sprite_SetDrawFlag(tsPhase->sprites[0], FALSE);
    Sprite_SetDrawFlag(tsPhase->sprites[1], FALSE);
}

static void TradeSendPhase_DeleteBallSprites(TradeSendPhase *tsPhase)
{
    for (int i = 0; i < 2; i++) {
        if (tsPhase->sprites[i]) {
            Sprite_Delete(tsPhase->sprites[i]);
        }
    }

    SpriteAnimResources_Free(&tsPhase->animResources);
}

static void BrightnessAnimState_Start(TradeSendPhase *tsPhase, int startValue, int targetValue, int duration)
{
    BrightnessAnimState *baState = Heap_Alloc(HEAP_ID_TRADE_SEQUENCE_PHASE, sizeof(BrightnessAnimState));

    if (baState) {
        baState->phase = tsPhase;
        baState->currentValue = startValue << 12;
        baState->targetValue = targetValue << 12;
        baState->step = (baState->targetValue - baState->currentValue) / duration;
        baState->framesRemaining = duration;
        tsPhase->task0 = SysTask_ExecuteOnVBlank(BrightnessAnimState_Task, baState, 0);

        G2_SetBlendBrightness(GX_BLEND_PLANEMASK_BG0, startValue);
    }
}

static BOOL TradeSendPhase_IsBrightnessAnimDone(TradeSendPhase *tsPhase)
{
    return tsPhase->task0 == NULL;
}

static void TradeSendPhase_FreeBrightnessAnimState(TradeSendPhase *tsPhase)
{
    if (tsPhase->task0) {
        DeferredFree_Enqueue(SysTask_GetParam(tsPhase->task0));
        SysTask_Done(tsPhase->task0);
        tsPhase->task0 = NULL;
    }
}

static void BrightnessAnimState_Task(SysTask *task, void *param)
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
        TradeSendPhase_FreeBrightnessAnimState(baState->phase);
    }
}

static void BallBounceState_Start(TradeSendPhase *tsPhase)
{
    BallBounceState *bbState = Heap_Alloc(HEAP_ID_TRADE_SEQUENCE_PHASE, sizeof(BallBounceState));

    if (bbState) {
        bbState->phase = tsPhase;
        bbState->model = tsPhase->model;

        Trade3DModel_GetPosition(bbState->model, &(bbState->position));
        Trade3DModel_GetRotation(bbState->model, &(bbState->rotation));

        bbState->velocityY = 12128;
        bbState->bounceCount = 0;
        bbState->spinSpeed = 0;
        bbState->settled = 0;
        bbState->settleTimer = 0;

        tsPhase->task1 = SysTask_Start(BallBounceState_Task, bbState, 0);
    }
}

static BOOL TradeSendPhase_IsBallBounceDone(TradeSendPhase *tsPhase)
{
    return tsPhase->task1 == NULL;
}

static int TradeSendPhase_GetBounceCount(TradeSendPhase *tsPhase)
{
    if (tsPhase->task1) {
        BallBounceState *bbState = SysTask_GetParam(tsPhase->task1);
        return bbState->bounceCount;
    }

    return 0;
}

static void BallBounceState_Free(TradeSendPhase *tsPhase)
{
    if (tsPhase->task1) {
        Heap_Free(SysTask_GetParam(tsPhase->task1));
        SysTask_Done(tsPhase->task1);
        tsPhase->task1 = NULL;
    }
}

static void BallBounceState_Task(SysTask *task, void *param)
{
    BallBounceState *bbState = param;

    if (bbState->settled == 0) {
        bbState->position.y += bbState->velocityY;

        if (bbState->velocityY >= 0) {
            bbState->velocityY += -1920;
        } else {
            bbState->velocityY += -1920;

            if (bbState->position.y <= -16384) {
                bbState->position.y = -16384;
                bbState->velocityY = -((bbState->velocityY * 44) / 100);

                if (bbState->velocityY < 4000) {
                    bbState->settled = 1;
                }

                Sound_PlayEffect(SEQ_SE_DP_KON_sseq);
                bbState->bounceCount++;

                switch (bbState->bounceCount) {
                case 1:
                    bbState->spinSpeed = 176;
                    break;
                case 3:
                    bbState->spinSpeed += 80;
                    break;
                }
            }
        }
    }

    bbState->rotation.x += bbState->spinSpeed;
    bbState->rotation.z -= bbState->spinSpeed;

    Trade3DModel_SetRotation(bbState->model, &(bbState->rotation));

    bbState->position.x += (bbState->spinSpeed * 5);
    bbState->position.z += (bbState->spinSpeed * 5);

    Trade3DModel_SetPosition(bbState->model, &(bbState->position));

    if (bbState->settled) {
        bbState->spinSpeed -= 14;

        if (++(bbState->settleTimer) > 30) {
            BallBounceState_Free(bbState->phase);
        }
    }
}
