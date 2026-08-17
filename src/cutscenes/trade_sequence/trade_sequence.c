#include "cutscenes/trade_sequence/trade_sequence.h"

#include <nitro.h>
#include <string.h>

#include "overlay006/struct_npc_trade_animation_template.h"

#include "bg_window.h"
#include "character_sprite.h"
#include "game_options.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "network_icon.h"
#include "overlay_manager.h"
#include "pokemon.h"
#include "render_oam.h"
#include "screen_fade.h"
#include "sound.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_util.h"
#include "string_gf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"

typedef struct PaletteShimmerSpark {
    PaletteShimmerEffect *shimmerEffect;
    int paletteIndex;
    int framesPerStep;
    int frameCounter;
    int slotIndex;
    int direction;
} PaletteShimmerSpark;

typedef void *(*TradePhaseNewFunc)(TradeSequenceData *);
typedef BOOL (*TradePhaseOverlayFunc)(void *, int *);
typedef void (*TradePhaseFreeFunc)(void *);

static BOOL DoesMonSpeciesFlipsSprite(BoxPokemon *boxMon);
static void TradeSequence_VBlankCallback(SysTask *unused, void *param);
static void PaletteShimmerEffect_VBlankTask(SysTask *task, void *param);
static void PaletteShimmerEffect_SetEntry(PaletteShimmerEffect *shimmerEffect, int clearIndex, int setIndex, int color);
static void PaletteShimmerEffect_SpawnSpark(PaletteShimmerEffect *shimmerEffect);
static void PaletteShimmerEffect_FreeSpark(PaletteShimmerEffect *shimmerEffect, int slotIdx);
static void PaletteShimmerEffect_SparkTask(SysTask *unused, void *param);
static void BgScaleAnimation_Task(SysTask *task, void *param);
static void BgScaleAnimation_Apply(BgScaleAnimation *bgScaleAnim);
static void DeferredFree_Init(void);
static void DeferredFree_Flush(void);

static const struct {
    TradePhaseNewFunc New;
    TradePhaseOverlayFunc Run;
    TradePhaseFreeFunc Free;
    int tradeTypeFlags;
} sTradePhaseTable[] = {
    { TradeSendPhase_New, TradeSendPhase_Run, TradeSendPhase_Free, 1 | 2 },
    { TradeTubePhase_New, TradeTubePhase_Run, TradeTubePhase_Free, 1 | 2 },
    { TradeBallFlybyPhase_New, TradeBallFlybyPhase_Run, TradeBallFlybyPhase_Free, 1 | 2 },
    { TradeWormholePhase_New, TradeWormholePhase_Run, TradeWormholePhase_Free, 1 },
    { ReceiveBall_New, ReceiveBall_Run, ReceiveBall_Free, 1 | 4 },
    { TradePokemonRevealPhase_New, TradePokemonRevealPhase_Run, TradePokemonRevealPhase_Free, 1 | 4 },
    { TradeReceivePhase_New, TradeReceivePhase_Run, TradeReceivePhase_Free, 1 | 4 },
};

