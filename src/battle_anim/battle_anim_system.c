#include "battle_anim/battle_anim_system.h"

#include <nitro.h>
#include <stdlib.h>
#include <string.h>

#include "constants/battle.h"
#include "constants/battle/battle_anim.h"
#include "constants/graphics.h"
#include "generated/battle_terrains.h"
#include "generated/moves.h"

#include "struct_decls/battle_system.h"
#include "struct_defs/chatot_cry.h"
#include "struct_defs/move_animation.h"

#include "battle/battle_anim_battler_context.h"
#include "battle/battle_system.h"
#include "battle/pokemon_sprite_data.h"
#include "battle_anim/battle_anim_helpers.h"
#include "battle_anim/battle_anim_util.h"
#include "battle_anim/battle_particle_util.h"
#include "battle_anim/is_form_symmetrical.h"
#include "battle_anim/ov12_022380BC.h"
#include "battle_anim/script_func_tables.h"
#include "battle_anim/struct_ov12_02223764.h"
#include "battle_anim/struct_ov12_022380DC.h"
#include "global/utility.h"
#include "overlay017/ov17_022413D8.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "inlines.h"
#include "narc.h"
#include "palette.h"
#include "particle_system.h"
#include "pltt_transfer.h"
#include "pokemon.h"
#include "pokemon_sprite.h"
#include "sound.h"
#include "sound_playback.h"
#include "spl.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_system.h"
#include "sprite_util.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "vram_transfer.h"

#define BATTLE_ANIM_SCRIPT_RES_ID(MEMBER_IDX)  (MEMBER_IDX + 5000)
#define BATTLE_ANIM_SCRIPT_MAX_SFX_WAIT_FRAMES 90 // 3s

typedef struct BattleAnimSoundContext {
    u8 type;

    u8 unused01;
    u8 unused02;

    u8 applyInterval; // Number of frames/ticks between application
    u8 tickCount;

    // Pan
    int startPan;
    int endPan;
    int panStep;
    int curPan;

    u8 repeatCount; // Number of times to repeat the sound effect
    u16 effectID;

    u32 unused1C[7];

    BattleAnimSystem *system;
} BattleAnimSoundContext;

enum BattleAnimSoundTaskType {
    BATTLE_ANIM_SOUND_TASK_NONE = 0,
    BATTLE_ANIM_SOUND_TASK_PAN,
    BATTLE_ANIM_SOUND_TASK_PAN_2,
    BATTLE_ANIM_SOUND_TASK_PAN_3,
    BATTLE_ANIM_SOUND_TASK_REPEAT,
    BATTLE_ANIM_SOUND_TASK_DELAY,

    BATTLE_ANIM_SOUND_TASK_COUNT,
};

enum BattleAnimParticleResource {
    PARTICLE_RESOURCE_PL_PARALLEL_ATTACK = 0, // P>E, P1>E2, P2>E1
    PARTICLE_RESOURCE_PL_DIAGONAL_ATTACK_2, // P2>E2
    PARTICLE_RESOURCE_PL_DIAGONAL_ATTACK_1, // P1>E1
    PARTICLE_RESOURCE_EM_PARALLEL_ATTACK, // E>P, E1>P2, E2>P1
    PARTICLE_RESOURCE_EM_DIAGONAL_ATTACK_2, // E2>P2
    PARTICLE_RESOURCE_EM_DIAGONAL_ATTACK_1, // E1>P1

    PARTICLE_RESOURCE_COUNT,
};

typedef struct BattleBgSwitch {
    int unread_00;
    u8 unused_04;
    u8 state;
    u8 unused_06;
    u8 unused_07;
    u8 unused_08;
    u8 blendCoeffA;
    u8 blendCoeffB;
    u8 targetBlendCoeffA;
    u8 targetBlendCoeffB;
    u8 fadeType;
    int bgID;
    int mode;
    int flags;
    int scriptVars[BATTLE_ANIM_SCRIPT_VAR_COUNT];
    u16 bgMoveAnimActive : 1;
    u16 bgWaveAnimActive : 1;
    u16 unused_44_2 : 14;
    BattleAnimSystem *battleAnimSystem;
} BattleBgSwitch;

enum BattleAnimTaskKind {
    BATTLE_ANIM_TASK_KIND_EFFECT = 1,
    BATTLE_ANIM_TASK_KIND_SOUND,
};

static void BattleBgAnim_WaveTask(SysTask *task, void *param);
static void BattleAnimScript_WaitForDelay(BattleAnimSystem *system);
static void BattleAnimScript_Execute(BattleAnimSystem *system);

// See enum BattleAnimTaskKind for 'kind'
static SysTask *BattleAnimSystem_StartTask(u8 kind, BattleAnimSystem *system, SysTaskFunc func, void *param, u32 priority);
static void BattleAnimSystem_EndTask(u8 kind, BattleAnimSystem *system, SysTask *task);

static BattleAnimSoundContext *BattleAnimSystem_CreateSoundContext(BattleAnimSystem *system);
static void BattleAnimSystem_StartSoundTaskInternal(BattleAnimSystem *system, BattleAnimSoundContext *ctx);
static void BattleAnimSound_Task(SysTask *task, void *param);
static BOOL BattleAnimSoundFunc_None(BattleAnimSoundContext *ctx);
static BOOL BattleAnimSoundFunc_Pan(BattleAnimSoundContext *ctx);
static BOOL BattleAnimSoundFunc_Pan2(BattleAnimSoundContext *ctx);
static BOOL BattleAnimSoundFunc_Pan3(BattleAnimSoundContext *ctx);
static BOOL BattleAnimSoundFunc_Repeat(BattleAnimSoundContext *ctx);
static BOOL BattleAnimSoundFunc_Delay(BattleAnimSoundContext *ctx);
static void BattleAnimScriptCmd_Delay(BattleAnimSystem *system);
static void BattleAnimScriptCmd_WaitForAnimTasks(BattleAnimSystem *system);
static void BattleAnimScriptCmd_BeginLoop(BattleAnimSystem *system);
static void BattleAnimScriptCmd_EndLoop(BattleAnimSystem *system);
static void BattleAnimScriptCmd_End(BattleAnimSystem *system);
static void BattleAnimScriptCmd_PlaySoundEffect(BattleAnimSystem *system);
static void BattleAnimScriptCmd_Nop0(BattleAnimSystem *);
static void BattleAnimScriptCmd_Nop1(BattleAnimSystem *);
static void BattleAnimScriptCmd_SetBG0BG1AlphaBlending(BattleAnimSystem *system);
static void BattleAnimScriptCmd_SetDefaultAlphaBlending(BattleAnimSystem *system);
static void BattleAnimScriptCmd_Call(BattleAnimSystem *system);
static void BattleAnimScriptCmd_Return(BattleAnimSystem *system);
static void BattleAnimScriptCmd_SetVar(BattleAnimSystem *system);
static void BattleAnimScriptCmd_ResetVars(BattleAnimSystem *system);
static void BattleAnimScriptCmd_StartBattlerSlideIn(BattleAnimSystem *system);
static void BattleAnimScriptCmd_StartBattlerSlideOut(BattleAnimSystem *system);
static void BattleAnimScriptCmd_JumpIfEffectChanceOdd(BattleAnimSystem *system);
static void BattleAnimScriptCmd_JumpIfEffectChance(BattleAnimSystem *system);
static void BattleAnimScriptCmd_Jump(BattleAnimSystem *system);
static void BattleAnimScriptCmd_SwitchBg(BattleAnimSystem *system);
static void BattleAnimScriptCmd_SetBgSwitchVar(BattleAnimSystem *system);
static void BattleAnimScriptCmd_RestoreBg(BattleAnimSystem *system);
static void BattleAnimScriptCmd_WaitForPartialBgSwitch(BattleAnimSystem *system);
static void BattleAnimScriptCmd_WaitForBgSwitch(BattleAnimSystem *system);
static void BattleAnimScriptCmd_SetBg(BattleAnimSystem *system);
static void BattleAnimScriptCmd_PlayPannedSoundEffect(BattleAnimSystem *system);
static void BattleAnimScriptCmd_PanSoundEffects(BattleAnimSystem *system);
static void BattleAnimScriptCmd_PlayMovingSoundEffectAtkDef(BattleAnimSystem *system);
static void BattleAnimScriptCmd_PlayLoopedSoundEffect(BattleAnimSystem *system);
static void BattleAnimScriptCmd_PlayDelayedSoundEffect(BattleAnimSystem *system);
static void BattleAnimScriptCmd_Nop2(BattleAnimSystem *);
static void BattleAnimScriptCmd_Nop3(BattleAnimSystem *);
static void BattleAnimScriptCmd_WaitForSoundEffects(BattleAnimSystem *system);
static void BattleAnimScriptCmd_JumpIfEqual(BattleAnimSystem *system);
static void BattleAnimScriptCmd_LoadPokemonSpriteIntoBg(BattleAnimSystem *system);
static void BattleAnimScriptCmd_InitPokemonSpriteManager(BattleAnimSystem *system);
static void BattleAnimScriptCmd_LoadPokemonSpriteDummyResources(BattleAnimSystem *system);
static void BattleAnimScriptCmd_AddPokemonSprite(BattleAnimSystem *system);
static void BattleAnimScriptCmd_FreePokemonSpriteManager(BattleAnimSystem *system);
static void BattleAnimScriptCmd_RemovePokemonSprite(BattleAnimSystem *system);
static void BattleAnimScriptCmd_CancelTrackingTask(BattleAnimSystem *system);
static void BattleAnimScriptCmd_SetCameraProjection(BattleAnimSystem *system);
static void BattleAnimScriptCmd_SetCameraFlip(BattleAnimSystem *system);
static void BattleAnimScriptCmd_RemovePokemonSpriteFromBg(BattleAnimSystem *system);
static void BattleAnimScriptCmd_JumpIfUnk_01(BattleAnimSystem *system);
static void BattleAnimScriptCmd_SwitchBgEx(BattleAnimSystem *system);
static void BattleAnimScriptCmd_PlayMovingSoundEffectNoCorrection(BattleAnimSystem *system);
static void BattleAnimScriptCmd_PlayMovingSoundEffectAtkDef2(BattleAnimSystem *system);
static void BattleAnimScriptCmd_Nop4(BattleAnimSystem *);
static void BattleAnimScriptCmd_Nop5(BattleAnimSystem *);
static void BattleAnimScriptCmd_Nop6(BattleAnimSystem *);
static void BattleAnimScriptCmd_Nop7(BattleAnimSystem *);
static void BattleAnimScriptCmd_Nop8(BattleAnimSystem *);
static void BattleAnimScriptCmd_Nop9(BattleAnimSystem *);
static void BattleAnimScriptCmd_Nop10(BattleAnimSystem *);
static void BattleAnimScriptCmd_StopSoundEffect(BattleAnimSystem *system);
static void BattleAnimScriptCmd_JumpIfBattlerSide(BattleAnimSystem *system);
static void BattleAnimScriptCmd_JumpIfWeather(BattleAnimSystem *system);
static void BattleAnimScriptCmd_JumpIfContest(BattleAnimSystem *system);
static void BattleAnimScriptCmd_JumpIfFriendlyFire(BattleAnimSystem *system);
static void BattleAnimScriptCmd_PlayPokemonCry(BattleAnimSystem *system);
static void BattleAnimScriptCmd_WaitForPokemonCries(BattleAnimSystem *system);
static void BattleAnimScriptCmd_CallFunc(BattleAnimSystem *system);
static void BattleAnimScriptCmd_CreateEmitter(BattleAnimSystem *system);
static void BattleAnimScriptCmd_CreateEmitterEx(BattleAnimSystem *system);
static void BattleAnimScriptCmd_CreateEmitterForMove(BattleAnimSystem *system);
static void BattleAnimScriptCmd_CreateEmitterForFriendlyFire(BattleAnimSystem *system);
static void BattleAnimScriptCmd_WaitForAllEmitters(BattleAnimSystem *system);
static void BattleAnimScriptCmd_LoadParticleSystem(BattleAnimSystem *system);
static void BattleAnimScriptCmd_LoadDebugParticleSystem(BattleAnimSystem *system);
static void BattleAnimScriptCmd_UnloadParticleSystem(BattleAnimSystem *system);
static void BattleAnimScriptCmd_SetExtraParams(BattleAnimSystem *system);
static void BattleAnimScriptCmd_Nop11(BattleAnimSystem *);
static void BattleAnimScriptCmd_InitSpriteManager(BattleAnimSystem *system);
static void BattleAnimScriptCmd_LoadCharResObj(BattleAnimSystem *system);
static void BattleAnimScriptCmd_LoadPlttRes(BattleAnimSystem *system);
static void BattleAnimScriptCmd_LoadCellResObj(BattleAnimSystem *system);
static void BattleAnimScriptCmd_LoadAnimResObj(BattleAnimSystem *system);
static void BattleAnimScriptCmd_AddSpriteWithFunc(BattleAnimSystem *system);
static void BattleAnimScriptCmd_AddSprite(BattleAnimSystem *system);
static void BattleAnimScriptCmd_FreeSpriteManager(BattleAnimSystem *system);
static void BattleAnimScriptCmd_SetPokemonSpriteVisible(BattleAnimSystem *system);
static void BattleAnimScriptCmd_StartPokemonSpriteDrawTask(BattleAnimSystem *system);
static void BattleAnimScriptCmd_StopPokemonSpriteDrawTask(BattleAnimSystem *system);
static void BattleAnimScriptCmd_WaitForLRX(BattleAnimSystem *system);
static int BattleAnimSystem_GetBattlerWithRole(BattleAnimSystem *system, int role);
static BOOL BattleBgSwitch_ShouldBeReversed(BattleBgSwitch *bgSwitch, BattleAnimSystem *system, int var);
static void BattleBgSwitch_SetBg(BattleBgSwitch *bgSwitch, BattleAnimSystem *system, enum BgLayer bgLayer, int bgID);
static BOOL BattleBgSwitch_IsFlagSet(int flags, int flag);
static void BattleBgSwitch_ApplyFlags(BattleBgSwitch *bgSwitch);
static BOOL BattleBgSwitch_Blend(SysTask *task, BattleBgSwitch *bgSwitch);
static BOOL BattleBgSwitch_Fade(SysTask *task, BattleBgSwitch *bgSwitch);
static BOOL BattleBgSwitch_FlagsOnly(SysTask *task, BattleBgSwitch *bgSwitch);
static BOOL BattleBgRestore_Blend(SysTask *task, BattleBgSwitch *bgSwitch);
static BOOL BattleBgRestore_Fade(SysTask *task, BattleBgSwitch *bgSwitch);
static BOOL BattleBgRestore_FlagsOnly(SysTask *task, BattleBgSwitch *bgSwitch);
static BOOL BattleBgSwitch_AnimNone(BattleBgSwitch *bgSwitch);
static BOOL BattleBgSwitch_AnimMoveStart(BattleBgSwitch *bgSwitch);
static BOOL BattleBgSwitch_AnimStop(BattleBgSwitch *bgSwitch);
static BOOL BattleBgSwitch_AnimCancel(BattleBgSwitch *bgSwitch);
static BOOL BattleBgSwitch_AnimStartWave(BattleBgSwitch *bgSwitch);
static BOOL BattleBgSwitch_AnimRegisterWave(BattleBgSwitch *bgSwitch);

static inline void BattleAnimScript_Next(BattleAnimSystem *system);
static inline void BattleAnimScript_JumpTo(BattleAnimSystem *system, u32 *dst);
static inline void BattleAnimScript_JumpBy(BattleAnimSystem *system, u32 offset);
static inline int BattleAnimScript_ReadWord(u32 *scriptPtr);

static const s16 sBgWaveScrollSpeeds[] = {
    32,
    28,
    24,
    20,
    16,
    12,
    8,
    4,
    4,
    8,
    12,
    16,
    20,
    24,
    28,
    32
};

static void BattleAnimScript_WaitForDelay(BattleAnimSystem *system)
{
    if (system->scriptDelay == 0) {
        system->executeAnimScriptFunc = BattleAnimScript_Execute;
    } else {
        system->scriptDelay--;
    }
}

static void BattleAnimScript_Execute(BattleAnimSystem *system)
{
    do {
        BattleAnimScriptCmd cmd = BattleAnimSystem_GetScriptCmd(*system->scriptPtr);
        cmd(system);
    } while (system->scriptDelay == 0 && system->moveActive == TRUE);
}

static SysTask *BattleAnimSystem_StartTask(u8 kind, BattleAnimSystem *system, SysTaskFunc func, void *param, u32 priority)
{
    switch (kind) {
    case BATTLE_ANIM_TASK_KIND_EFFECT:
        system->activeAnimTasks++;
        break;
    case BATTLE_ANIM_TASK_KIND_SOUND:
        system->activeSoundTasks++;
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }

    return SysTask_Start(func, param, priority);
}

static void BattleAnimSystem_EndTask(u8 kind, BattleAnimSystem *system, SysTask *task)
{
    switch (kind) {
    case BATTLE_ANIM_TASK_KIND_EFFECT:
        system->activeAnimTasks--;
        break;
    case BATTLE_ANIM_TASK_KIND_SOUND:
        system->activeSoundTasks--;
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }

    SysTask_Done(task);
}

BattleAnimSystem *BattleAnimSystem_New(enum HeapID heapID)
{
    int i;
    BattleAnimSystem *system = Heap_Alloc(heapID, sizeof(BattleAnimSystem));

    if (system == NULL) {
        GF_ASSERT(system != NULL);
        return NULL;
    }

    memset(system, 0, sizeof(BattleAnimSystem));

    system->heapID = heapID;
    system->isContest = FALSE;
    system->context = Heap_Alloc(system->heapID, sizeof(BattleAnimContext));
    system->arcs[BATTLE_ANIM_SYSTEM_ARC_BATT_BG] = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, heapID);
    system->arcs[BATTLE_ANIM_SYSTEM_ARC_BATT_OBJ] = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, heapID);
    system->arcs[BATTLE_ANIM_SYSTEM_ARC_WECHAR] = NARC_ctor(NARC_INDEX_WAZAEFFECT__EFFECTCLACT__WECHAR, heapID);
    system->arcs[BATTLE_ANIM_SYSTEM_ARC_WEPLTT] = NARC_ctor(NARC_INDEX_WAZAEFFECT__EFFECTCLACT__WEPLTT, heapID);
    system->arcs[BATTLE_ANIM_SYSTEM_ARC_WECELL] = NARC_ctor(NARC_INDEX_WAZAEFFECT__EFFECTCLACT__WECELL, heapID);
    system->arcs[BATTLE_ANIM_SYSTEM_ARC_WECELLANM] = NARC_ctor(NARC_INDEX_WAZAEFFECT__EFFECTCLACT__WECELLANM, heapID);

    if (system->context == NULL) {
        GF_ASSERT(system->context != NULL);
        return NULL;
    }

    memset(system->context, 0, sizeof(BattleAnimContext));

    system->isActive = FALSE;
    system->scriptPtr = NULL;

    for (i = 0; i < 4; i++) {
        system->spriteManagers[i] = NULL;
    }

    for (i = 0; i < (4 + 1); i++) {
        system->spriteTrackingTasks[i] = NULL;
    }

    system->bgTrackingTask = NULL;
    system->isActive = TRUE;

    return system;
}

void BattleAnimSystem_SetIsContest(BattleAnimSystem *system, BOOL isContest)
{
    GF_ASSERT(system != NULL);
    system->isContest = isContest;
}

BOOL BattleAnimSystem_IsContest(BattleAnimSystem *system)
{
    GF_ASSERT(system != NULL);
    return system->isContest;
}

enum HeapID BattleAnimSystem_GetHeapID(BattleAnimSystem *system)
{
    GF_ASSERT(system != NULL);
    return system->heapID;
}

BOOL BattleAnimSystem_Delete(BattleAnimSystem *system)
{
    if (BattleAnimSystem_IsActive(system) == FALSE) {
        return FALSE;
    }

    for (int i = 0; i < BATTLE_ANIM_SYSTEM_ARC_COUNT; i++) {
        NARC_dtor(system->arcs[i]);
    }

    Heap_Free(system->context);
    Heap_Free(system);

    return TRUE;
}

