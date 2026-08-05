#ifndef POKEPLATINUM_OV95_02246C20_H
#define POKEPLATINUM_OV95_02246C20_H

#include <nnsys.h>

#include "overlay006/struct_npc_trade_animation_template.h"

#include "bg_window.h"
#include "message.h"
#include "overlay_manager.h"
#include "pokemon.h"
#include "sprite.h"
#include "string_template.h"
#include "sys_task_manager.h"

typedef struct TradeSequenceData {
    const TradeAnimationTemplate *animationTemplate;
    int currentPhase;
    BgConfig *bgConfig;
    StringTemplate *strTemplate;
    MessageLoader *msgLoader;
    String *strBuffer;
    SpriteList *spriteList;
    G2dRenderer renderer;
    SysTask *task;
    BOOL flipSprite;
    u16 sendingSpecies;
    u16 sendingForm;
    u16 receivingSpecies;
    u16 receivingForm;
    void *currentPhaseData;
} TradeSequenceData;

typedef struct PaletteShimmerEffect {
    u16 paletteBuffer[96];
    SysTask *vblankTask;
    SysTask *sparkTasks[8];
    BOOL *isAlive;
    BOOL stopping;
    int dirty;
    int spawnTimer;
    int activeSparkCount;
    int nextSparkSlot;
    int direction;
} PaletteShimmerEffect;

typedef struct BgScaleAnimation {
    BgConfig *bgConfig;
    volatile BOOL *done;
    fx32 currentScale;
    fx32 targetScale;
    fx32 rate;
    fx32 acceleration;
    int direction;
    int centerIndex;
    SysTask *task;
} BgScaleAnimation;

typedef struct SpriteAnimResources {
    void *cellBuffer;
    void *animBuffer;
    NNSG2dCellDataBank *cellBank;
    NNSG2dAnimBankData *animBank;
} SpriteAnimResources;

int TradeSequence_Init(ApplicationManager *appMan, int *unused);
int TradeSequence_Exit(ApplicationManager *appMan, int *unused);
int TradeSequence_Main(ApplicationManager *appMan, int *state);
PaletteShimmerEffect *PaletteShimmerEffect_New(BOOL *isAlive, int direction);
void PaletteShimmerEffect_Stop(PaletteShimmerEffect *shimmerEffect);
void PaletteShimmerEffect_Free(PaletteShimmerEffect *shimmerEffect);
BgScaleAnimation *BgScaleAnimation_New(BgConfig *bgConfig, fx32 currentScale, fx32 targetScale, fx32 rate, fx32 acceleration, int centerIndex, volatile BOOL *done);
void TradeSequence_LoadPokemonBGTiles(TradeSequenceData *sequenceData, int pokemonIndex, u32 bgLayer, u32 paletteSlot, BOOL loadBothFrames);
void TradeSequence_LoadPokemonPlatform(TradeSequenceData *sequenceData, int pokemonIndex, u32 bgLayer, u32 paletteIdx, u32 tilemapX, u32 tilemapY);
void SpriteAnimResources_Load(SpriteAnimResources *animResources, u32 narcID, u32 cellMemberIdx, u32 animMemberIdx);
void SpriteAnimResources_Free(SpriteAnimResources *animResources);
void SpriteResourcesHeader_InitFromAnimResources(SpriteResourcesHeader *srHeader, SpriteAnimResources *animResources, NNSG2dImageProxy *imageProxy, NNSG2dImagePaletteProxy *paletteProxy, u32 priority);
Sprite *TradeSequence_AddSprite(TradeSequenceData *sequenceData, SpriteResourcesHeader *srHeader, u32 x, u32 y, u32 priority, int vramType);
BgConfig *TradeSequence_GetBgConfig(TradeSequenceData *sequenceData);
StringTemplate *TradeSequence_GetStrTemplate(TradeSequenceData *sequenceData);
MessageLoader *TradeSequence_GetMsgLoader(TradeSequenceData *sequenceData);
const BoxPokemon *TradeSequence_GetSendingPokemon(TradeSequenceData *sequenceData);
const BoxPokemon *TradeSequence_GetReceivingPokemon(TradeSequenceData *sequenceData);
enum TradeBackground TradeSequence_GetBackground(TradeSequenceData *sequenceData);
u16 TradeSequence_GetSendingSpecies(TradeSequenceData *sequenceData);
u16 TradeSequence_GetSendingForm(TradeSequenceData *sequenceData);
u16 TradeSequence_GetReceivingSpecies(TradeSequenceData *sequenceData);
u16 TradeSequence_GetReceivingForm(TradeSequenceData *sequenceData);
int TradeSequence_GetOptionsFrame(TradeSequenceData *sequenceData);
enum TradeType TradeSequence_GetTradeType(TradeSequenceData *sequenceData);
void DeferredFree_Enqueue(void *param);

#endif // POKEPLATINUM_OV95_02246C20_H