int TradeSequence_Init(ApplicationManager *appMan, int *unused)
{
    if (IsScreenFadeDone()) {
        TradeSequenceData *sequenceData;

        Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_TRADE_SEQUENCE, 98304);
        Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_TRADE_SEQUENCE_PHASE, 98304);
        DeferredFree_Init();
        Sound_SetSceneAndPlayBGM(SOUND_SCENE_3, SEQ_KOUKAN_sseq, 1);

        sequenceData = ApplicationManager_NewData(appMan, sizeof(TradeSequenceData), HEAP_ID_TRADE_SEQUENCE);

        if (sequenceData) {
            sequenceData->animationTemplate = ApplicationManager_Args(appMan);
            sequenceData->currentPhase = 0;
            sequenceData->bgConfig = BgConfig_New(HEAP_ID_TRADE_SEQUENCE);
            sequenceData->strBuffer = String_Init(400, HEAP_ID_TRADE_SEQUENCE);
            sequenceData->msgLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_TRADE, HEAP_ID_TRADE_SEQUENCE);
            sequenceData->strTemplate = StringTemplate_Default(HEAP_ID_TRADE_SEQUENCE);

            switch (sequenceData->animationTemplate->tradeType) {
            case TRADE_TYPE_NORMAL:
                StringTemplate_SetNickname(sequenceData->strTemplate, 0, (BoxPokemon *)(sequenceData->animationTemplate->sendingPokemon));
                StringTemplate_SetNickname(sequenceData->strTemplate, 1, (BoxPokemon *)(sequenceData->animationTemplate->receivingPokemon));
                StringTemplate_SetPlayerName(sequenceData->strTemplate, 2, sequenceData->animationTemplate->otherTrainer);
                sequenceData->flipSprite = DoesMonSpeciesFlipsSprite((BoxPokemon *)(sequenceData->animationTemplate->receivingPokemon));
                break;
            case TRADE_TYPE_SEND_ONLY:
                StringTemplate_SetNickname(sequenceData->strTemplate, 0, (BoxPokemon *)(sequenceData->animationTemplate->sendingPokemon));
                break;
            case TRADE_TYPE_RECEIVE_ONLY:
                StringTemplate_SetNickname(sequenceData->strTemplate, 1, (BoxPokemon *)(sequenceData->animationTemplate->receivingPokemon));
                sequenceData->flipSprite = DoesMonSpeciesFlipsSprite((BoxPokemon *)(sequenceData->animationTemplate->receivingPokemon));
                break;
            }

            NNS_G2dInitOamManagerModule();

            RenderOam_Init(0, 128, 0, 32, 1, 127, 0, 32, 57);
            sequenceData->spriteList = SpriteList_InitRendering(64, &sequenceData->renderer, HEAP_ID_TRADE_SEQUENCE);
            SetSubScreenViewRect(&(sequenceData->renderer), 0, 192 + 40 << FX32_SHIFT);

            sequenceData->sendingSpecies = BoxPokemon_GetValue((BoxPokemon *)(sequenceData->animationTemplate->sendingPokemon), MON_DATA_SPECIES, NULL);
            sequenceData->sendingForm = BoxPokemon_GetValue((BoxPokemon *)(sequenceData->animationTemplate->sendingPokemon), MON_DATA_FORM, NULL);
            sequenceData->receivingSpecies = BoxPokemon_GetValue((BoxPokemon *)(sequenceData->animationTemplate->receivingPokemon), MON_DATA_SPECIES, NULL);
            sequenceData->receivingForm = BoxPokemon_GetValue((BoxPokemon *)(sequenceData->animationTemplate->receivingPokemon), MON_DATA_FORM, NULL);
            sequenceData->currentPhaseData = NULL;

            SetVBlankCallback(NULL, NULL);
            DisableHBlank();
            GXLayers_DisableEngineALayers();
            GXLayers_DisableEngineBLayers();

            GX_SetVisiblePlane(0);
            GXS_SetVisiblePlane(0);

            sequenceData->task = SysTask_CreateOnPrintQueue(TradeSequence_VBlankCallback, sequenceData, 1);
            sequenceData->currentPhaseData = NULL;
        }

        return 1;
    }

    return 0;
}

static BOOL DoesMonSpeciesFlipsSprite(BoxPokemon *boxMon)
{
    int species = BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES, NULL);
    int form = BoxPokemon_GetValue(boxMon, MON_DATA_FORM, NULL);

    return SpeciesData_GetFormValue(species, form, SPECIES_DATA_FLIP_SPRITE) == FALSE;
}

int TradeSequence_Exit(ApplicationManager *appMan, int *unused)
{
    OSIntrMode intrMode;
    TradeSequenceData *sequenceData;

    intrMode = OS_DisableInterrupts();
    sequenceData = ApplicationManager_Data(appMan);

    SysTask_Done(sequenceData->task);
    NetworkIcon_Destroy();
    StringTemplate_Free(sequenceData->strTemplate);
    MessageLoader_Free(sequenceData->msgLoader);
    String_Free(sequenceData->strBuffer);
    Heap_Free(sequenceData->bgConfig);
    SpriteList_Delete(sequenceData->spriteList);
    RenderOam_Free();
    ApplicationManager_FreeData(appMan);
    Heap_Destroy(HEAP_ID_TRADE_SEQUENCE);
    Heap_Destroy(HEAP_ID_TRADE_SEQUENCE_PHASE);

    OS_RestoreInterrupts(intrMode);

    return 1;
}