BOOL BattleAnimSystem_StartMove(BattleAnimSystem *system, MoveAnimation *moveAnim, u16 move, BattleAnimBattlerContext *battlerContext)
{
    int i;

    BattleAnimSystem_SetDefaultAlphaBlending();

    if (BattleAnimSystem_IsActive(system) == FALSE) {
        return FALSE;
    }

    for (i = 0; i < MAX_PARTICLE_SYSTEMS; i++) {
        system->cameraProjections[i] = CAMERA_PROJECTION_ORTHOGRAPHIC;
        system->particleSystemCameraFlip[i] = 0;
    }

    for (i = 0; i < BATTLE_ANIM_SCRIPT_VAR_COUNT; i++) {
        system->scriptVars[i] = 0;
    }

    for (i = 0; i < BATTLE_ANIM_SCRIPT_MAX_NESTED_LOOPS; i++) {
        system->loopStack[i].isActive = FALSE;
        system->loopStack[i].startPos = NULL;
        system->loopStack[i].curIteration = 0;
        system->loopStack[i].maxIterations = 0;
    }

    system->context->command = moveAnim->command;
    system->context->unk_01 = moveAnim->unk_01;
    system->context->move = moveAnim->move;
    system->context->damage = moveAnim->damage;
    system->context->power = moveAnim->power;
    system->context->friendship = moveAnim->friendship;
    system->context->fieldConditions = moveAnim->fieldConditions;
    system->context->effectChance = moveAnim->effectChance;
    system->context->terrain = moveAnim->terrain;
    system->context->attacker = moveAnim->attacker;
    system->context->defender = moveAnim->defender;
    system->context->isTransformed = moveAnim->isTransformed;
    system->context->spriteSystem = battlerContext->spriteSystem;

    GF_ASSERT(battlerContext->spriteSystem != NULL);

    system->bgConfig = battlerContext->bgConfig;
    system->paletteData = battlerContext->paletteData;
    system->context->battleType = battlerContext->battleType;

    for (i = 0; i < MAX_BATTLERS; i++) {
        system->context->pokemonSpriteData[i] = battlerContext->pokemonSpriteData[i];
        system->context->battlerTypes[i] = battlerContext->battlerTypes[i];
        system->context->battlerSprites[i] = battlerContext->pokemonSprites[i];
        system->context->battlerSpecies[i] = battlerContext->battlerSpecies[i];
        system->context->battlerGenders[i] = battlerContext->battlerGenders[i];
        system->context->battlerShinyFlags[i] = battlerContext->battlerShinyFlags[i];
        system->context->battlerForms[i] = battlerContext->battlerForms[i];
        system->context->battlerPersonalities[i] = battlerContext->battlerPersonalities[i];
        system->context->battlerMoveEffects[i] = battlerContext->battlerMoveEffects[i];
    }

    system->battleBgRefs = battlerContext->battleBgRef;
    system->context->chatotCry = battlerContext->chatotCry;
    system->context->bgPaletteBuffer = battlerContext->bgPaletteBuffer;
    system->context->bgTiles = battlerContext->bgTiles;

    int moveID = move;
    if (moveID == MOVE_SECRET_POWER) {
        int terrainMoveTable[] = {
            [TERRAIN_PLAIN] = MOVE_MUD_SLAP,
            [TERRAIN_SAND] = MOVE_MUD_SLAP,
            [TERRAIN_GRASS] = MOVE_NEEDLE_ARM,
            [TERRAIN_PUDDLE] = MOVE_NEEDLE_ARM,
            [TERRAIN_MOUNTAIN] = MOVE_ROCK_THROW,
            [TERRAIN_CAVE] = MOVE_ROCK_THROW,
            [TERRAIN_SNOW] = MOVE_AVALANCHE,
            [TERRAIN_WATER] = MOVE_WATER_PULSE,
            [TERRAIN_ICE] = MOVE_ICE_SHARD,
            [TERRAIN_BUILDING] = MOVE_BODY_SLAM,
            [TERRAIN_GREAT_MARSH] = MOVE_MUD_SHOT,
            [TERRAIN_BRIDGE] = MOVE_GUST,
            [TERRAIN_AARON] = MOVE_BODY_SLAM
        };

        if (system->context->terrain >= TERRAIN_MAX) {
            moveID = MOVE_TRI_ATTACK;
        } else {
            moveID = terrainMoveTable[system->context->terrain];
        }
    }

    if (moveID == MOVE_NONE || moveID > NUM_VALID_MOVES) {
        moveID = MOVE_POUND;
    }

    system->moveArcID = battlerContext->moveArcID;
    system->scriptData = NARC_AllocAndReadWholeMemberByIndexPair(system->moveArcID, moveID, system->heapID);

    if (system->scriptData == NULL) {
        GF_ASSERT(system->scriptData != NULL);
        return FALSE;
    }

    system->scriptPtr = (u32 *)system->scriptData;
    system->bgLayerPriorities[BG_LAYER_MAIN_0] = Bg_GetPriority(system->bgConfig, BG_LAYER_MAIN_0);
    system->bgLayerPriorities[BG_LAYER_MAIN_1] = Bg_GetPriority(system->bgConfig, BG_LAYER_MAIN_1);
    system->bgLayerPriorities[BG_LAYER_MAIN_2] = Bg_GetPriority(system->bgConfig, BG_LAYER_MAIN_2);
    system->bgLayerPriorities[BG_LAYER_MAIN_3] = Bg_GetPriority(system->bgConfig, BG_LAYER_MAIN_3);

    for (i = 0; i < BATTLE_ANIM_SCRIPT_MAX_SPRITES; i++) {
        system->sprites[i] = NULL;
    }

    for (i = 0; i < BATTLE_ANIM_SCRIPT_MAX_POKEMON_SPRITES; i++) {
        system->pokemonSprites[i] = NULL;
        system->usedPokemonSprites[i] = FALSE;
    }

    system->bgAnim = NULL;
    system->executeAnimScriptFunc = BattleAnimScript_Execute;
    system->scriptDelay = 0;

    if (BattleAnimSystem_IsContest(system) == TRUE) {
        system->baseBgPalettes = 0x7;
    } else {
        system->baseBgPalettes = 0xFF;
    }

    system->moveActive = TRUE;

    return TRUE;
}

BOOL BattleAnimSystem_ExecuteScript(BattleAnimSystem *system)
{
    if (BattleAnimSystem_IsActive(system) == FALSE) {
        return FALSE;
    }

    system->executeAnimScriptFunc(system);
    return TRUE;
}

BOOL BattleAnimSystem_IsMoveActive(BattleAnimSystem *system)
{
    return system->moveActive == TRUE;
}

BOOL BattleAnimSystem_FreeScriptData(BattleAnimSystem *system)
{
    if (system->scriptData == NULL) {
        GF_ASSERT(system->scriptData);
        return FALSE;
    }

    Heap_Free(system->scriptData);
    return TRUE;
}

BOOL BattleAnimSystem_IsActive(BattleAnimSystem *system)
{
    if (system == NULL) {
        return FALSE;
    }

    return system->isActive == TRUE;
}

SysTask *BattleAnimSystem_StartAnimTaskEx(BattleAnimSystem *system, SysTaskFunc func, void *param, u32 priority)
{
    return BattleAnimSystem_StartTask(BATTLE_ANIM_TASK_KIND_EFFECT, system, func, param, priority);
}

SysTask *BattleAnimSystem_StartAnimTask(BattleAnimSystem *system, SysTaskFunc func, void *param)
{
    return BattleAnimSystem_StartTask(BATTLE_ANIM_TASK_KIND_EFFECT, system, func, param, 1100);
}

SysTask *BattleAnimSystem_StartSoundTask(BattleAnimSystem *system, SysTaskFunc func, void *param, u32 priority)
{
    return BattleAnimSystem_StartTask(BATTLE_ANIM_TASK_KIND_SOUND, system, func, param, priority);
}

void BattleAnimSystem_EndAnimTask(BattleAnimSystem *system, SysTask *task)
{
    BattleAnimSystem_EndTask(BATTLE_ANIM_TASK_KIND_EFFECT, system, task);
}

void BattleAnimSystem_EndSoundTask(BattleAnimSystem *system, SysTask *task)
{
    BattleAnimSystem_EndTask(BATTLE_ANIM_TASK_KIND_SOUND, system, task);
}

u16 BattleAnimSystem_GetAttacker(BattleAnimSystem *system)
{
    return system->context->attacker;
}

u16 BattleAnimSystem_GetDefender(BattleAnimSystem *system)
{
    return system->context->defender;
}

ParticleSystem *BattleAnimSystem_GetCurrentParticleSystem(BattleAnimSystem *system)
{
    return system->context->particleSystems[system->context->currentParticleSystem];
}

ParticleSystem *BattleAnimSystem_GetParticleSystem(BattleAnimSystem *system, int index)
{
    return system->context->particleSystems[index];
}

SPLEmitter *BattleAnimSystem_GetEmitter(BattleAnimSystem *system, int index)
{
    return system->context->emitters[index];
}

BgConfig *BattleAnimSystem_GetBgConfig(BattleAnimSystem *system)
{
    return system->bgConfig;
}

s32 BattleAnimSystem_GetScriptVar(BattleAnimSystem *system, int id)
{
    GF_ASSERT(id < BATTLE_ANIM_SCRIPT_VAR_COUNT);
    return system->scriptVars[id];
}

ManagedSprite *BattleAnimSystem_GetSprite(BattleAnimSystem *system, int index)
{
    GF_ASSERT(index < BATTLE_ANIM_SCRIPT_MAX_SPRITES);
    GF_ASSERT(system != NULL);
    GF_ASSERT(system->sprites[index] != NULL);

    return system->sprites[index];
}

ManagedSprite *BattleAnimSystem_GetPokemonSprite(BattleAnimSystem *system, int index)
{
    GF_ASSERT(index < BATTLE_ANIM_SCRIPT_MAX_POKEMON_SPRITES);
    GF_ASSERT(system != NULL);
    GF_ASSERT(system->pokemonSprites[index] != NULL);

    return system->pokemonSprites[index];
}

SpriteManager *BattleAnimSystem_GetPokemonSpriteManager(BattleAnimSystem *system)
{
    GF_ASSERT(system != NULL);
    return system->pokemonSpriteManager;
}

SpriteManager *BattleAnimSystem_GetPrimarySpriteManager(BattleAnimSystem *system)
{
    return system->spriteManagers[0];
}

SpriteSystem *BattleAnimSystem_GetSpriteSystem(BattleAnimSystem *system)
{
    return system->context->spriteSystem;
}

static BOOL (*const sBattleAnimSoundFuncs[BATTLE_ANIM_SOUND_TASK_COUNT])(BattleAnimSoundContext *) = {
    [BATTLE_ANIM_SOUND_TASK_NONE] = BattleAnimSoundFunc_None,
    [BATTLE_ANIM_SOUND_TASK_PAN] = BattleAnimSoundFunc_Pan,
    [BATTLE_ANIM_SOUND_TASK_PAN_2] = BattleAnimSoundFunc_Pan2,
    [BATTLE_ANIM_SOUND_TASK_PAN_3] = BattleAnimSoundFunc_Pan3,
    [BATTLE_ANIM_SOUND_TASK_REPEAT] = BattleAnimSoundFunc_Repeat,
    [BATTLE_ANIM_SOUND_TASK_DELAY] = BattleAnimSoundFunc_Delay
};

static BattleAnimSoundContext *BattleAnimSystem_CreateSoundContext(BattleAnimSystem *system)
{
    BattleAnimSoundContext *ctx = Heap_Alloc(system->heapID, sizeof(BattleAnimSoundContext));
    if (ctx == NULL) {
        GF_ASSERT(FALSE);
        return NULL;
    }

    memset(ctx, 0, sizeof(BattleAnimSoundContext));
    system->activeSoundTasks++;

    return ctx;
}

static void BattleAnimSystem_StartSoundTaskInternal(BattleAnimSystem *system, BattleAnimSoundContext *ctx)
{
    ctx->system = system;
    SysTask_Start(BattleAnimSound_Task, ctx, 1100);
}

static void BattleAnimSound_Task(SysTask *task, void *param)
{
    BattleAnimSoundContext *ctx = param;

    BOOL result = sBattleAnimSoundFuncs[ctx->type](ctx);
    if (result == FALSE) {
        if (ctx->system->activeSoundTasks != 0) {
            ctx->system->activeSoundTasks--;
        }

        Heap_Free(ctx);
        SysTask_Done(task);
    }
}

static BOOL BattleAnimSoundFunc_None(BattleAnimSoundContext *ctx)
{
    return FALSE;
}

static BOOL BattleAnimSoundFunc_Pan(BattleAnimSoundContext *ctx)
{
    if (ctx->tickCount++ < ctx->applyInterval) {
        return TRUE;
    }

    BOOL isActive = TRUE;

    ctx->tickCount = 0;
    ctx->curPan += ctx->panStep;

    if (ctx->panStep == 0) {
        isActive = FALSE;
    } else if (ctx->startPan < ctx->endPan) {
        if (ctx->curPan >= ctx->endPan) {
            isActive = FALSE;
        }
    } else {
        if (ctx->curPan <= ctx->endPan) {
            isActive = FALSE;
        }
    }

    Sound_PanAllEffects(ctx->curPan);

    if (!Sound_IsEffectPlaying(ctx->effectID)) {
        return FALSE;
    }

    return isActive;
}

static BOOL BattleAnimSoundFunc_Pan2(BattleAnimSoundContext *ctx)
{
    return BattleAnimSoundFunc_Pan(ctx);
}

static BOOL BattleAnimSoundFunc_Pan3(BattleAnimSoundContext *ctx)
{
    return BattleAnimSoundFunc_Pan(ctx);
}

static BOOL BattleAnimSoundFunc_Repeat(BattleAnimSoundContext *ctx)
{
    if (ctx->tickCount++ < ctx->applyInterval) {
        return TRUE;
    }

    BOOL isActive = TRUE;

    ctx->tickCount = 0;
    ctx->repeatCount--;

    Sound_PlayEffect(ctx->effectID);
    Sound_PanEffect(ctx->effectID, SOUND_PLAYBACK_TRACK_ALL, ctx->curPan);

    if (ctx->repeatCount == 0) {
        isActive = FALSE;
    }

    return isActive;
}

static BOOL BattleAnimSoundFunc_Delay(BattleAnimSoundContext *ctx)
{
    BOOL isActive = TRUE;

    if ((ctx->applyInterval--) == 0) {
        Sound_PlayEffect(ctx->effectID);
        Sound_PanEffect(ctx->effectID, SOUND_PLAYBACK_TRACK_ALL, ctx->curPan);

        isActive = FALSE;
    }

    return isActive;
}

static const BattleAnimScriptCmd sBattleAnimScriptCmdTable[] = {
#include "data/scripts/btlanimcmd.h"
};

void BattleAnimSystem_SetDefaultAlphaBlending(void)
{
    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, BATTLE_BG_BLENDMASK_ALL | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD, 8, 8);
}

static inline void BattleAnimScript_Next(BattleAnimSystem *system)
{
    system->scriptPtr += 1;
}

static inline void BattleAnimScript_JumpTo(BattleAnimSystem *system, u32 *dst)
{
    system->scriptPtr = dst;
}

static inline void BattleAnimScript_JumpBy(BattleAnimSystem *system, u32 offset)
{
    system->scriptPtr += offset;
}

static inline int BattleAnimScript_ReadWord(u32 *scriptPtr)
{
    return *scriptPtr;
}

static void BattleAnimScriptCmd_WaitForLRX(BattleAnimSystem *system)
{
    system->scriptDelay = 1;

    if (gSystem.heldKeys & PAD_BUTTON_L) {
        if (gSystem.heldKeys & PAD_BUTTON_R) {
            if (gSystem.pressedKeys & PAD_BUTTON_X) {
                BattleAnimScript_Next(system);
                system->scriptDelay = 0;
            }
        }
    }
}

static void BattleAnimScriptCmd_Delay(BattleAnimSystem *system)
{
    BattleAnimScript_Next(system);

    system->scriptDelay = (u8)BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    system->executeAnimScriptFunc = BattleAnimScript_WaitForDelay;
}

static void BattleAnimScriptCmd_WaitForAnimTasks(BattleAnimSystem *system)
{
    if (system->activeAnimTasks == 0) {
        BattleAnimScript_Next(system);
        system->scriptDelay = 0;
    } else {
        system->scriptDelay = 1;
    }
}

static void BattleAnimScriptCmd_SetVar(BattleAnimSystem *system)
{
    BattleAnimScript_Next(system);
    u32 id = (u32)BattleAnimScript_ReadWord(system->scriptPtr);

    BattleAnimScript_Next(system);
    u32 value = (u32)BattleAnimScript_ReadWord(system->scriptPtr);

    BattleAnimScript_Next(system);

    if (id < BATTLE_ANIM_SCRIPT_VAR_COUNT) {
        system->scriptVars[id] = value;
    }
}

static void BattleAnimScriptCmd_ResetVars(BattleAnimSystem *system)
{
    BattleAnimScript_Next(system);

    for (int i = 0; i < BATTLE_ANIM_SCRIPT_VAR_COUNT; i++) {
        system->scriptVars[i] = 0;
    }
}

int BattleAnimSystem_GetMoveInfo(BattleAnimSystem *system, enum BattleAnimMoveInfoType info)
{
    switch (info) {
    case BATTLE_ANIM_MOVE_INFO_DAMAGE:
        return system->context->damage;
    case BATTLE_ANIM_MOVE_INFO_POWER:
        return system->context->power;
    case BATTLE_ANIM_MOVE_INFO_FRIENDSHIP:
        return system->context->friendship;
    case BATTLE_ANIM_MOVE_INFO_FIELD_CONDITIONS:
        return system->context->fieldConditions;
    case BATTLE_ANIM_MOVE_INFO_EFFECT_CHANCE:
        return system->context->effectChance;
    case BATTLE_ANIM_MOVE_INFO_TERRAIN:
        return system->context->terrain;
    default:
        return 0;
    }
}

void BattlerSpriteContext_InitFromSystem(BattleAnimSystem *system, BattlerSpriteContext *battlerSpriteCtx, int animParticipantMode)
{
    for (int battler = BATTLER_PLAYER_1; battler < MAX_BATTLERS; battler++) {
        battlerSpriteCtx->pokemonSpriteData[battler] = system->context->pokemonSpriteData[battler];
        battlerSpriteCtx->sprites[battler] = system->context->battlerSprites[battler];
        battlerSpriteCtx->species[battler] = system->context->battlerSpecies[battler];
        battlerSpriteCtx->genders[battler] = system->context->battlerGenders[battler];
        battlerSpriteCtx->shinyFlags[battler] = system->context->battlerShinyFlags[battler];
        battlerSpriteCtx->forms[battler] = system->context->battlerForms[battler];
        battlerSpriteCtx->personalities[battler] = system->context->battlerPersonalities[battler];
        battlerSpriteCtx->types[battler] = system->context->battlerTypes[battler];
    }

    switch (animParticipantMode) {
    case 0:
        battlerSpriteCtx->targetBattler = system->context->attacker;
        battlerSpriteCtx->sourceBattler = system->context->defender;
        break;
    case 1:
        battlerSpriteCtx->targetBattler = system->context->attacker;
        battlerSpriteCtx->sourceBattler = system->context->attacker;
        break;
    case 2:
        battlerSpriteCtx->targetBattler = system->context->attacker;
        battlerSpriteCtx->sourceBattler = system->context->attacker;
        break;
    case 3:
        battlerSpriteCtx->targetBattler = system->context->attacker;
        battlerSpriteCtx->sourceBattler = system->context->attacker;
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }
}

static void BattleAnimScriptCmd_StartBattlerSlideIn(BattleAnimSystem *system)
{
    int animParticipantMode;
    BattlerSpriteContext battlerSpriteCtx;

    BattleAnimScript_Next(system);
    animParticipantMode = (u32)BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    BattlerSpriteContext_InitFromSystem(system, &battlerSpriteCtx, animParticipantMode);

    if (animParticipantMode == 2) {
        ov12_02238390(&battlerSpriteCtx, system->heapID);
    } else if (animParticipantMode == 3) {
        ov12_022380CC(&battlerSpriteCtx, system->heapID);
    } else {
        ov12_022380BC(&battlerSpriteCtx, system->heapID);
    }
}

