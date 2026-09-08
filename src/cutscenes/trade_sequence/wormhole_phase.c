#include <nitro.h>
#include <string.h>

#include "cutscenes/trade_sequence/main.h"

#include "bg_window.h"
#include "enums.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "sys_task.h"
#include "sys_task_manager.h"

#define BG2_SCROLL_START 80
#define BG2_SCROLL_END   -48
#define BG1_SCROLL_START -384
#define BG1_SCROLL_END   -48
#define SCROLL_DURATION  60

typedef struct TradeWormholePhase {
    TradeSequenceData *sequenceData;
    int subStepCounter;
    int framesRemaining;
    BgConfig *bgConfig;
    fx32 bg1Scroll;
    fx32 bg2Scroll;
    fx32 bg1ScrollStep;
    fx32 bg2ScrollStep;
    BOOL scrollDone;
} TradeWormholePhase;

static int TradeWormholePhase_Setup(TradeWormholePhase *twPhase, int *unused);
static int TradeWormholePhase_Animate(TradeWormholePhase *twPhase, int *subStepCounter);
static void TradeWormholePhase_ScrollTask(SysTask *task, void *param);
static void TradeWormholePhase_InitGraphics(TradeWormholePhase *twPhase);
static void TradeWormholePhase_FreeGraphics(TradeWormholePhase *twPhase);
static void TradeWormholePhase_SetBgScroll(BgConfig *bgConfig, int bg1Scroll, int bg2Scroll);

void *TradeWormholePhase_New(TradeSequenceData *sequenceData)
{
    TradeWormholePhase *twPhase = Heap_Alloc(HEAP_ID_TRADE_SEQUENCE_PHASE, sizeof(TradeWormholePhase));

    if (twPhase) {
        twPhase->sequenceData = sequenceData;
        twPhase->subStepCounter = 0;
        twPhase->bgConfig = TradeSequence_GetBgConfig(sequenceData);
    }

    return twPhase;
}

void TradeWormholePhase_Free(void *param)
{
    TradeWormholePhase *twPhase = param;

    if (twPhase) {
        TradeWormholePhase_FreeGraphics(twPhase);
        Heap_Free(twPhase);
    }
}

BOOL TradeWormholePhase_Run(void *param, int *state)
{
    static int (*const sStepFuncs[])(TradeWormholePhase *, int *) = {
        TradeWormholePhase_Setup,
        TradeWormholePhase_Animate
    };

    TradeWormholePhase *twPhase = param;

    if ((*state) < NELEMS(sStepFuncs)) {
        if (sStepFuncs[*state](twPhase, &(twPhase->subStepCounter))) {
            (*state)++;
            twPhase->subStepCounter = 0;
        }

        return FALSE;
    }

    return TRUE;
}

static int TradeWormholePhase_Setup(TradeWormholePhase *twPhase, int *unused)
{
    TradeWormholePhase_InitGraphics(twPhase);
    StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_WHITE, 8, 1, HEAP_ID_TRADE_SEQUENCE_PHASE);

    return 1;
}

static int TradeWormholePhase_Animate(TradeWormholePhase *twPhase, int *subStepCounter)
{
    switch (*subStepCounter) {
    case 0:
        if (IsScreenFadeDone()) {
            twPhase->bg1Scroll = BG1_SCROLL_START << 12;
            twPhase->bg2Scroll = BG2_SCROLL_START << 12;
            twPhase->bg1ScrollStep = ((BG1_SCROLL_END - BG1_SCROLL_START) << 12) / SCROLL_DURATION;
            twPhase->bg2ScrollStep = ((BG2_SCROLL_END - BG2_SCROLL_START) << 12) / SCROLL_DURATION;
            twPhase->framesRemaining = SCROLL_DURATION;
            twPhase->scrollDone = 0;
            SysTask_ExecuteOnVBlank(TradeWormholePhase_ScrollTask, twPhase, 0);
            (*subStepCounter)++;
        }
        break;
    case 1:
        if (twPhase->scrollDone) {
            Sound_PlayEffect(SEQ_SE_DP_KOUKAN03_sseq);
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_WHITE, 16, 1, HEAP_ID_TRADE_SEQUENCE_PHASE);
            (*subStepCounter)++;
        }
        break;
    case 2:
        if (IsScreenFadeDone()) {
            return 1;
        }
        break;
    }

    return 0;
}

static void TradeWormholePhase_ScrollTask(SysTask *task, void *param)
{
    TradeWormholePhase *twPhase = param;

    if (twPhase->framesRemaining) {
        twPhase->framesRemaining--;
        twPhase->bg1Scroll += twPhase->bg1ScrollStep;
        twPhase->bg2Scroll += twPhase->bg2ScrollStep;

        TradeWormholePhase_SetBgScroll(twPhase->bgConfig, twPhase->bg1Scroll >> 12, twPhase->bg2Scroll >> 12);
    } else {
        TradeWormholePhase_SetBgScroll(twPhase->bgConfig, BG1_SCROLL_END, BG2_SCROLL_END);
        twPhase->scrollDone = 1;
        SysTask_Done(task);
    }
}