int TradeSequence_Main(ApplicationManager *appMan, int *state)
{
    TradeSequenceData *sequenceData = ApplicationManager_Data(appMan);

    if (sequenceData->currentPhase < NELEMS(sTradePhaseTable)) {
        if (sTradePhaseTable[sequenceData->currentPhase].tradeTypeFlags & sequenceData->animationTemplate->tradeType) {
            if (sequenceData->currentPhaseData == NULL) {
                sequenceData->currentPhaseData = sTradePhaseTable[sequenceData->currentPhase].New(sequenceData);
            }

            if (sTradePhaseTable[sequenceData->currentPhase].Run(sequenceData->currentPhaseData, state)) {
                sTradePhaseTable[sequenceData->currentPhase].Free(sequenceData->currentPhaseData);
                sequenceData->currentPhaseData = NULL;

                sequenceData->currentPhase++;
                (*state) = 0;
            }
        } else {
            sequenceData->currentPhase++;
            (*state) = 0;
        }

        DeferredFree_Flush();

        return 0;
    } else {
        return 1;
    }
}

static void TradeSequence_VBlankCallback(SysTask *unused, void *param)
{
    TradeSequenceData *sequenceData = param;

    SpriteList_Update(sequenceData->spriteList);
    RenderOam_Transfer();

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

PaletteShimmerEffect *PaletteShimmerEffect_New(BOOL *isAlive, int direction)
{
    PaletteShimmerEffect *shimmerEffect = Heap_Alloc(HEAP_ID_TRADE_SEQUENCE, sizeof(PaletteShimmerEffect));

    *isAlive = 0;

    if (shimmerEffect) {
        NNSG2dPaletteData *plttData;
        void *rawPaletteBuffer;

        rawPaletteBuffer = Graphics_GetPlttData(NARC_INDEX_GRAPHIC__DEMO_TRADE, 6, &plttData, HEAP_ID_TRADE_SEQUENCE);

        if (rawPaletteBuffer) {
            MI_CpuFill16(shimmerEffect->paletteBuffer, 0x0, 96);
            Heap_Free(rawPaletteBuffer);
        }

        shimmerEffect->dirty = 0;
        shimmerEffect->stopping = 0;
        shimmerEffect->spawnTimer = 0;
        shimmerEffect->activeSparkCount = 0;
        shimmerEffect->isAlive = isAlive;
        shimmerEffect->nextSparkSlot = 0;
        shimmerEffect->direction = direction;

        for (int i = 0; i < 8; i++) {
            shimmerEffect->sparkTasks[i] = NULL;
        }

        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, 16, 8);
        G2S_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, 16, 8);

        shimmerEffect->vblankTask = SysTask_ExecuteAfterVBlank(PaletteShimmerEffect_VBlankTask, shimmerEffect, 20);

        if (shimmerEffect->vblankTask) {
            *(shimmerEffect->isAlive) = 1;
        }
    }

    return shimmerEffect;
}

void PaletteShimmerEffect_Stop(PaletteShimmerEffect *shimmerEffect)
{
    if (*(shimmerEffect->isAlive) == 1) {
        shimmerEffect->stopping = 1;
    }
}

void PaletteShimmerEffect_Free(PaletteShimmerEffect *shimmerEffect)
{
    if (*(shimmerEffect->isAlive) == 1) {
        for (int i = 0; i < 8; i++) {
            if (shimmerEffect->sparkTasks[i]) {
                PaletteShimmerEffect_FreeSpark(shimmerEffect, i);
            }
        }

        *(shimmerEffect->isAlive) = 0;
        SysTask_Done(shimmerEffect->vblankTask);
        Heap_Free(shimmerEffect);
    }
}