static void BattleAnimScriptCmd_StartBattlerSlideOut(BattleAnimSystem *system)
{
    int animParticipantMode;
    BattlerSpriteContext battlerSpriteCtx;

    BattleAnimScript_Next(system);
    animParticipantMode = (u32)BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    BattlerSpriteContext_InitFromSystem(system, &battlerSpriteCtx, animParticipantMode);
    ov12_022382BC(&battlerSpriteCtx, system->heapID);
}

static void BattleAnimScriptCmd_BeginLoop(BattleAnimSystem *system)
{
    BattleAnimScript_Next(system);

    for (int i = 0; i < BATTLE_ANIM_SCRIPT_MAX_NESTED_LOOPS; i++) {
        if (system->loopStack[i].isActive == TRUE) {
            continue;
        }

        system->loopStack[i].isActive = TRUE;
        system->loopStack[i].curIteration = 0;
        system->loopStack[i].maxIterations = (u8)BattleAnimScript_ReadWord(system->scriptPtr);
        BattleAnimScript_Next(system);
        system->loopStack[i].startPos = system->scriptPtr;

        return;
    }
}

static void BattleAnimScriptCmd_EndLoop(BattleAnimSystem *system)
{
    BattleAnimScript_Next(system);

    for (int i = BATTLE_ANIM_SCRIPT_MAX_NESTED_LOOPS - 1; i >= 0; i--) {
        if (system->loopStack[i].isActive == FALSE) {
            continue;
        }

        system->loopStack[i].curIteration++;

        if (system->loopStack[i].curIteration == system->loopStack[i].maxIterations) {
            system->loopStack[i].isActive = FALSE;
        } else {
            system->scriptPtr = system->loopStack[i].startPos;
        }

        return;
    }
}

static void BattleAnimScriptCmd_End(BattleAnimSystem *system)
{
    int i;
    int totalEmitters = 0;

    if (system->endDelayFrames < 1) {
        system->scriptDelay = 1;
        system->endDelayFrames++;
        return;
    }

    for (i = 0; i < MAX_PARTICLE_SYSTEMS; i++) {
        if (system->context->particleSystems[i]) {
            totalEmitters += ParticleSystem_GetActiveEmitterCount(system->context->particleSystems[i]);
        }
    }

    if (totalEmitters != 0 || system->activeAnimTasks != 0 || system->activeSoundTasks != 0) {
        system->scriptDelay = 1;
        system->soundEffectWaitTimer = 0;
        return;
    }

    if (Sound_IsAnyEffectPlaying()) {
        system->soundEffectWaitTimer++;

        // If sound effects are still playing after 3 seconds, continue anyway
        if (system->soundEffectWaitTimer > BATTLE_ANIM_SCRIPT_MAX_SFX_WAIT_FRAMES) {
            system->soundEffectWaitTimer = 0;
            system->scriptDelay = 0;
        } else {
            system->scriptDelay = 1;
            return;
        }
    }

    system->soundEffectWaitTimer = 0;
    system->endDelayFrames = 0;

    for (i = 0; i < BATTLE_ANIM_SCRIPT_MAX_CALL_STACK_DEPTH; i++) {
        system->callStack[i] = NULL;
    }

    for (i = 0; i < BATTLE_ANIM_SCRIPT_MAX_NESTED_LOOPS; i++) {
        system->loopStack[i].startPos = NULL;
        system->loopStack[i].curIteration = 0;
        system->loopStack[i].maxIterations = 0;
        system->loopStack[i].isActive = FALSE;
    }

    for (i = 0; i < BATTLE_ANIM_SCRIPT_MAX_SPRITE_MANAGERS; i++) {
        if (system->spriteManagers[i] != NULL) {
            SpriteSystem_FreeResourcesAndManager(system->context->spriteSystem, system->spriteManagers[i]);
        }

        system->spriteManagers[i] = NULL;
    }

    for (i = 0; i < BATTLE_ANIM_TRACKING_TASK_COUNT; i++) {
        BattleAnimSystem_CancelTrackingTask(system, i);
    }

    for (i = 0; i < MAX_PARTICLE_SYSTEMS; i++) {
        if (system->context->particleSystems[i]) {
            BattleParticleUtil_FreeParticleSystem(system->context->particleSystems[i]);
            system->context->particleSystems[i] = NULL;
        }
    }

    if (system->bgAnim != NULL) {
        system->bgAnim = NULL;
    }

    if (BattleAnimSystem_IsContest(system) == FALSE) {
        Battle_SetDefaultBlend();

        Bg_ClearTilesRange(BattleAnimSystem_GetBgLayer(system, 1), 0x4000, 0, BattleAnimSystem_GetHeapID(system));
        Bg_ClearTilemap(BattleAnimSystem_GetBgConfig(system), BattleAnimSystem_GetBgLayer(system, 1));
        Bg_ToggleLayer(BG_LAYER_MAIN_2, TRUE);
    } else {
        ov17_022413D8();
    }

    Bg_SetPriority(BG_LAYER_MAIN_0, system->bgLayerPriorities[BG_LAYER_MAIN_0]);
    Bg_SetPriority(BG_LAYER_MAIN_1, system->bgLayerPriorities[BG_LAYER_MAIN_1]);
    Bg_SetPriority(BG_LAYER_MAIN_2, system->bgLayerPriorities[BG_LAYER_MAIN_2]);
    Bg_SetPriority(BG_LAYER_MAIN_3, system->bgLayerPriorities[BG_LAYER_MAIN_3]);

    Bg_SetOffset(system->bgConfig, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_SET_X, 0);
    Bg_SetOffset(system->bgConfig, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_SET_Y, 0);
    Bg_SetOffset(system->bgConfig, BG_LAYER_MAIN_3, BG_OFFSET_UPDATE_SET_X, 0);
    Bg_SetOffset(system->bgConfig, BG_LAYER_MAIN_3, BG_OFFSET_UPDATE_SET_Y, 0);

    system->moveActive = FALSE;
}

static void BattleAnimScriptCmd_CreateEmitter(BattleAnimSystem *system)
{
    BattleAnimScript_Next(system);

    u32 psIndex = (u32)BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    u32 resourceID = (u32)BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    u32 callbackID = (u32)BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    system->context->currentParticleSystem = psIndex;

    if (system->particleSystemCameraFlip[psIndex] != 0) {
        VecFx32 v3;

        ParticleSystem_GetCameraUp(system->context->particleSystems[psIndex], &v3);
        v3.y *= -1;
        ParticleSystem_SetCameraUp(system->context->particleSystems[psIndex], &v3);
    }

    ParticleSystem_SetCameraProjection(system->context->particleSystems[psIndex], system->cameraProjections[psIndex]);

    system->context->emitters[0] = BattleParticleUtil_CreateEmitter(system->context->particleSystems[psIndex], resourceID, callbackID, system);
}

static void BattleAnimScriptCmd_CreateEmitterEx(BattleAnimSystem *system)
{
    BattleAnimScript_Next(system);

    u32 psIndex = (u32)BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    u32 emitterIndex = (u32)BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    u32 resourceID = (u32)BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    u32 callbackID = (u32)BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    system->context->currentParticleSystem = psIndex;

    if (system->particleSystemCameraFlip[psIndex] != 0) {
        VecFx32 v4;

        ParticleSystem_GetCameraUp(system->context->particleSystems[psIndex], &v4);
        v4.y *= -1;
        ParticleSystem_SetCameraUp(system->context->particleSystems[psIndex], &v4);
    }

    ParticleSystem_SetCameraProjection(system->context->particleSystems[psIndex], system->cameraProjections[psIndex]);

    system->context->emitters[emitterIndex] = BattleParticleUtil_CreateEmitter(system->context->particleSystems[psIndex], resourceID, callbackID, system);
}

#define _ 0xFF
static int BattleAnimSystem_GetParticleResIdxForMove(BattleAnimSystem *system)
{
    // For the meaning of these values, see enum BattleAnimParticleResource
    int indexTable[6][6] = {
        /* Atk/Def P1 E1 P1 E1 P2 E2 */
        /* P1 */ { _, 1, _, _, _, _ },
        /* E1 */ { 4, _, _, _, _, _ },
        /* P1 */ { _, _, _, 3, _, 1 },
        /* E1 */ { _, _, 6, _, 4, _ },
        /* P2 */ { _, _, _, 1, _, 2 },
        /* E2 */ { _, _, 4, _, 5, _ }
    };

    int attacker = BattleAnimSystem_GetAttacker(system);
    int defender = BattleAnimSystem_GetDefender(system);
    int attackerType = BattleAnimUtil_GetBattlerType(system, attacker);
    int defenderType = BattleAnimUtil_GetBattlerType(system, defender);
    int index = indexTable[attackerType][defenderType];

    GF_ASSERT(index != 0xFF);

    return index - 1;
}

static int BattleAnimSystem_GetParticleResIdxForFriendlyFire(BattleAnimSystem *system)
{
    int indexTable[6][6] = {
        /* Atk/Def P1 E1 P1 E1 P2 E2 */
        /* P1 */ { _, _, _, _, _, _ },
        /* E1 */ { _, _, _, _, _, _ },
        /* P1 */ { _, _, _, _, 0, _ },
        /* E1 */ { _, _, _, _, _, 1 },
        /* P2 */ { _, _, 1, _, _, _ },
        /* E2 */ { _, _, _, 0, _, _ }
    };

    int attacker = BattleAnimSystem_GetAttacker(system);
    int defender = BattleAnimSystem_GetDefender(system);
    int attackerType = BattleAnimUtil_GetBattlerType(system, attacker);
    int defenderType = BattleAnimUtil_GetBattlerType(system, defender);
    int index = indexTable[attackerType][defenderType];

    GF_ASSERT(index != 0xFF);

    return index;
}
#undef _

static void BattleAnimScriptCmd_CreateEmitterForMove(BattleAnimSystem *system)
{
    u32 resourceTable[PARTICLE_RESOURCE_COUNT];

    BattleAnimScript_Next(system);

    u32 psIndex = (u32)BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    for (int i = 0; i < PARTICLE_RESOURCE_COUNT; i++) {
        resourceTable[i] = (u32)BattleAnimScript_ReadWord(system->scriptPtr);
        BattleAnimScript_Next(system);
    }

    u32 callbackID = (u32)BattleAnimScript_ReadWord(system->scriptPtr);

    BattleAnimScript_Next(system);
    system->context->currentParticleSystem = psIndex;

    if (system->particleSystemCameraFlip[psIndex] != 0) {
        VecFx32 up;

        ParticleSystem_GetCameraUp(system->context->particleSystems[psIndex], &up);
        up.y *= -1;
        ParticleSystem_SetCameraUp(system->context->particleSystems[psIndex], &up);
    }

    int resIdx = BattleAnimSystem_GetParticleResIdxForMove(system);
    u32 resID = resourceTable[resIdx];

    ParticleSystem_SetCameraProjection(system->context->particleSystems[psIndex], system->cameraProjections[psIndex]);
    system->context->emitters[0] = BattleParticleUtil_CreateEmitter(system->context->particleSystems[psIndex], resID, callbackID, system);
}

static void BattleAnimScriptCmd_CreateEmitterForFriendlyFire(BattleAnimSystem *system)
{
    u32 resourceTable[4];

    BattleAnimScript_Next(system);
    u32 psIndex = (u32)BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    for (int i = 0; i < 4; i++) {
        resourceTable[i] = (u32)BattleAnimScript_ReadWord(system->scriptPtr);
        BattleAnimScript_Next(system);
    }

    u32 callbackID = (u32)BattleAnimScript_ReadWord(system->scriptPtr);

    BattleAnimScript_Next(system);
    system->context->currentParticleSystem = psIndex;

    if (system->particleSystemCameraFlip[psIndex] != 0) {
        VecFx32 up;

        ParticleSystem_GetCameraUp(system->context->particleSystems[psIndex], &up);
        up.y *= -1;
        ParticleSystem_SetCameraUp(system->context->particleSystems[psIndex], &up);
    }

    int resIdx = BattleAnimSystem_GetParticleResIdxForFriendlyFire(system);
    u32 resID = resourceTable[resIdx];

    ParticleSystem_SetCameraProjection(system->context->particleSystems[psIndex], system->cameraProjections[psIndex]);
    system->context->emitters[0] = BattleParticleUtil_CreateEmitter(system->context->particleSystems[psIndex], resID, callbackID, system);
}

static void BattleAnimScriptCmd_WaitForAllEmitters(BattleAnimSystem *system)
{
    int activeEmitters = 0;
    for (int i = 0; i < MAX_PARTICLE_SYSTEMS; i++) {
        if (system->context->particleSystems[i] == NULL) {
            continue;
        }

        activeEmitters += ParticleSystem_GetActiveEmitterCount(system->context->particleSystems[i]);
    }

    if (activeEmitters == 0) {
        BattleAnimScript_Next(system);
        system->scriptDelay = 0;
    } else {
        system->scriptDelay = 1;
    }
}

static void BattleAnimScriptCmd_LoadParticleSystem(BattleAnimSystem *system)
{
    BattleAnimScript_Next(system);

    u32 psIndex = (u32)BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    GF_ASSERT(system->context->particleSystems[psIndex] == NULL);

    u32 memberIndex = (u32)BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    system->context->particleSystems[psIndex] = BattleParticleUtil_CreateParticleSystem(system->heapID, memberIndex, FALSE);
    system->scriptDelay = 2; // Allow the resource upload to complete
    system->executeAnimScriptFunc = BattleAnimScript_WaitForDelay;
}

static void BattleAnimScriptCmd_LoadDebugParticleSystem(BattleAnimSystem *system)
{
    BattleAnimScript_Next(system);

    u32 psIndex = (u32)BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    u32 narcID = (u32)BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);
    narcID = NARC_INDEX_WAZAEFFECT__PT_DEBUG__DEBUG_PARTICLE;

    GF_ASSERT(system->context->particleSystems[psIndex] == NULL);

    u32 memberIndex = (u32)BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    system->context->particleSystems[psIndex] = BattleParticleUtil_CreateParticleSystemEx(system->heapID, narcID, memberIndex, FALSE);
    system->scriptDelay = 2; // Allow the resource upload to complete
    system->executeAnimScriptFunc = BattleAnimScript_WaitForDelay;
}

static void BattleAnimScriptCmd_UnloadParticleSystem(BattleAnimSystem *system)
{
    BattleAnimScript_Next(system);

    u32 psIndex = (u32)BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    BattleParticleUtil_FreeParticleSystem(system->context->particleSystems[psIndex]);
    system->context->particleSystems[psIndex] = NULL;
}

static void BattleAnimScriptCmd_Call(BattleAnimSystem *system)
{
    BattleAnimScript_Next(system);

    for (int i = 0; i < BATTLE_ANIM_SCRIPT_MAX_CALL_STACK_DEPTH; i++) {
        if (system->callStack[i] != NULL) {
            continue;
        }

        system->callStack[i] = system->scriptPtr + 1;
        BattleAnimScript_JumpBy(system, (u32)BattleAnimScript_ReadWord(system->scriptPtr));

        return;
    }
}

static void BattleAnimScriptCmd_Return(BattleAnimSystem *system)
{
    BattleAnimScript_Next(system);

    for (int i = BATTLE_ANIM_SCRIPT_MAX_CALL_STACK_DEPTH - 1; i >= 0; i--) {
        if (system->callStack[i] == NULL) {
            continue;
        }

        BattleAnimScript_JumpTo(system, system->callStack[i]);
        system->callStack[i] = NULL;

        return;
    }
}

static void BattleAnimScriptCmd_JumpIfEqual(BattleAnimSystem *system)
{
    BattleAnimScript_Next(system);

    u32 id = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    u32 value = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    if (value == system->scriptVars[id]) {
        BattleAnimScript_JumpTo(system, (u32 *)BattleAnimScript_ReadWord(system->scriptPtr));
    } else {
        BattleAnimScript_Next(system);
    }
}

static void BattleAnimScriptCmd_JumpIfUnk_01(BattleAnimSystem *system)
{
    BattleAnimScript_Next(system);

    if (BattleAnimContext_GetUnk_01(system->context)) {
        BattleAnimScript_JumpTo(system, (u32 *)BattleAnimScript_ReadWord(system->scriptPtr));
    } else {
        BattleAnimScript_Next(system);
    }
}

static void BattleAnimScriptCmd_CallFunc(BattleAnimSystem *system)
{
    int i;

    BattleAnimScript_Next(system);

    u32 funcID = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    BattleAnimScriptFunc func = BattleAnimScript_GetFunc(funcID);

    u32 argCount = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    for (i = 0; i < argCount; i++) {
        system->scriptVars[i] = BattleAnimScript_ReadWord(system->scriptPtr);
        BattleAnimScript_Next(system);
    }

    for (; i < BATTLE_ANIM_SCRIPT_VAR_COUNT; i++) {
        system->scriptVars[i] = 0;
    }

    func(system);
}

static void BattleAnimScriptCmd_JumpIfEffectChanceOdd(BattleAnimSystem *system)
{
    BattleAnimScript_Next(system);

    if (system->context->effectChance & 1) {
        BattleAnimScript_Next(system);
    }

    BattleAnimScript_JumpBy(system, (u32)BattleAnimScript_ReadWord(system->scriptPtr));
}

static void BattleAnimScriptCmd_JumpIfBattlerSide(BattleAnimSystem *system)
{
    int battler;
    enum Battler side;

    BattleAnimScript_Next(system);

    battler = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    if (battler == 0) {
        side = BattleAnimUtil_GetBattlerSide(system, system->context->attacker);
    } else {
        side = BattleAnimUtil_GetBattlerSide(system, system->context->defender);
    }

    if (side == BTLSCR_ENEMY) {
        BattleAnimScript_Next(system);
    }

    BattleAnimScript_JumpBy(system, (u32)BattleAnimScript_ReadWord(system->scriptPtr));
}

static void BattleAnimScriptCmd_JumpIfWeather(BattleAnimSystem *system)
{
    int weatherConditions[] = {
        FIELD_CONDITION_RAINING,
        FIELD_CONDITION_SANDSTORM,
        FIELD_CONDITION_SUNNY,
        FIELD_CONDITION_HAILING,
    };

    BattleAnimScript_Next(system);
    int fieldConditions = system->context->fieldConditions;

    if (fieldConditions != 0) {
        BattleAnimScript_Next(system);

        for (int i = 0; i < NELEMS(weatherConditions); i++) {
            if (fieldConditions & weatherConditions[i]) {
                break;
            } else {
                BattleAnimScript_Next(system);
            }
        }
    }

    BattleAnimScript_JumpBy(system, (u32)BattleAnimScript_ReadWord(system->scriptPtr));
}

static void BattleAnimScriptCmd_JumpIfContest(BattleAnimSystem *system)
{
    BattleAnimScript_Next(system);

    if (BattleAnimSystem_IsContest(system) == TRUE) {
        BattleAnimScript_JumpBy(system, (u32)BattleAnimScript_ReadWord(system->scriptPtr));
    } else {
        BattleAnimScript_Next(system);
    }
}

static void BattleAnimScriptCmd_JumpIfFriendlyFire(BattleAnimSystem *system)
{
    BattleAnimScript_Next(system);

    enum Battler attackerSide = BattleAnimUtil_GetBattlerSide(system, system->context->attacker);
    enum Battler defenderSide = BattleAnimUtil_GetBattlerSide(system, system->context->defender);

    if (attackerSide == defenderSide) {
        BattleAnimScript_JumpBy(system, (u32)BattleAnimScript_ReadWord(system->scriptPtr));
    } else {
        BattleAnimScript_Next(system);
    }
}

static void BattleAnimScriptCmd_JumpIfEffectChance(BattleAnimSystem *system)
{
    BattleAnimScript_Next(system);
    int effectChance = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    if (effectChance == system->context->effectChance) {
        system->scriptPtr += (u32)BattleAnimScript_ReadWord(system->scriptPtr);
    } else {
        BattleAnimScript_Next(system);
    }
}

static void BattleAnimScriptCmd_Jump(BattleAnimSystem *system)
{
    BattleAnimScript_Next(system);
    BattleAnimScript_JumpBy(system, (u32)BattleAnimScript_ReadWord(system->scriptPtr));
}