static void TradeWormholePhase_InitGraphics(TradeWormholePhase *twPhase)
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
        .bufferSize = 0x1000,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x512,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xd000,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 1,
        .areaOver = 1,
        .mosaic = FALSE,
    };
    static const BgTemplate bgTemplate2 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x1000,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x512,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xe000,
        .charBase = GX_BG_CHARBASE_0x10000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 2,
        .areaOver = 1,
        .mosaic = FALSE,
    };
    static const BgTemplate bgTemplate3 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x0,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xf000,
        .charBase = GX_BG_CHARBASE_0x04000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 3,
        .areaOver = 1,
        .mosaic = FALSE,
    };

    GXLayers_SetBanks(&banks);
    GX_SetDispSelect(GX_DISP_SELECT_MAIN_SUB);
    SetAllGraphicsModes(&modes);

    Bg_InitFromTemplate(twPhase->bgConfig, BG_LAYER_MAIN_1, &bgTemplate1, 0);
    Bg_InitFromTemplate(twPhase->bgConfig, BG_LAYER_SUB_1, &bgTemplate1, 0);
    Bg_InitFromTemplate(twPhase->bgConfig, BG_LAYER_MAIN_2, &bgTemplate2, 0);
    Bg_InitFromTemplate(twPhase->bgConfig, BG_LAYER_MAIN_3, &bgTemplate3, 0);
    Bg_InitFromTemplate(twPhase->bgConfig, BG_LAYER_SUB_3, &bgTemplate3, 0);

    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__DEMO_TRADE, 19, twPhase->bgConfig, 3, 0, 0, 1, HEAP_ID_TRADE_SEQUENCE_PHASE);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__DEMO_TRADE, 19, twPhase->bgConfig, 7, 0, 0, 1, HEAP_ID_TRADE_SEQUENCE_PHASE);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__DEMO_TRADE, 18, twPhase->bgConfig, 3, 0, 0, 1, HEAP_ID_TRADE_SEQUENCE_PHASE);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__DEMO_TRADE, 18, twPhase->bgConfig, 7, 0, 0, 1, HEAP_ID_TRADE_SEQUENCE_PHASE);

    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__DEMO_TRADE, 20, 0, 0, 0x20, HEAP_ID_TRADE_SEQUENCE_PHASE);
    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__DEMO_TRADE, 20, 4, 0, 0x20, HEAP_ID_TRADE_SEQUENCE_PHASE);

    Bg_FillTilesRange(twPhase->bgConfig, 1, 0x0, 1, 200);
    Bg_FillTilesRange(twPhase->bgConfig, 5, 0x0, 1, 200);
    Bg_FillTilesRange(twPhase->bgConfig, 2, 0x0, 1, 200);

    TradeSequence_LoadPokemonBGTiles(twPhase->sequenceData, 0, 1, 14, 0);
    TradeSequence_LoadPokemonBGTiles(twPhase->sequenceData, 0, 5, 14, 0);
    TradeSequence_LoadPokemonBGTiles(twPhase->sequenceData, 1, 2, 15, 0);

    Bg_FillTilemapRect(twPhase->bgConfig, 1, 200, 0, 0, 32, 64, 0);
    Bg_FillTilemapRect(twPhase->bgConfig, 5, 200, 0, 0, 32, 64, 0);
    Bg_FillTilemapRect(twPhase->bgConfig, 2, 200, 0, 0, 32, 64, 0);

    TradeSequence_LoadPokemonPlatform(twPhase->sequenceData, 0, 1, 14, 20, 0);
    TradeSequence_LoadPokemonPlatform(twPhase->sequenceData, 0, 5, 14, 20, 0);
    TradeSequence_LoadPokemonPlatform(twPhase->sequenceData, 1, 2, 15, 2, 0);

    Bg_CopyTilemapBufferToVRAM(twPhase->bgConfig, 1);
    Bg_CopyTilemapBufferToVRAM(twPhase->bgConfig, 5);
    Bg_CopyTilemapBufferToVRAM(twPhase->bgConfig, 2);

    TradeWormholePhase_SetBgScroll(twPhase->bgConfig, BG2_SCROLL_START, BG1_SCROLL_START);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void TradeWormholePhase_FreeGraphics(TradeWormholePhase *twPhase)
{
    Bg_FreeTilemapBuffer(twPhase->bgConfig, BG_LAYER_MAIN_3);
    Bg_FreeTilemapBuffer(twPhase->bgConfig, BG_LAYER_SUB_3);
    Bg_FreeTilemapBuffer(twPhase->bgConfig, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(twPhase->bgConfig, BG_LAYER_SUB_2);
    Bg_FreeTilemapBuffer(twPhase->bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(twPhase->bgConfig, BG_LAYER_SUB_1);
}

static void TradeWormholePhase_SetBgScroll(BgConfig *bgConfig, int bg1Scroll, int bg2Scroll)
{
    bg2Scroll &= 0x1ff;
    bg1Scroll &= 0x1ff;

    Bg_SetOffset(bgConfig, BG_LAYER_MAIN_2, 3, bg2Scroll);
    Bg_SetOffset(bgConfig, BG_LAYER_MAIN_1, 3, bg1Scroll);
    Bg_SetOffset(bgConfig, BG_LAYER_SUB_1, 3, bg1Scroll + 192);
}