static void PaletteShimmerEffect_VBlankTask(SysTask *task, void *param)
{
    PaletteShimmerEffect *shimmerEffect = param;

    if (shimmerEffect->stopping == 0) {
        if (--(shimmerEffect->spawnTimer) <= 0) {
            Sound_PlayEffect(SEQ_SE_DP_KOUKAN08_sseq);
            shimmerEffect->spawnTimer = 30;
            PaletteShimmerEffect_SpawnSpark(shimmerEffect);
        }

        if (shimmerEffect->dirty) {
            GX_BeginLoadBGExtPltt();
            GXS_BeginLoadBGExtPltt();

            DC_FlushRange(shimmerEffect->paletteBuffer, 96);
            GX_LoadBGExtPltt(shimmerEffect->paletteBuffer, 0x6000, 96);
            GXS_LoadBGExtPltt(shimmerEffect->paletteBuffer, 0x6000, 96);

            GX_EndLoadBGExtPltt();
            GXS_EndLoadBGExtPltt();

            shimmerEffect->dirty = 0;
        }
    } else {
        if (shimmerEffect->dirty) {
            GX_BeginLoadBGExtPltt();
            GXS_BeginLoadBGExtPltt();

            DC_FlushRange(shimmerEffect->paletteBuffer, 96);
            GX_LoadBGExtPltt(shimmerEffect->paletteBuffer, 0x6000, 96);
            GXS_LoadBGExtPltt(shimmerEffect->paletteBuffer, 0x6000, 96);

            GX_EndLoadBGExtPltt();
            GXS_EndLoadBGExtPltt();

            shimmerEffect->dirty = 0;
        }

        if (shimmerEffect->activeSparkCount == 0) {
            *(shimmerEffect->isAlive) = 0;
            Heap_Free(shimmerEffect);
            SysTask_Done(task);
        }
    }
}

static void PaletteShimmerEffect_SetEntry(PaletteShimmerEffect *shimmerEffect, int clearIndex, int setIndex, int color)
{
    if ((clearIndex >= 0) && (clearIndex < 96)) {
        shimmerEffect->paletteBuffer[clearIndex] = 0x0;
    }

    if ((setIndex >= 0) && (setIndex < 96)) {
        shimmerEffect->paletteBuffer[setIndex] = color;
    }

    shimmerEffect->dirty = 1;
}

static void PaletteShimmerEffect_SpawnSpark(PaletteShimmerEffect *shimmerEffect)
{
    if (shimmerEffect->sparkTasks[shimmerEffect->nextSparkSlot] == NULL) {
        PaletteShimmerSpark *spark = Heap_Alloc(HEAP_ID_TRADE_SEQUENCE, sizeof(PaletteShimmerSpark));

        if (spark) {
            spark->shimmerEffect = shimmerEffect;

            if (shimmerEffect->direction == 1) {
                spark->paletteIndex = -1;
            } else {
                spark->paletteIndex = 15;
            }

            spark->frameCounter = 0;
            spark->framesPerStep = 2;
            spark->slotIndex = shimmerEffect->nextSparkSlot;
            spark->direction = shimmerEffect->direction;
            shimmerEffect->sparkTasks[shimmerEffect->nextSparkSlot] = SysTask_Start(PaletteShimmerEffect_SparkTask, spark, 10);

            if (shimmerEffect->sparkTasks[shimmerEffect->nextSparkSlot]) {
                shimmerEffect->activeSparkCount++;

                if (++(shimmerEffect->nextSparkSlot) >= 8) {
                    shimmerEffect->nextSparkSlot = 0;
                }
            } else {
                Heap_Free(spark);
            }
        }
    }
}

static void PaletteShimmerEffect_FreeSpark(PaletteShimmerEffect *shimmerEffect, int slotIdx)
{
    if (shimmerEffect->sparkTasks[slotIdx]) {
        Heap_Free(SysTask_GetParam(shimmerEffect->sparkTasks[slotIdx]));
        SysTask_Done(shimmerEffect->sparkTasks[slotIdx]);
        shimmerEffect->sparkTasks[slotIdx] = NULL;
        shimmerEffect->activeSparkCount--;
    }
}