static int BattleAnimSystem_GetBattlerWithRole(BattleAnimSystem *system, int role)
{
    int result;

    switch (role) {
    case BATTLER_ROLE_ATTACKER:
        result = system->context->attacker;
        break;
    case BATTLER_ROLE_DEFENDER:
        result = system->context->defender;
        break;
    case BATTLER_ROLE_ATTACKER_PARTNER:
        result = BattleAnimUtil_GetAlliedBattler(system, system->context->attacker);
        break;
    case BATTLER_ROLE_DEFENDER_PARTNER:
        result = BattleAnimUtil_GetAlliedBattler(system, system->context->defender);
        break;

    case BATTLER_ROLE_PLAYER_1: {
        result = BATTLER_NONE;

        for (int battler = 0; battler < MAX_BATTLERS; battler++) {
            int battlerType = BattleAnimSystem_GetBattlerType(system, battler);
            if (battlerType == BATTLER_TYPE_SOLO_PLAYER || battlerType == BATTLER_TYPE_PLAYER_SIDE_SLOT_1) {
                result = battler;
                break;
            }
        }

        if (result == BATTLER_NONE) {
            result = BATTLER_PLAYER_1;
        }
    } break;
    case BATTLER_ROLE_ENEMY_1: {
        result = BATTLER_NONE;

        for (int battler = 0; battler < MAX_BATTLERS; battler++) {
            int battlerType = BattleAnimSystem_GetBattlerType(system, battler);
            if (battlerType == BATTLER_TYPE_SOLO_ENEMY || battlerType == BATTLER_TYPE_ENEMY_SIDE_SLOT_1) {
                result = battler;
                break;
            }
        }

        if (result == BATTLER_NONE) {
            result = BATTLER_PLAYER_1;
        }
    } break;
    case BATTLER_ROLE_PLAYER_2: {
        result = BATTLER_NONE;

        for (int battler = 0; battler < MAX_BATTLERS; battler++) {
            int battlerType = BattleAnimSystem_GetBattlerType(system, battler);
            if (battlerType == BATTLER_TYPE_PLAYER_SIDE_SLOT_2) {
                result = battler;
                break;
            }
        }

        if (result == BATTLER_NONE) {
            result = BATTLER_PLAYER_1;
        }
    } break;
    case BATTLER_ROLE_ENEMY_2: {
        result = BATTLER_NONE;

        for (int battler = 0; battler < MAX_BATTLERS; battler++) {
            int battlerType = BattleAnimSystem_GetBattlerType(system, battler);
            if (battlerType == BATTLER_TYPE_ENEMY_SIDE_SLOT_2) {
                result = battler;
                break;
            }
        }

        if (result == BATTLER_NONE) {
            result = BATTLER_PLAYER_1;
        }
    } break;
    }

    return result;
}

static void BattleAnimSystem_SpriteTrackingTaskFunc(SysTask *task, void *param)
{
    SpriteTrackingTask *trackingTask = param;

    if (trackingTask->data.interval != 0) {
        trackingTask->data.frameCount++;

        if (trackingTask->data.frameCount != trackingTask->data.interval) {
            return;
        }

        trackingTask->data.frameCount = 0;
    }

    s16 x = PokemonSprite_GetAttribute(trackingTask->data.sprite, MON_SPRITE_X_CENTER);
    s16 y = PokemonSprite_GetAttribute(trackingTask->data.sprite, MON_SPRITE_Y_CENTER);
    y -= PokemonSprite_GetAttribute(trackingTask->data.sprite, MON_SPRITE_SHADOW_HEIGHT);

    ManagedSprite_SetPositionXY(trackingTask->sprite, x, y);
}

static void BattleAnimSystem_BgTrackingTaskFunc(SysTask *task, void *param)
{
    BgTrackingTask *trackingTask = param;

    if (trackingTask->data.interval != 0) {
        trackingTask->data.frameCount++;

        if (trackingTask->data.frameCount != trackingTask->data.interval) {
            return;
        }

        trackingTask->data.frameCount = 0;
    }

    s16 x = PokemonSprite_GetAttribute(trackingTask->data.sprite, MON_SPRITE_X_CENTER);
    s16 y = PokemonSprite_GetAttribute(trackingTask->data.sprite, MON_SPRITE_Y_CENTER);
    y -= PokemonSprite_GetAttribute(trackingTask->data.sprite, MON_SPRITE_SHADOW_HEIGHT);

    Bg_SetOffset(trackingTask->bg, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_SET_X, -(x - 40));
    Bg_SetOffset(trackingTask->bg, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_SET_Y, -(y - 40));
}

void BattleAnimSystem_CancelTrackingTask(BattleAnimSystem *system, enum BattleAnimTrackingTask task)
{
    if (task == BATTLE_ANIM_TRACKING_TASK_BG) {
        if (system->bgTrackingTask != NULL) {
            SysTask_Done(system->bgTrackingTask->task);
            Heap_Free(system->bgTrackingTask);
            system->bgTrackingTask = NULL;
        }
    } else {
        if (system->spriteTrackingTasks[task] != NULL) {
            SysTask_Done(system->spriteTrackingTasks[task]->task);
            Heap_Free(system->spriteTrackingTasks[task]);
            system->spriteTrackingTasks[task] = NULL;
        }
    }
}

static void BattleAnimScriptCmd_Nop0(BattleAnimSystem *)
{
    return;
}

static void BattleAnimScriptCmd_Nop1(BattleAnimSystem *)
{
    return;
}

static void BattleAnimScriptCmd_LoadPokemonSpriteIntoBg(BattleAnimSystem *system)
{
    void *charData = NULL;

    BattleAnimScript_Next(system);

    int battlerRole = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    BOOL trackBattler = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    int battler = BattleAnimSystem_GetBattlerWithRole(system, battlerRole);
    enum NarcID narcID = system->context->pokemonSpriteData[battler]->narcID;
    int paletteIndex = system->context->pokemonSpriteData[battler]->palette;
    charData = system->context->pokemonSpriteData[battler]->tiles;
    int form = system->context->battlerForms[battler];

    int memberIndex;
    if ((BattleAnimSystem_IsContest(system) == TRUE) && (IsFormSymmetrical(BattleAnimSystem_GetBattlerSpecies(system, battler), form) == TRUE)) {
        memberIndex = 265;
    } else {
        memberIndex = 264;
    }

    u8 *bgTiles = Bg_GetCharPtr(BATTLE_BG_BASE);
    MI_CpuFill8(bgTiles, 0, 10 * 10 * 2 * TILE_SIZE_4BPP);

    Bg_ToggleLayer(BATTLE_BG_BASE, FALSE);
    Bg_LoadTiles(system->bgConfig, BATTLE_BG_BASE, charData, 10 * 10 * ((8 / 2) * 8), 0);
    PaletteData_LoadBufferFromFileStart(
        system->paletteData,
        narcID,
        paletteIndex,
        system->heapID,
        PLTTBUF_MAIN_BG,
        0,
        PLTT_DEST(BATTLE_BG_PALETTE_MON_SPRITE));

    Graphics_LoadTilemapToBgLayerFromOpenNARC(
        system->arcs[BATTLE_ANIM_SYSTEM_ARC_BATT_BG],
        memberIndex,
        system->bgConfig,
        BATTLE_BG_BASE,
        0,
        0,
        FALSE,
        system->heapID);

    if (trackBattler == TRUE) {
        system->bgTrackingTask = Heap_Alloc(system->heapID, sizeof(SpriteTrackingTask));
        system->bgTrackingTask->bg = system->bgConfig;
        system->bgTrackingTask->data.sprite = BattleAnimSystem_GetBattlerSprite(system, battler);
        system->bgTrackingTask->data.frameCount = 0;
        system->bgTrackingTask->data.interval = 0;

        system->bgTrackingTask->task = SysTask_Start(BattleAnimSystem_BgTrackingTaskFunc, system->bgTrackingTask, 0x1001);
    }

    s16 x = PokemonSprite_GetAttribute(BattleAnimSystem_GetBattlerSprite(system, battler), MON_SPRITE_X_CENTER);
    s16 y = PokemonSprite_GetAttribute(BattleAnimSystem_GetBattlerSprite(system, battler), MON_SPRITE_Y_CENTER);
    y -= PokemonSprite_GetAttribute(BattleAnimSystem_GetBattlerSprite(system, battler), MON_SPRITE_SHADOW_HEIGHT);

    Bg_SetOffset(system->bgConfig, BATTLE_BG_BASE, BG_OFFSET_UPDATE_SET_X, -(x - (MON_SPRITE_FRAME_WIDTH / 2)));
    Bg_SetOffset(system->bgConfig, BATTLE_BG_BASE, BG_OFFSET_UPDATE_SET_Y, -(y - (MON_SPRITE_FRAME_HEIGHT / 2)));

    Bg_ToggleLayer(BATTLE_BG_BASE, TRUE);
    Bg_SetPriority(BATTLE_BG_BASE, BattleAnimSystem_GetPokemonSpritePriority(system));
}

static void BattleAnimScriptCmd_RemovePokemonSpriteFromBg(BattleAnimSystem *system)
{
    BattleAnimScript_Next(system);
    BattleAnimScript_Next(system);

    u8 *bgTiles = Bg_GetCharPtr(BG_LAYER_MAIN_2);
    MI_CpuFill8(bgTiles, 0, 10 * 10 * 2 * TILE_SIZE_4BPP);

    BattleAnimSystem_CancelTrackingTask(system, BATTLE_ANIM_TRACKING_TASK_BG);
}

static void BattleAnimScriptCmd_InitPokemonSpriteManager(BattleAnimSystem *system)
{
    SpriteResourceCapacities caps = {
        BATTLE_ANIM_SCRIPT_MAX_POKEMON_SPRITES,
        BATTLE_ANIM_SCRIPT_MAX_POKEMON_SPRITES,
        BATTLE_ANIM_SCRIPT_MAX_POKEMON_SPRITES,
        BATTLE_ANIM_SCRIPT_MAX_POKEMON_SPRITES,
        0,
        0
    };

    BattleAnimScript_Next(system);
    system->pokemonSpriteManager = SpriteManager_New(system->context->spriteSystem);

    SpriteSystem_InitSprites(system->context->spriteSystem, system->pokemonSpriteManager, BATTLE_ANIM_SCRIPT_MAX_POKEMON_SPRITES);
    SetSubScreenViewRect(SpriteSystem_GetRenderer(system->context->spriteSystem), 0, (192 + 80) << FX32_SHIFT);
    SpriteSystem_InitManagerWithCapacities(system->context->spriteSystem, system->pokemonSpriteManager, &caps);
}

static void BattleAnimScriptCmd_LoadPokemonSpriteDummyResources(BattleAnimSystem *system)
{
    BattleAnimScript_Next(system);
    int resID = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    int resourceIDs[SPRITE_RESOURCE_MAX];
    resourceIDs[SPRITE_RESOURCE_CHAR] = 20001 + resID + (system->context->attacker * 5000);
    resourceIDs[SPRITE_RESOURCE_PLTT] = 20001 + resID + (system->context->attacker * 5000);
    resourceIDs[SPRITE_RESOURCE_CELL] = 20001 + resID + (system->context->attacker * 5000);
    resourceIDs[SPRITE_RESOURCE_ANIM] = 20001 + resID + (system->context->attacker * 5000);
    resourceIDs[SPRITE_RESOURCE_MULTI_CELL] = 0;
    resourceIDs[SPRITE_RESOURCE_MULTI_ANIM] = 0;

    SpriteSystem_LoadCharResObjFromOpenNarc(
        system->context->spriteSystem,
        system->pokemonSpriteManager,
        system->arcs[BATTLE_ANIM_SYSTEM_ARC_BATT_OBJ],
        76,
        FALSE,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        resourceIDs[SPRITE_RESOURCE_PLTT]);

    SpriteSystem_LoadPaletteBufferFromOpenNarc(
        system->paletteData,
        PLTTBUF_MAIN_OBJ,
        system->context->spriteSystem,
        system->pokemonSpriteManager,
        system->arcs[BATTLE_ANIM_SYSTEM_ARC_BATT_OBJ],
        75,
        FALSE,
        1,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        resourceIDs[SPRITE_RESOURCE_PLTT]);

    SpriteSystem_LoadCellResObjFromOpenNarc(
        system->context->spriteSystem,
        system->pokemonSpriteManager,
        system->arcs[BATTLE_ANIM_SYSTEM_ARC_BATT_OBJ],
        77,
        FALSE,
        resourceIDs[SPRITE_RESOURCE_CELL]);

    SpriteSystem_LoadAnimResObjFromOpenNarc(
        system->context->spriteSystem,
        system->pokemonSpriteManager,
        system->arcs[BATTLE_ANIM_SYSTEM_ARC_BATT_OBJ],
        78,
        FALSE,
        resourceIDs[SPRITE_RESOURCE_ANIM]);
}

static void BattleAnimScriptCmd_AddPokemonSprite(BattleAnimSystem *system)
{
    u8 *charData = NULL;
    ManagedSprite *sprite = NULL;

    BattleAnimScript_Next(system);

    int battlerRole = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    int trackBattler = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    int spriteID = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    int resID = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    int resourceIDs[SPRITE_RESOURCE_MAX];
    resourceIDs[SPRITE_RESOURCE_CHAR] = 20001 + resID + (system->context->attacker * 5000);
    resourceIDs[SPRITE_RESOURCE_PLTT] = 20001 + resID + (system->context->attacker * 5000);
    resourceIDs[SPRITE_RESOURCE_CELL] = 20001 + resID + (system->context->attacker * 5000);
    resourceIDs[SPRITE_RESOURCE_ANIM] = 20001 + resID + (system->context->attacker * 5000);
    resourceIDs[SPRITE_RESOURCE_MULTI_CELL] = 0;
    resourceIDs[SPRITE_RESOURCE_MULTI_ANIM] = 0;

    int battler = BattleAnimSystem_GetBattlerWithRole(system, battlerRole);
    enum NarcID narcID = system->context->pokemonSpriteData[battler]->narcID;
    int paletteIndex = system->context->pokemonSpriteData[battler]->palette;
    charData = system->context->pokemonSpriteData[battler]->tiles;
    int battlerForm = system->context->battlerForms[battler];

    PokemonSprite *battlerSprite = BattleAnimSystem_GetBattlerSprite(system, battler);
    s16 battlerX;
    s16 battlerY;

    if (battlerSprite != NULL) {
        battlerX = PokemonSprite_GetAttribute(battlerSprite, MON_SPRITE_X_CENTER);
        battlerY = PokemonSprite_GetAttribute(battlerSprite, MON_SPRITE_Y_CENTER);
        battlerY -= PokemonSprite_GetAttribute(battlerSprite, MON_SPRITE_SHADOW_HEIGHT);
    }

    SpriteTemplate template;
    template.x = battlerX;
    template.y = battlerY;
    template.z = 0;
    template.animIdx = 0;
    template.priority = 100;
    template.plttIdx = 0;
    template.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    template.bgPriority = 1;
    template.vramTransfer = FALSE;

    for (int i = 0; i < SPRITE_RESOURCE_MAX; i++) {
        template.resources[i] = resourceIDs[i];
    }

    sprite = SpriteSystem_NewSprite(system->context->spriteSystem, system->pokemonSpriteManager, &template);

    if (battlerSprite == NULL) {
        ManagedSprite_SetDrawFlag(sprite, FALSE);
    } else {
        int hidden = PokemonSprite_GetAttribute(battlerSprite, MON_SPRITE_HIDE);
        if (hidden == TRUE) {
            ManagedSprite_SetDrawFlag(sprite, FALSE);
        }
    }

    if (BattleAnimSystem_IsContest(system) == TRUE && IsFormSymmetrical(BattleAnimSystem_GetBattlerSpecies(system, battler), battlerForm) == TRUE) {
        ManagedSprite_SetFlipMode(sprite, TRUE);
    }

    if (BattleAnimSystem_GetBattlerSprite(system, battler) != NULL) {
        NNSG2dImageProxy *proxy = Sprite_GetImageProxy(sprite->sprite);
        VramTransfer_Request(
            NNS_GFD_DST_2D_OBJ_CHAR_MAIN,
            proxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN],
            charData,
            10 * 10 * ((8 / 2) * 8));
    }

    if (BattleAnimSystem_GetBattlerSprite(system, battler) != NULL) {
        NNSG2dImagePaletteProxy *proxy = Sprite_GetPaletteProxy(sprite->sprite);
        int offset = PlttTransfer_GetPlttOffset(proxy, NNS_G2D_VRAM_TYPE_2DMAIN);

        PaletteData_LoadBufferFromFileStart(
            system->paletteData,
            narcID,
            paletteIndex,
            system->heapID,
            PLTTBUF_MAIN_OBJ,
            PALETTE_SIZE_BYTES,
            PLTT_DEST(offset));
    }

    GF_ASSERT(system->pokemonSprites[spriteID] == NULL);

    system->pokemonSprites[spriteID] = sprite;
    system->usedPokemonSprites[spriteID] = TRUE;

    if (trackBattler == TRUE) {
        if (BattleAnimSystem_GetBattlerSprite(system, battler) == NULL) {
            return;
        }

        system->spriteTrackingTasks[spriteID] = Heap_Alloc(system->heapID, sizeof(SpriteTrackingTask));
        system->spriteTrackingTasks[spriteID]->sprite = sprite;
        system->spriteTrackingTasks[spriteID]->data.sprite = BattleAnimSystem_GetBattlerSprite(system, battler);
        system->spriteTrackingTasks[spriteID]->data.frameCount = 0;
        system->spriteTrackingTasks[spriteID]->data.interval = 0;
        system->spriteTrackingTasks[spriteID]->task = SysTask_Start(BattleAnimSystem_SpriteTrackingTaskFunc, system->spriteTrackingTasks[spriteID], 0x1001);
    }
}

static void BattleAnimScriptCmd_FreePokemonSpriteManager(BattleAnimSystem *system)
{
    BattleAnimScript_Next(system);

    if (system->pokemonSpriteManager != NULL) {
        SpriteSystem_FreeResourcesAndManager(system->context->spriteSystem, system->pokemonSpriteManager);
    }

    system->pokemonSpriteManager = NULL;
}

static void BattleAnimScriptCmd_RemovePokemonSprite(BattleAnimSystem *system)
{
    BattleAnimScript_Next(system);

    int spriteID = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    if (system->pokemonSprites[spriteID] != NULL) {
        Sprite_DeleteAndFreeResources(system->pokemonSprites[spriteID]);
    }

    system->usedPokemonSprites[spriteID] = FALSE;
    system->pokemonSprites[spriteID] = NULL;
}

static void BattleAnimPokemonSprite_DrawTask(SysTask *task, void *param)
{
    PokemonSpriteDrawContext *ctx = param;

    if (ctx->active == FALSE) {
        SysTask_Done(task);
        return;
    }

    if (ctx->battleAnimSys->pokemonSpriteManager != NULL) {
        SpriteSystem_DrawSprites(ctx->spriteManager);
    }
}

