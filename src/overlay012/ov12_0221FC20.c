#include "overlay012/ov12_0221FC20.h"

#include <nitro.h>
#include <stdlib.h>
#include <string.h>

#include "generated/battle_terrains.h"
#include "generated/moves.h"

#include "struct_decls/battle_system.h"
#include "struct_defs/chatot_cry.h"

#include "battle/ov16_0223DF00.h"
#include "battle/struct_ov16_0223E0C8.h"
#include "battle/struct_ov16_02264408.h"
#include "battle/struct_ov16_02264408_sub1.h"
#include "battle/struct_ov16_02265BBC.h"
#include "global/utility.h"
#include "overlay012/funcptr_ov12_02239E68.h"
#include "overlay012/funcptr_ov12_02239EEC.h"
#include "overlay012/is_form_symmetrical.h"
#include "overlay012/ov12_022237EC.h"
#include "overlay012/ov12_02225864.h"
#include "overlay012/ov12_02226998.h"
#include "overlay012/ov12_02235254.h"
#include "overlay012/ov12_022380BC.h"
#include "overlay012/struct_ov12_02223764.h"
#include "overlay012/struct_ov12_02226504_decl.h"
#include "overlay012/struct_ov12_022380DC.h"
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

#define BATTLE_ANIM_SCRIPT_RES_ID(MEMBER_IDX) (MEMBER_IDX + 5000)

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

typedef struct UnkStruct_ov12_02221BBC_t {
    int unk_00;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    u8 unk_07;
    u8 unk_08;
    u8 unk_09;
    u8 unk_0A;
    u8 unk_0B;
    u8 unk_0C;
    u8 unk_0D;
    int unk_10;
    int unk_14;
    int unk_18;
    int unk_1C[10];
    u16 unk_44_0 : 1;
    u16 unk_44_1 : 1;
    u16 unk_44_2 : 14;
    BattleAnimSystem *unk_48;
} UnkStruct_ov12_02221BBC;

enum BattleAnimTaskKind {
    MOVE_EFFECT_TASK_KIND_EFFECT = 1,
    MOVE_EFFECT_TASK_KIND_SOUND,
};

enum BattleAnimBattlerType {
    BATTLER_TYPE_ATTACKER = 0,
    BATTLER_TYPE_DEFENDER,
    BATTLER_TYPE_ATTACKER_PARTNER,
    BATTLER_TYPE_DEFENDER_PARTNER,
    BATTLER_TYPE_PLAYER_SLOT_1,
    BATTLER_TYPE_ENEMY_SLOT_1,
    BATTLER_TYPE_PLAYER_SLOT_2,
    BATTLER_TYPE_ENEMY_SLOT_2,
};

static void ov12_022224F8(SysTask *param0, void *param1);
static void BattleAnimSystem_Script_WaitForDelay(BattleAnimSystem *param0);
static void BattleAnimSystem_Script_Execute(BattleAnimSystem *param0);

// See enum BattleAnimTaskKind for 'kind'
static SysTask *BattleAnimSystem_StartTask(u8 kind, BattleAnimSystem *param1, SysTaskFunc param2, void *param3, u32 param4);
static void BattleAnimSystem_EndTask(u8 param0, BattleAnimSystem *param1, SysTask *param2);