static void PaletteShimmerEffect_SparkTask(SysTask *unused, void *param)
{
    PaletteShimmerSpark *spark = param;

    if (++(spark->frameCounter) >= spark->framesPerStep) {
        spark->frameCounter = 0;

        if (spark->direction == 1) {
            if (spark->paletteIndex + 1 >= 15) {
                PaletteShimmerEffect_SetEntry(spark->shimmerEffect, spark->paletteIndex, spark->paletteIndex + 1, 0x0);
                PaletteShimmerEffect_FreeSpark(spark->shimmerEffect, spark->slotIndex);
            } else {
                PaletteShimmerEffect_SetEntry(spark->shimmerEffect, spark->paletteIndex, spark->paletteIndex + 1, 0x7fff);
                spark->paletteIndex++;
            }
        } else {
            if (spark->paletteIndex < 0) {
                PaletteShimmerEffect_SetEntry(spark->shimmerEffect, spark->paletteIndex, spark->paletteIndex + 1, 0x0);
                PaletteShimmerEffect_FreeSpark(spark->shimmerEffect, spark->slotIndex);
            } else {
                PaletteShimmerEffect_SetEntry(spark->shimmerEffect, spark->paletteIndex + 1, spark->paletteIndex, 0x7fff);
                spark->paletteIndex--;
            }
        }
    }
}

BgScaleAnimation *BgScaleAnimation_New(BgConfig *bgConfig, fx32 currentScale, fx32 targetScale, fx32 rate, fx32 acceleration, int centerIndex, volatile BOOL *done)
{
    BgScaleAnimation *bgScaleAnim = Heap_Alloc(HEAP_ID_TRADE_SEQUENCE, sizeof(BgScaleAnimation));

    *done = 1;

    if (bgScaleAnim) {
        bgScaleAnim->bgConfig = bgConfig;
        bgScaleAnim->currentScale = currentScale;
        bgScaleAnim->targetScale = targetScale;
        bgScaleAnim->rate = rate;
        bgScaleAnim->acceleration = acceleration;
        bgScaleAnim->direction = (currentScale < targetScale) ? 0 : 1;
        bgScaleAnim->centerIndex = centerIndex;
        bgScaleAnim->done = done;
        *done = 0;

        bgScaleAnim->task = SysTask_ExecuteOnVBlank(BgScaleAnimation_Task, bgScaleAnim, 0);

        if (bgScaleAnim->task) {
            (void)0;
        } else {
            *done = 1;
            Heap_Free(bgScaleAnim);
        }
    }

    return bgScaleAnim;
}

static void BgScaleAnimation_Task(SysTask *task, void *param)
{
    BgScaleAnimation *bgScaleAnim = param;
    fx32 step;

    step = ((bgScaleAnim->currentScale * bgScaleAnim->rate) >> FX32_SHIFT) / 32;

    switch (bgScaleAnim->direction) {
    case 0:
        if ((bgScaleAnim->currentScale + step) < bgScaleAnim->targetScale) {
            bgScaleAnim->currentScale += step;
        } else {
            bgScaleAnim->currentScale = bgScaleAnim->targetScale;
            *(bgScaleAnim->done) = 1;
        }
        break;
    case 1:
        if ((bgScaleAnim->currentScale - step) > bgScaleAnim->targetScale) {
            bgScaleAnim->currentScale -= step;
        } else {
            bgScaleAnim->currentScale = bgScaleAnim->targetScale;
            *(bgScaleAnim->done) = 1;
        }
        break;
    }

    BgScaleAnimation_Apply(bgScaleAnim);

    if (*(bgScaleAnim->done)) {
        DeferredFree_Enqueue(bgScaleAnim);
        SysTask_Done(task);
    } else {
        bgScaleAnim->rate += bgScaleAnim->acceleration;
    }
}

static void BgScaleAnimation_Apply(BgScaleAnimation *bgScaleAnim)
{
    static const int sCenterY[] = {
        144,
        56,
    };
    MtxFx22 mtx;

    mtx._00 = bgScaleAnim->currentScale;
    mtx._01 = 1 << FX32_ONE;
    mtx._10 = 0;
    mtx._11 = bgScaleAnim->currentScale;

    Bg_SetAffineParams(bgScaleAnim->bgConfig, 2, &mtx, 128, sCenterY[bgScaleAnim->centerIndex]);
    Bg_SetAffineParams(bgScaleAnim->bgConfig, 6, &mtx, 128, sCenterY[bgScaleAnim->centerIndex]);
}