static void BattleAnimScriptCmd_StartPokemonSpriteDrawTask(BattleAnimSystem *system)
{
    BattleAnimScript_Next(system);

    int role = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    int slotIdx = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    int spriteID = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    system->pokemonSpriteDrawContexts[slotIdx].battleAnimSys = system;
    system->pokemonSpriteDrawContexts[slotIdx].spriteManager = system->pokemonSpriteManager;
    system->pokemonSpriteDrawContexts[slotIdx].sprite = system->pokemonSprites[spriteID];
    system->pokemonSpriteDrawContexts[slotIdx].active = TRUE;

    ManagedSprite_SetDrawFlag(system->pokemonSpriteDrawContexts[slotIdx].sprite, FALSE);

    if (BattleAnimSystem_IsDoubleBattle(system) == TRUE) {
        int attackerType, defenderType;

        attackerType = BattleAnimUtil_GetBattlerType(system, BattleAnimSystem_GetAttacker(system));
        defenderType = BattleAnimUtil_GetBattlerType(system, BattleAnimSystem_GetDefender(system));

        {
            BOOL isHidden;

            int battler = BattleAnimSystem_GetBattlerWithRole(system, role);
            PokemonSprite *battlerSprite = BattleAnimSystem_GetBattlerSprite(system, battler);

            if (battlerSprite != NULL) {
                isHidden = PokemonSprite_GetAttribute(battlerSprite, MON_SPRITE_HIDE);
            } else {
                isHidden = FALSE;
            }

            if (isHidden == TRUE) {
                ManagedSprite_SetDrawFlag(system->pokemonSpriteDrawContexts[slotIdx].sprite, FALSE);
            } else {
                ManagedSprite_SetDrawFlag(system->pokemonSpriteDrawContexts[slotIdx].sprite, TRUE);
            }
        }

        switch (role) {
        case BATTLER_ROLE_ATTACKER:
            if ((attackerType == 3) || (attackerType == 4)) {
                ManagedSprite_SetPriority(system->pokemonSpriteDrawContexts[slotIdx].sprite, 1);
            } else {
                ManagedSprite_SetDrawFlag(system->pokemonSpriteDrawContexts[slotIdx].sprite, FALSE);
                ManagedSprite_SetPriority(system->pokemonSpriteDrawContexts[slotIdx].sprite, 255);
            }
            break;
        case BATTLER_ROLE_ATTACKER_PARTNER:
            if ((attackerType == 5) || (attackerType == 2)) {
                ManagedSprite_SetPriority(system->pokemonSpriteDrawContexts[slotIdx].sprite, 1);
            } else {
                ManagedSprite_SetDrawFlag(system->pokemonSpriteDrawContexts[slotIdx].sprite, FALSE);
                ManagedSprite_SetPriority(system->pokemonSpriteDrawContexts[slotIdx].sprite, 255);
            }
            break;
        case BATTLER_ROLE_DEFENDER:
            switch (defenderType) {
            case 2:
                ManagedSprite_SetPriority(system->pokemonSpriteDrawContexts[slotIdx].sprite, 255);
                break;
            case 3:
                ManagedSprite_SetPriority(system->pokemonSpriteDrawContexts[slotIdx].sprite, 1);
                break;
            case 4:
                ManagedSprite_SetPriority(system->pokemonSpriteDrawContexts[slotIdx].sprite, 1);
                break;
            case 5:
                ManagedSprite_SetPriority(system->pokemonSpriteDrawContexts[slotIdx].sprite, 255);
                break;
            }
            break;
        case BATTLER_ROLE_DEFENDER_PARTNER:
            switch (defenderType) {
            case 2:
                ManagedSprite_SetPriority(system->pokemonSpriteDrawContexts[slotIdx].sprite, 1);
                break;
            case 3:
                ManagedSprite_SetPriority(system->pokemonSpriteDrawContexts[slotIdx].sprite, 255);
                break;
            case 4:
                ManagedSprite_SetPriority(system->pokemonSpriteDrawContexts[slotIdx].sprite, 255);
                break;
            case 5:
                ManagedSprite_SetPriority(system->pokemonSpriteDrawContexts[slotIdx].sprite, 1);
                break;
            }
            break;
        }

        SysTask_Start(BattleAnimPokemonSprite_DrawTask, &system->pokemonSpriteDrawContexts[slotIdx], 0x1000);
    }
}

static void BattleAnimScriptCmd_StopPokemonSpriteDrawTask(BattleAnimSystem *system)
{
    BattleAnimScript_Next(system);

    int slotIdx = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);
    system->pokemonSpriteDrawContexts[slotIdx].active = 0;
}

static void BattleAnimScriptCmd_CancelTrackingTask(BattleAnimSystem *system)
{
    BattleAnimScript_Next(system);
    int taskID = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    BattleAnimSystem_CancelTrackingTask(system, taskID);
}

static void BattleAnimScriptCmd_SetCameraProjection(BattleAnimSystem *system)
{
    BattleAnimScript_Next(system);

    int psIndex = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    int projection = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    system->cameraProjections[psIndex] = projection;
}

void BattleAnimScriptCmd_SetCameraFlip(BattleAnimSystem *system)
{
    BattleAnimScript_Next(system);

    int psIndex = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    int flip = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);
    system->particleSystemCameraFlip[psIndex] = flip;
}

static void BattleAnimScriptCmd_Nop7(BattleAnimSystem *)
{
    return;
}

static void BattleAnimScriptCmd_Nop8(BattleAnimSystem *)
{
    return;
}

static BOOL (*const sBattleBgSwitchFuncs[])(SysTask *, BattleBgSwitch *) = {
    BattleBgSwitch_Blend,
    BattleBgSwitch_Fade,
    BattleBgSwitch_FlagsOnly,
    BattleBgRestore_Blend,
    BattleBgRestore_Fade,
    BattleBgRestore_FlagsOnly
};

static BOOL (*const sBattleBgAnimFuncs[])(BattleBgSwitch *) = {
    BattleBgSwitch_AnimNone,
    BattleBgSwitch_AnimMoveStart,
    BattleBgSwitch_AnimStop,
    BattleBgSwitch_AnimCancel,
    BattleBgSwitch_AnimNone,
    BattleBgSwitch_AnimStartWave,
    BattleBgSwitch_AnimRegisterWave
};

static BOOL BattleBgSwitch_ShouldBeReversed(BattleBgSwitch *bgSwitch, BattleAnimSystem *system, int var)
{
    enum Battler attackerSide = BattleAnimUtil_GetBattlerSide(system, system->context->attacker);
    enum Battler defenderSide = BattleAnimUtil_GetBattlerSide(system, system->context->defender);

    if (bgSwitch->scriptVars[var] == BATTLE_BG_ANIM_REVERSE_DEFAULT) {
        if (attackerSide == defenderSide) {
            if (defenderSide == BTLSCR_PLAYER) {
                return FALSE;
            } else {
                return TRUE;
            }
        } else if (defenderSide == BTLSCR_PLAYER) {
            return TRUE;
        }
    } else if (bgSwitch->scriptVars[var] != BATTLE_BG_ANIM_REVERSE_NEVER) {
        if (defenderSide == BTLSCR_PLAYER) {
            return TRUE;
        }
    }

    return FALSE;
}

static void BattleBgSwitch_SetBg(BattleBgSwitch *bgSwitch, BattleAnimSystem *system, enum BgLayer bgLayer, int bgID)
{
    Graphics_LoadTilesToBgLayer(
        NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG,
        BattleAnimSystem_GetBgNarcMemberIndex(bgID, BG_NARC_MEMBER_NCGR),
        system->bgConfig,
        bgLayer,
        0,
        0,
        TRUE,
        system->heapID);

    PaletteData_LoadBufferFromFileStart(
        system->paletteData,
        NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG,
        BattleAnimSystem_GetBgNarcMemberIndex(bgID, BG_NARC_MEMBER_NCLR),
        system->heapID,
        0,
        PALETTE_SIZE_BYTES,
        PLTT_DEST(BATTLE_BG_PALETTE_EFFECT));

    Bg_ClearTilemap(system->bgConfig, bgLayer);

    enum BgNarcMemberType memberType = BG_NARC_MEMBER_NSCR1;
    if (BattleAnimSystem_IsContest(system) == TRUE) {
        memberType = BG_NARC_MEMBER_NSCR3;
    } else if (BattleBgSwitch_ShouldBeReversed(bgSwitch, system, BATTLE_ANIM_VAR_BG_SCREEN_MODE) == TRUE) {
        memberType = BG_NARC_MEMBER_NSCR2;
    }

    Graphics_LoadTilemapToBgLayer(
        NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG,
        BattleAnimSystem_GetBgNarcMemberIndex(bgID, memberType),
        system->bgConfig,
        bgLayer,
        0,
        0,
        TRUE,
        system->heapID);
}

static BOOL BattleBgSwitch_IsFlagSet(int flags, int flag)
{
    return ((flags << BATTLE_BG_SWITCH_FLAGS_SHIFT) & flag) == flag;
}

static void BattleBgSwitch_ApplyFlags(BattleBgSwitch *bgSwitch)
{
    const u32 flags[] = {
        BATTLE_BG_SWITCH_FLAG_MOVE,
        BATTLE_BG_SWITCH_FLAG_STOP,
        BATTLE_BG_SWITCH_FLAG_UNK_20,
        BATTLE_BG_SWITCH_FLAG_UNK_40
    };

    for (int i = 0; i < NELEMS(flags); i++) {
        if (!BattleBgSwitch_IsFlagSet(bgSwitch->flags, flags[i])) {
            continue;
        }

        int id = 0;
        int flag = flags[i] >> BATTLE_BG_SWITCH_FLAGS_SHIFT;

        while (flag >= 2) {
            flag /= 2;
            id++;
        }

        sBattleBgAnimFuncs[id](bgSwitch);
    }
}

static BattleBgSwitch *BattleAnimSystem_CreateBgSwitch(BattleAnimSystem *system)
{
    BattleBgSwitch *bgSwitch = Heap_Alloc(system->heapID, sizeof(BattleBgSwitch));
    if (bgSwitch == NULL) {
        GF_ASSERT(FALSE);
        return NULL;
    }

    memset(bgSwitch, 0, sizeof(BattleBgSwitch));

    bgSwitch->unread_00 = 0;
    bgSwitch->state = 0;
    bgSwitch->battleAnimSystem = system;

    // A: 0% -> 100%
    // B: 100% -> 0%
    bgSwitch->blendCoeffA = 0;
    bgSwitch->blendCoeffB = 31;
    bgSwitch->targetBlendCoeffA = 31 - 2;
    bgSwitch->targetBlendCoeffB = 0 + 2;

    if (BattleAnimSystem_GetScriptVar(system, BATTLE_ANIM_VAR_BG_BLEND_TYPE) == BATTLE_BG_BLEND_PARTIAL) {
        // A: 0% -> 100%
        // B: 100% -> 50%
        bgSwitch->blendCoeffA = 0;
        bgSwitch->blendCoeffB = 31;
        bgSwitch->targetBlendCoeffA = 15;
        bgSwitch->targetBlendCoeffB = 7;
    }

    if (BattleAnimSystem_GetScriptVar(system, BATTLE_ANIM_VAR_BG_BLEND_TYPE) == BATTLE_BG_BLEND_INVERSE_PARTIAL) {
        // A: 50% -> 100%
        // B: 100% -> 0%
        bgSwitch->blendCoeffA = 7;
        bgSwitch->blendCoeffB = 15;
        bgSwitch->targetBlendCoeffA = 31 - 2;
        bgSwitch->targetBlendCoeffB = 0 + 2;
    }

    for (int i = 0; i < BATTLE_ANIM_SCRIPT_VAR_COUNT; i++) {
        bgSwitch->scriptVars[i] = system->scriptVars[i];
    }

    system->bgSwitchState = BATTLE_BG_SWITCH_STATE_RUNNING;

    return bgSwitch;
}

static BOOL BattleBgSwitch_Blend(SysTask *task, BattleBgSwitch *bgSwitch)
{
    switch (bgSwitch->state) {
    case 0:
        // Load normal battle/contest BG BG_BASE
        BattleAnimSystem_LoadBaseBg(bgSwitch->battleAnimSystem, BATTLE_BG_BASE);

        int effectPrio = BattleAnimSystem_GetBgPriority(bgSwitch->battleAnimSystem, BATTLE_ANIM_BG_EFFECT);
        int basePrio = BattleAnimSystem_GetBgPriority(bgSwitch->battleAnimSystem, BATTLE_ANIM_BG_BASE);

        // BUG: Second call should pass basePrio instead of effectPrio
        Bg_SetPriority(BATTLE_BG_EFFECT, effectPrio);
        Bg_SetPriority(BATTLE_BG_BASE, effectPrio);
        Bg_ToggleLayer(BATTLE_BG_BASE, TRUE);

        bgSwitch->state++;
        break;

    case 1:
        Bg_SetControlParam(bgSwitch->battleAnimSystem->bgConfig, BATTLE_BG_EFFECT, BG_CONTROL_PARAM_CHAR_BASE, GX_BG_CHARBASE_0x0c000);

        if (BattleAnimSystem_IsContest(bgSwitch->battleAnimSystem) != TRUE) {
            Bg_SetControlParam(bgSwitch->battleAnimSystem->bgConfig, BATTLE_BG_EFFECT, BG_CONTROL_PARAM_COLOR_MODE, GX_BG_COLORMODE_16);
        }

        // Load new BG into effect BG
        BattleBgSwitch_SetBg(bgSwitch, bgSwitch->battleAnimSystem, BATTLE_BG_EFFECT, bgSwitch->bgID);

        // Set BG blending
        // blendCoeffB will, in all cases, have the higher value, thus BG2 (normal battle/contest BG) will be more visible
        G2_SetBlendAlpha(BATTLE_BG_BLENDMASK_BASE, BATTLE_BG_BLENDMASK_EFFECT, bgSwitch->blendCoeffB, bgSwitch->blendCoeffA);
        BattleBgSwitch_ApplyFlags(bgSwitch);

        bgSwitch->state++;

        // fallthrough
    case 2: {
        // Do blending
        int blendCoeffsDone = 0;

        if (bgSwitch->blendCoeffA < bgSwitch->targetBlendCoeffA) {
            bgSwitch->blendCoeffA += 2;
        } else {
            blendCoeffsDone++;
        }

        if (bgSwitch->blendCoeffB > bgSwitch->targetBlendCoeffB) {
            bgSwitch->blendCoeffB -= 2;
        } else {
            blendCoeffsDone++;
        }

        if (blendCoeffsDone == 2) {
            bgSwitch->blendCoeffA = bgSwitch->targetBlendCoeffA;
            bgSwitch->blendCoeffB = bgSwitch->targetBlendCoeffB;
            bgSwitch->state++;
        }

        G2_ChangeBlendAlpha(bgSwitch->blendCoeffB, bgSwitch->blendCoeffA);

        if (bgSwitch->state != 2) {
            return FALSE;
        }
    } break;

    default:
        return FALSE;
    }

    return TRUE;
}

static BOOL BattleBgRestore_Blend(SysTask *task, BattleBgSwitch *bgSwitch)
{
    switch (bgSwitch->state) {
    case 0:
        // When this is called, BG2 would be at either 0% or 50% blending factor depending
        // on which blend type was used to initially switch the BG
        Bg_ToggleLayer(BATTLE_BG_BASE, TRUE);
        bgSwitch->state++;

        // fallthrough
    case 1: {
        int effectPrio = BattleAnimSystem_GetBgPriority(bgSwitch->battleAnimSystem, BATTLE_ANIM_BG_EFFECT);
        int basePrio = BattleAnimSystem_GetBgPriority(bgSwitch->battleAnimSystem, BATTLE_ANIM_BG_BASE);

        // BUG: Second call should pass basePrio instead of effectPrio
        Bg_SetPriority(BATTLE_BG_EFFECT, effectPrio);
        Bg_SetPriority(BATTLE_BG_BASE, effectPrio);

        G2_SetBlendAlpha(BATTLE_BG_BLENDMASK_BASE, BATTLE_BG_BLENDMASK_EFFECT, bgSwitch->blendCoeffA, bgSwitch->blendCoeffB);
        BattleBgSwitch_ApplyFlags(bgSwitch);

        bgSwitch->state++;
    }

        // fallthrough
    case 2: {
        // Do blending
        int blendCoeffsDone = 0;

        if (bgSwitch->blendCoeffA < bgSwitch->targetBlendCoeffA) {
            bgSwitch->blendCoeffA += 2;
        } else {
            blendCoeffsDone++;
        }

        if (bgSwitch->blendCoeffB > bgSwitch->targetBlendCoeffB) {
            bgSwitch->blendCoeffB -= 2;
        } else {
            blendCoeffsDone++;
        }

        if (blendCoeffsDone == 2) {
            bgSwitch->blendCoeffA = bgSwitch->targetBlendCoeffA + 2;
            bgSwitch->blendCoeffB = bgSwitch->targetBlendCoeffB - 2;
            bgSwitch->state++;
        }

        G2_ChangeBlendAlpha(bgSwitch->blendCoeffA, bgSwitch->blendCoeffB);
    } break;

    case 3:
        if (bgSwitch->bgMoveAnimActive == TRUE) {
            BattleAnimSystem_CancelBgAnim(bgSwitch->battleAnimSystem);
        }

        if (bgSwitch->bgWaveAnimActive == TRUE) {
            BattleAnimSystem_CancelBgAnim(bgSwitch->battleAnimSystem);
        }

        // Restore Effect BG and load regular battle/contest BG into it
        Bg_SetOffset(bgSwitch->battleAnimSystem->bgConfig, BATTLE_BG_EFFECT, BG_OFFSET_UPDATE_SET_X, 0);
        Bg_SetOffset(bgSwitch->battleAnimSystem->bgConfig, BATTLE_BG_EFFECT, BG_OFFSET_UPDATE_SET_Y, 0);
        Bg_SetControlParam(bgSwitch->battleAnimSystem->bgConfig, BATTLE_BG_EFFECT, BG_CONTROL_PARAM_CHAR_BASE, GX_BG_CHARBASE_0x10000);

        if (!BattleAnimSystem_IsContest(bgSwitch->battleAnimSystem)) {
            Bg_SetControlParam(bgSwitch->battleAnimSystem->bgConfig, BATTLE_BG_EFFECT, BG_CONTROL_PARAM_COLOR_MODE, GX_BG_COLORMODE_256);
            BattleAnimSystem_LoadBattleBgTiles(bgSwitch->battleAnimSystem, BATTLE_BG_EFFECT);
            BattleAnimSystem_LoadBattleBgPaletteBuffer(bgSwitch->battleAnimSystem);
        } else {
            Graphics_LoadTilesToBgLayer(bgSwitch->battleAnimSystem->battleBgRefs.narcID, bgSwitch->battleAnimSystem->battleBgRefs.tilesNarcMemberIdx, bgSwitch->battleAnimSystem->bgConfig, BATTLE_BG_EFFECT, 0, 0, TRUE, bgSwitch->battleAnimSystem->heapID);
            PaletteData_LoadBufferFromFileStart(bgSwitch->battleAnimSystem->paletteData, bgSwitch->battleAnimSystem->battleBgRefs.narcID, bgSwitch->battleAnimSystem->battleBgRefs.paletteNarcMemberIdx, bgSwitch->battleAnimSystem->heapID, 0, bgSwitch->battleAnimSystem->battleBgRefs.paletteSrcSize * 0x20, bgSwitch->battleAnimSystem->battleBgRefs.paletteDestStart);
        }

        Graphics_LoadTilemapToBgLayer(bgSwitch->battleAnimSystem->battleBgRefs.narcID, bgSwitch->battleAnimSystem->battleBgRefs.tilemapNarcMemberIdx, bgSwitch->battleAnimSystem->bgConfig, BATTLE_BG_EFFECT, 0, 0, TRUE, bgSwitch->battleAnimSystem->heapID);
        bgSwitch->state++;
        break;

    case 4:
        // Restore blending and base BG
        if (!BattleAnimSystem_IsContest(bgSwitch->battleAnimSystem)) {
            Battle_SetDefaultBlend();
        } else {
            ov17_022413D8();
        }

        BattleAnimSystem_UnloadBaseBg(bgSwitch->battleAnimSystem, BATTLE_BG_BASE);
        bgSwitch->state++;
        break;

    default:
        return FALSE;
    }

    return TRUE;
}