static BattleAnimSoundContext *BattleAnimSystem_CreateSoundContext(BattleAnimSystem *param0);
static void BattleAnimSystem_StartSoundTaskInternal(BattleAnimSystem *param0, BattleAnimSoundContext *param1);
static void BattleAnimSound_Task(SysTask *param0, void *param1);
static BOOL BattleAnimSoundFunc_None(BattleAnimSoundContext *param0);
static BOOL BattleAnimSoundFunc_Pan(BattleAnimSoundContext *param0);
static BOOL BattleAnimSoundFunc_Pan2(BattleAnimSoundContext *param0);
static BOOL BattleAnimSoundFunc_Pan3(BattleAnimSoundContext *param0);
static BOOL BattleAnimSoundFunc_Repeat(BattleAnimSoundContext *param0);
static BOOL BattleAnimSoundFunc_Delay(BattleAnimSoundContext *param0);
static void BattleAnimScriptCmd_Delay(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_WaitForAnimTasks(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_BeginLoop(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_EndLoop(BattleAnimSystem *param0);
static void ov12_02220798(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_PlaySoundEffect(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_Nop0(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_Nop1(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_SetBG0BG1AlphaBlending(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_SetDefaultAlphaBlending(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_Call(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_Return(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_SetVar(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_ResetVar(BattleAnimSystem *param0);
static void ov12_022206A4(BattleAnimSystem *param0);
static void ov12_022206E8(BattleAnimSystem *param0);
static void ov12_02220F30(BattleAnimSystem *param0);
static void ov12_02221064(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_Jump(BattleAnimSystem *param0);
static void ov12_02222724(BattleAnimSystem *param0);
static void ov12_02222774(BattleAnimSystem *param0);
static void ov12_022227CC(BattleAnimSystem *param0);
static void ov12_02222820(BattleAnimSystem *param0);
static void ov12_02222840(BattleAnimSystem *param0);
static void ov12_02222860(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_PlayPannedSoundEffect(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_PanSoundEffects(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_PlayMovingSoundEffectAtkDef(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_PlayLoopedSoundEffect(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_PlayDelayedSoundEffect(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_Nop2(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_Nop3(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_WaitForSoundEffects(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_JumpIfEqual(BattleAnimSystem *param0);
static void ov12_0222128C(BattleAnimSystem *param0);
static void ov12_0222144C(BattleAnimSystem *param0);
static void ov12_022214C4(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_AddPokemonSprite(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_FreePokemonSpriteManager(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_RemovePokemonSprite(BattleAnimSystem *param0);
static void ov12_02221A00(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_SetCameraProjection(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_SetCameraFlip(BattleAnimSystem *param0);
static void ov12_02221424(BattleAnimSystem *param0);
static void ov12_02220EA8(BattleAnimSystem *param0);
static void ov12_022228DC(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_PlayMovingSoundEffectNoCorrection(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_PlayMovingSoundEffectAtkDef2(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_Nop4(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_Nop5(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_Nop6(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_Nop7(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_Nop8(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_Nop9(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_Nop10(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_StopSoundEffect(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_JumpIfBattlerSide(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_JumpIfWeather(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_JumpIfContest(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_JumpIfFriendlyFire(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_PlayPokemonCry(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_WaitForPokemonCries(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_CallFunc(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_CreateEmitter(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_CreateEmitterEx(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_CreateEmitterForMove(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_CreateEmitterForFriendlyFire(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_WaitForAllEmitters(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_LoadParticleSystem(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_LoadDebugParticleSystem(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_UnloadParticleSystem(BattleAnimSystem *param0);
static void ov12_022230CC(BattleAnimSystem *param0);
static void ov12_02223160(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_InitSpriteManager(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_LoadCharResObj(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_LoadPlttRes(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_LoadCellResObj(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_LoadAnimResObj(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_AddSpriteWithFunc(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_AddSprite(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_FreeSpriteManager(BattleAnimSystem *param0);
static void ov12_022230A8(BattleAnimSystem *param0);
static void ov12_02221834(BattleAnimSystem *param0);
static void ov12_022219E8(BattleAnimSystem *param0);
static void ov12_0222048C(BattleAnimSystem *param0);
static int BattleAnimSystem_GetBattlerOfType(BattleAnimSystem *param0, enum BattleAnimBattlerType param1);
static BOOL ov12_02221A54(UnkStruct_ov12_02221BBC *param0, BattleAnimSystem *param1, int param2);
static void ov12_02221AA8(UnkStruct_ov12_02221BBC *param0, BattleAnimSystem *param1, int param2, int param3);
static int ov12_02221B54(int param0, int param1);
static void ov12_02221B64(UnkStruct_ov12_02221BBC *param0);
static BOOL ov12_02221C50(SysTask *param0, UnkStruct_ov12_02221BBC *param1);
static BOOL ov12_02221F44(SysTask *param0, UnkStruct_ov12_02221BBC *param1);
static BOOL ov12_022222A4(SysTask *param0, UnkStruct_ov12_02221BBC *param1);
static BOOL ov12_02221D50(SysTask *param0, UnkStruct_ov12_02221BBC *param1);
static BOOL ov12_0222206C(SysTask *param0, UnkStruct_ov12_02221BBC *param1);
static BOOL ov12_022222B0(SysTask *param0, UnkStruct_ov12_02221BBC *param1);
static BOOL ov12_0222235C(UnkStruct_ov12_02221BBC *param0);
static BOOL ov12_02222360(UnkStruct_ov12_02221BBC *param0);
static BOOL ov12_022226D0(UnkStruct_ov12_02221BBC *param0);
static BOOL ov12_022226E8(UnkStruct_ov12_02221BBC *param0);
static BOOL ov12_0222240C(UnkStruct_ov12_02221BBC *param0);
static BOOL ov12_022224E4(UnkStruct_ov12_02221BBC *param0);

static inline void BattleAnimScript_Next(BattleAnimSystem *system);
static inline void BattleAnimScript_JumpTo(BattleAnimSystem *system, u32 *dst);
static inline void BattleAnimScript_JumpBy(BattleAnimSystem *system, u32 offset);
static inline int BattleAnimScript_ReadWord(u32 *param0);

static const s16 Unk_ov12_02238660[] = {
    0x20,
    0x1C,
    0x18,
    0x14,
    0x10,
    0xC,
    0x8,
    0x4,
    0x4,
    0x8,
    0xC,
    0x10,
    0x14,
    0x18,
    0x1C,
    0x20
};

static void BattleAnimSystem_Script_WaitForDelay(BattleAnimSystem *system)
{
    if (system->scriptDelay == 0) {
        system->scriptDelay == 0;
        system->executeAnimScriptFunc = BattleAnimSystem_Script_Execute;
    } else {
        system->scriptDelay--;
    }
}

static void BattleAnimSystem_Script_Execute(BattleAnimSystem *system)
{
    do {
        BattleAnimScriptCmd cmd = BattleAnimSystem_GetScriptCmd(*system->scriptPtr);
        cmd(system);
    } while (system->scriptDelay == 0 && system->moveActive == TRUE);
}

static SysTask *BattleAnimSystem_StartTask(u8 kind, BattleAnimSystem *system, SysTaskFunc func, void *param, u32 priority)
{
    switch (kind) {
    case MOVE_EFFECT_TASK_KIND_EFFECT:
        system->activeAnimTasks++;
        break;
    case MOVE_EFFECT_TASK_KIND_SOUND:
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
    case MOVE_EFFECT_TASK_KIND_EFFECT:
        system->activeAnimTasks--;
        break;
    case MOVE_EFFECT_TASK_KIND_SOUND:
        system->activeSoundTasks--;
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }

    SysTask_Done(task);
}

BattleAnimSystem *BattleAnimSystem_New(enum HeapId heapID)
{
    int i;
    BattleAnimSystem *system = Heap_AllocFromHeap(heapID, sizeof(BattleAnimSystem));

    if (system == NULL) {
        GF_ASSERT(system != NULL);
        return NULL;
    }

    memset(system, 0, sizeof(BattleAnimSystem));

    system->heapID = heapID;
    system->isContest = FALSE;
    system->context = Heap_AllocFromHeap(system->heapID, sizeof(BattleAnimContext));
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

enum HeapId BattleAnimSystem_GetHeapID(BattleAnimSystem *system)
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

BOOL BattleAnimSystem_StartMove(BattleAnimSystem *system, UnkStruct_ov16_02265BBC *param1, u16 move, UnkStruct_ov16_02264408 *param3)
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

    system->context->unk_00 = param1->unk_00;
    system->context->unk_01 = param1->unk_01;
    system->context->move = param1->unk_02;
    system->context->damage = param1->unk_04;
    system->context->power = param1->unk_08;
    system->context->friendship = param1->friendship;
    system->context->fieldConditions = param1->fieldConditions;
    system->context->unk_10 = param1->unk_0A;
    system->context->terrain = param1->unk_54;
    system->context->attacker = param1->unk_14;
    system->context->defender = param1->unk_16;
    system->context->transformed = param1->unk_0E_1;
    system->context->spriteSystem = param3->unk_00;

    GF_ASSERT(param3->unk_00 != NULL);

    system->bgConfig = param3->unk_04;
    system->paletteData = param3->unk_08;
    system->context->battleType = param3->battleType;

    for (i = 0; i < MAX_BATTLERS; i++) {
        system->context->pokemonSpriteData[i] = param3->unk_0C[i];
        system->context->battlerTypes[i] = param3->unk_1C[i];
        system->context->battlerSprites[i] = param3->unk_20[i];
        system->context->battlerSpecies[i] = param3->unk_34[i];
        system->context->battlerGenders[i] = param3->unk_3C[i];
        system->context->battlerShinyFlags[i] = param3->unk_40[i];
        system->context->battlerForms[i] = param3->unk_44[i];
        system->context->battlerPersonalities[i] = param3->unk_48[i];
        system->context->battlerMoveEffects[i] = param3->unk_4C[i];
    }

    system->unk_180 = param3->unk_54;
    system->context->chatotCry = param3->unk_6C;
    system->context->unk_114 = param3->unk_74;
    system->context->unk_110 = param3->unk_70;

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

    if (moveID == MOVE_NONE || moveID > MOVE_SHADOW_FORCE) {
        moveID = MOVE_POUND;
    }

    system->moveArcID = param3->unk_50;
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

    system->unk_17C = NULL;
    system->executeAnimScriptFunc = BattleAnimSystem_Script_Execute;
    system->scriptDelay = 0;

    if (BattleAnimSystem_IsContest(system) == TRUE) {
        system->unk_198 = 0x7;
    } else {
        system->unk_198 = 0xFF;
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
    return BattleAnimSystem_StartTask(MOVE_EFFECT_TASK_KIND_EFFECT, system, func, param, priority);
}

SysTask *BattleAnimSystem_StartAnimTask(BattleAnimSystem *system, SysTaskFunc func, void *param)
{
    return BattleAnimSystem_StartTask(MOVE_EFFECT_TASK_KIND_EFFECT, system, func, param, 1100);
}

SysTask *BattleAnimSystem_StartSoundTask(BattleAnimSystem *system, SysTaskFunc func, void *param, u32 priority)
{
    return BattleAnimSystem_StartTask(MOVE_EFFECT_TASK_KIND_SOUND, system, func, param, priority);
}

void BattleAnimSystem_EndAnimTask(BattleAnimSystem *system, SysTask *task)
{
    BattleAnimSystem_EndTask(MOVE_EFFECT_TASK_KIND_EFFECT, system, task);
}

void BattleAnimSystem_EndSoundTask(BattleAnimSystem *system, SysTask *task)
{
    BattleAnimSystem_EndTask(MOVE_EFFECT_TASK_KIND_SOUND, system, task);
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

SpriteManager *ov12_02220300(BattleAnimSystem *param0)
{
    return param0->spriteManagers[0];
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
    BattleAnimSoundContext *ctx = Heap_AllocFromHeap(system->heapID, sizeof(BattleAnimSoundContext));
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
    BattleAnimScriptCmd_Delay,
    BattleAnimScriptCmd_WaitForAnimTasks,
    BattleAnimScriptCmd_BeginLoop,
    BattleAnimScriptCmd_EndLoop,
    ov12_02220798,
    BattleAnimScriptCmd_PlaySoundEffect,
    BattleAnimScriptCmd_Nop0,
    BattleAnimScriptCmd_Nop1,
    BattleAnimScriptCmd_SetBG0BG1AlphaBlending,
    BattleAnimScriptCmd_SetDefaultAlphaBlending,
    BattleAnimScriptCmd_Call,
    BattleAnimScriptCmd_Return,
    BattleAnimScriptCmd_SetVar,
    ov12_02220F30,
    ov12_02221064,
    BattleAnimScriptCmd_Jump,
    ov12_02222724,
    ov12_02222774,
    ov12_022227CC,
    ov12_02222820,
    ov12_02222840,
    ov12_02222860,
    BattleAnimScriptCmd_PlayPannedSoundEffect,
    BattleAnimScriptCmd_PanSoundEffects,
    BattleAnimScriptCmd_PlayMovingSoundEffectAtkDef,
    BattleAnimScriptCmd_PlayLoopedSoundEffect,
    BattleAnimScriptCmd_PlayDelayedSoundEffect,
    BattleAnimScriptCmd_Nop2,
    BattleAnimScriptCmd_Nop3,
    BattleAnimScriptCmd_WaitForSoundEffects,
    BattleAnimScriptCmd_JumpIfEqual,
    ov12_0222128C,
    ov12_02221424,
    ov12_02220EA8,
    ov12_022228DC,
    BattleAnimScriptCmd_PlayMovingSoundEffectNoCorrection,
    BattleAnimScriptCmd_PlayMovingSoundEffectAtkDef2,
    BattleAnimScriptCmd_Nop4,
    BattleAnimScriptCmd_Nop5,
    BattleAnimScriptCmd_Nop6,
    BattleAnimScriptCmd_Nop7,
    BattleAnimScriptCmd_Nop8,
    BattleAnimScriptCmd_Nop9,
    BattleAnimScriptCmd_Nop10,
    BattleAnimScriptCmd_StopSoundEffect,
    BattleAnimScriptCmd_CallFunc,
    BattleAnimScriptCmd_CreateEmitter,
    BattleAnimScriptCmd_CreateEmitterEx,
    BattleAnimScriptCmd_CreateEmitterForMove,
    BattleAnimScriptCmd_CreateEmitterForFriendlyFire,
    BattleAnimScriptCmd_WaitForAllEmitters,
    BattleAnimScriptCmd_LoadParticleSystem,
    BattleAnimScriptCmd_LoadDebugParticleSystem,
    BattleAnimScriptCmd_UnloadParticleSystem,
    ov12_02223160,
    ov12_022230CC,
    ov12_0222144C,
    ov12_022214C4,
    BattleAnimScriptCmd_AddPokemonSprite,
    BattleAnimScriptCmd_FreePokemonSpriteManager,
    BattleAnimScriptCmd_RemovePokemonSprite,
    ov12_02221A00,
    BattleAnimScriptCmd_SetCameraProjection,
    BattleAnimScriptCmd_SetCameraFlip,
    BattleAnimScriptCmd_JumpIfBattlerSide,
    BattleAnimScriptCmd_PlayPokemonCry,
    BattleAnimScriptCmd_WaitForPokemonCries,
    BattleAnimScriptCmd_ResetVar,
    ov12_022206A4,
    ov12_022206E8,
    BattleAnimScriptCmd_JumpIfWeather,
    BattleAnimScriptCmd_JumpIfContest,
    BattleAnimScriptCmd_JumpIfFriendlyFire,
    BattleAnimScriptCmd_InitSpriteManager,
    BattleAnimScriptCmd_LoadCharResObj,
    BattleAnimScriptCmd_LoadPlttRes,
    BattleAnimScriptCmd_LoadCellResObj,
    BattleAnimScriptCmd_LoadAnimResObj,
    BattleAnimScriptCmd_AddSpriteWithFunc,
    BattleAnimScriptCmd_AddSprite,
    BattleAnimScriptCmd_FreeSpriteManager,
    ov12_022230A8,
    ov12_02221834,
    ov12_022219E8,
    ov12_0222048C
};

void BattleAnimSystem_SetDefaultAlphaBlending(void)
{
    G2_SetBlendAlpha((GX_BLEND_PLANEMASK_NONE), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), 8, 8);
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

static void ov12_0222048C(BattleAnimSystem *param0)
{
    param0->scriptDelay = 1;

    if (gSystem.heldKeys & PAD_BUTTON_L) {
        if (gSystem.heldKeys & PAD_BUTTON_R) {
            if (gSystem.pressedKeys & PAD_BUTTON_X) {
                param0->scriptPtr += 1;
                param0->scriptDelay = 0;
            }
        }
    }
}

static void BattleAnimScriptCmd_Delay(BattleAnimSystem *system)
{
    BattleAnimScript_Next(system);

    system->scriptDelay = (u8)BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    system->executeAnimScriptFunc = BattleAnimSystem_Script_WaitForDelay;
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

static void BattleAnimScriptCmd_ResetVar(BattleAnimSystem *system)
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
    case 4:
        return system->context->unk_10;
    case BATTLE_ANIM_MOVE_INFO_TERRAIN:
        return system->context->terrain;
    default:
        return 0;
    }
}

void ov12_02220590(BattleAnimSystem *param0, UnkStruct_ov12_022380DC *param1, int param2)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        param1->unk_08[v0] = param0->context->pokemonSpriteData[v0];
        param1->unk_18[v0] = param0->context->battlerSprites[v0];
        param1->unk_28[v0] = param0->context->battlerSpecies[v0];
        param1->unk_30[v0] = param0->context->battlerGenders[v0];
        param1->unk_34[v0] = param0->context->battlerShinyFlags[v0];
        param1->unk_38[v0] = param0->context->battlerForms[v0];
        param1->unk_3C[v0] = param0->context->battlerPersonalities[v0];
        param1->unk_4C[v0] = param0->context->battlerTypes[v0];
    }

    switch (param2) {
    case 0:
        param1->unk_00 = param0->context->attacker;
        param1->unk_04 = param0->context->defender;
        break;
    case 1:
        param1->unk_00 = param0->context->attacker;
        param1->unk_04 = param0->context->attacker;
        break;
    case 2:
        param1->unk_00 = param0->context->attacker;
        param1->unk_04 = param0->context->attacker;
        break;
    case 3:
        param1->unk_00 = param0->context->attacker;
        param1->unk_04 = param0->context->attacker;
        break;
    default:
        GF_ASSERT(0);
        break;
    }
}

static void ov12_022206A4(BattleAnimSystem *param0)
{
    int v0;
    UnkStruct_ov12_022380DC v1;

    param0->scriptPtr += 1;
    v0 = (u32)BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    ov12_02220590(param0, &v1, v0);

    if (v0 == 2) {
        ov12_02238390(&v1, param0->heapID);
    } else if (v0 == 3) {
        ov12_022380CC(&v1, param0->heapID);
    } else {
        ov12_022380BC(&v1, param0->heapID);
    }
}

static void ov12_022206E8(BattleAnimSystem *param0)
{
    int v0;
    UnkStruct_ov12_022380DC v1;

    param0->scriptPtr += 1;
    v0 = (u32)BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    ov12_02220590(param0, &v1, v0);
    ov12_022382BC(&v1, param0->heapID);
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

static void ov12_02220798(BattleAnimSystem *system)
{
    int i;
    int v1 = 0;

    if (system->unk_17A < 1) {
        system->scriptDelay = 1;
        system->unk_17A++;
        return;
    }

    for (i = 0; i < MAX_PARTICLE_SYSTEMS; i++) {
        if (system->context->particleSystems[i]) {
            v1 += ParticleSystem_GetActiveEmitterCount(system->context->particleSystems[i]);
        }
    }

    if ((v1 != 0) || (system->activeAnimTasks != 0) || (system->activeSoundTasks != 0)) {
        system->scriptDelay = 1;
        system->unk_179 = 0;
        return;
    }

    if (Sound_IsAnyEffectPlaying()) {
        system->unk_179++;

        if (system->unk_179 > 90) {
            system->unk_179 = 0;
            system->scriptDelay = 0;
        } else {
            system->scriptDelay = 1;
            return;
        }
    }

    system->unk_179 = 0;
    system->unk_17A = 0;

    for (i = 0; i < 3; i++) {
        system->callStack[i] = NULL;
    }

    for (i = 0; i < BATTLE_ANIM_SCRIPT_MAX_NESTED_LOOPS; i++) {
        system->loopStack[i].startPos = NULL;
        system->loopStack[i].curIteration = 0;
        system->loopStack[i].maxIterations = 0;
        system->loopStack[i].isActive = FALSE;
    }

    for (i = 0; i < 4; i++) {
        if (system->spriteManagers[i] != NULL) {
            SpriteSystem_FreeResourcesAndManager(system->context->spriteSystem, system->spriteManagers[i]);
        }

        system->spriteManagers[i] = NULL;
    }

    for (i = 0; i < 5; i++) {
        ov12_02221238(system, i);
    }

    for (i = 0; i < MAX_PARTICLE_SYSTEMS; i++) {
        if (system->context->particleSystems[i]) {
            BattleParticleUtil_FreeParticleSystem(system->context->particleSystems[i]);
            system->context->particleSystems[i] = NULL;
        }
    }

    if (system->unk_17C != NULL) {
        system->unk_17C = NULL;
    }

    if (BattleAnimSystem_IsContest(system) == 0) {
        Battle_SetDefaultBlend();

        Bg_ClearTilesRange(ov12_022233B0(system, 1), 0x4000, 0, BattleAnimSystem_GetHeapID(system));
        Bg_ClearTilemap(BattleAnimSystem_GetBgConfig(system), ov12_022233B0(system, 1));
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

static int BattleAnimSystem_GetParticleResIdxForMove(BattleAnimSystem *system)
{
    int indexTable[6][6] = {
        /* Atk/Def   PL    EM   PL1   EM1   PL2   EM2 */
        /* PL  */ { 0xFF,    1, 0xFF, 0xFF, 0xFF, 0xFF },
        /* EM  */ {    4, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },
        /* PL1 */ { 0xFF, 0xFF, 0xFF,    3, 0xFF,    1 },
        /* EM1 */ { 0xFF, 0xFF,    6, 0xFF,    4, 0xFF },
        /* PL2 */ { 0xFF, 0xFF, 0xFF,    1, 0xFF,    2 },
        /* EM2 */ { 0xFF, 0xFF,    4, 0xFF,    5, 0xFF }
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
    // int index;
    // int attackerType, defenderType;
    // int attacker, defender;
    int indexTable[6][6] = {
        /* Atk/Def   PL    EM   PL1   EM1   PL2   EM2 */
        /* PL  */ { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },
        /* EM  */ { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },
        /* PL1 */ { 0xFF, 0xFF, 0xFF, 0xFF,    0, 0xFF },
        /* EM1 */ { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,    1 },
        /* PL2 */ { 0xFF, 0xFF,    1, 0xFF, 0xFF, 0xFF },
        /* EM2 */ { 0xFF, 0xFF, 0xFF,    0, 0xFF, 0xFF }
    };

    int attacker = BattleAnimSystem_GetAttacker(system);
    int defender = BattleAnimSystem_GetDefender(system);
    int attackerType = BattleAnimUtil_GetBattlerType(system, attacker);
    int defenderType = BattleAnimUtil_GetBattlerType(system, defender);
    int index = indexTable[attackerType][defenderType];

    GF_ASSERT(index != 0xFF);

    return index;
}

static void BattleAnimScriptCmd_CreateEmitterForMove(BattleAnimSystem *system)
{
    u32 resourceTable[6];

    BattleAnimScript_Next(system);

    u32 psIndex = (u32)BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);

    for (int i = 0; i < 6; i++) {
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
    system->executeAnimScriptFunc = BattleAnimSystem_Script_WaitForDelay;
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
    system->executeAnimScriptFunc = BattleAnimSystem_Script_WaitForDelay;
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

static void ov12_02220EA8(BattleAnimSystem *param0)
{
    param0->scriptPtr += 1;

    if (ov12_02223178(param0->context)) {
        param0->scriptPtr = (u32 *)BattleAnimScript_ReadWord(param0->scriptPtr);
    } else {
        param0->scriptPtr += 1;
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

static void ov12_02220F30(BattleAnimSystem *param0)
{
    int v0;

    param0->scriptPtr += 1;

    if (param0->context->unk_10 & 1) {
        param0->scriptPtr += 1;
    }

    param0->scriptPtr += (u32)BattleAnimScript_ReadWord(param0->scriptPtr);
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

static void ov12_02221064(BattleAnimSystem *param0)
{
    int v0;

    param0->scriptPtr += 1;

    v0 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    if (v0 == param0->context->unk_10) {
        param0->scriptPtr += (u32)BattleAnimScript_ReadWord(param0->scriptPtr);
    } else {
        param0->scriptPtr += 1;
    }
}

static void BattleAnimScriptCmd_Jump(BattleAnimSystem *system)
{
    BattleAnimScript_Next(system);
    BattleAnimScript_JumpBy(system, (u32)BattleAnimScript_ReadWord(system->scriptPtr));
}

static int BattleAnimSystem_GetBattlerOfType(BattleAnimSystem *system, enum BattleAnimBattlerType type)
{
    int result;

    switch (type) {
    case BATTLER_TYPE_ATTACKER:
        result = system->context->attacker;
        break;
    case BATTLER_TYPE_DEFENDER:
        result = system->context->defender;
        break;
    case BATTLER_TYPE_ATTACKER_PARTNER:
        result = BattleAnimUtil_GetAlliedBattlerType(system, system->context->attacker);
        break;
    case BATTLER_TYPE_DEFENDER_PARTNER:
        result = BattleAnimUtil_GetAlliedBattlerType(system, system->context->defender);
        break;

    case BATTLER_TYPE_PLAYER_SLOT_1: {
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
    case BATTLER_TYPE_ENEMY_SLOT_1: {
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
    case BATTLER_TYPE_PLAYER_SLOT_2: {
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
    case BATTLER_TYPE_ENEMY_SLOT_2: {
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

void ov12_02221238(BattleAnimSystem *param0, int param1)
{
    if (param1 == 4) {
        if (param0->bgTrackingTask != NULL) {
            SysTask_Done(param0->bgTrackingTask->task);
            Heap_Free(param0->bgTrackingTask);
            param0->bgTrackingTask = NULL;
        }
    } else {
        if (param0->spriteTrackingTasks[param1] != NULL) {
            SysTask_Done(param0->spriteTrackingTasks[param1]->task);
            Heap_Free(param0->spriteTrackingTasks[param1]);
            param0->spriteTrackingTasks[param1] = NULL;
        }
    }
}

static void BattleAnimScriptCmd_Nop0(BattleAnimSystem *param0)
{
    return;
}

static void BattleAnimScriptCmd_Nop1(BattleAnimSystem *param0)
{
    return;
}

static void ov12_0222128C(BattleAnimSystem *param0)
{
    void *v0 = NULL;
    int v1;
    int v2;
    int v3;
    int v4;
    int v5;
    int v6;
    int v7;

    param0->scriptPtr += 1;

    v1 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v2 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v3 = BattleAnimSystem_GetBattlerOfType(param0, v1);
    v4 = param0->context->pokemonSpriteData[v3]->unk_04;
    v5 = param0->context->pokemonSpriteData[v3]->unk_08;
    v0 = param0->context->pokemonSpriteData[v3]->unk_00;
    v7 = param0->context->battlerForms[v3];

    if ((BattleAnimSystem_IsContest(param0) == 1) && (IsFormSymmetrical(BattleAnimSystem_GetBattlerSpecies(param0, v3), v7) == 1)) {
        v6 = 265;
    } else {
        v6 = 264;
    }

    {
        u8 *v8 = Bg_GetCharPtr(2);
        MI_CpuFill8(v8, 0, 10 * 10 * 2 * 0x20);
    }

    Bg_ToggleLayer(BG_LAYER_MAIN_2, FALSE);
    Bg_LoadTiles(param0->bgConfig, 2, v0, (10 * 10 * ((8 / 2) * 8)), 0);
    PaletteData_LoadBufferFromFileStart(param0->paletteData, v4, v5, param0->heapID, 0, 0, (8 * 16));
    Graphics_LoadTilemapToBgLayerFromOpenNARC(param0->arcs[0], v6, param0->bgConfig, 2, 0, 0, 0, param0->heapID);

    if (v2 == 1) {
        SysTask *v9;

        param0->bgTrackingTask = Heap_AllocFromHeap(param0->heapID, sizeof(SpriteTrackingTask));
        param0->bgTrackingTask->bg = param0->bgConfig;
        param0->bgTrackingTask->data.sprite = BattleAnimSystem_GetBattlerSprite(param0, v3);
        param0->bgTrackingTask->data.frameCount = 0;
        param0->bgTrackingTask->data.interval = 0;

        v9 = SysTask_Start(BattleAnimSystem_BgTrackingTaskFunc, param0->bgTrackingTask, 0x1001);

        param0->bgTrackingTask->task = v9;
    }

    {
        s16 v10;
        s16 v11;

        v10 = PokemonSprite_GetAttribute(BattleAnimSystem_GetBattlerSprite(param0, v3), 0);
        v11 = PokemonSprite_GetAttribute(BattleAnimSystem_GetBattlerSprite(param0, v3), 1);
        v11 -= PokemonSprite_GetAttribute(BattleAnimSystem_GetBattlerSprite(param0, v3), 41);

        Bg_SetOffset(param0->bgConfig, BG_LAYER_MAIN_2, 0, -(v10 - 40));
        Bg_SetOffset(param0->bgConfig, BG_LAYER_MAIN_2, 3, -(v11 - 40));
    }

    Bg_ToggleLayer(BG_LAYER_MAIN_2, 1);
    Bg_SetPriority(BG_LAYER_MAIN_2, ov12_0222339C(param0));
}

static void ov12_02221424(BattleAnimSystem *param0)
{
    param0->scriptPtr += 1;
    param0->scriptPtr += 1;

    {
        u8 *v0 = Bg_GetCharPtr(2);
        MI_CpuFill8(v0, 0, 10 * 10 * 2 * 0x20);
    }

    ov12_02221238(param0, 4);
}

static void ov12_0222144C(BattleAnimSystem *param0)
{
    int v0 = (4 + 1);
    SpriteResourceCapacities v1 = {
        0x5,
        0x5,
        0x5,
        0x5,
        0x0,
        0x0
    };

    param0->scriptPtr += 1;
    param0->pokemonSpriteManager = SpriteManager_New(param0->context->spriteSystem);

    SpriteSystem_InitSprites(param0->context->spriteSystem, param0->pokemonSpriteManager, v0);
    SetSubScreenViewRect(SpriteSystem_GetRenderer(param0->context->spriteSystem), 0, ((192 + 80) << FX32_SHIFT));
    SpriteSystem_InitManagerWithCapacities(param0->context->spriteSystem, param0->pokemonSpriteManager, &v1);
}

static void ov12_022214C4(BattleAnimSystem *param0)
{
    int resourceIDs[SPRITE_RESOURCE_MAX];
    int v1;

    param0->scriptPtr += 1;
    v1 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    resourceIDs[SPRITE_RESOURCE_CHAR] = 20001 + v1 + ((param0->context->attacker) * 5000);
    resourceIDs[SPRITE_RESOURCE_PLTT] = 20001 + v1 + ((param0->context->attacker) * 5000);
    resourceIDs[SPRITE_RESOURCE_CELL] = 20001 + v1 + ((param0->context->attacker) * 5000);
    resourceIDs[SPRITE_RESOURCE_ANIM] = 20001 + v1 + ((param0->context->attacker) * 5000);
    resourceIDs[SPRITE_RESOURCE_MULTI_CELL] = 0;
    resourceIDs[SPRITE_RESOURCE_MULTI_ANIM] = 0;

    SpriteSystem_LoadCharResObjFromOpenNarc(
        param0->context->spriteSystem,
        param0->pokemonSpriteManager,
        param0->arcs[BATTLE_ANIM_SYSTEM_ARC_BATT_OBJ],
        76,
        FALSE,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        resourceIDs[SPRITE_RESOURCE_PLTT]);

    SpriteSystem_LoadPaletteBufferFromOpenNarc(
        param0->paletteData,
        PLTTBUF_MAIN_OBJ,
        param0->context->spriteSystem,
        param0->pokemonSpriteManager,
        param0->arcs[BATTLE_ANIM_SYSTEM_ARC_BATT_OBJ],
        75,
        FALSE,
        1,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        resourceIDs[SPRITE_RESOURCE_PLTT]);

    SpriteSystem_LoadCellResObjFromOpenNarc(
        param0->context->spriteSystem,
        param0->pokemonSpriteManager,
        param0->arcs[BATTLE_ANIM_SYSTEM_ARC_BATT_OBJ],
        77,
        FALSE,
        resourceIDs[SPRITE_RESOURCE_CELL]);

    SpriteSystem_LoadAnimResObjFromOpenNarc(
        param0->context->spriteSystem,
        param0->pokemonSpriteManager,
        param0->arcs[BATTLE_ANIM_SYSTEM_ARC_BATT_OBJ],
        78,
        FALSE,
        resourceIDs[SPRITE_RESOURCE_ANIM]);
}

static void BattleAnimScriptCmd_AddPokemonSprite(BattleAnimSystem *system)
{
    u8 *charData = NULL;
    ManagedSprite *sprite = NULL;

    BattleAnimScript_Next(system);

    enum BattleAnimBattlerType battlerType = BattleAnimScript_ReadWord(system->scriptPtr);
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

    int battler = BattleAnimSystem_GetBattlerOfType(system, battlerType);
    enum NarcID narcID = system->context->pokemonSpriteData[battler]->unk_04;
    int paletteIndex = system->context->pokemonSpriteData[battler]->unk_08;
    charData = system->context->pokemonSpriteData[battler]->unk_00;
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

    if (BattleAnimSystem_IsContest(system) == TRUE &&
        IsFormSymmetrical(BattleAnimSystem_GetBattlerSpecies(system, battler), battlerForm) == TRUE) {
        ManagedSprite_SetFlipMode(sprite, TRUE);
    }

    if (BattleAnimSystem_GetBattlerSprite(system, battler) != NULL) {
        NNSG2dImageProxy *proxy = Sprite_GetImageProxy(sprite->sprite);
        VramTransfer_Request(
            NNS_GFD_DST_2D_OBJ_CHAR_MAIN,
            proxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN],
            charData,
            (10 * 10 * ((8 / 2) * 8)));
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
            offset * SLOTS_PER_PALETTE);
    }

    GF_ASSERT(system->pokemonSprites[spriteID] == NULL);

    system->pokemonSprites[spriteID] = sprite;
    system->usedPokemonSprites[spriteID] = TRUE;

    if (trackBattler == TRUE) {
        if (BattleAnimSystem_GetBattlerSprite(system, battler) == NULL) {
            return;
        }

        system->spriteTrackingTasks[spriteID] = Heap_AllocFromHeap(system->heapID, sizeof(SpriteTrackingTask));
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

static void ov12_02221810(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02221810 *v0 = param1;

    if (v0->unk_0C == 0) {
        SysTask_Done(param0);
        return;
    }

    if (v0->unk_00->pokemonSpriteManager != NULL) {
        SpriteSystem_DrawSprites(v0->unk_04);
    }
}

static void ov12_02221834(BattleAnimSystem *param0)
{
    int v0;
    int v1;
    int v2;

    param0->scriptPtr += 1;

    v0 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v1 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v2 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    param0->unk_48[v1].unk_00 = param0;
    param0->unk_48[v1].unk_04 = param0->pokemonSpriteManager;
    param0->unk_48[v1].unk_08 = param0->pokemonSprites[v2];
    param0->unk_48[v1].unk_0C = 1;

    ManagedSprite_SetDrawFlag(param0->unk_48[v1].unk_08, 0);

    if (BattleAnimSystem_IsDoubleBattle(param0) == 1) {
        int v3, v4;

        v3 = BattleAnimUtil_GetBattlerType(param0, BattleAnimSystem_GetAttacker(param0));
        v4 = BattleAnimUtil_GetBattlerType(param0, BattleAnimSystem_GetDefender(param0));

        {
            int v5;
            int v6;
            PokemonSprite *v7;

            v6 = BattleAnimSystem_GetBattlerOfType(param0, v0);
            v7 = BattleAnimSystem_GetBattlerSprite(param0, v6);

            if (v7 != NULL) {
                v5 = PokemonSprite_GetAttribute(v7, MON_SPRITE_HIDE);
            } else {
                v5 = 0;
            }

            if (v5 == 1) {
                ManagedSprite_SetDrawFlag(param0->unk_48[v1].unk_08, 0);
            } else {
                ManagedSprite_SetDrawFlag(param0->unk_48[v1].unk_08, 1);
            }
        }

        switch (v0) {
        case 0:
            if ((v3 == 3) || (v3 == 4)) {
                ManagedSprite_SetPriority(param0->unk_48[v1].unk_08, 1);
            } else {
                ManagedSprite_SetDrawFlag(param0->unk_48[v1].unk_08, 0);
                ManagedSprite_SetPriority(param0->unk_48[v1].unk_08, 255);
            }
            break;
        case 2:
            if ((v3 == 5) || (v3 == 2)) {
                ManagedSprite_SetPriority(param0->unk_48[v1].unk_08, 1);
            } else {
                ManagedSprite_SetDrawFlag(param0->unk_48[v1].unk_08, 0);
                ManagedSprite_SetPriority(param0->unk_48[v1].unk_08, 255);
            }
            break;
        case 1:
            switch (v4) {
            case 2:
                ManagedSprite_SetPriority(param0->unk_48[v1].unk_08, 255);
                break;
            case 3:
                ManagedSprite_SetPriority(param0->unk_48[v1].unk_08, 1);
                break;
            case 4:
                ManagedSprite_SetPriority(param0->unk_48[v1].unk_08, 1);
                break;
            case 5:
                ManagedSprite_SetPriority(param0->unk_48[v1].unk_08, 255);
                break;
            }
            break;
        case 3:
            switch (v4) {
            case 2:
                ManagedSprite_SetPriority(param0->unk_48[v1].unk_08, 1);
                break;
            case 3:
                ManagedSprite_SetPriority(param0->unk_48[v1].unk_08, 255);
                break;
            case 4:
                ManagedSprite_SetPriority(param0->unk_48[v1].unk_08, 255);
                break;
            case 5:
                ManagedSprite_SetPriority(param0->unk_48[v1].unk_08, 1);
                break;
            }
            break;
        }

        SysTask_Start(ov12_02221810, &param0->unk_48[v1], 0x1000);
    }
}

static void ov12_022219E8(BattleAnimSystem *param0)
{
    int v0;

    param0->scriptPtr += 1;

    v0 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;
    param0->unk_48[v0].unk_0C = 0;
}

static void ov12_02221A00(BattleAnimSystem *param0)
{
    int v0;

    param0->scriptPtr += 1;
    v0 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    ov12_02221238(param0, v0);
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

static BOOL (*const Unk_ov12_022385CC[])(SysTask *, UnkStruct_ov12_02221BBC *) = {
    ov12_02221C50,
    ov12_02221F44,
    ov12_022222A4,
    ov12_02221D50,
    ov12_0222206C,
    ov12_022222B0
};

static BOOL (*const Unk_ov12_02238644[])(UnkStruct_ov12_02221BBC *) = {
    ov12_0222235C,
    ov12_02222360,
    ov12_022226D0,
    ov12_022226E8,
    ov12_0222235C,
    ov12_0222240C,
    ov12_022224E4
};

static BOOL ov12_02221A54(UnkStruct_ov12_02221BBC *param0, BattleAnimSystem *param1, int param2)
{
    int v0;
    int v1;

    v0 = BattleAnimUtil_GetBattlerSide(param1, param1->context->attacker);
    v1 = BattleAnimUtil_GetBattlerSide(param1, param1->context->defender);

    if (param0->unk_1C[param2] == 2) {
        if (v0 == v1) {
            if (v1 == 0x3) {
                return 0;
            } else {
                return 1;
            }
        } else if (v1 == 0x3) {
            return 1;
        }
    } else if (param0->unk_1C[param2] != 0) {
        if (v1 == 0x3) {
            return 1;
        }
    }

    return 0;
}

static void ov12_02221AA8(UnkStruct_ov12_02221BBC *param0, BattleAnimSystem *param1, int param2, int param3)
{
    Graphics_LoadTilesToBgLayer(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, ov12_022234E4(param3, HEAP_ID_SYSTEM), param1->bgConfig, param2, 0, 0, 1, param1->heapID);
    PaletteData_LoadBufferFromFileStart(param1->paletteData, 7, ov12_022234E4(param3, 1), param1->heapID, 0, 0x20, (9 * 16));
    Bg_ClearTilemap(param1->bgConfig, param2);

    {
        int v0 = 2;

        if (BattleAnimSystem_IsContest(param1) == 1) {
            v0 = 4;
        } else if (ov12_02221A54(param0, param1, 7) == 1) {
            v0 = 3;
        }

        Graphics_LoadTilemapToBgLayer(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, ov12_022234E4(param3, v0), param1->bgConfig, param2, 0, 0, 1, param1->heapID);
    }
}

static int ov12_02221B54(int param0, int param1)
{
    int v0;
    int v1;

    if (((param0 << 16) & param1) == param1) {
        v0 = 1;
    } else {
        v0 = 0;
    }

    return v0;
}

static void ov12_02221B64(UnkStruct_ov12_02221BBC *param0)
{
    int v0;
    int v1;
    int v2;
    const u32 v3[] = {
        0x20000,
        0x40000,
        0x200000,
        0x400000
    };

    for (v0 = 0; v0 < NELEMS(v3); v0++) {
        if (ov12_02221B54(param0->unk_18, v3[v0]) == 0) {
            continue;
        }

        v1 = 0;
        v2 = ((v3[v0] >> 1) >> 16);
        v2 = v3[v0] >> 16;

        while (v2 >= 2) {
            v2 /= 2;
            v1++;
        }

        Unk_ov12_02238644[v1](param0);
    }
}

static UnkStruct_ov12_02221BBC *ov12_02221BBC(BattleAnimSystem *param0)
{
    UnkStruct_ov12_02221BBC *v0 = NULL;

    v0 = Heap_AllocFromHeap(param0->heapID, sizeof(UnkStruct_ov12_02221BBC));

    if (v0 == NULL) {
        GF_ASSERT(FALSE);
        return NULL;
    }

    memset(v0, 0, sizeof(UnkStruct_ov12_02221BBC));

    v0->unk_00 = 0;
    v0->unk_05 = 0;
    v0->unk_48 = param0;
    v0->unk_09 = 0;
    v0->unk_0A = 31;
    v0->unk_0B = 31 - 2;
    v0->unk_0C = 0 + 2;

    if (BattleAnimSystem_GetScriptVar(param0, 5) == 1) {
        v0->unk_09 = 0;
        v0->unk_0A = 31;
        v0->unk_0B = 15;
        v0->unk_0C = 7;
    }

    if (BattleAnimSystem_GetScriptVar(param0, 5) == 2) {
        v0->unk_09 = 7;
        v0->unk_0A = 15;
        v0->unk_0B = 31 - 2;
        v0->unk_0C = 0 + 2;
    }

    {
        int v1;

        for (v1 = 0; v1 < (8 + 2); v1++) {
            v0->unk_1C[v1] = param0->scriptVars[v1];
        }
    }

    param0->unk_178 = 1;

    return v0;
}

static BOOL ov12_02221C50(SysTask *param0, UnkStruct_ov12_02221BBC *param1)
{
    switch (param1->unk_05) {
    case 0:

        ov12_02222590(param1->unk_48, 2);
        {
            int v0 = ov12_02223428(param1->unk_48, 2);
            int v1 = ov12_02223428(param1->unk_48, 1);

            Bg_SetPriority(BG_LAYER_MAIN_3, v0);
            Bg_SetPriority(BG_LAYER_MAIN_2, v0);
        }
        Bg_ToggleLayer(BG_LAYER_MAIN_2, 1);

        param1->unk_05++;
        break;

    case 1: {
        Bg_SetControlParam(param1->unk_48->bgConfig, 3, 2, GX_BG_CHARBASE_0x0c000);

        if (BattleAnimSystem_IsContest(param1->unk_48) != 1) {
            Bg_SetControlParam(param1->unk_48->bgConfig, 3, 0, GX_BG_COLORMODE_16);
        }

        ov12_02221AA8(param1, param1->unk_48, 3, param1->unk_10);
        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG3, param1->unk_0A, param1->unk_09);
        ov12_02221B64(param1);
    }
        param1->unk_05++;

    case 2: {
        int v2 = 0;

        if (param1->unk_09 < param1->unk_0B) {
            param1->unk_09 += 2;
        } else {
            v2++;
        }

        if (param1->unk_0A > param1->unk_0C) {
            param1->unk_0A -= 2;
        } else {
            v2++;
        }

        if (v2 == 2) {
            param1->unk_09 = param1->unk_0B;
            param1->unk_0A = param1->unk_0C;
            param1->unk_05++;
        }

        G2_ChangeBlendAlpha(param1->unk_0A, param1->unk_09);

        if (param1->unk_05 != 2) {
            return 0;
        }
    } break;
    default:
        return 0;
    }

    return 1;
}

static BOOL ov12_02221D50(SysTask *param0, UnkStruct_ov12_02221BBC *param1)
{
    switch (param1->unk_05) {
    case 0:
        Bg_ToggleLayer(BG_LAYER_MAIN_2, 1);
        param1->unk_05++;
    case 1: {
        int v0 = ov12_02223428(param1->unk_48, 2);
        int v1 = ov12_02223428(param1->unk_48, 1);

        Bg_SetPriority(BG_LAYER_MAIN_3, v0);
        Bg_SetPriority(BG_LAYER_MAIN_2, v0);

        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG3, param1->unk_09, param1->unk_0A);
        ov12_02221B64(param1);
    }
        param1->unk_05++;

    case 2: {
        int v2 = 0;

        if (param1->unk_09 < param1->unk_0B) {
            param1->unk_09 += 2;
        } else {
            v2++;
        }

        if (param1->unk_0A > param1->unk_0C) {
            param1->unk_0A -= 2;
        } else {
            v2++;
        }

        if (v2 == 2) {
            param1->unk_09 = param1->unk_0B + 2;
            param1->unk_0A = param1->unk_0C - 2;
            param1->unk_05++;
        }

        G2_ChangeBlendAlpha(param1->unk_09, param1->unk_0A);
    } break;
    case 3:
        if (param1->unk_44_0 == 1) {
            ov12_02222338(param1->unk_48);
        }

        if (param1->unk_44_1 == 1) {
            ov12_02222338(param1->unk_48);
        }

        Bg_SetOffset(param1->unk_48->bgConfig, 3, 0, 0);
        Bg_SetOffset(param1->unk_48->bgConfig, 3, 3, 0);
        Bg_SetControlParam(param1->unk_48->bgConfig, 3, 2, GX_BG_CHARBASE_0x10000);

        if (BattleAnimSystem_IsContest(param1->unk_48) == 0) {
            Bg_SetControlParam(param1->unk_48->bgConfig, 3, 0, GX_BG_COLORMODE_256);
            ov12_02223460(param1->unk_48, 3);
            ov12_02223488(param1->unk_48);
        } else {
            Graphics_LoadTilesToBgLayer(param1->unk_48->unk_180.unk_00, param1->unk_48->unk_180.unk_04, param1->unk_48->bgConfig, 3, 0, 0, 1, param1->unk_48->heapID);
            PaletteData_LoadBufferFromFileStart(param1->unk_48->paletteData, param1->unk_48->unk_180.unk_00, param1->unk_48->unk_180.unk_08, param1->unk_48->heapID, 0, param1->unk_48->unk_180.unk_14 * 0x20, param1->unk_48->unk_180.unk_10);
        }

        Graphics_LoadTilemapToBgLayer(param1->unk_48->unk_180.unk_00, param1->unk_48->unk_180.unk_0C, param1->unk_48->bgConfig, 3, 0, 0, 1, param1->unk_48->heapID);
        param1->unk_05++;
        break;
    case 4:
        if (BattleAnimSystem_IsContest(param1->unk_48) == 0) {
            Battle_SetDefaultBlend();
        } else {
            ov17_022413D8();
        }

        ov12_02222664(param1->unk_48, 2);
        param1->unk_05++;
        break;
    default:
        return 0;
    }

    return 1;
}

static BOOL ov12_02221F44(SysTask *param0, UnkStruct_ov12_02221BBC *param1)
{
    switch (param1->unk_05) {
    case 0:
        if (param1->unk_0D == 0) {
            PaletteData_StartFade(param1->unk_48->paletteData, 0x1, param1->unk_48->unk_198, 0, 0, 16, 0);
            PaletteData_BlendMulti(param1->unk_48->paletteData, 0, 0x200, 16, 0);
        } else {
            PaletteData_StartFade(param1->unk_48->paletteData, 0x1, param1->unk_48->unk_198, 0, 0, 16, 0xFFFF);
            PaletteData_BlendMulti(param1->unk_48->paletteData, 0, 0x200, 16, 0xFFFF);
        }

        param1->unk_05++;
    case 1:
        if (PaletteData_GetSelectedBuffersMask(param1->unk_48->paletteData) != 0) {
            break;
        }

        Bg_SetControlParam(param1->unk_48->bgConfig, 3, 0, GX_BG_COLORMODE_16);
        ov12_02221AA8(param1, param1->unk_48, 3, param1->unk_10);

        if (param1->unk_0D == 0) {
            PaletteData_StartFade(param1->unk_48->paletteData, 0x1, (1 << 9), 0, 16, 0, 0);
        } else {
            PaletteData_StartFade(param1->unk_48->paletteData, 0x1, (1 << 9), 0, 16, 0, 0xFFFF);
        }

        ov12_02221B64(param1);

        param1->unk_48->unk_178 = 2;
        param1->unk_05++;
        break;
    default:
        if (PaletteData_GetSelectedBuffersMask(param1->unk_48->paletteData) != 0) {
            break;
        }

        return 0;
    }

    return 1;
}

static BOOL ov12_0222206C(SysTask *param0, UnkStruct_ov12_02221BBC *param1)
{
    switch (param1->unk_05) {
    case 0:
        ov12_02221B64(param1);
        param1->unk_05++;
    case 1:
        if (param1->unk_0D == 0) {
            PaletteData_StartFade(param1->unk_48->paletteData, 0x1, (1 << 9), 0, 0, 16, 0);
            PaletteData_BlendMulti(param1->unk_48->paletteData, 0, param1->unk_48->unk_198, 16, 0);
        } else {
            PaletteData_StartFade(param1->unk_48->paletteData, 0x1, (1 << 9), 0, 0, 16, 0xFFFF);
            PaletteData_BlendMulti(param1->unk_48->paletteData, 0, param1->unk_48->unk_198, 16, 0xFFFF);
        }

        param1->unk_05++;
    case 2:
        if (PaletteData_GetSelectedBuffersMask(param1->unk_48->paletteData) != 0) {
            break;
        }

        if (param1->unk_44_0 == 1) {
            ov12_02222338(param1->unk_48);
        }

        if (param1->unk_44_1 == 1) {
            ov12_02222338(param1->unk_48);
        }

        Bg_ToggleLayer(BG_LAYER_MAIN_3, 0);

        if (BattleAnimSystem_IsContest(param1->unk_48) == 0) {
            Bg_SetControlParam(param1->unk_48->bgConfig, 3, 0, GX_BG_COLORMODE_256);

            ov12_02223460(param1->unk_48, 3);
            ov12_02223488(param1->unk_48);
        } else {
            Graphics_LoadTilesToBgLayer(param1->unk_48->unk_180.unk_00, param1->unk_48->unk_180.unk_04, param1->unk_48->bgConfig, 3, 0, 0, 1, param1->unk_48->heapID);
            PaletteData_LoadBufferFromFileStart(param1->unk_48->paletteData, param1->unk_48->unk_180.unk_00, param1->unk_48->unk_180.unk_08, param1->unk_48->heapID, 0, param1->unk_48->unk_180.unk_14 * 0x20, param1->unk_48->unk_180.unk_10);
        }

        Graphics_LoadTilemapToBgLayer(param1->unk_48->unk_180.unk_00, param1->unk_48->unk_180.unk_0C, param1->unk_48->bgConfig, 3, 0, 0, 1, param1->unk_48->heapID);
        Bg_ToggleLayer(BG_LAYER_MAIN_3, 1);

        param1->unk_05++;
    case 3:
        Bg_SetOffset(param1->unk_48->bgConfig, 3, 0, 0);
        Bg_SetOffset(param1->unk_48->bgConfig, 3, 3, 0);

        if (param1->unk_0D == 0) {
            PaletteData_StartFade(param1->unk_48->paletteData, 0x1, param1->unk_48->unk_198, 0, 16, 0, 0);
        } else {
            PaletteData_StartFade(param1->unk_48->paletteData, 0x1, param1->unk_48->unk_198, 0, 16, 0, 0xFFFF);
        }

        param1->unk_05++;

    default:
        if (PaletteData_GetSelectedBuffersMask(param1->unk_48->paletteData) != 0) {
            break;
        }

        param1->unk_48->unk_178 = 2;
        param1->unk_05++;

        return 0;
    }

    return 1;
}

static BOOL ov12_022222A4(SysTask *param0, UnkStruct_ov12_02221BBC *param1)
{
    ov12_02221B64(param1);
    return 0;
}

static BOOL ov12_022222B0(SysTask *param0, UnkStruct_ov12_02221BBC *param1)
{
    ov12_02221B64(param1);

    if (param1->unk_44_0 == 1) {
        ov12_02222338(param1->unk_48);
    }

    return 0;
}

static void ov12_022222D4(SysTask *param0, void *param1)
{
    UnkStruct_ov12_022222D4 *v0 = (UnkStruct_ov12_022222D4 *)param1;

    if (v0->unk_18 == 1) {
        Heap_Free(v0);
        SysTask_Done(param0);
        return;
    }

    v0->unk_04 += v0->unk_08;
    v0->unk_06 += v0->unk_0A;

    if (v0->unk_08 != 0) {
        Bg_SetOffset(v0->unk_00, v0->unk_0C, 0, v0->unk_04);
    }

    if (v0->unk_0A != 0) {
        Bg_SetOffset(v0->unk_00, v0->unk_0C, 3, v0->unk_06);
    }
}

void ov12_02222338(BattleAnimSystem *param0)
{
    GF_ASSERT(param0);

    if (param0->unk_17C == NULL) {
        return;
    }

    param0->unk_17C->unk_18 = 1;
}

int ov12_02222354(BattleAnimSystem *param0)
{
    return param0->unk_198;
}

static BOOL ov12_0222235C(UnkStruct_ov12_02221BBC *param0)
{
    return 0;
}

static BOOL ov12_02222360(UnkStruct_ov12_02221BBC *param0)
{
    int v0;
    UnkStruct_ov12_022222D4 *v1 = Heap_AllocFromHeap(param0->unk_48->heapID, sizeof(UnkStruct_ov12_022222D4));

    v1->unk_00 = param0->unk_48->bgConfig;
    v1->unk_04 = param0->unk_48->scriptVars[2];
    v1->unk_06 = param0->unk_48->scriptVars[3];
    v1->unk_08 = param0->unk_48->scriptVars[0];
    v1->unk_0A = param0->unk_48->scriptVars[1];
    v1->unk_0C = 3;
    v1->unk_10 = 3;

    if (ov12_02221A54(param0, param0->unk_48, 6) == 1) {
        v1->unk_08 *= -1;
        v1->unk_0A *= -1;
        v1->unk_04 *= -1;
        v1->unk_06 *= -1;
    }

    v1->unk_14 = 1;
    v1->unk_18 = 0;

    param0->unk_48->unk_17C = v1;
    param0->unk_44_0 = 1;

    SysTask_Start(ov12_022222D4, v1, 0x1001);

    return 0;
}

static BOOL ov12_0222240C(UnkStruct_ov12_02221BBC *param0)
{
    int v0, v1;
    BattleAnimSystem *v2 = param0->unk_48;
    UnkStruct_ov12_022222D4 *v3 = Heap_AllocFromHeap(param0->unk_48->heapID, sizeof(UnkStruct_ov12_022222D4));

    v3->unk_1C = Heap_AllocFromHeap(v2->heapID, sizeof(UnkStruct_ov12_022224F8));
    v2->unk_17C = v3;

    param0->unk_44_1 = 1;

    v3->unk_18 = 0;
    v3->unk_1C->unk_C0 = ov12_02226544(ov12_022266F0(ov12_022233EC(v2, 2)), ov12_022266E8(0, 0), v2->heapID);

    for (v0 = 0; v0 < ((192 - 64) / 8); v0++) {
        v3->unk_1C->unk_00[v0].unk_00 = (v0 * 8);
        v3->unk_1C->unk_00[v0].unk_02 = (v3->unk_1C->unk_00[v0].unk_00 + 8);
        v3->unk_1C->unk_00[v0].unk_04 = Unk_ov12_02238660[v0];
        v3->unk_1C->unk_00[v0].unk_06 = 0;
        v3->unk_1C->unk_00[v0].unk_08 = ov12_022266E8(0, 0);

        if (ov12_02221A54(param0, param0->unk_48, 6) == 1) {
            v3->unk_1C->unk_00[v0].unk_04 *= -1;
        }
    }

    SysTask_Start(ov12_022224F8, v3, 0x1000);
    return 0;
}

static BOOL ov12_022224E4(UnkStruct_ov12_02221BBC *param0)
{
    BattleAnimSystem *v0 = param0->unk_48;
    UnkStruct_ov12_022222D4 *v1 = param0->unk_48->unk_17C;

    param0->unk_44_1 = 1;
    return 0;
}

static void ov12_022224F8(SysTask *param0, void *param1)
{
    int v0, v1;
    u32 *v2;
    UnkStruct_ov12_022224F8 *v3 = (UnkStruct_ov12_022224F8 *)(((UnkStruct_ov12_022222D4 *)param1)->unk_1C);
    UnkStruct_ov12_022222D4 *v4 = (UnkStruct_ov12_022222D4 *)param1;

    if (v4->unk_18 == 1) {
        ov12_022265C0(v4->unk_1C->unk_C0);
        Heap_Free(v4->unk_1C);
        Heap_Free(v4);
        SysTask_Done(param0);
        return;
    }

    v2 = ov12_022265E4(v3->unk_C0);

    for (v0 = 0; v0 < ((192 - 64) / 8); v0++) {
        v3->unk_00[v0].unk_06 += v3->unk_00[v0].unk_04;

        for (v1 = v3->unk_00[v0].unk_00; v1 < v3->unk_00[v0].unk_02; v1++) {
            s16 v5, v6;

            v5 = v3->unk_00[v0].unk_08 & 0xffff;
            v6 = v3->unk_00[v0].unk_08 >> 16;

            v2[v1] = ov12_022266E8(v5 + v3->unk_00[v0].unk_06, v6);
        }
    }
}

void ov12_02222590(BattleAnimSystem *param0, int param1)
{
    int v0 = ov12_02223428(param0, 2);

    Bg_SetPriority(param1, v0);
    Bg_ToggleLayer(param1, 0);

    if (BattleAnimSystem_IsContest(param0) == 1) {
        Bg_SetControlParam(param0->bgConfig, param1, 2, GX_BG_CHARBASE_0x10000);
    } else {
        Bg_SetControlParam(param0->bgConfig, param1, 0, GX_BG_COLORMODE_256);
        Bg_SetControlParam(param0->bgConfig, param1, 2, GX_BG_CHARBASE_0x10000);
    }

    Bg_ClearTilemap(param0->bgConfig, param1);

    if (BattleAnimSystem_IsContest(param0) == 1) {
        Graphics_LoadTilesToBgLayer(param0->unk_180.unk_00, param0->unk_180.unk_04, param0->bgConfig, param1, 0, 0, 1, param0->heapID);
    } else {
        ov12_02223460(param0, param1);
    }

    Graphics_LoadTilemapToBgLayer(param0->unk_180.unk_00, param0->unk_180.unk_0C, param0->bgConfig, param1, 0, 0, 1, param0->heapID);
}

void ov12_02222664(BattleAnimSystem *param0, int param1)
{
    int v0 = ov12_02223428(param0, 1);

    Bg_SetPriority(param1, v0);

    if (BattleAnimSystem_IsContest(param0) == 1) {
        Bg_SetControlParam(param0->bgConfig, param1, 2, GX_BG_CHARBASE_0x0c000);
    } else {
        Bg_SetControlParam(param0->bgConfig, param1, 0, GX_BG_COLORMODE_16);
        Bg_SetControlParam(param0->bgConfig, param1, 2, GX_BG_CHARBASE_0x0c000);
    }

    Bg_ClearTilemap(param0->bgConfig, param1);
}

static BOOL ov12_022226D0(UnkStruct_ov12_02221BBC *param0)
{
    param0->unk_44_0 = 1;
    return 0;
}

static BOOL ov12_022226E8(UnkStruct_ov12_02221BBC *param0)
{
    ov12_02222338(param0->unk_48);
    return 0;
}

static void ov12_022226F4(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02221BBC *v0 = (UnkStruct_ov12_02221BBC *)param1;
    BOOL v1 = Unk_ov12_022385CC[v0->unk_14](param0, v0);

    if (v1 == 0) {
        v0->unk_48->unk_178 = 0;

        Heap_Free(v0);
        SysTask_Done(param0);
    }
}

static void ov12_02222724(BattleAnimSystem *param0)
{
    UnkStruct_ov12_02221BBC *v0;
    int v1;

    v0 = ov12_02221BBC(param0);

    v0->unk_0D = BattleAnimSystem_GetScriptVar(param0, 4);
    param0->scriptPtr += 1;

    v0->unk_10 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v1 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v0->unk_14 = (v1 & 0xFFFF);
    v0->unk_18 = (v1 & 0xFFFF0000) >> 16;

    SysTask_Start(ov12_022226F4, v0, 1100);
}

static void ov12_02222774(BattleAnimSystem *param0)
{
    int v0;
    s16 v1;

    param0->scriptPtr += 1;

    v0 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v1 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    switch (v0) {
    case 0:
        param0->unk_17C->unk_08 = v1;
        break;
    case 1:
        param0->unk_17C->unk_0A = v1;
        break;
    case 2:
        param0->unk_17C->unk_04 = v1;
        break;
    case 3:
        param0->unk_17C->unk_04 = v1;
        break;
    default:
        break;
    }
}

static void ov12_022227CC(BattleAnimSystem *param0)
{
    UnkStruct_ov12_02221BBC *v0;
    int v1;

    v0 = ov12_02221BBC(param0);

    v0->unk_0D = BattleAnimSystem_GetScriptVar(param0, 4);
    param0->scriptPtr += 1;

    v0->unk_10 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v1 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v0->unk_14 = (v1 & 0xFFFF) + 3;
    v0->unk_18 = (v1 & 0xFFFF0000) >> 16;

    SysTask_Start(ov12_022226F4, v0, 1100);
}

static void ov12_02222820(BattleAnimSystem *param0)
{
    if (param0->unk_178 == 2) {
        param0->scriptPtr += 1;
        param0->scriptDelay = 0;
    } else {
        param0->scriptDelay = 1;
    }
}

static void ov12_02222840(BattleAnimSystem *param0)
{
    if (param0->unk_178 == 0) {
        param0->scriptPtr += 1;
        param0->scriptDelay = 0;
    } else {
        param0->scriptDelay = 1;
    }
}

static void ov12_02222860(BattleAnimSystem *param0)
{
    int v0;

    param0->scriptPtr += 1;
    v0 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    Graphics_LoadTilesToBgLayer(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, ov12_022234E4(v0, HEAP_ID_SYSTEM), param0->bgConfig, 3, 0, 0, 1, param0->heapID);
    Graphics_LoadPalette(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, ov12_022234E4(v0, HEAP_ID_SAVE), 0, 0, 0, param0->heapID);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, ov12_022234E4(v0, HEAP_ID_DEBUG), param0->bgConfig, 3, 0, 0, 1, param0->heapID);
}

static void ov12_022228DC(BattleAnimSystem *param0)
{
    UnkStruct_ov12_02221BBC *v0;
    int v1, v2, v3;

    v0 = ov12_02221BBC(param0);

    param0->scriptPtr += 1;

    v1 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v2 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v3 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    if (BattleAnimSystem_IsContest(param0) == 1) {
        v0->unk_10 = v3;
    } else {
        if (BattleAnimUtil_GetBattlerSide(param0, param0->context->defender) == 0x3) {
            v0->unk_10 = v2;
        } else {
            v0->unk_10 = v1;
        }
    }

    SysTask_Start(ov12_022226F4, v0, 1100);
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

static void BattleAnimScriptCmd_Nop3(BattleAnimSystem *param0)
{
    (void)0;
}

static void BattleAnimScriptCmd_WaitForSoundEffects(BattleAnimSystem *system)
{
    if (system->activeSoundTasks) {
        system->scriptDelay = 1;
        system->unk_179 = 0;
        return;
    }

    if (Sound_IsAnyEffectPlaying()) {
        system->unk_179++;

        if (system->unk_179 > 90) {
            system->unk_179 = 0;
        } else {
            system->scriptDelay = 1;
            return;
        }
    } else {
        system->scriptDelay = 0;
        system->unk_179 = 0;
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

static void BattleAnimScriptCmd_Nop2(BattleAnimSystem *param0)
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
    SetSubScreenViewRect(SpriteSystem_GetRenderer(system->context->spriteSystem), 0, ((192 + 80) << FX32_SHIFT));

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

static void ov12_022230A8(BattleAnimSystem *param0)
{
    int v0;
    int v1;

    param0->scriptPtr += 1;

    v0 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v1 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    ManagedSprite_SetDrawFlag(param0->pokemonSprites[v0], v1);
}

static void ov12_022230CC(BattleAnimSystem *param0)
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

    Pokemon_PlayCry(system->context->chatotCry,
        modulation,
        species,
        form,
        pan,
        volume,
        system->context->transformed,
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

static void ov12_02223160(BattleAnimSystem *param0)
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

int ov12_02223178(BattleAnimContext *param0)
{
    return param0->unk_01;
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

BOOL ov12_0222325C(BattleAnimSystem *param0, int param1[], int param2)
{
    int v0, v1;

    param0->scriptPtr += 1;

    v0 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    if (v0 != param2) {
        GF_ASSERT(v0 == param2);
        return 0;
    }

    for (v1 = 0; v1 < param2; v1++) {
        param1[v1] = BattleAnimScript_ReadWord(param0->scriptPtr);
        param0->scriptPtr += 1;
    }

    return 1;
}

SpriteTemplate ov12_0222329C(BattleAnimSystem *param0)
{
    return param0->lastSpriteTemplate;
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

PaletteData *ov12_0222332C(BattleAnimSystem *param0)
{
    return param0->paletteData;
}

int ov12_02223334(BattleAnimSystem *param0, int param1)
{
    return param0->context->pokemonSpriteData[param1]->unk_08;
}

int ov12_02223344(BattleAnimSystem *param0, int param1)
{
    return param0->context->pokemonSpriteData[param1]->unk_04;
}

int ov12_02223354(BattleAnimSystem *param0, int param1)
{
    return param0->context->pokemonSpriteData[param1]->unk_0C;
}

BOOL BattleAnimSystem_IsDoubleBattle(BattleAnimSystem *system)
{
    return (system->context->battleType & BATTLE_TYPE_DOUBLES) ? TRUE : FALSE;
}

BOOL BattleAnimSystem_IsBattlerSemiInvulnerable(BattleAnimSystem *system, int battler)
{
    return (system->context->battlerMoveEffects[battler] & MOVE_EFFECT_SEMI_INVULNERABLE) ? TRUE : FALSE;
}

int ov12_0222339C(BattleAnimSystem *param0)
{
    int v0;

    if (BattleAnimSystem_IsContest(param0) == 1) {
        v0 = 2;
    } else {
        v0 = 1;
    }

    return v0;
}

int ov12_022233B0(BattleAnimSystem *param0, int param1)
{
    int v0;
    int v1[][3] = {
        { 0x1, 0x2, 0x3 },
        { 0x1, 0x2, 0x3 }
    };

    if (BattleAnimSystem_IsContest(param0) == 1) {
        v0 = v1[1][param1];
    } else {
        v0 = v1[0][param1];
    }

    return v0;
}

int ov12_022233EC(BattleAnimSystem *param0, int param1)
{
    int v0;
    int v1[][3] = {
        { 0x1, 0x2, 0x3 },
        { 0x1, 0x2, 0x3 }
    };

    if (BattleAnimSystem_IsContest(param0) == 1) {
        v0 = v1[1][param1];
    } else {
        v0 = v1[0][param1];
    }

    return v0;
}

int ov12_02223428(BattleAnimSystem *param0, int param1)
{
    int v0;

    switch (param1) {
    case 0:
        if (BattleAnimSystem_IsContest(param0) == 1) {
            v0 = 0;
        } else {
            v0 = 0;
        }
        break;
    case 1:
        if (BattleAnimSystem_IsContest(param0) == 1) {
            v0 = 1;
        } else {
            v0 = 1;
        }
        break;
    case 2:
        if (BattleAnimSystem_IsContest(param0) == 1) {
            v0 = 3;
        } else {
            v0 = 3;
        }
        break;
    case 3:
        return ov12_0222339C(param0);
        break;
    }

    return v0;
}

void ov12_02223460(BattleAnimSystem *param0, int param1)
{
    Bg_LoadTiles(param0->bgConfig, param1, param0->context->unk_110, 0x10000, 0);
}

void ov12_02223488(BattleAnimSystem *param0)
{
    PaletteData_LoadBuffer(param0->paletteData, param0->context->unk_114, 0, 0, 0x200);
}

BOOL ov12_022234A8(BattleAnimSystem *param0, int param1)
{
    int v0;
    int v1;

    v0 = BattleAnimSystem_GetBattlerOfType(param0, param1);
    v1 = param0->context->battlerForms[v0];

    if ((BattleAnimSystem_IsContest(param0) == 1) && (IsFormSymmetrical(BattleAnimSystem_GetBattlerSpecies(param0, v0), v1) == 1)) {
        return 1;
    }

    return 0;
}

static const int Unk_ov12_02238928[][5] = {
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

int ov12_022234E4(int param0, int param1)
{
    return Unk_ov12_02238928[param0][param1];
}

UnkStruct_ov12_02223764 *ov12_022234F8(BattleSystem *battleSys, int heapID, int param2)
{
    int v0;
    int v1[] = { 0, 0, 20, 10, 10, 20 };
    UnkStruct_ov12_02223764 *v2 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov12_02223764));

    v2->heapID = heapID;
    v2->unk_04 = param2;
    v2->unk_08.unk_00 = BattleSystem_GetSpriteSystem(battleSys);
    v2->unk_08.unk_04 = BattleSystem_GetSpriteManager(battleSys);
    v2->unk_08.unk_08 = BattleSystem_PaletteSys(battleSys);

    {
        for (v0 = 0; v0 < 4; v0++) {
            v2->unk_24[v0] = NULL;
            v2->unk_34[v0] = ov16_0223F2AC(battleSys, v0);
        }

        ov16_0223F87C(battleSys, &(v2->unk_44[0]));
        ov16_0223F8AC(battleSys, &(v2->unk_48[0]));
    }

    {
        int v3[6];
        NARC *v4;

        v4 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, heapID);

        for (v0 = 0; v0 < 4; v0++) {
            if ((v0 != v2->unk_04) && (v2->unk_04 != 0xFF)) {
                continue;
            }

            if (v2->unk_48[v0] == NULL) {
                continue;
            }

            v3[0] = 55555 + v0 + ((v2->unk_04) * 5000);
            v3[1] = 55555 + v0 + ((v2->unk_04) * 5000);
            v3[2] = 55555 + v0 + ((v2->unk_04) * 5000);
            v3[3] = 55555 + v0 + ((v2->unk_04) * 5000);
            v3[4] = 0;
            v3[5] = 0;

            SpriteSystem_LoadCharResObjFromOpenNarc(v2->unk_08.unk_00, v2->unk_08.unk_04, v4, 76, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, v3[SPRITE_RESOURCE_CHAR]);
            SpriteSystem_LoadPaletteBufferFromOpenNarc(v2->unk_08.unk_08, 2, v2->unk_08.unk_00, v2->unk_08.unk_04, v4, 75, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 1, v3[SPRITE_RESOURCE_PLTT]);
            SpriteSystem_LoadCellResObjFromOpenNarc(v2->unk_08.unk_00, v2->unk_08.unk_04, v4, 77, FALSE, v3[SPRITE_RESOURCE_CELL]);
            SpriteSystem_LoadAnimResObjFromOpenNarc(v2->unk_08.unk_00, v2->unk_08.unk_04, v4, 78, FALSE, v3[SPRITE_RESOURCE_ANIM]);
        }

        NARC_dtor(v4);
    }

    {
        int v5;
        int v6;
        int v7;
        void *v8;
        int v9[6];
        ManagedSprite *v10;

        for (v5 = 0; v5 < 4; v5++) {
            if ((v5 != v2->unk_04) && (v2->unk_04 != 0xFF)) {
                continue;
            }

            v2->unk_14[v5] = 55555 + v5 + ((v2->unk_04) * 5000);

            v9[0] = 55555 + v5 + ((v2->unk_04) * 5000);
            v9[1] = 55555 + v5 + ((v2->unk_04) * 5000);
            v9[2] = 55555 + v5 + ((v2->unk_04) * 5000);
            v9[3] = 55555 + v5 + ((v2->unk_04) * 5000);
            v9[4] = 0;
            v9[5] = 0;

            v6 = v2->unk_34[v5]->unk_04;
            v7 = v2->unk_34[v5]->unk_08;
            v8 = v2->unk_34[v5]->unk_00;

            {
                int v11;
                SpriteTemplate v12;
                PokemonSprite *v13;
                s16 v14, v15;

                v13 = v2->unk_48[v5];

                if (v13 != NULL) {
                    v14 = PokemonSprite_GetAttribute(v13, MON_SPRITE_X_CENTER);
                    v15 = PokemonSprite_GetAttribute(v13, MON_SPRITE_Y_CENTER);
                    v15 -= PokemonSprite_GetAttribute(v13, MON_SPRITE_SHADOW_HEIGHT);
                } else {
                    continue;
                }

                v12.x = v14;
                v12.y = v15;
                v12.z = 0;
                v12.animIdx = 0;
                v12.priority = v1[v2->unk_44[v5]];
                v12.plttIdx = 0;
                v12.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
                v12.bgPriority = 1;
                v12.vramTransfer = FALSE;

                for (v11 = 0; v11 < 6; v11++) {
                    v12.resources[v11] = v9[v11];
                }

                v10 = SpriteSystem_NewSprite(v2->unk_08.unk_00, v2->unk_08.unk_04, &v12);
                ManagedSprite_TickFrame(v10);
                v2->unk_24[v5] = v10;

                if (v13 == NULL) {
                    ManagedSprite_SetDrawFlag(v10, 0);
                } else if (PokemonSprite_IsActive(v13) == 0) {
                    ManagedSprite_SetDrawFlag(v10, 0);
                } else {
                    int v16 = PokemonSprite_GetAttribute(v13, MON_SPRITE_HIDE);

                    if (v16 == 1) {
                        ManagedSprite_SetDrawFlag(v10, 0);
                    }
                }

                if (v13 != NULL) {
                    NNSG2dImageProxy *v17;

                    v17 = Sprite_GetImageProxy(v10->sprite);
                    VramTransfer_Request(NNS_GFD_DST_2D_OBJ_CHAR_MAIN, v17->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN], v8, (10 * 10 * ((8 / 2) * 8)));
                }

                if (v13 != NULL) {
                    NNSG2dImagePaletteProxy *v18;
                    int v19;

                    v18 = Sprite_GetPaletteProxy(v10->sprite);
                    v19 = PlttTransfer_GetPlttOffset(v18, NNS_G2D_VRAM_TYPE_2DMAIN);

                    PaletteData_LoadBufferFromFileStart(v2->unk_08.unk_08, v6, v7, v2->heapID, 2, 0x20, v19 * 16);
                }
            }
        }
    }

    return v2;
}

UnkStruct_ov12_02223764 *ov12_02223764(BattleSystem *battleSys, int heapID)
{
    return ov12_022234F8(battleSys, heapID, 0xFF);
}

void ov12_02223770(UnkStruct_ov12_02223764 *battleSys)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (battleSys->unk_24[v0] == NULL) {
            continue;
        }

        SpriteManager_UnloadCharObjById(battleSys->unk_08.unk_04, battleSys->unk_14[v0]);
        SpriteManager_UnloadPlttObjById(battleSys->unk_08.unk_04, battleSys->unk_14[v0]);
        Sprite_DeleteAndFreeResources(battleSys->unk_24[v0]);
    }

    Heap_Free(battleSys);
}

void ov12_022237A4(UnkStruct_ov12_02223764 *param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_24[v0] == NULL) {
            continue;
        }

        SpriteManager_UnloadCharObjById(param0->unk_08.unk_04, param0->unk_14[v0]);
        SpriteManager_UnloadPlttObjById(param0->unk_08.unk_04, param0->unk_14[v0]);
        Sprite_DeleteAndFreeResources(param0->unk_24[v0]);
    }

    Heap_Free(param0);
}

int ov12_022237D8(UnkStruct_ov12_02223764 *param0)
{
    GF_ASSERT(param0 != NULL);
    return param0->unk_44[param0->unk_04];
}