void TradeSequence_LoadPokemonBGTiles(TradeSequenceData *sequenceData, int pokemonIndex, u32 bgLayer, u32 paletteSlot, BOOL loadBothFrames)
{
    PokemonSpriteTemplate template;
    u32 paletteBank;
    u32 tileBufferSize;
    void *tileBuffer;

    tileBufferSize = (loadBothFrames) ? 0x20 * 200 : 0x20 * 100;
    tileBuffer = Heap_AllocAtEnd(HEAP_ID_TRADE_SEQUENCE, tileBufferSize);

    if (tileBuffer) {
        TileRegion tileRegion = FRAME_0_REGION;
        BoxPokemon *boxMon;
        BOOL wasEncrypted;
        u32 personality;
        u16 species;

        boxMon = (BoxPokemon *)((pokemonIndex == 0) ? sequenceData->animationTemplate->sendingPokemon : sequenceData->animationTemplate->receivingPokemon);
        wasEncrypted = BoxPokemon_EnterDecryptionContext(boxMon);

        BoxPokemon_BuildSpriteTemplate(&template, boxMon, 2, 0);

        personality = BoxPokemon_GetValue(boxMon, MON_DATA_PERSONALITY, NULL);
        species = BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES, NULL);

        if (loadBothFrames) {
            tileRegion.width *= 2;
        }

        CharacterSprite_LoadPokemonSpriteRegion(template.narcID, template.character, HEAP_ID_TRADE_SEQUENCE, &tileRegion, tileBuffer, personality, loadBothFrames, FACE_FRONT, species);
        DC_FlushRange(tileBuffer, tileBufferSize);
        Bg_LoadTiles(sequenceData->bgConfig, bgLayer, tileBuffer, tileBufferSize, 0);

        BoxPokemon_ExitDecryptionContext(boxMon, wasEncrypted);
        Heap_Free(tileBuffer);
    }

    paletteBank = (bgLayer >= 4) ? 4 : 0;
    Graphics_LoadPalette(template.narcID, template.palette, paletteBank, paletteSlot * 0x20, 0x20, HEAP_ID_TRADE_SEQUENCE);
}

void TradeSequence_LoadPokemonPlatform(TradeSequenceData *sequenceData, int pokemonIndex, u32 bgLayer, u32 paletteIdx, u32 tilemapX, u32 tilemapY)
{
    void *screenBuffer;
    NNSG2dScreenData *screenData;
    u32 narcMemberIdx;

    if (pokemonIndex == 0) {
        narcMemberIdx = 262;
    } else {
        narcMemberIdx = (sequenceData->flipSprite) ? 263 : 262;
    }

    screenBuffer = Graphics_GetScrnData(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, narcMemberIdx, FALSE, &screenData, HEAP_ID_TRADE_SEQUENCE);

    if (screenBuffer) {
        Bg_CopyToTilemapRect(sequenceData->bgConfig, bgLayer, tilemapX, tilemapY, 10, 10, screenData->rawData, 0, 0, 32, 32);
        Bg_ChangeTilemapRectPalette(sequenceData->bgConfig, bgLayer, tilemapX, tilemapY, 10, 10, paletteIdx);
        Heap_Free(screenBuffer);
    }
}

void SpriteAnimResources_Load(SpriteAnimResources *animResources, u32 narcID, u32 cellMemberIdx, u32 animMemberIdx)
{
    animResources->cellBuffer = Graphics_GetCellBank(narcID, cellMemberIdx, 1, &(animResources->cellBank), HEAP_ID_TRADE_SEQUENCE_PHASE);
    animResources->animBuffer = Graphics_GetAnimBank(narcID, animMemberIdx, 1, &(animResources->animBank), HEAP_ID_TRADE_SEQUENCE_PHASE);
}

void SpriteAnimResources_Free(SpriteAnimResources *animResources)
{
    if (animResources->cellBuffer) {
        Heap_Free(animResources->cellBuffer);
        animResources->cellBuffer = NULL;
    }

    if (animResources->animBuffer) {
        Heap_Free(animResources->animBuffer);
        animResources->animBuffer = NULL;
    }
}