static BOOL BattleBgSwitch_Fade(SysTask *task, BattleBgSwitch *bgSwitch)
{
    switch (bgSwitch->state) {
    case 0:
        // Fade normal battle/contest palettes to black/white and
        // set effect BG palette to black/white immediately
        if (bgSwitch->fadeType == BATTLE_BG_FADE_TO_BLACK) {
            PaletteData_StartFade(bgSwitch->battleAnimSystem->paletteData, PLTTBUF_MAIN_BG_F, bgSwitch->battleAnimSystem->baseBgPalettes, 0, 0, 16, GX_RGBA(0, 0, 0, 0));
            PaletteData_BlendMulti(bgSwitch->battleAnimSystem->paletteData, PLTTBUF_MAIN_BG, BATTLE_BG_PALETTE_FLAG_EFFECT, 16, GX_RGBA(0, 0, 0, 0));
        } else {
            PaletteData_StartFade(bgSwitch->battleAnimSystem->paletteData, PLTTBUF_MAIN_BG_F, bgSwitch->battleAnimSystem->baseBgPalettes, 0, 0, 16, GX_RGBA(31, 31, 31, 1));
            PaletteData_BlendMulti(bgSwitch->battleAnimSystem->paletteData, PLTTBUF_MAIN_BG, BATTLE_BG_PALETTE_FLAG_EFFECT, 16, GX_RGBA(31, 31, 31, 1));
        }

        bgSwitch->state++;

        // fallthrough
    case 1:
        // Wait for palette fade
        if (PaletteData_GetSelectedBuffersMask(bgSwitch->battleAnimSystem->paletteData) != 0) {
            break;
        }

        // Load new BG data into effect BG
        Bg_SetControlParam(bgSwitch->battleAnimSystem->bgConfig, BATTLE_BG_EFFECT, BG_CONTROL_PARAM_COLOR_MODE, GX_BG_COLORMODE_16);
        BattleBgSwitch_SetBg(bgSwitch, bgSwitch->battleAnimSystem, BATTLE_BG_EFFECT, bgSwitch->bgID);

        // Fade effect BG palette back to normal
        if (bgSwitch->fadeType == BATTLE_BG_FADE_TO_BLACK) {
            PaletteData_StartFade(bgSwitch->battleAnimSystem->paletteData, PLTTBUF_MAIN_BG_F, BATTLE_BG_PALETTE_FLAG_EFFECT, 0, 16, 0, GX_RGBA(0, 0, 0, 0));
        } else {
            PaletteData_StartFade(bgSwitch->battleAnimSystem->paletteData, PLTTBUF_MAIN_BG_F, BATTLE_BG_PALETTE_FLAG_EFFECT, 0, 16, 0, GX_RGBA(31, 31, 31, 1));
        }

        BattleBgSwitch_ApplyFlags(bgSwitch);

        bgSwitch->battleAnimSystem->bgSwitchState = BATTLE_BG_SWITCH_STATE_PARTIAL;
        bgSwitch->state++;
        break;

    default:
        // Wait for effect palette fade
        if (PaletteData_GetSelectedBuffersMask(bgSwitch->battleAnimSystem->paletteData) != 0) {
            break;
        }

        return FALSE;
    }

    return TRUE;
}

static BOOL BattleBgRestore_Fade(SysTask *task, BattleBgSwitch *bgSwitch)
{
    switch (bgSwitch->state) {
    case 0:
        BattleBgSwitch_ApplyFlags(bgSwitch);
        bgSwitch->state++;

        // fallthrough
    case 1:
        // Fade effect BG palette to black/white and
        // set normal battle/contest BG palettes to black/white
        if (bgSwitch->fadeType == BATTLE_BG_FADE_TO_BLACK) {
            PaletteData_StartFade(bgSwitch->battleAnimSystem->paletteData, PLTTBUF_MAIN_BG_F, BATTLE_BG_PALETTE_FLAG_EFFECT, 0, 0, 16, GX_RGBA(0, 0, 0, 0));
            PaletteData_BlendMulti(bgSwitch->battleAnimSystem->paletteData, PLTTBUF_MAIN_BG, bgSwitch->battleAnimSystem->baseBgPalettes, 16, GX_RGBA(0, 0, 0, 0));
        } else {
            PaletteData_StartFade(bgSwitch->battleAnimSystem->paletteData, PLTTBUF_MAIN_BG_F, BATTLE_BG_PALETTE_FLAG_EFFECT, 0, 0, 16, GX_RGBA(31, 31, 31, 1));
            PaletteData_BlendMulti(bgSwitch->battleAnimSystem->paletteData, PLTTBUF_MAIN_BG, bgSwitch->battleAnimSystem->baseBgPalettes, 16, GX_RGBA(31, 31, 31, 1));
        }

        bgSwitch->state++;

        // fallthrough
    case 2:
        // Wait for palette fade
        if (PaletteData_GetSelectedBuffersMask(bgSwitch->battleAnimSystem->paletteData) != 0) {
            break;
        }

        if (bgSwitch->bgMoveAnimActive == TRUE) {
            BattleAnimSystem_CancelBgAnim(bgSwitch->battleAnimSystem);
        }

        if (bgSwitch->bgWaveAnimActive == TRUE) {
            BattleAnimSystem_CancelBgAnim(bgSwitch->battleAnimSystem);
        }

        // Hide effect BG once palette is faded out
        Bg_ToggleLayer(BATTLE_BG_EFFECT, FALSE);

        if (!BattleAnimSystem_IsContest(bgSwitch->battleAnimSystem)) {
            Bg_SetControlParam(bgSwitch->battleAnimSystem->bgConfig, BATTLE_BG_EFFECT, 0, GX_BG_COLORMODE_256);
            BattleAnimSystem_LoadBattleBgTiles(bgSwitch->battleAnimSystem, BATTLE_BG_EFFECT);
            BattleAnimSystem_LoadBattleBgPaletteBuffer(bgSwitch->battleAnimSystem);
        } else {
            Graphics_LoadTilesToBgLayer(bgSwitch->battleAnimSystem->battleBgRefs.narcID, bgSwitch->battleAnimSystem->battleBgRefs.tilesNarcMemberIdx, bgSwitch->battleAnimSystem->bgConfig, BG_LAYER_MAIN_3, 0, 0, TRUE, bgSwitch->battleAnimSystem->heapID);
            PaletteData_LoadBufferFromFileStart(bgSwitch->battleAnimSystem->paletteData, bgSwitch->battleAnimSystem->battleBgRefs.narcID, bgSwitch->battleAnimSystem->battleBgRefs.paletteNarcMemberIdx, bgSwitch->battleAnimSystem->heapID, 0, bgSwitch->battleAnimSystem->battleBgRefs.paletteSrcSize * 0x20, bgSwitch->battleAnimSystem->battleBgRefs.paletteDestStart);
        }

        Graphics_LoadTilemapToBgLayer(bgSwitch->battleAnimSystem->battleBgRefs.narcID, bgSwitch->battleAnimSystem->battleBgRefs.tilemapNarcMemberIdx, bgSwitch->battleAnimSystem->bgConfig, BG_LAYER_MAIN_3, 0, 0, TRUE, bgSwitch->battleAnimSystem->heapID);
        Bg_ToggleLayer(BATTLE_BG_EFFECT, TRUE);

        bgSwitch->state++;

        // fallthrough
    case 3:
        Bg_SetOffset(bgSwitch->battleAnimSystem->bgConfig, BATTLE_BG_EFFECT, BG_OFFSET_UPDATE_SET_X, 0);
        Bg_SetOffset(bgSwitch->battleAnimSystem->bgConfig, BATTLE_BG_EFFECT, BG_OFFSET_UPDATE_SET_Y, 0);

        if (bgSwitch->fadeType == BATTLE_BG_FADE_TO_BLACK) {
            PaletteData_StartFade(bgSwitch->battleAnimSystem->paletteData, PLTTBUF_MAIN_BG_F, bgSwitch->battleAnimSystem->baseBgPalettes, 0, 16, 0, GX_RGBA(0, 0, 0, 0));
        } else {
            PaletteData_StartFade(bgSwitch->battleAnimSystem->paletteData, PLTTBUF_MAIN_BG_F, bgSwitch->battleAnimSystem->baseBgPalettes, 0, 16, 0, GX_RGBA(31, 31, 31, 1));
        }

        bgSwitch->state++;

        // fallthrough
    default:
        // Wait for palette fade
        if (PaletteData_GetSelectedBuffersMask(bgSwitch->battleAnimSystem->paletteData) != 0) {
            break;
        }

        bgSwitch->battleAnimSystem->bgSwitchState = BATTLE_BG_SWITCH_STATE_PARTIAL;
        bgSwitch->state++;

        return FALSE;
    }

    return TRUE;
}

static BOOL BattleBgSwitch_FlagsOnly(SysTask *task, BattleBgSwitch *bgSwitch)
{
    BattleBgSwitch_ApplyFlags(bgSwitch);
    return FALSE;
}

static BOOL BattleBgRestore_FlagsOnly(SysTask *task, BattleBgSwitch *bgSwitch)
{
    BattleBgSwitch_ApplyFlags(bgSwitch);

    if (bgSwitch->bgMoveAnimActive == TRUE) {
        BattleAnimSystem_CancelBgAnim(bgSwitch->battleAnimSystem);
    }

    return FALSE;
}

static void BattleBgAnimTask_Move(SysTask *task, void *param)
{
    BattleBgAnim *bgAnim = param;

    if (bgAnim->cancel == TRUE) {
        Heap_Free(bgAnim);
        SysTask_Done(task);
        return;
    }

    bgAnim->offsetX += bgAnim->stepX;
    bgAnim->offsetY += bgAnim->stepY;

    if (bgAnim->stepX != 0) {
        Bg_SetOffset(bgAnim->bgConfig, bgAnim->bg, BG_OFFSET_UPDATE_SET_X, bgAnim->offsetX);
    }

    if (bgAnim->stepY != 0) {
        Bg_SetOffset(bgAnim->bgConfig, bgAnim->bg, BG_OFFSET_UPDATE_SET_Y, bgAnim->offsetY);
    }
}

void BattleAnimSystem_CancelBgAnim(BattleAnimSystem *system)
{
    GF_ASSERT(system);

    if (system->bgAnim == NULL) {
        return;
    }

    system->bgAnim->cancel = TRUE;
}

int BattleAnimSystem_GetBaseBgPalettes(BattleAnimSystem *system)
{
    return system->baseBgPalettes;
}

static BOOL BattleBgSwitch_AnimNone(BattleBgSwitch *bgSwitch)
{
    return FALSE;
}

static BOOL BattleBgSwitch_AnimMoveStart(BattleBgSwitch *bgSwitch)
{
    BattleBgAnim *bgAnim = Heap_Alloc(bgSwitch->battleAnimSystem->heapID, sizeof(BattleBgAnim));

    bgAnim->bgConfig = bgSwitch->battleAnimSystem->bgConfig;
    bgAnim->offsetX = bgSwitch->battleAnimSystem->scriptVars[BATTLE_ANIM_VAR_BG_MOVE_START_X];
    bgAnim->offsetY = bgSwitch->battleAnimSystem->scriptVars[BATTLE_ANIM_VAR_BG_MOVE_START_Y];
    bgAnim->stepX = bgSwitch->battleAnimSystem->scriptVars[BATTLE_ANIM_VAR_BG_MOVE_STEP_X];
    bgAnim->stepY = bgSwitch->battleAnimSystem->scriptVars[BATTLE_ANIM_VAR_BG_MOVE_STEP_Y];
    bgAnim->bg = BATTLE_BG_EFFECT;
    bgAnim->unusedBg = BATTLE_BG_EFFECT;

    if (BattleBgSwitch_ShouldBeReversed(bgSwitch, bgSwitch->battleAnimSystem, BATTLE_ANIM_VAR_BG_ANIM_MODE) == TRUE) {
        bgAnim->stepX *= -1;
        bgAnim->stepY *= -1;
        bgAnim->offsetX *= -1;
        bgAnim->offsetY *= -1;
    }

    bgAnim->unused = TRUE;
    bgAnim->cancel = FALSE;

    bgSwitch->battleAnimSystem->bgAnim = bgAnim;
    bgSwitch->bgMoveAnimActive = TRUE;

    SysTask_Start(BattleBgAnimTask_Move, bgAnim, 0x1001);

    return FALSE;
}

static BOOL BattleBgSwitch_AnimStartWave(BattleBgSwitch *bgSwitch)
{
    BattleAnimSystem *system = bgSwitch->battleAnimSystem;
    BattleBgAnim *battleBgAnim = Heap_Alloc(bgSwitch->battleAnimSystem->heapID, sizeof(BattleBgAnim));

    battleBgAnim->waveAnimCtx = Heap_Alloc(system->heapID, sizeof(WaveAnimContext));
    system->bgAnim = battleBgAnim;

    bgSwitch->bgWaveAnimActive = TRUE;

    battleBgAnim->cancel = FALSE;
    battleBgAnim->waveAnimCtx->bgScrollCtx = CustomBgScrollContext_New(
        BattleAnimUtil_GetHOffsetRegisterForBg(BattleAnimSystem_GetBgID(system, BATTLE_ANIM_BG_EFFECT)),
        BattleAnimUtil_MakeBgOffsetValue(0, 0),
        system->heapID);

    for (int i = 0; i < ((192 - 64) / 8); i++) {
        battleBgAnim->waveAnimCtx->strips[i].startScanline = (i * 8);
        battleBgAnim->waveAnimCtx->strips[i].endScanline = (battleBgAnim->waveAnimCtx->strips[i].startScanline + 8);
        battleBgAnim->waveAnimCtx->strips[i].scrollSpeed = sBgWaveScrollSpeeds[i];
        battleBgAnim->waveAnimCtx->strips[i].scrollAccum = 0;
        battleBgAnim->waveAnimCtx->strips[i].baseOffset = BattleAnimUtil_MakeBgOffsetValue(0, 0);

        if (BattleBgSwitch_ShouldBeReversed(bgSwitch, bgSwitch->battleAnimSystem, BATTLE_ANIM_VAR_BG_ANIM_MODE) == TRUE) {
            battleBgAnim->waveAnimCtx->strips[i].scrollSpeed *= -1;
        }
    }

    SysTask_Start(BattleBgAnim_WaveTask, battleBgAnim, 0x1000);
    return 0;
}

static BOOL BattleBgSwitch_AnimRegisterWave(BattleBgSwitch *bgSwitch)
{
    bgSwitch->bgWaveAnimActive = TRUE;
    return FALSE;
}

static void BattleBgAnim_WaveTask(SysTask *task, void *param)
{
    int stripIdx, scanline;
    WaveAnimContext *waveCtx = ((BattleBgAnim *)param)->waveAnimCtx;
    BattleBgAnim *bgAnim = param;

    if (bgAnim->cancel == 1) {
        CustomBgScrollContext_Free(bgAnim->waveAnimCtx->bgScrollCtx);
        Heap_Free(bgAnim->waveAnimCtx);
        Heap_Free(bgAnim);
        SysTask_Done(task);
        return;
    }

    u32 *buffer = CustomBgScrollContext_GetWriteBuffer(waveCtx->bgScrollCtx);

    for (stripIdx = 0; stripIdx < ((192 - 64) / 8); stripIdx++) {
        waveCtx->strips[stripIdx].scrollAccum += waveCtx->strips[stripIdx].scrollSpeed;

        for (scanline = waveCtx->strips[stripIdx].startScanline; scanline < waveCtx->strips[stripIdx].endScanline; scanline++) {
            s16 baseX, baseY;

            baseX = waveCtx->strips[stripIdx].baseOffset & 0xffff;
            baseY = waveCtx->strips[stripIdx].baseOffset >> 16;

            buffer[scanline] = BattleAnimUtil_MakeBgOffsetValue(baseX + waveCtx->strips[stripIdx].scrollAccum, baseY);
        }
    }
}

void BattleAnimSystem_LoadBaseBg(BattleAnimSystem *system, enum BgLayer bgLayer)
{
    int effectPrio = BattleAnimSystem_GetBgPriority(system, BATTLE_ANIM_BG_EFFECT);
    Bg_SetPriority(bgLayer, effectPrio);
    Bg_ToggleLayer(bgLayer, FALSE);

    if (BattleAnimSystem_IsContest(system) == TRUE) {
        Bg_SetControlParam(system->bgConfig, bgLayer, BG_CONTROL_PARAM_CHAR_BASE, GX_BG_CHARBASE_0x10000);
    } else {
        Bg_SetControlParam(system->bgConfig, bgLayer, BG_CONTROL_PARAM_COLOR_MODE, GX_BG_COLORMODE_256);
        Bg_SetControlParam(system->bgConfig, bgLayer, BG_CONTROL_PARAM_CHAR_BASE, GX_BG_CHARBASE_0x10000);
    }

    Bg_ClearTilemap(system->bgConfig, bgLayer);

    if (BattleAnimSystem_IsContest(system) == TRUE) {
        Graphics_LoadTilesToBgLayer(system->battleBgRefs.narcID, system->battleBgRefs.tilesNarcMemberIdx, system->bgConfig, bgLayer, 0, 0, TRUE, system->heapID);
    } else {
        BattleAnimSystem_LoadBattleBgTiles(system, bgLayer);
    }

    Graphics_LoadTilemapToBgLayer(system->battleBgRefs.narcID, system->battleBgRefs.tilemapNarcMemberIdx, system->bgConfig, bgLayer, 0, 0, TRUE, system->heapID);
}

void BattleAnimSystem_UnloadBaseBg(BattleAnimSystem *system, enum BgLayer bgLayer)
{
    int basePrio = BattleAnimSystem_GetBgPriority(system, BATTLE_ANIM_BG_BASE);
    Bg_SetPriority(bgLayer, basePrio);

    if (BattleAnimSystem_IsContest(system) == TRUE) {
        Bg_SetControlParam(system->bgConfig, bgLayer, BG_CONTROL_PARAM_CHAR_BASE, GX_BG_CHARBASE_0x0c000);
    } else {
        Bg_SetControlParam(system->bgConfig, bgLayer, BG_CONTROL_PARAM_COLOR_MODE, GX_BG_COLORMODE_16);
        Bg_SetControlParam(system->bgConfig, bgLayer, BG_CONTROL_PARAM_CHAR_BASE, GX_BG_CHARBASE_0x0c000);
    }

    Bg_ClearTilemap(system->bgConfig, bgLayer);
}

static BOOL BattleBgSwitch_AnimStop(BattleBgSwitch *bgSwitch)
{
    bgSwitch->bgMoveAnimActive = TRUE;
    return FALSE;
}

static BOOL BattleBgSwitch_AnimCancel(BattleBgSwitch *bgSwitch)
{
    BattleAnimSystem_CancelBgAnim(bgSwitch->battleAnimSystem);
    return FALSE;
}

static void BattleBgSwitchTask_Start(SysTask *task, void *param)
{
    BattleBgSwitch *bgSwitch = param;
    BOOL active = sBattleBgSwitchFuncs[bgSwitch->mode](task, bgSwitch);

    if (active == FALSE) {
        bgSwitch->battleAnimSystem->bgSwitchState = BATTLE_BG_SWITCH_STATE_NONE;

        Heap_Free(bgSwitch);
        SysTask_Done(task);
    }
}

static void BattleAnimScriptCmd_SwitchBg(BattleAnimSystem *system)
{
    BattleBgSwitch *bgSwitch = BattleAnimSystem_CreateBgSwitch(system);

    bgSwitch->fadeType = BattleAnimSystem_GetScriptVar(system, BATTLE_ANIM_VAR_BG_FADE_TYPE);
    BattleAnimScript_Next(system);

    bgSwitch->bgID = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    int param = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    bgSwitch->mode = BATTLE_BG_SWITCH_MODE(param);
    bgSwitch->flags = BATTLE_BG_SWITCH_FLAGS(param);

    SysTask_Start(BattleBgSwitchTask_Start, bgSwitch, 1100);
}

static void BattleAnimScriptCmd_SetBgSwitchVar(BattleAnimSystem *system)
{
    BattleAnimScript_Next(system);

    int var = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    s16 value = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    switch (var) {
    case BATTLE_ANIM_VAR_BG_MOVE_STEP_X:
        system->bgAnim->stepX = value;
        break;
    case BATTLE_ANIM_VAR_BG_MOVE_STEP_Y:
        system->bgAnim->stepY = value;
        break;
    case BATTLE_ANIM_VAR_BG_MOVE_START_X:
        system->bgAnim->offsetX = value;
        break;
    case BATTLE_ANIM_VAR_BG_MOVE_START_Y:
        // BUG: Should be offsetY, not offsetX
        system->bgAnim->offsetX = value;
        break;
    default:
        break;
    }
}

static void BattleAnimScriptCmd_RestoreBg(BattleAnimSystem *system)
{
    BattleBgSwitch *bgSwitch = BattleAnimSystem_CreateBgSwitch(system);

    bgSwitch->fadeType = BattleAnimSystem_GetScriptVar(system, BATTLE_ANIM_VAR_BG_FADE_TYPE);
    BattleAnimScript_Next(system);

    bgSwitch->bgID = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    int param = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    bgSwitch->mode = BATTLE_BG_SWITCH_MODE(param) + BATTLE_BG_SWITCH_MODE_COUNT;
    bgSwitch->flags = BATTLE_BG_SWITCH_FLAGS(param);

    SysTask_Start(BattleBgSwitchTask_Start, bgSwitch, 1100);
}

static void BattleAnimScriptCmd_WaitForPartialBgSwitch(BattleAnimSystem *system)
{
    if (system->bgSwitchState == BATTLE_BG_SWITCH_STATE_PARTIAL) {
        BattleAnimScript_Next(system);
        system->scriptDelay = 0;
    } else {
        system->scriptDelay = 1;
    }
}

static void BattleAnimScriptCmd_WaitForBgSwitch(BattleAnimSystem *system)
{
    if (system->bgSwitchState == BATTLE_BG_SWITCH_STATE_NONE) {
        BattleAnimScript_Next(system);
        system->scriptDelay = 0;
    } else {
        system->scriptDelay = 1;
    }
}

static void BattleAnimScriptCmd_SetBg(BattleAnimSystem *system)
{
    BattleAnimScript_Next(system);
    int bgID = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    Graphics_LoadTilesToBgLayer(
        NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG,
        BattleAnimSystem_GetBgNarcMemberIndex(bgID, BG_NARC_MEMBER_NCGR),
        system->bgConfig,
        BG_LAYER_MAIN_3,
        0,
        0,
        TRUE,
        system->heapID);

    Graphics_LoadPalette(
        NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG,
        BattleAnimSystem_GetBgNarcMemberIndex(bgID, BG_NARC_MEMBER_NCLR),
        PAL_LOAD_MAIN_BG,
        0,
        0,
        system->heapID);

    Graphics_LoadTilemapToBgLayer(
        NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG,
        BattleAnimSystem_GetBgNarcMemberIndex(bgID, BG_NARC_MEMBER_NSCR1),
        system->bgConfig,
        BG_LAYER_MAIN_3,
        0,
        0,
        TRUE,
        system->heapID);
}

static void BattleAnimScriptCmd_SwitchBgEx(BattleAnimSystem *system)
{
    BattleBgSwitch *bgSwitch = BattleAnimSystem_CreateBgSwitch(system);

    BattleAnimScript_Next(system);

    int battleBgPlayerAttack = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    int battleBgEnemyAttack = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    int contestBg = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    if (BattleAnimSystem_IsContest(system) == TRUE) {
        bgSwitch->bgID = contestBg;
    } else {
        if (BattleAnimUtil_GetBattlerSide(system, system->context->defender) == BTLSCR_PLAYER) {
            bgSwitch->bgID = battleBgEnemyAttack;
        } else {
            bgSwitch->bgID = battleBgPlayerAttack;
        }
    }

    SysTask_Start(BattleBgSwitchTask_Start, bgSwitch, 1100);
}

static void BattleAnimScriptCmd_Nop4(BattleAnimSystem *)
{
    return;
}

static void BattleAnimScriptCmd_Nop5(BattleAnimSystem *)
{
    return;
}

static void BattleAnimScriptCmd_Nop6(BattleAnimSystem *)
{
    return;
}

static void BattleAnimScriptCmd_Nop9(BattleAnimSystem *)
{
    return;
}

static void BattleAnimScriptCmd_Nop10(BattleAnimSystem *)
{
    return;
}

static void BattleAnimScriptCmd_PlaySoundEffect(BattleAnimSystem *system)
{
    BattleAnimScript_Next(system);

    u16 effectID = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    Sound_PlayEffect(effectID);
}

static void BattleAnimScriptCmd_StopSoundEffect(BattleAnimSystem *system)
{
    BattleAnimScript_Next(system);

    u16 effectID = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    Sound_StopEffect(effectID, 0);
}

static void BattleAnimScriptCmd_PlayPannedSoundEffect(BattleAnimSystem *system)
{
    BattleAnimScript_Next(system);

    u16 effectID = (u16)BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    int pan = (int)BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    pan = BattleAnimSound_CorrectPanDirection(system, pan);

    Sound_PlayEffect(effectID);
    Sound_PanEffect(effectID, SOUND_PLAYBACK_TRACK_ALL, pan);
}

static void BattleAnimScriptCmd_PanSoundEffects(BattleAnimSystem *system)
{
    BattleAnimScript_Next(system);

    int pan = (int)BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    Sound_PanAllEffects(BattleAnimSound_CorrectPanDirection(system, pan));
}

static void BattleAnimScriptCmd_PlayMovingSoundEffectAtkDef(BattleAnimSystem *system)
{
    BattleAnimSoundContext *ctx = BattleAnimSystem_CreateSoundContext(system);
    memset(ctx, 0, sizeof(BattleAnimSoundContext));

    ctx->type = BATTLE_ANIM_SOUND_TASK_PAN;

    BattleAnimScript_Next(system);

    ctx->effectID = (u16)BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    ctx->startPan = (int)BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    ctx->endPan = (int)BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    ctx->panStep = (int)BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    ctx->applyInterval = (u8)BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    ctx->startPan = BattleAnimSound_CorrectPanDirection(system, ctx->startPan);
    ctx->endPan = BattleAnimSound_CorrectPanDirection(system, ctx->endPan);
    ctx->panStep = BattleAnimSound_CorrectStepDirection(ctx->startPan, ctx->endPan, ctx->panStep);

    Sound_PlayEffect(ctx->effectID);
    Sound_PanEffect(ctx->effectID, SOUND_PLAYBACK_TRACK_ALL, ctx->startPan);

    BattleAnimSystem_StartSoundTaskInternal(system, ctx);
}

static void BattleAnimScriptCmd_PlayMovingSoundEffectNoCorrection(BattleAnimSystem *system)
{
    BattleAnimSoundContext *ctx = BattleAnimSystem_CreateSoundContext(system);
    memset(ctx, 0, sizeof(BattleAnimSoundContext));

    ctx->type = BATTLE_ANIM_SOUND_TASK_PAN_2;
    BattleAnimScript_Next(system);

    ctx->effectID = (u16)BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    ctx->startPan = (s8)BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    ctx->endPan = (s8)BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    ctx->panStep = (s8)BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    ctx->applyInterval = (u8)BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    Sound_PlayEffect(ctx->effectID);
    Sound_PanEffect(ctx->effectID, SOUND_PLAYBACK_TRACK_ALL, ctx->startPan);

    BattleAnimSystem_StartSoundTaskInternal(system, ctx);
}

static void BattleAnimScriptCmd_PlayMovingSoundEffectAtkDef2(BattleAnimSystem *system)
{
    BattleAnimSoundContext *ctx = BattleAnimSystem_CreateSoundContext(system);
    memset(ctx, 0, sizeof(BattleAnimSoundContext));

    ctx->type = BATTLE_ANIM_SOUND_TASK_PAN;
    BattleAnimScript_Next(system);

    ctx->effectID = (u16)BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    ctx->startPan = (s8)BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    ctx->endPan = (s8)BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    ctx->panStep = (s8)BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    ctx->applyInterval = (u8)BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    ctx->startPan = BattleAnimSound_CorrectPanDirection(system, ctx->startPan);
    ctx->endPan = BattleAnimSound_CorrectPanDirection(system, ctx->endPan);
    ctx->panStep = BattleAnimSound_CorrectPanDirection(system, ctx->panStep);

    Sound_PlayEffect(ctx->effectID);
    Sound_PanEffect(ctx->effectID, SOUND_PLAYBACK_TRACK_ALL, ctx->startPan);

    BattleAnimSystem_StartSoundTaskInternal(system, ctx);
}

static void BattleAnimScriptCmd_PlayLoopedSoundEffect(BattleAnimSystem *system)
{
    BattleAnimSoundContext *ctx = BattleAnimSystem_CreateSoundContext(system);
    memset(ctx, 0, sizeof(BattleAnimSoundContext));

    ctx->type = BATTLE_ANIM_SOUND_TASK_REPEAT;
    BattleAnimScript_Next(system);

    ctx->effectID = (u16)BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    ctx->curPan = (s8)BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    ctx->applyInterval = (u8)BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    ctx->repeatCount = (u8)BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    ctx->tickCount = ctx->applyInterval;
    ctx->curPan = BattleAnimSound_CorrectPanDirection(system, ctx->curPan);

    BattleAnimSystem_StartSoundTaskInternal(system, ctx);
}

static void BattleAnimScriptCmd_PlayDelayedSoundEffect(BattleAnimSystem *system)
{
    BattleAnimSoundContext *ctx = BattleAnimSystem_CreateSoundContext(system);
    memset(ctx, 0, sizeof(BattleAnimSoundContext));

    ctx->type = BATTLE_ANIM_SOUND_TASK_DELAY;

    BattleAnimScript_Next(system);

    ctx->effectID = (u16)BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    ctx->curPan = (s8)BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    ctx->applyInterval = (u8)BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    ctx->curPan = BattleAnimSound_CorrectPanDirection(system, ctx->curPan);

    BattleAnimSystem_StartSoundTaskInternal(system, ctx);
}

static void BattleAnimScriptCmd_Nop3(BattleAnimSystem *)
{
    (void)0;
}

static void BattleAnimScriptCmd_WaitForSoundEffects(BattleAnimSystem *system)
{
    if (system->activeSoundTasks) {
        system->scriptDelay = 1;
        system->soundEffectWaitTimer = 0;
        return;
    }

    if (Sound_IsAnyEffectPlaying()) {
        system->soundEffectWaitTimer++;

        if (system->soundEffectWaitTimer > 90) {
            system->soundEffectWaitTimer = 0;
        } else {
            system->scriptDelay = 1;
            return;
        }
    } else {
        system->scriptDelay = 0;
        system->soundEffectWaitTimer = 0;
        BattleAnimScript_Next(system);
    }
}

static void BattleAnimScriptCmd_SetBG0BG1AlphaBlending(BattleAnimSystem *system)
{
    BattleAnimScript_Next(system);

    u16 ev1 = (u16)BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    u16 ev2 = (u16)BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    G2S_SetBlendAlpha(GX_BLEND_PLANEMASK_BG0, GX_BLEND_PLANEMASK_BG1, ev1, ev2);
}

static void BattleAnimScriptCmd_SetDefaultAlphaBlending(BattleAnimSystem *system)
{
    BattleAnimSystem_SetDefaultAlphaBlending();
}

static void BattleAnimScriptCmd_Nop2(BattleAnimSystem *)
{
    return;
}

static void BattleAnimScriptCmd_InitSpriteManager(BattleAnimSystem *system)
{
    BattleAnimScript_Next(system);

    int id = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    int maxSprites = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    GF_ASSERT(system->spriteManagers[id] == NULL);
    system->spriteManagers[id] = SpriteManager_New(system->context->spriteSystem);
    GF_ASSERT(system->spriteManagers[id] != NULL);

    SpriteSystem_InitSprites(system->context->spriteSystem, system->spriteManagers[id], maxSprites);
    SetSubScreenViewRect(SpriteSystem_GetRenderer(system->context->spriteSystem), 0, (192 + 80) << FX32_SHIFT);

    SpriteResourceCapacities caps;

    for (int i = 0; i < SPRITE_RESOURCE_MAX; i++) {
        caps.asArray[i] = BattleAnimScript_ReadWord(system->scriptPtr);
        BattleAnimScript_Next(system);
    }

    SpriteSystem_InitManagerWithCapacities(system->context->spriteSystem, system->spriteManagers[id], &caps);
}

static void BattleAnimScriptCmd_LoadCharResObj(BattleAnimSystem *system)
{
    BattleAnimScript_Next(system);

    int id = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    int memberIndex = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    SpriteSystem_LoadCharResObjFromOpenNarc(
        system->context->spriteSystem,
        system->spriteManagers[id],
        system->arcs[BATTLE_ANIM_SYSTEM_ARC_WECHAR],
        memberIndex,
        TRUE,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        BATTLE_ANIM_SCRIPT_RES_ID(memberIndex));
}

static void BattleAnimScriptCmd_LoadPlttRes(BattleAnimSystem *system)
{
    BattleAnimScript_Next(system);

    int id = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    int memberIndex = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    int paletteIndex = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    SpriteSystem_LoadPaletteBufferFromOpenNarc(
        system->paletteData,
        PLTTBUF_MAIN_OBJ,
        system->context->spriteSystem,
        system->spriteManagers[id],
        system->arcs[BATTLE_ANIM_SYSTEM_ARC_WEPLTT],
        memberIndex,
        FALSE,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        paletteIndex, // This is a bug, this parameter should be swapped with the VRAM type parameter
        BATTLE_ANIM_SCRIPT_RES_ID(memberIndex));
}

static void BattleAnimScriptCmd_LoadCellResObj(BattleAnimSystem *system)
{
    BattleAnimScript_Next(system);

    int id = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    int memberIndex = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    SpriteSystem_LoadCellResObjFromOpenNarc(
        system->context->spriteSystem,
        system->spriteManagers[id],
        system->arcs[BATTLE_ANIM_SYSTEM_ARC_WECELL],
        memberIndex,
        TRUE,
        BATTLE_ANIM_SCRIPT_RES_ID(memberIndex));
}

static void BattleAnimScriptCmd_LoadAnimResObj(BattleAnimSystem *system)
{
    BattleAnimScript_Next(system);

    int id = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    int memberIndex = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    SpriteSystem_LoadAnimResObjFromOpenNarc(
        system->context->spriteSystem,
        system->spriteManagers[id],
        system->arcs[BATTLE_ANIM_SYSTEM_ARC_WECELLANM],
        memberIndex,
        TRUE,
        BATTLE_ANIM_SCRIPT_RES_ID(memberIndex));
}

static void BattleAnimScriptCmd_AddSpriteWithFunc(BattleAnimSystem *system)
{
    BattleAnimScript_Next(system);

    int id = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    int funcID = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    SpriteTemplate template;
    int defender = BattleAnimSystem_GetDefender(system);

    template.x = BattleAnimUtil_GetBattlerPos(system, defender, BATTLE_ANIM_POSITION_MON_X);
    template.y = BattleAnimUtil_GetBattlerPos(system, defender, BATTLE_ANIM_POSITION_MON_Y);
    template.z = 0;
    template.animIdx = 0;
    template.priority = 100;
    template.plttIdx = 0;
    template.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    template.bgPriority = 1;
    template.vramTransfer = FALSE;

    int i;
    for (i = 0; i < SPRITE_RESOURCE_MAX; i++) {
        template.resources[i] = BATTLE_ANIM_SCRIPT_RES_ID(BattleAnimScript_ReadWord(system->scriptPtr));
        BattleAnimScript_Next(system);
    }

    system->lastSpriteTemplate = template;

    ManagedSprite *sprite = SpriteSystem_NewSprite(system->context->spriteSystem, system->spriteManagers[id], &template);

    int argCount = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    for (i = 0; i < argCount; i++) {
        system->scriptVars[i] = BattleAnimScript_ReadWord(system->scriptPtr);
        BattleAnimScript_Next(system);
    }

    for (; i < BATTLE_ANIM_SCRIPT_VAR_COUNT; i++) {
        system->scriptVars[i] = 0;
    }

    BattleAnimScriptSpriteFunc func = BattleAnimScript_GetSpriteFunc(funcID);
    func(system, system->context->spriteSystem, system->spriteManagers[id], sprite);
}

static void BattleAnimScriptCmd_AddSprite(BattleAnimSystem *system)
{
    BattleAnimScript_Next(system);

    int id = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    int spriteID = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    SpriteTemplate template;
    int defender = BattleAnimSystem_GetDefender(system);

    template.x = BattleAnimUtil_GetBattlerPos(system, defender, BATTLE_ANIM_POSITION_MON_X);
    template.y = BattleAnimUtil_GetBattlerPos(system, defender, BATTLE_ANIM_POSITION_MON_Y);
    template.z = 0;
    template.animIdx = 0;
    template.priority = 100;
    template.plttIdx = 0;
    template.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    template.bgPriority = 1;
    template.vramTransfer = FALSE;

    for (int i = 0; i < SPRITE_RESOURCE_MAX; i++) {
        template.resources[i] = BATTLE_ANIM_SCRIPT_RES_ID(BattleAnimScript_ReadWord(system->scriptPtr));
        BattleAnimScript_Next(system);
    }

    system->lastSpriteTemplate = template;

    ManagedSprite *sprite = SpriteSystem_NewSprite(system->context->spriteSystem, system->spriteManagers[id], &template);

    GF_ASSERT(system->sprites[spriteID] == NULL);
    system->sprites[spriteID] = sprite;
}

static void BattleAnimScriptCmd_FreeSpriteManager(BattleAnimSystem *system)
{
    BattleAnimScript_Next(system);

    int id = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    if (system->spriteManagers[id] != NULL) {
        SpriteSystem_FreeResourcesAndManager(system->context->spriteSystem, system->spriteManagers[id]);
    }

    system->spriteManagers[id] = NULL;
}

static void BattleAnimScriptCmd_SetPokemonSpriteVisible(BattleAnimSystem *system)
{
    BattleAnimScript_Next(system);

    int spriteID = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    int flag = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    ManagedSprite_SetDrawFlag(system->pokemonSprites[spriteID], flag);
}

static void BattleAnimScriptCmd_SetExtraParams(BattleAnimSystem *system)
{
    GF_ASSERT(FALSE);
}

static void BattleAnimScriptCmd_PlayPokemonCry(BattleAnimSystem *system)
{
    BattleAnimScript_Next(system);

    enum PokemonCryMod modulation = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    s16 pan = (s16)BattleAnimScript_ReadWord(system->scriptPtr);
    pan = BattleAnimSound_CorrectPanDirection(system, pan);
    BattleAnimScript_Next(system);

    int volume = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    int species = system->context->battlerSpecies[system->context->attacker];
    int form = system->context->battlerForms[system->context->attacker];

    PlayCryWithParams(system->context->chatotCry,
        modulation,
        species,
        form,
        pan,
        volume,
        system->context->isTransformed,
        system->heapID);
}

static void BattleAnimScriptCmd_WaitForPokemonCries(BattleAnimSystem *system)
{
    if (Sound_IsPokemonCryPlaying() == FALSE) {
        BattleAnimScript_Next(system);

        int fadeOutFrames = BattleAnimScript_ReadWord(system->scriptPtr);
        BattleAnimScript_Next(system);

        system->scriptDelay = 0;
        Sound_StopPokemonCries(fadeOutFrames);
    } else {
        system->scriptDelay = 1;
    }
}

static void BattleAnimScriptCmd_Nop11(BattleAnimSystem *)
{
    return;
}

BattleAnimScriptCmd BattleAnimSystem_GetScriptCmd(u32 id)
{
    if (id > NELEMS(sBattleAnimScriptCmdTable)) {
        return NULL;
    }

    return sBattleAnimScriptCmdTable[id];
}

int BattleAnimContext_GetUnk_01(BattleAnimContext *ctx)
{
    return ctx->unk_01;
}

s8 BattleAnimSound_CorrectPanDirection(BattleAnimSystem *system, s8 pan)
{
    int adjustedPan = pan;
    int attacker = BattleAnimSystem_GetAttacker(system);
    int defender = BattleAnimSystem_GetDefender(system);
    UNUSED(BattleAnimUtil_GetBattlerSide(system, attacker));
    UNUSED(BattleAnimUtil_GetBattlerSide(system, defender));

    if ((BattleAnimUtil_GetBattlerSide(system, attacker) == BTLSCR_PLAYER) && (BattleAnimUtil_GetBattlerSide(system, defender) == BTLSCR_ENEMY)) { // Player attacking Oponent
        // Do nothing. Branch needed to match
    } else if ((BattleAnimUtil_GetBattlerSide(system, attacker) == BTLSCR_ENEMY) && (BattleAnimUtil_GetBattlerSide(system, defender) == BTLSCR_PLAYER)) { // Opponent attacking Player
        adjustedPan *= -1;
    } else if ((BattleAnimUtil_GetBattlerSide(system, attacker) == BTLSCR_PLAYER) && (BattleAnimUtil_GetBattlerSide(system, defender) == BTLSCR_PLAYER)) { // Player attacking Player
        if (adjustedPan > 0) {
            adjustedPan *= -1;
        }
    } else if ((BattleAnimUtil_GetBattlerSide(system, attacker) == BTLSCR_ENEMY) && (BattleAnimUtil_GetBattlerSide(system, defender) == BTLSCR_ENEMY)) { // Opponent attacking Opponent
        if (adjustedPan < 0) {
            adjustedPan *= -1;
        }
    }

    if (BattleAnimSystem_IsContest(system) == TRUE) {
        adjustedPan *= -1;
    }

    return adjustedPan;
}