void SpriteResourcesHeader_InitFromAnimResources(SpriteResourcesHeader *srHeader, SpriteAnimResources *animResources, NNSG2dImageProxy *imageProxy, NNSG2dImagePaletteProxy *paletteProxy, u32 priority)
{
    srHeader->imageProxy = imageProxy;
    srHeader->paletteProxy = paletteProxy;
    srHeader->cellBank = animResources->cellBank;
    srHeader->cellAnimBank = animResources->animBank;
    srHeader->priority = priority;
    srHeader->charData = NULL;
    srHeader->multiCellBank = NULL;
    srHeader->multiCellAnimBank = NULL;
    srHeader->isVRamTransfer = 0;
}

Sprite *TradeSequence_AddSprite(TradeSequenceData *sequenceData, SpriteResourcesHeader *srHeader, u32 x, u32 y, u32 priority, int vramType)
{
    Sprite *sprite;
    SpriteListTemplate template;

    template.list = sequenceData->spriteList;
    template.resourceData = srHeader;
    template.position.x = x * FX32_ONE;
    template.position.y = y * FX32_ONE;
    template.position.z = 0;
    template.priority = priority;
    template.vramType = vramType;
    template.heapID = HEAP_ID_TRADE_SEQUENCE;

    sprite = SpriteList_Add(&template);

    if (sprite) {
        Sprite_SetAnimateFlag(sprite, 1);
        Sprite_SetAnimSpeed(sprite, FX32_ONE);
    }

    return sprite;
}

BgConfig *TradeSequence_GetBgConfig(TradeSequenceData *sequenceData)
{
    return sequenceData->bgConfig;
}

StringTemplate *TradeSequence_GetStrTemplate(TradeSequenceData *sequenceData)
{
    return sequenceData->strTemplate;
}

MessageLoader *TradeSequence_GetMsgLoader(TradeSequenceData *sequenceData)
{
    return sequenceData->msgLoader;
}

const BoxPokemon *TradeSequence_GetSendingPokemon(TradeSequenceData *sequenceData)
{
    return sequenceData->animationTemplate->sendingPokemon;
}

const BoxPokemon *TradeSequence_GetReceivingPokemon(TradeSequenceData *sequenceData)
{
    return sequenceData->animationTemplate->receivingPokemon;
}

enum TradeBackground TradeSequence_GetBackground(TradeSequenceData *sequenceData)
{
    return sequenceData->animationTemplate->background;
}

u16 TradeSequence_GetSendingSpecies(TradeSequenceData *sequenceData)
{
    return sequenceData->sendingSpecies;
}

u16 TradeSequence_GetSendingForm(TradeSequenceData *sequenceData)
{
    return sequenceData->sendingForm;
}

u16 TradeSequence_GetReceivingSpecies(TradeSequenceData *sequenceData)
{
    return sequenceData->receivingSpecies;
}

u16 TradeSequence_GetReceivingForm(TradeSequenceData *sequenceData)
{
    return sequenceData->receivingForm;
}

int TradeSequence_GetOptionsFrame(TradeSequenceData *sequenceData)
{
    return Options_Frame(sequenceData->animationTemplate->options);
}

enum TradeType TradeSequence_GetTradeType(TradeSequenceData *sequenceData)
{
    return sequenceData->animationTemplate->tradeType;
}

static int sDeferredFreeCount = 0;
static void *sDeferredFreeQueue[32];

static void DeferredFree_Init(void)
{
    sDeferredFreeCount = 0;
}

static void DeferredFree_Flush(void)
{
    if (sDeferredFreeCount) {
        int i;

        for (i = 0; i < sDeferredFreeCount; i++) {
            Heap_Free(sDeferredFreeQueue[i]);
        }

        sDeferredFreeCount = 0;
    }
}

void DeferredFree_Enqueue(void *param)
{
    GF_ASSERT(sDeferredFreeCount < 32);
    sDeferredFreeQueue[sDeferredFreeCount++] = param;
}