s8 BattleAnimSound_CorrectStepDirection(s8 start, s8 end, s8 step)
{
    s8 adjustedStep;

    if (start < end) {
        adjustedStep = +abs(step);
    } else if (start > end) {
        adjustedStep = -abs(step);
    } else {
        adjustedStep = 0;
    }

    return adjustedStep;
}

BOOL BattleAnimSystem_GetExtraParams(BattleAnimSystem *system, int params[], int count)
{
    BattleAnimScript_Next(system);

    int available = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    if (available != count) {
        GF_ASSERT(available == count);
        return FALSE;
    }

    for (int i = 0; i < count; i++) {
        params[i] = BattleAnimScript_ReadWord(system->scriptPtr);
        BattleAnimScript_Next(system);
    }

    return TRUE;
}

SpriteTemplate BattleAnimSystem_GetLastSpriteTemplate(BattleAnimSystem *system)
{
    return system->lastSpriteTemplate;
}

int BattleAnimSystem_GetBattlerType(BattleAnimSystem *system, int battler)
{
    return system->context->battlerTypes[battler];
}

int BattleAnimSystem_GetBattlerGender(BattleAnimSystem *system, int battler)
{
    return system->context->battlerGenders[battler];
}

int BattleAnimSystem_GetBattlerSpecies(BattleAnimSystem *system, int battler)
{
    return system->context->battlerSpecies[battler];
}

int BattleAnimSystem_GetBattlerForm(BattleAnimSystem *system, int battler)
{
    return system->context->battlerForms[battler];
}

int BattleAnimSystem_GetBattlerPersonality(BattleAnimSystem *system, int battler)
{
    return system->context->battlerPersonalities[battler];
}

PokemonSprite *BattleAnimSystem_GetBattlerSprite(BattleAnimSystem *system, int battler)
{
    if (system->context->battlerSprites[battler] == NULL) {
        return NULL;
    }

    if (PokemonSprite_IsActive(system->context->battlerSprites[battler])) {
        return system->context->battlerSprites[battler];
    } else {
        return NULL;
    }
}

PaletteData *BattleAnimSystem_GetPaletteData(BattleAnimSystem *system)
{
    return system->paletteData;
}

int BattleAnimSystem_GetBattlerSpritePaletteIndex(BattleAnimSystem *system, int battler)
{
    return system->context->pokemonSpriteData[battler]->palette;
}

int BattleAnimSystem_GetBattlerSpriteNarcID(BattleAnimSystem *system, int battler)
{
    return system->context->pokemonSpriteData[battler]->narcID;
}

int BattleAnimSystem_GetBattlerSpriteOffset(BattleAnimSystem *system, int battler)
{
    return system->context->pokemonSpriteData[battler]->yOffset;
}

BOOL BattleAnimSystem_IsDoubleBattle(BattleAnimSystem *system)
{
    return (system->context->battleType & BATTLE_TYPE_DOUBLES) ? TRUE : FALSE;
}

BOOL BattleAnimSystem_IsBattlerSemiInvulnerable(BattleAnimSystem *system, int battler)
{
    return (system->context->battlerMoveEffects[battler] & MOVE_EFFECT_SEMI_INVULNERABLE) ? TRUE : FALSE;
}

int BattleAnimSystem_GetPokemonSpritePriority(BattleAnimSystem *system)
{
    if (BattleAnimSystem_IsContest(system) == TRUE) {
        return 2;
    } else {
        return 1;
    }
}

enum BgLayer BattleAnimSystem_GetBgLayer(BattleAnimSystem *system, int bg)
{
    enum BgLayer bgLayers[][3] = {
        { BATTLE_BG_WINDOW, BATTLE_BG_BASE, BATTLE_BG_EFFECT },
        { BATTLE_BG_WINDOW, BATTLE_BG_BASE, BATTLE_BG_EFFECT }
    };

    if (BattleAnimSystem_IsContest(system) == TRUE) {
        return bgLayers[1][bg];
    } else {
        return bgLayers[0][bg];
    }
}

int BattleAnimSystem_GetBgID(BattleAnimSystem *system, int bg)
{
    int bgIDs[][3] = {
        { BATTLE_BG_INTERNAL_ID_WINDOW, BATTLE_BG_INTERNAL_ID_BASE, BATTLE_BG_INTERNAL_ID_EFFECT },
        { BATTLE_BG_INTERNAL_ID_WINDOW, BATTLE_BG_INTERNAL_ID_BASE, BATTLE_BG_INTERNAL_ID_EFFECT }
    };

    if (BattleAnimSystem_IsContest(system) == TRUE) {
        return bgIDs[1][bg];
    } else {
        return bgIDs[0][bg];
    }
}

int BattleAnimSystem_GetBgPriority(BattleAnimSystem *system, int bg)
{
    switch (bg) {
    case BATTLE_ANIM_BG_WINDOW:
        UNUSED(BattleAnimSystem_IsContest(system));
        return BATTLE_BG_PRIORITY_WINDOW;
    case BATTLE_ANIM_BG_BASE:
        UNUSED(BattleAnimSystem_IsContest(system));
        return BATTLE_BG_PRIORITY_BASE;
    case BATTLE_ANIM_BG_EFFECT:
        UNUSED(BattleAnimSystem_IsContest(system));
        return BATTLE_BG_PRIORITY_EFFECT;
    case BATTLE_ANIM_BG_POKEMON:
        return BattleAnimSystem_GetPokemonSpritePriority(system);
    }
}

void BattleAnimSystem_LoadBattleBgTiles(BattleAnimSystem *system, enum BgLayer layer)
{
    Bg_LoadTiles(system->bgConfig, layer, system->context->bgTiles, 0x10000, 0);
}

void BattleAnimSystem_LoadBattleBgPaletteBuffer(BattleAnimSystem *system)
{
    PaletteData_LoadBuffer(system->paletteData, system->context->bgPaletteBuffer, PLTTBUF_MAIN_BG, 0, 0x200);
}

BOOL BattleAnimSystem_ShouldBattlerSpriteBeFlipped(BattleAnimSystem *system, int battlerRole)
{
    int battler = BattleAnimSystem_GetBattlerWithRole(system, battlerRole);
    int form = system->context->battlerForms[battler];

    if (BattleAnimSystem_IsContest(system) == TRUE && IsFormSymmetrical(BattleAnimSystem_GetBattlerSpecies(system, battler), form) == TRUE) {
        return TRUE;
    }

    return FALSE;
}

static const int sBgNarcIndices[][BG_NARC_MEMBER_COUNT] = {
    { 0x41, 0x123, 0x3E, 0x3F, 0x40 },
    { 0x41, 0x123, 0x3E, 0x3F, 0x40 },
    { 0x41, 0x123, 0x3E, 0x3F, 0x40 },
    { 0x41, 0x123, 0x3E, 0x3F, 0x40 },
    { 0x41, 0x123, 0x3E, 0x3F, 0x40 },
    { 0x41, 0x141, 0x3E, 0x3F, 0x40 },
    { 0x45, 0x124, 0x42, 0x43, 0x44 },
    { 0x45, 0x145, 0x42, 0x43, 0x44 },
    { 0x45, 0x148, 0x42, 0x43, 0x44 },
    { 0x46, 0x125, 0x47, 0x47, 0x47 },
    { 0x46, 0x125, 0x47, 0x47, 0x47 },
    { 0x46, 0x13F, 0x47, 0x47, 0x47 },
    { 0x46, 0x140, 0x47, 0x47, 0x47 },
    { 0x46, 0x147, 0x47, 0x47, 0x47 },
    { 0x4C, 0x126, 0x48, 0x48, 0x48 },
    { 0x4C, 0x128, 0x48, 0x48, 0x48 },
    { 0x4C, 0x130, 0x48, 0x48, 0x48 },
    { 0x4C, 0x138, 0x48, 0x48, 0x48 },
    { 0x4C, 0x130, 0x48, 0x48, 0x48 },
    { 0x51, 0x129, 0x52, 0x52, 0x50 },
    { 0x59, 0x12B, 0x56, 0x57, 0x58 },
    { 0x5F, 0x12D, 0x5C, 0x5D, 0x5E },
    { 0x63, 0x12E, 0x60, 0x61, 0x62 },
    { 0x64, 0x12F, 0x65, 0x65, 0x65 },
    { 0x66, 0x131, 0x67, 0x67, 0x67 },
    { 0x69, 0x132, 0x6A, 0x6A, 0x68 },
    { 0x6F, 0x133, 0x6E, 0x6E, 0x6E },
    { 0x6F, 0x153, 0x6E, 0x6E, 0x6E },
    { 0x70, 0x134, 0x71, 0x71, 0x71 },
    { 0x70, 0x135, 0x71, 0x71, 0x71 },
    { 0x70, 0x134, 0x71, 0x71, 0x71 },
    { 0x77, 0x137, 0x74, 0x75, 0x76 },
    { 0x77, 0x137, 0x74, 0x75, 0x76 },
    { 0x77, 0x137, 0x74, 0x75, 0x76 },
    { 0x7C, 0x13B, 0x7D, 0x7D, 0x7D },
    { 0x81, 0x13D, 0x82, 0x82, 0x80 },
    { 0x83, 0x13E, 0x84, 0x84, 0x85 },
    { 0x8A, 0x143, 0x88, 0x89, 0x89 },
    { 0x8B, 0x144, 0x8C, 0x8C, 0x8C },
    { 0x8D, 0x146, 0x8E, 0x8E, 0x8E },
    { 0x92, 0x149, 0x8F, 0x90, 0x91 },
    { 0x96, 0x14A, 0x93, 0x94, 0x95 },
    { 0x97, 0x14B, 0x98, 0x98, 0x98 },
    { 0x99, 0x14C, 0x9A, 0x9A, 0x9A },
    { 0x9B, 0x14D, 0x9C, 0x9C, 0x9C },
    { 0xA0, 0x14E, 0x9D, 0x9E, 0x9F },
    { 0xA1, 0x14F, 0xA2, 0xA2, 0xA2 },
    { 0x34, 0x11E, 0x35, 0x35, 0x35 },
    { 0xA3, 0x150, 0xA4, 0xA5, 0xA4 },
    { 0xA3, 0x152, 0xA4, 0xA5, 0xA4 },
    { 0xA6, 0x151, 0xA8, 0xA7, 0xA7 },
    { 0x4E, 0x127, 0x4F, 0x4F, 0x4F },
    { 0x5A, 0x12C, 0x5B, 0x5B, 0x5B },
    { 0x55, 0x12A, 0x53, 0x53, 0x53 },
    { 0x72, 0x136, 0x73, 0x73, 0x73 },
    { 0x7A, 0x13A, 0x7B, 0x7B, 0x7B },
    { 0x78, 0x139, 0x79, 0x79, 0x79 },
    { 0x86, 0x142, 0x87, 0x87, 0x87 }
};

int BattleAnimSystem_GetBgNarcMemberIndex(int bgID, enum BgNarcMemberType type)
{
    return sBgNarcIndices[bgID][type];
}

BattleMonOBJData *BattleMonOBJData_New(BattleSystem *battleSys, enum HeapID heapID, int battlerIdx)
{
    int i;
    int sPriorityByBattlerType[] = { 0, 0, 20, 10, 10, 20 };
    BattleMonOBJData *btlMonObjData = Heap_Alloc(heapID, sizeof(BattleMonOBJData));

    btlMonObjData->heapID = heapID;
    btlMonObjData->battlerIdx = battlerIdx;
    btlMonObjData->spriteContext.spriteSys = BattleSystem_GetSpriteSystem(battleSys);
    btlMonObjData->spriteContext.spriteMan = BattleSystem_GetSpriteManager(battleSys);
    btlMonObjData->spriteContext.plttData = BattleSystem_GetPaletteData(battleSys);

    {
        for (i = 0; i < 4; i++) {
            btlMonObjData->managedSprites[i] = NULL;
            btlMonObjData->pokemonSpriteDataArray[i] = BattleSystem_GetPokemonSpriteDataByIndex(battleSys, i);
        }

        BattleSystem_SetBattlerTypes(battleSys, &(btlMonObjData->battlerTypes[0]));
        BattleSystem_PopulateMonSprites(battleSys, &(btlMonObjData->pokemonSprites[0]));
    }

    {
        int spriteResIDs[6];
        NARC *spriteNarc;

        spriteNarc = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, heapID);

        for (i = 0; i < 4; i++) {
            if ((i != btlMonObjData->battlerIdx) && (btlMonObjData->battlerIdx != 0xFF)) {
                continue;
            }

            if (btlMonObjData->pokemonSprites[i] == NULL) {
                continue;
            }

            spriteResIDs[0] = 55555 + i + ((btlMonObjData->battlerIdx) * 5000);
            spriteResIDs[1] = 55555 + i + ((btlMonObjData->battlerIdx) * 5000);
            spriteResIDs[2] = 55555 + i + ((btlMonObjData->battlerIdx) * 5000);
            spriteResIDs[3] = 55555 + i + ((btlMonObjData->battlerIdx) * 5000);
            spriteResIDs[4] = 0;
            spriteResIDs[5] = 0;

            SpriteSystem_LoadCharResObjFromOpenNarc(btlMonObjData->spriteContext.spriteSys, btlMonObjData->spriteContext.spriteMan, spriteNarc, 76, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, spriteResIDs[SPRITE_RESOURCE_CHAR]);
            SpriteSystem_LoadPaletteBufferFromOpenNarc(btlMonObjData->spriteContext.plttData, 2, btlMonObjData->spriteContext.spriteSys, btlMonObjData->spriteContext.spriteMan, spriteNarc, 75, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 1, spriteResIDs[SPRITE_RESOURCE_PLTT]);
            SpriteSystem_LoadCellResObjFromOpenNarc(btlMonObjData->spriteContext.spriteSys, btlMonObjData->spriteContext.spriteMan, spriteNarc, 77, FALSE, spriteResIDs[SPRITE_RESOURCE_CELL]);
            SpriteSystem_LoadAnimResObjFromOpenNarc(btlMonObjData->spriteContext.spriteSys, btlMonObjData->spriteContext.spriteMan, spriteNarc, 78, FALSE, spriteResIDs[SPRITE_RESOURCE_ANIM]);
        }

        NARC_dtor(spriteNarc);
    }

    {
        int battler;
        int narcID;
        int paletteIdx;
        void *tiles;
        int spriteResIDs[6];
        ManagedSprite *managedSprite;

        for (battler = 0; battler < 4; battler++) {
            if ((battler != btlMonObjData->battlerIdx) && (btlMonObjData->battlerIdx != 0xFF)) {
                continue;
            }

            btlMonObjData->resourceIDs[battler] = 55555 + battler + ((btlMonObjData->battlerIdx) * 5000);

            spriteResIDs[0] = 55555 + battler + ((btlMonObjData->battlerIdx) * 5000);
            spriteResIDs[1] = 55555 + battler + ((btlMonObjData->battlerIdx) * 5000);
            spriteResIDs[2] = 55555 + battler + ((btlMonObjData->battlerIdx) * 5000);
            spriteResIDs[3] = 55555 + battler + ((btlMonObjData->battlerIdx) * 5000);
            spriteResIDs[4] = 0;
            spriteResIDs[5] = 0;

            narcID = btlMonObjData->pokemonSpriteDataArray[battler]->narcID;
            paletteIdx = btlMonObjData->pokemonSpriteDataArray[battler]->palette;
            tiles = btlMonObjData->pokemonSpriteDataArray[battler]->tiles;

            {
                int resourceIdx;
                SpriteTemplate spriteTemplate;
                PokemonSprite *pokemonSprite;
                s16 centerX, centerY;

                pokemonSprite = btlMonObjData->pokemonSprites[battler];

                if (pokemonSprite != NULL) {
                    centerX = PokemonSprite_GetAttribute(pokemonSprite, MON_SPRITE_X_CENTER);
                    centerY = PokemonSprite_GetAttribute(pokemonSprite, MON_SPRITE_Y_CENTER);
                    centerY -= PokemonSprite_GetAttribute(pokemonSprite, MON_SPRITE_SHADOW_HEIGHT);
                } else {
                    continue;
                }

                spriteTemplate.x = centerX;
                spriteTemplate.y = centerY;
                spriteTemplate.z = 0;
                spriteTemplate.animIdx = 0;
                spriteTemplate.priority = sPriorityByBattlerType[btlMonObjData->battlerTypes[battler]];
                spriteTemplate.plttIdx = 0;
                spriteTemplate.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
                spriteTemplate.bgPriority = 1;
                spriteTemplate.vramTransfer = FALSE;

                for (resourceIdx = 0; resourceIdx < 6; resourceIdx++) {
                    spriteTemplate.resources[resourceIdx] = spriteResIDs[resourceIdx];
                }

                managedSprite = SpriteSystem_NewSprite(btlMonObjData->spriteContext.spriteSys, btlMonObjData->spriteContext.spriteMan, &spriteTemplate);
                ManagedSprite_TickFrame(managedSprite);
                btlMonObjData->managedSprites[battler] = managedSprite;

                if (pokemonSprite == NULL) {
                    ManagedSprite_SetDrawFlag(managedSprite, 0);
                } else if (PokemonSprite_IsActive(pokemonSprite) == 0) {
                    ManagedSprite_SetDrawFlag(managedSprite, 0);
                } else {
                    int isHidden = PokemonSprite_GetAttribute(pokemonSprite, MON_SPRITE_HIDE);

                    if (isHidden == 1) {
                        ManagedSprite_SetDrawFlag(managedSprite, 0);
                    }
                }

                if (pokemonSprite != NULL) {
                    NNSG2dImageProxy *imageProxy;

                    imageProxy = Sprite_GetImageProxy(managedSprite->sprite);
                    VramTransfer_Request(NNS_GFD_DST_2D_OBJ_CHAR_MAIN, imageProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN], tiles, 10 * 10 * ((8 / 2) * 8));
                }

                if (pokemonSprite != NULL) {
                    NNSG2dImagePaletteProxy *paletteProxy;
                    int paletteOffset;

                    paletteProxy = Sprite_GetPaletteProxy(managedSprite->sprite);
                    paletteOffset = PlttTransfer_GetPlttOffset(paletteProxy, NNS_G2D_VRAM_TYPE_2DMAIN);

                    PaletteData_LoadBufferFromFileStart(btlMonObjData->spriteContext.plttData, narcID, paletteIdx, btlMonObjData->heapID, 2, 0x20, paletteOffset * 16);
                }
            }
        }
    }

    return btlMonObjData;
}

BattleMonOBJData *BattleMonOBJData_NewAll(BattleSystem *battleSys, enum HeapID heapID)
{
    return BattleMonOBJData_New(battleSys, heapID, 0xFF);
}

void BattleMonOBJData_Free(BattleMonOBJData *btlMonObjData)
{
    for (int i = 0; i < 4; i++) {
        if (btlMonObjData->managedSprites[i] == NULL) {
            continue;
        }

        SpriteManager_UnloadCharObjById(btlMonObjData->spriteContext.spriteMan, btlMonObjData->resourceIDs[i]);
        SpriteManager_UnloadPlttObjById(btlMonObjData->spriteContext.spriteMan, btlMonObjData->resourceIDs[i]);
        Sprite_DeleteAndFreeResources(btlMonObjData->managedSprites[i]);
    }

    Heap_Free(btlMonObjData);
}

void BattleMonOBJData_FreeForBattler(BattleMonOBJData *btlMonObjData, int unused)
{
    for (int i = 0; i < 4; i++) {
        if (btlMonObjData->managedSprites[i] == NULL) {
            continue;
        }

        SpriteManager_UnloadCharObjById(btlMonObjData->spriteContext.spriteMan, btlMonObjData->resourceIDs[i]);
        SpriteManager_UnloadPlttObjById(btlMonObjData->spriteContext.spriteMan, btlMonObjData->resourceIDs[i]);
        Sprite_DeleteAndFreeResources(btlMonObjData->managedSprites[i]);
    }

    Heap_Free(btlMonObjData);
}

int BattleMonOBJData_GetBattlerType(BattleMonOBJData *btlMonObjData)
{
    GF_ASSERT(btlMonObjData != NULL);
    return btlMonObjData->battlerTypes[btlMonObjData->battlerIdx];
}
