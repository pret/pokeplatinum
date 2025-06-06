#include "overlay012/ov12_0221FC20.h"

#include <nitro.h>
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

typedef struct BattleAnimSoundContext {
    u8 type;

    u8 unused01;
    u8 unused02;

    u8 applyInterval; // Number of frames/ticks between application
    u8 tickCount;

    // Pan
    int startPan;
    int endPan;
    int panIncrement;
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
static void ov12_02222950(BattleAnimSystem *param0);
static void ov12_02221284(BattleAnimSystem *param0);
static void ov12_02221288(BattleAnimSystem *param0);
static void ov12_02222CAC(BattleAnimSystem *param0);
static void ov12_02222CDC(BattleAnimSystem *param0);
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
static void ov12_02222984(BattleAnimSystem *param0);
static void ov12_022229BC(BattleAnimSystem *param0);
static void ov12_022229D8(BattleAnimSystem *param0);
static void ov12_02222B94(BattleAnimSystem *param0);
static void ov12_02222BF8(BattleAnimSystem *param0);
static void ov12_02222CE4(BattleAnimSystem *param0);
static void ov12_02222C50(BattleAnimSystem *param0);
static void ov12_02222C54(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_JumpIfEqual(BattleAnimSystem *param0);
static void ov12_0222128C(BattleAnimSystem *param0);
static void ov12_0222144C(BattleAnimSystem *param0);
static void ov12_022214C4(BattleAnimSystem *param0);
static void ov12_02221580(BattleAnimSystem *param0);
static void ov12_022217B4(BattleAnimSystem *param0);
static void ov12_022217E0(BattleAnimSystem *param0);
static void ov12_02221A00(BattleAnimSystem *param0);
static void ov12_02221A14(BattleAnimSystem *param0);
static void ov12_02221A30(BattleAnimSystem *param0);
static void ov12_02221424(BattleAnimSystem *param0);
static void ov12_02220EA8(BattleAnimSystem *param0);
static void ov12_022228DC(BattleAnimSystem *param0);
static void ov12_02222A78(BattleAnimSystem *param0);
static void ov12_02222AF0(BattleAnimSystem *param0);
static void ov12_0222293C(BattleAnimSystem *param0);
static void ov12_02222940(BattleAnimSystem *param0);
static void ov12_02222944(BattleAnimSystem *param0);
static void ov12_02221A4C(BattleAnimSystem *param0);
static void ov12_02221A50(BattleAnimSystem *param0);
static void ov12_02222948(BattleAnimSystem *param0);
static void ov12_0222294C(BattleAnimSystem *param0);
static void ov12_02222968(BattleAnimSystem *param0);
static void ov12_02220F5C(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_JumpIfWeather(BattleAnimSystem *param0);
static void ov12_02220FFC(BattleAnimSystem *param0);
static void ov12_02221024(BattleAnimSystem *param0);
static void ov12_022230D4(BattleAnimSystem *param0);
static void ov12_02223134(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_CallFunc(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_CreateEmitter(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_CreateEmitterEx(BattleAnimSystem *param0);
static void ov12_02220B8C(BattleAnimSystem *param0);
static void ov12_02220C44(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_WaitForAllEmitters(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_LoadParticleSystem(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_LoadDebugParticleSystem(BattleAnimSystem *param0);
static void BattleAnimScriptCmd_UnloadParticleSystem(BattleAnimSystem *param0);
static void ov12_022230CC(BattleAnimSystem *param0);
static void ov12_02223160(BattleAnimSystem *param0);
static void ov12_02222CE8(BattleAnimSystem *param0);
static void ov12_02222D84(BattleAnimSystem *param0);
static void ov12_02222DCC(BattleAnimSystem *param0);
static void ov12_02222E2C(BattleAnimSystem *param0);
static void ov12_02222E74(BattleAnimSystem *param0);
static void ov12_02222EBC(BattleAnimSystem *param0);
static void ov12_02222FC8(BattleAnimSystem *param0);
static void ov12_0222307C(BattleAnimSystem *param0);
static void ov12_022230A8(BattleAnimSystem *param0);
static void ov12_02221834(BattleAnimSystem *param0);
static void ov12_022219E8(BattleAnimSystem *param0);
static void ov12_0222048C(BattleAnimSystem *param0);
static int ov12_022210A8(BattleAnimSystem *param0, int param1);
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
        system->unk_C8[i] = NULL;
    }

    for (i = 0; i < (4 + 1); i++) {
        system->unk_160[i] = NULL;
    }

    system->unk_174 = NULL;
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

    BattleAnimSystem_SetBlendState();

    if (BattleAnimSystem_IsActive(system) == FALSE) {
        return FALSE;
    }

    for (i = 0; i < MAX_PARTICLE_SYSTEMS; i++) {
        system->cameraProjections[i] = CAMERA_PROJECTION_ORTHOGRAPHIC;
        system->unk_78[i] = 0;
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
    system->unk_C4 = param3->unk_08;
    system->context->battleType = param3->battleType;

    for (i = 0; i < MAX_BATTLERS; i++) {
        system->context->unk_B0[i] = param3->unk_0C[i];
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

    for (i = 0; i < 10; i++) {
        system->unk_D8[i] = NULL;
    }

    for (i = 0; i < (4 + 1); i++) {
        system->unk_138[i] = NULL;
        system->unk_14C[i] = 0;
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

ManagedSprite *ov12_02220298(BattleAnimSystem *param0, int param1)
{
    GF_ASSERT(param1 < 10);
    GF_ASSERT(param0 != NULL);
    GF_ASSERT(param0->unk_D8[param1] != NULL);

    return param0->unk_D8[param1];
}

ManagedSprite *ov12_022202C0(BattleAnimSystem *param0, int param1)
{
    GF_ASSERT(param1 < (4 + 1));
    GF_ASSERT(param0 != NULL);
    GF_ASSERT(param0->unk_138[param1] != NULL);

    return param0->unk_138[param1];
}

SpriteManager *ov12_022202EC(BattleAnimSystem *param0)
{
    GF_ASSERT(param0 != NULL);
    return param0->unk_134;
}

SpriteManager *ov12_02220300(BattleAnimSystem *param0)
{
    return param0->unk_C8[0];
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
    ctx->curPan += ctx->panIncrement;

    if (ctx->panIncrement == 0) {
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
    ov12_02222950,
    ov12_02221284,
    ov12_02221288,
    ov12_02222CAC,
    ov12_02222CDC,
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
    ov12_02222984,
    ov12_022229BC,
    ov12_022229D8,
    ov12_02222B94,
    ov12_02222BF8,
    ov12_02222CE4,
    ov12_02222C50,
    ov12_02222C54,
    BattleAnimScriptCmd_JumpIfEqual,
    ov12_0222128C,
    ov12_02221424,
    ov12_02220EA8,
    ov12_022228DC,
    ov12_02222A78,
    ov12_02222AF0,
    ov12_0222293C,
    ov12_02222940,
    ov12_02222944,
    ov12_02221A4C,
    ov12_02221A50,
    ov12_02222948,
    ov12_0222294C,
    ov12_02222968,
    BattleAnimScriptCmd_CallFunc,
    BattleAnimScriptCmd_CreateEmitter,
    BattleAnimScriptCmd_CreateEmitterEx,
    ov12_02220B8C,
    ov12_02220C44,
    BattleAnimScriptCmd_WaitForAllEmitters,
    BattleAnimScriptCmd_LoadParticleSystem,
    BattleAnimScriptCmd_LoadDebugParticleSystem,
    BattleAnimScriptCmd_UnloadParticleSystem,
    ov12_02223160,
    ov12_022230CC,
    ov12_0222144C,
    ov12_022214C4,
    ov12_02221580,
    ov12_022217B4,
    ov12_022217E0,
    ov12_02221A00,
    ov12_02221A14,
    ov12_02221A30,
    ov12_02220F5C,
    ov12_022230D4,
    ov12_02223134,
    BattleAnimScriptCmd_ResetVar,
    ov12_022206A4,
    ov12_022206E8,
    BattleAnimScriptCmd_JumpIfWeather,
    ov12_02220FFC,
    ov12_02221024,
    ov12_02222CE8,
    ov12_02222D84,
    ov12_02222DCC,
    ov12_02222E2C,
    ov12_02222E74,
    ov12_02222EBC,
    ov12_02222FC8,
    ov12_0222307C,
    ov12_022230A8,
    ov12_02221834,
    ov12_022219E8,
    ov12_0222048C
};

void BattleAnimSystem_SetBlendState(void)
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
        param1->unk_08[v0] = param0->context->unk_B0[v0];
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
        if (system->unk_C8[i] != NULL) {
            SpriteSystem_FreeResourcesAndManager(system->context->spriteSystem, system->unk_C8[i]);
        }

        system->unk_C8[i] = NULL;
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

    if (system->unk_78[psIndex] != 0) {
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

    if (system->unk_78[psIndex] != 0) {
        VecFx32 v4;

        ParticleSystem_GetCameraUp(system->context->particleSystems[psIndex], &v4);
        v4.y *= -1;
        ParticleSystem_SetCameraUp(system->context->particleSystems[psIndex], &v4);
    }

    ParticleSystem_SetCameraProjection(system->context->particleSystems[psIndex], system->cameraProjections[psIndex]);

    system->context->emitters[emitterIndex] = BattleParticleUtil_CreateEmitter(system->context->particleSystems[psIndex], resourceID, callbackID, system);
}

static int ov12_02220ADC(BattleAnimSystem *param0)
{
    int v0;
    int v1, v2;
    int v3, v4;
    int v5[][6] = {
        { 0xFF, 0x1, 0xFF, 0xFF, 0xFF, 0xFF },
        { 0x4, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },
        { 0xFF, 0xFF, 0xFF, 0x3, 0xFF, 0x1 },
        { 0xFF, 0xFF, 0x6, 0xFF, 0x4, 0xFF },
        { 0xFF, 0xFF, 0xFF, 0x1, 0xFF, 0x2 },
        { 0xFF, 0xFF, 0x4, 0xFF, 0x5, 0xFF }
    };

    v3 = BattleAnimSystem_GetAttacker(param0);
    v4 = BattleAnimSystem_GetDefender(param0);
    v1 = ov12_02235254(param0, v3);
    v2 = ov12_02235254(param0, v4);
    v0 = v5[v1][v2];

    GF_ASSERT(v0 != 0xFF);

    return v0 - 1;
}

static int ov12_02220B34(BattleAnimSystem *param0)
{
    int v0;
    int v1, v2;
    int v3, v4;
    int v5[][6] = {
        { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },
        { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },
        { 0xFF, 0xFF, 0xFF, 0xFF, 0x0, 0xFF },
        { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x1 },
        { 0xFF, 0xFF, 0x1, 0xFF, 0xFF, 0xFF },
        { 0xFF, 0xFF, 0xFF, 0x0, 0xFF, 0xFF }
    };

    v3 = BattleAnimSystem_GetAttacker(param0);
    v4 = BattleAnimSystem_GetDefender(param0);
    v1 = ov12_02235254(param0, v3);
    v2 = ov12_02235254(param0, v4);
    v0 = v5[v1][v2];

    GF_ASSERT(v0 != 0xFF);

    return v0;
}

static void ov12_02220B8C(BattleAnimSystem *param0)
{
    int v0;
    u32 v1[6];
    u32 v2;
    u32 v3;
    u32 v4;

    BattleAnimScript_Next(param0);
    v3 = (u32)BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    for (v0 = 0; v0 < 6; v0++) {
        v1[v0] = (u32)BattleAnimScript_ReadWord(param0->scriptPtr);
        param0->scriptPtr += 1;
    }

    v2 = (u32)BattleAnimScript_ReadWord(param0->scriptPtr);

    param0->scriptPtr += 1;
    param0->context->currentParticleSystem = v3;

    if (param0->unk_78[v3] != 0) {
        VecFx32 v5;

        ParticleSystem_GetCameraUp(param0->context->particleSystems[v3], &v5);
        v5.y *= -1;
        ParticleSystem_SetCameraUp(param0->context->particleSystems[v3], &v5);
    }

    {
        int v6;

        v6 = ov12_02220ADC(param0);
        v4 = v1[v6];
    }

    ParticleSystem_SetCameraProjection(param0->context->particleSystems[v3], param0->cameraProjections[v3]);
    param0->context->emitters[0] = BattleParticleUtil_CreateEmitter(param0->context->particleSystems[v3], v4, v2, param0);
}

static void ov12_02220C44(BattleAnimSystem *param0)
{
    int v0;
    u32 v1[4];
    u32 v2;
    u32 v3;
    u32 v4;

    param0->scriptPtr += 1;
    v3 = (u32)BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    for (v0 = 0; v0 < 4; v0++) {
        v1[v0] = (u32)BattleAnimScript_ReadWord(param0->scriptPtr);
        param0->scriptPtr += 1;
    }

    v2 = (u32)BattleAnimScript_ReadWord(param0->scriptPtr);

    param0->scriptPtr += 1;
    param0->context->currentParticleSystem = v3;

    if (param0->unk_78[v3] != 0) {
        VecFx32 v5;

        ParticleSystem_GetCameraUp(param0->context->particleSystems[v3], &v5);
        v5.y *= -1;
        ParticleSystem_SetCameraUp(param0->context->particleSystems[v3], &v5);
    }

    {
        int v6;

        v6 = ov12_02220B34(param0);
        v4 = v1[v6];
    }

    ParticleSystem_SetCameraProjection(param0->context->particleSystems[v3], param0->cameraProjections[v3]);
    param0->context->emitters[0] = BattleParticleUtil_CreateEmitter(param0->context->particleSystems[v3], v4, v2, param0);
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

static void ov12_02220F5C(BattleAnimSystem *param0)
{
    int v0;
    int v1;

    param0->scriptPtr += 1;

    v0 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    if (v0 == 0) {
        v1 = ov12_0223525C(param0, param0->context->attacker);
    } else {
        v1 = ov12_0223525C(param0, param0->context->defender);
    }

    if (v1 == 0x4) {
        param0->scriptPtr += 1;
    }

    param0->scriptPtr += (u32)BattleAnimScript_ReadWord(param0->scriptPtr);
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

static void ov12_02220FFC(BattleAnimSystem *param0)
{
    param0->scriptPtr += 1;

    if (BattleAnimSystem_IsContest(param0) == 1) {
        param0->scriptPtr += (u32)BattleAnimScript_ReadWord(param0->scriptPtr);
    } else {
        param0->scriptPtr += 1;
    }
}

static void ov12_02221024(BattleAnimSystem *param0)
{
    int v0;
    int v1;

    param0->scriptPtr += 1;

    v0 = ov12_0223525C(param0, param0->context->attacker);
    v1 = ov12_0223525C(param0, param0->context->defender);

    if (v0 == v1) {
        param0->scriptPtr += (u32)BattleAnimScript_ReadWord(param0->scriptPtr);
    } else {
        param0->scriptPtr += 1;
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

static int ov12_022210A8(BattleAnimSystem *param0, int param1)
{
    int v0;

    switch (param1) {
    case 0:
        v0 = param0->context->attacker;
        break;
    case 1:
        v0 = param0->context->defender;
        break;
    case 2:
        v0 = ov12_022352AC(param0, param0->context->attacker);
        break;
    case 3:
        v0 = ov12_022352AC(param0, param0->context->defender);
        break;

    case 4: {
        int v1;
        int v2;

        v0 = 0xFF;

        for (v1 = 0; v1 < 4; v1++) {
            v2 = BattleAnimSystem_GetBattlerType(param0, v1);

            if ((v2 == 0) || (v2 == 2)) {
                v0 = v1;
                break;
            }
        }

        if (v0 == 0xFF) {
            v0 = 0;
        }
    } break;
    case 5: {
        int v3;
        int v4;

        v0 = 0xFF;

        for (v3 = 0; v3 < 4; v3++) {
            v4 = BattleAnimSystem_GetBattlerType(param0, v3);

            if ((v4 == 1) || (v4 == 3)) {
                v0 = v3;
                break;
            }
        }

        if (v0 == 0xFF) {
            v0 = 0;
        }
    } break;
    case 6: {
        int v5;
        int v6;

        v0 = 0xFF;

        for (v5 = 0; v5 < 4; v5++) {
            v6 = BattleAnimSystem_GetBattlerType(param0, v5);

            if (v6 == 4) {
                v0 = v5;
                break;
            }
        }

        if (v0 == 0xFF) {
            v0 = 0;
        }
    } break;
    case 7: {
        int v7;
        int v8;

        v0 = 0xFF;

        for (v7 = 0; v7 < 4; v7++) {
            v8 = BattleAnimSystem_GetBattlerType(param0, v7);

            if (v8 == 5) {
                v0 = v7;
                break;
            }
        }

        if (v0 == 0xFF) {
            v0 = 0;
        }
    } break;
    }

    return v0;
}

static void ov12_0222118C(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222118C *v0 = (UnkStruct_ov12_0222118C *)param1;
    s16 v1;
    s16 v2;

    if (v0->unk_04.unk_01 != 0) {
        v0->unk_04.unk_00++;

        if (v0->unk_04.unk_00 != v0->unk_04.unk_01) {
            return;
        }

        v0->unk_04.unk_00 = 0;
    }

    v1 = PokemonSprite_GetAttribute(v0->unk_04.unk_04, MON_SPRITE_X_CENTER);
    v2 = PokemonSprite_GetAttribute(v0->unk_04.unk_04, MON_SPRITE_Y_CENTER);
    v2 -= PokemonSprite_GetAttribute(v0->unk_04.unk_04, MON_SPRITE_SHADOW_HEIGHT);

    ManagedSprite_SetPositionXY(v0->unk_00, v1, v2);
}

static void ov12_022211D8(SysTask *param0, void *param1)
{
    UnkStruct_ov12_022211D8 *v0 = (UnkStruct_ov12_022211D8 *)param1;
    s16 v1;
    s16 v2;

    if (v0->unk_04.unk_01 != 0) {
        v0->unk_04.unk_00++;

        if (v0->unk_04.unk_00 != v0->unk_04.unk_01) {
            return;
        }

        v0->unk_04.unk_00 = 0;
    }

    v1 = PokemonSprite_GetAttribute(v0->unk_04.unk_04, MON_SPRITE_X_CENTER);
    v2 = PokemonSprite_GetAttribute(v0->unk_04.unk_04, MON_SPRITE_Y_CENTER);
    v2 -= PokemonSprite_GetAttribute(v0->unk_04.unk_04, MON_SPRITE_SHADOW_HEIGHT);

    Bg_SetOffset(v0->unk_00, BG_LAYER_MAIN_2, 0, -(v1 - 40));
    Bg_SetOffset(v0->unk_00, BG_LAYER_MAIN_2, 3, -(v2 - 40));
}

void ov12_02221238(BattleAnimSystem *param0, int param1)
{
    if (param1 == 4) {
        if (param0->unk_174 != NULL) {
            SysTask_Done(param0->unk_174->unk_04.unk_08);
            Heap_Free(param0->unk_174);
            param0->unk_174 = NULL;
        }
    } else {
        if (param0->unk_160[param1] != NULL) {
            SysTask_Done(param0->unk_160[param1]->unk_04.unk_08);
            Heap_Free(param0->unk_160[param1]);
            param0->unk_160[param1] = NULL;
        }
    }
}

static void ov12_02221284(BattleAnimSystem *param0)
{
    return;
}

static void ov12_02221288(BattleAnimSystem *param0)
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

    v3 = ov12_022210A8(param0, v1);
    v4 = param0->context->unk_B0[v3]->unk_04;
    v5 = param0->context->unk_B0[v3]->unk_08;
    v0 = param0->context->unk_B0[v3]->unk_00;
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

    Bg_ToggleLayer(BG_LAYER_MAIN_2, 0);
    Bg_LoadTiles(param0->bgConfig, 2, v0, (10 * 10 * ((8 / 2) * 8)), 0);
    PaletteData_LoadBufferFromFileStart(param0->unk_C4, v4, v5, param0->heapID, 0, 0, (8 * 16));
    Graphics_LoadTilemapToBgLayerFromOpenNARC(param0->arcs[0], v6, param0->bgConfig, 2, 0, 0, 0, param0->heapID);

    if (v2 == 1) {
        SysTask *v9;

        param0->unk_174 = Heap_AllocFromHeap(param0->heapID, sizeof(UnkStruct_ov12_0222118C));
        param0->unk_174->unk_00 = param0->bgConfig;
        param0->unk_174->unk_04.unk_04 = BattleAnimSystem_GetBattlerSprite(param0, v3);
        param0->unk_174->unk_04.unk_00 = 0;
        param0->unk_174->unk_04.unk_01 = 0;

        v9 = SysTask_Start(ov12_022211D8, param0->unk_174, 0x1001);

        param0->unk_174->unk_04.unk_08 = v9;
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
    param0->unk_134 = SpriteManager_New(param0->context->spriteSystem);

    SpriteSystem_InitSprites(param0->context->spriteSystem, param0->unk_134, v0);
    SetSubScreenViewRect(SpriteSystem_GetRenderer(param0->context->spriteSystem), 0, ((192 + 80) << FX32_SHIFT));
    SpriteSystem_InitManagerWithCapacities(param0->context->spriteSystem, param0->unk_134, &v1);
}

static void ov12_022214C4(BattleAnimSystem *param0)
{
    int resourceIDs[6];
    int v1;

    param0->scriptPtr += 1;
    v1 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    resourceIDs[0] = 20001 + v1 + ((param0->context->attacker) * 5000);
    resourceIDs[1] = 20001 + v1 + ((param0->context->attacker) * 5000);
    resourceIDs[2] = 20001 + v1 + ((param0->context->attacker) * 5000);
    resourceIDs[3] = 20001 + v1 + ((param0->context->attacker) * 5000);
    resourceIDs[4] = 0;
    resourceIDs[5] = 0;

    SpriteSystem_LoadCharResObjFromOpenNarc(
        param0->context->spriteSystem,
        param0->unk_134,
        param0->arcs[BATTLE_ANIM_SYSTEM_ARC_BATT_OBJ],
        76,
        FALSE,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        resourceIDs[SPRITE_RESOURCE_PLTT]);

    SpriteSystem_LoadPaletteBufferFromOpenNarc(
        param0->unk_C4,
        PLTTBUF_MAIN_OBJ,
        param0->context->spriteSystem,
        param0->unk_134,
        param0->arcs[BATTLE_ANIM_SYSTEM_ARC_BATT_OBJ],
        75,
        FALSE,
        1,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        resourceIDs[SPRITE_RESOURCE_PLTT]);

    SpriteSystem_LoadCellResObjFromOpenNarc(
        param0->context->spriteSystem,
        param0->unk_134,
        param0->arcs[BATTLE_ANIM_SYSTEM_ARC_BATT_OBJ],
        77,
        FALSE,
        resourceIDs[SPRITE_RESOURCE_CELL]);

    SpriteSystem_LoadAnimResObjFromOpenNarc(
        param0->context->spriteSystem,
        param0->unk_134,
        param0->arcs[BATTLE_ANIM_SYSTEM_ARC_BATT_OBJ],
        78,
        FALSE,
        resourceIDs[SPRITE_RESOURCE_ANIM]);
}

static void ov12_02221580(BattleAnimSystem *param0)
{
    u8 *v0 = NULL;
    ManagedSprite *v1 = NULL;
    int v2[6];
    int v3;
    int v4;
    int v5;
    int v6;
    int v7;
    int v8;
    int v9;
    int v10;

    param0->scriptPtr += 1;

    v3 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v4 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v5 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v6 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v2[0] = 20001 + v6 + ((param0->context->attacker) * 5000);
    v2[1] = 20001 + v6 + ((param0->context->attacker) * 5000);
    v2[2] = 20001 + v6 + ((param0->context->attacker) * 5000);
    v2[3] = 20001 + v6 + ((param0->context->attacker) * 5000);
    v2[4] = 0;
    v2[5] = 0;

    v7 = ov12_022210A8(param0, v3);
    v8 = param0->context->unk_B0[v7]->unk_04;
    v9 = param0->context->unk_B0[v7]->unk_08;
    v0 = param0->context->unk_B0[v7]->unk_00;
    v10 = param0->context->battlerForms[v7];
    {
        SpriteTemplate v11;
        PokemonSprite *v12 = BattleAnimSystem_GetBattlerSprite(param0, v7);
        int v13;
        int v14;
        s16 v15;
        s16 v16;

        if (v12 != NULL) {
            v15 = PokemonSprite_GetAttribute(v12, MON_SPRITE_X_CENTER);
            v16 = PokemonSprite_GetAttribute(v12, MON_SPRITE_Y_CENTER);
            v16 -= PokemonSprite_GetAttribute(v12, MON_SPRITE_SHADOW_HEIGHT);
        }

        v11.x = v15;
        v11.y = v16;
        v11.z = 0;
        v11.animIdx = 0;
        v11.priority = 100;
        v11.plttIdx = 0;
        v11.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
        v11.bgPriority = 1;
        v11.vramTransfer = FALSE;

        for (v14 = 0; v14 < 6; v14++) {
            v11.resources[v14] = v2[v14];
        }

        v1 = SpriteSystem_NewSprite(param0->context->spriteSystem, param0->unk_134, &v11);

        if (v12 == NULL) {
            ManagedSprite_SetDrawFlag(v1, 0);
        } else {
            int v17 = PokemonSprite_GetAttribute(v12, MON_SPRITE_HIDE);

            if (v17 == 1) {
                ManagedSprite_SetDrawFlag(v1, 0);
            }
        }

        if ((BattleAnimSystem_IsContest(param0) == 1) && (IsFormSymmetrical(BattleAnimSystem_GetBattlerSpecies(param0, v7), v10) == 1)) {
            ManagedSprite_SetFlipMode(v1, 1);
        }
    }

    if (BattleAnimSystem_GetBattlerSprite(param0, v7) != NULL) {
        NNSG2dImageProxy *v18;

        v18 = Sprite_GetImageProxy(v1->sprite);
        VramTransfer_Request(NNS_GFD_DST_2D_OBJ_CHAR_MAIN, v18->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN], v0, (10 * 10 * ((8 / 2) * 8)));
    }

    if (BattleAnimSystem_GetBattlerSprite(param0, v7) != NULL) {
        NNSG2dImagePaletteProxy *v19;
        int v20;

        v19 = Sprite_GetPaletteProxy(v1->sprite);
        v20 = PlttTransfer_GetPlttOffset(v19, NNS_G2D_VRAM_TYPE_2DMAIN);

        PaletteData_LoadBufferFromFileStart(param0->unk_C4, v8, v9, param0->heapID, 2, 0x20, v20 * 16);
    }

    GF_ASSERT(param0->unk_138[v5] == NULL);

    param0->unk_138[v5] = v1;
    param0->unk_14C[v5] = 1;

    if (v4 == 1) {
        SysTask *v21;

        if (BattleAnimSystem_GetBattlerSprite(param0, v7) == NULL) {
            return;
        }

        param0->unk_160[v5] = Heap_AllocFromHeap(param0->heapID, sizeof(UnkStruct_ov12_0222118C));
        param0->unk_160[v5]->unk_00 = v1;
        param0->unk_160[v5]->unk_04.unk_04 = BattleAnimSystem_GetBattlerSprite(param0, v7);
        param0->unk_160[v5]->unk_04.unk_00 = 0;
        param0->unk_160[v5]->unk_04.unk_01 = 0;

        v21 = SysTask_Start(ov12_0222118C, param0->unk_160[v5], 0x1001);

        param0->unk_160[v5]->unk_04.unk_08 = v21;
    }
}

static void ov12_022217B4(BattleAnimSystem *param0)
{
    param0->scriptPtr += 1;

    if (param0->unk_134 != NULL) {
        SpriteSystem_FreeResourcesAndManager(param0->context->spriteSystem, param0->unk_134);
    }

    param0->unk_134 = NULL;
}

static void ov12_022217E0(BattleAnimSystem *param0)
{
    int v0;

    param0->scriptPtr += 1;

    v0 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    if (param0->unk_138[v0] != NULL) {
        Sprite_DeleteAndFreeResources(param0->unk_138[v0]);
    }

    param0->unk_14C[v0] = 0;
    param0->unk_138[v0] = NULL;
}

static void ov12_02221810(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02221810 *v0 = param1;

    if (v0->unk_0C == 0) {
        SysTask_Done(param0);
        return;
    }

    if (v0->unk_00->unk_134 != NULL) {
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
    param0->unk_48[v1].unk_04 = param0->unk_134;
    param0->unk_48[v1].unk_08 = param0->unk_138[v2];
    param0->unk_48[v1].unk_0C = 1;

    ManagedSprite_SetDrawFlag(param0->unk_48[v1].unk_08, 0);

    if (BattleAnimSystem_IsDoubleBattle(param0) == 1) {
        int v3, v4;

        v3 = ov12_02235254(param0, BattleAnimSystem_GetAttacker(param0));
        v4 = ov12_02235254(param0, BattleAnimSystem_GetDefender(param0));

        {
            int v5;
            int v6;
            PokemonSprite *v7;

            v6 = ov12_022210A8(param0, v0);
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

static void ov12_02221A14(BattleAnimSystem *param0)
{
    int v0;
    int v1;

    param0->scriptPtr += 1;

    v0 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v1 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;
    param0->cameraProjections[v0] = v1;
}

void ov12_02221A30(BattleAnimSystem *param0)
{
    int v0;
    int v1;

    param0->scriptPtr += 1;

    v0 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v1 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;
    param0->unk_78[v0] = v1;
}

static void ov12_02221A4C(BattleAnimSystem *param0)
{
    return;
}

static void ov12_02221A50(BattleAnimSystem *param0)
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

    v0 = ov12_0223525C(param1, param1->context->attacker);
    v1 = ov12_0223525C(param1, param1->context->defender);

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
    PaletteData_LoadBufferFromFileStart(param1->unk_C4, 7, ov12_022234E4(param3, 1), param1->heapID, 0, 0x20, (9 * 16));
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
            PaletteData_LoadBufferFromFileStart(param1->unk_48->unk_C4, param1->unk_48->unk_180.unk_00, param1->unk_48->unk_180.unk_08, param1->unk_48->heapID, 0, param1->unk_48->unk_180.unk_14 * 0x20, param1->unk_48->unk_180.unk_10);
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
            PaletteData_StartFade(param1->unk_48->unk_C4, 0x1, param1->unk_48->unk_198, 0, 0, 16, 0);
            PaletteData_BlendMulti(param1->unk_48->unk_C4, 0, 0x200, 16, 0);
        } else {
            PaletteData_StartFade(param1->unk_48->unk_C4, 0x1, param1->unk_48->unk_198, 0, 0, 16, 0xFFFF);
            PaletteData_BlendMulti(param1->unk_48->unk_C4, 0, 0x200, 16, 0xFFFF);
        }

        param1->unk_05++;
    case 1:
        if (PaletteData_GetSelectedBuffersMask(param1->unk_48->unk_C4) != 0) {
            break;
        }

        Bg_SetControlParam(param1->unk_48->bgConfig, 3, 0, GX_BG_COLORMODE_16);
        ov12_02221AA8(param1, param1->unk_48, 3, param1->unk_10);

        if (param1->unk_0D == 0) {
            PaletteData_StartFade(param1->unk_48->unk_C4, 0x1, (1 << 9), 0, 16, 0, 0);
        } else {
            PaletteData_StartFade(param1->unk_48->unk_C4, 0x1, (1 << 9), 0, 16, 0, 0xFFFF);
        }

        ov12_02221B64(param1);

        param1->unk_48->unk_178 = 2;
        param1->unk_05++;
        break;
    default:
        if (PaletteData_GetSelectedBuffersMask(param1->unk_48->unk_C4) != 0) {
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
            PaletteData_StartFade(param1->unk_48->unk_C4, 0x1, (1 << 9), 0, 0, 16, 0);
            PaletteData_BlendMulti(param1->unk_48->unk_C4, 0, param1->unk_48->unk_198, 16, 0);
        } else {
            PaletteData_StartFade(param1->unk_48->unk_C4, 0x1, (1 << 9), 0, 0, 16, 0xFFFF);
            PaletteData_BlendMulti(param1->unk_48->unk_C4, 0, param1->unk_48->unk_198, 16, 0xFFFF);
        }

        param1->unk_05++;
    case 2:
        if (PaletteData_GetSelectedBuffersMask(param1->unk_48->unk_C4) != 0) {
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
            PaletteData_LoadBufferFromFileStart(param1->unk_48->unk_C4, param1->unk_48->unk_180.unk_00, param1->unk_48->unk_180.unk_08, param1->unk_48->heapID, 0, param1->unk_48->unk_180.unk_14 * 0x20, param1->unk_48->unk_180.unk_10);
        }

        Graphics_LoadTilemapToBgLayer(param1->unk_48->unk_180.unk_00, param1->unk_48->unk_180.unk_0C, param1->unk_48->bgConfig, 3, 0, 0, 1, param1->unk_48->heapID);
        Bg_ToggleLayer(BG_LAYER_MAIN_3, 1);

        param1->unk_05++;
    case 3:
        Bg_SetOffset(param1->unk_48->bgConfig, 3, 0, 0);
        Bg_SetOffset(param1->unk_48->bgConfig, 3, 3, 0);

        if (param1->unk_0D == 0) {
            PaletteData_StartFade(param1->unk_48->unk_C4, 0x1, param1->unk_48->unk_198, 0, 16, 0, 0);
        } else {
            PaletteData_StartFade(param1->unk_48->unk_C4, 0x1, param1->unk_48->unk_198, 0, 16, 0, 0xFFFF);
        }

        param1->unk_05++;

    default:
        if (PaletteData_GetSelectedBuffersMask(param1->unk_48->unk_C4) != 0) {
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
        if (ov12_0223525C(param0, param0->context->defender) == 0x3) {
            v0->unk_10 = v2;
        } else {
            v0->unk_10 = v1;
        }
    }

    SysTask_Start(ov12_022226F4, v0, 1100);
}

static void ov12_0222293C(BattleAnimSystem *param0)
{
    return;
}

static void ov12_02222940(BattleAnimSystem *param0)
{
    return;
}

static void ov12_02222944(BattleAnimSystem *param0)
{
    return;
}

static void ov12_02222948(BattleAnimSystem *param0)
{
    return;
}

static void ov12_0222294C(BattleAnimSystem *param0)
{
    return;
}

static void ov12_02222950(BattleAnimSystem *param0)
{
    u16 v0;

    param0->scriptPtr += 1;
    v0 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    Sound_PlayEffect(v0);
}

static void ov12_02222968(BattleAnimSystem *param0)
{
    u16 v0;

    param0->scriptPtr += 1;

    v0 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    Sound_StopEffect(v0, 0);
}

static void ov12_02222984(BattleAnimSystem *param0)
{
    u16 v0;
    int v1;

    param0->scriptPtr += 1;

    v0 = (u16)BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v1 = (int)BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v1 = ov12_0222317C(param0, v1);

    Sound_PlayEffect(v0);
    Sound_PanEffect(v0, SOUND_PLAYBACK_TRACK_ALL, v1);
}

static void ov12_022229BC(BattleAnimSystem *param0)
{
    int v0;

    param0->scriptPtr += 1;

    v0 = (int)BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v0 = ov12_0222317C(param0, v0);
    Sound_PanAllEffects(v0);
}

static void ov12_022229D8(BattleAnimSystem *param0)
{
    BattleAnimSoundContext *v0 = NULL;

    v0 = BattleAnimSystem_CreateSoundContext(param0);
    memset(v0, 0, sizeof(BattleAnimSoundContext));

    v0->type = 1;
    param0->scriptPtr += 1;

    v0->effectID = (u16)BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v0->startPan = (int)BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v0->endPan = (int)BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v0->panIncrement = (int)BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v0->applyInterval = (u8)BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v0->startPan = ov12_0222317C(param0, v0->startPan);
    v0->endPan = ov12_0222317C(param0, v0->endPan);
    v0->panIncrement = ov12_02223234(v0->startPan, v0->endPan, v0->panIncrement);

    Sound_PlayEffect(v0->effectID);
    Sound_PanEffect(v0->effectID, SOUND_PLAYBACK_TRACK_ALL, v0->startPan);

    BattleAnimSystem_StartSoundTaskInternal(param0, v0);
}

static void ov12_02222A78(BattleAnimSystem *param0)
{
    BattleAnimSoundContext *v0 = NULL;

    v0 = BattleAnimSystem_CreateSoundContext(param0);
    memset(v0, 0, sizeof(BattleAnimSoundContext));

    v0->type = 2;
    param0->scriptPtr += 1;

    v0->effectID = (u16)BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v0->startPan = (s8)BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v0->endPan = (s8)BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v0->panIncrement = (s8)BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v0->applyInterval = (u8)BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    Sound_PlayEffect(v0->effectID);
    Sound_PanEffect(v0->effectID, SOUND_PLAYBACK_TRACK_ALL, v0->startPan);

    BattleAnimSystem_StartSoundTaskInternal(param0, v0);
}

static void ov12_02222AF0(BattleAnimSystem *param0)
{
    BattleAnimSoundContext *v0 = NULL;

    v0 = BattleAnimSystem_CreateSoundContext(param0);
    memset(v0, 0, sizeof(BattleAnimSoundContext));

    v0->type = 1;
    param0->scriptPtr += 1;

    v0->effectID = (u16)BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v0->startPan = (s8)BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v0->endPan = (s8)BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v0->panIncrement = (s8)BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v0->applyInterval = (u8)BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v0->startPan = ov12_0222317C(param0, v0->startPan);
    v0->endPan = ov12_0222317C(param0, v0->endPan);
    v0->panIncrement = ov12_0222317C(param0, v0->panIncrement);

    Sound_PlayEffect(v0->effectID);
    Sound_PanEffect(v0->effectID, SOUND_PLAYBACK_TRACK_ALL, v0->startPan);

    BattleAnimSystem_StartSoundTaskInternal(param0, v0);
}

static void ov12_02222B94(BattleAnimSystem *param0)
{
    BattleAnimSoundContext *v0 = NULL;

    v0 = BattleAnimSystem_CreateSoundContext(param0);
    memset(v0, 0, sizeof(BattleAnimSoundContext));

    v0->type = 4;
    param0->scriptPtr += 1;

    v0->effectID = (u16)BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v0->curPan = (s8)BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v0->applyInterval = (u8)BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v0->repeatCount = (u8)BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v0->tickCount = v0->applyInterval;
    v0->curPan = ov12_0222317C(param0, v0->curPan);

    BattleAnimSystem_StartSoundTaskInternal(param0, v0);
}

static void ov12_02222BF8(BattleAnimSystem *param0)
{
    BattleAnimSoundContext *v0 = NULL;

    v0 = BattleAnimSystem_CreateSoundContext(param0);
    memset(v0, 0, sizeof(BattleAnimSoundContext));

    v0->type = 5;

    param0->scriptPtr += 1;

    v0->effectID = (u16)BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v0->curPan = (s8)BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v0->applyInterval = (u8)BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v0->curPan = ov12_0222317C(param0, v0->curPan);

    BattleAnimSystem_StartSoundTaskInternal(param0, v0);
}

static void ov12_02222C50(BattleAnimSystem *param0)
{
    (void)0;
}

static void ov12_02222C54(BattleAnimSystem *param0)
{
    if (param0->activeSoundTasks) {
        param0->scriptDelay = 1;
        param0->unk_179 = 0;
        return;
    }

    if (Sound_IsAnyEffectPlaying()) {
        param0->unk_179++;

        if (param0->unk_179 > 90) {
            param0->unk_179 = 0;
        } else {
            param0->scriptDelay = 1;
            return;
        }
    } else {
        param0->scriptDelay = 0;
        param0->unk_179 = 0;
        param0->scriptPtr += 1;
    }
}

static void ov12_02222CAC(BattleAnimSystem *param0)
{
    u16 v0;
    u16 v1;

    param0->scriptPtr += 1;

    v0 = (u16)BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v1 = (u16)BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    G2S_SetBlendAlpha(GX_BLEND_PLANEMASK_BG0, GX_BLEND_PLANEMASK_BG1, v0, v1);
}

static void ov12_02222CDC(BattleAnimSystem *param0)
{
    BattleAnimSystem_SetBlendState();
}

static void ov12_02222CE4(BattleAnimSystem *param0)
{
    return;
}

static void ov12_02222CE8(BattleAnimSystem *param0)
{
    int v0;
    int v1;
    int v2;

    param0->scriptPtr += 1;

    v1 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v2 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    GF_ASSERT(param0->unk_C8[v1] == NULL);
    param0->unk_C8[v1] = SpriteManager_New(param0->context->spriteSystem);
    GF_ASSERT(param0->unk_C8[v1] != NULL);

    SpriteSystem_InitSprites(param0->context->spriteSystem, param0->unk_C8[v1], v2);
    SetSubScreenViewRect(SpriteSystem_GetRenderer(param0->context->spriteSystem), 0, ((192 + 80) << FX32_SHIFT));

    {
        SpriteResourceCapacities v3;

        for (v0 = 0; v0 < 6; v0++) {
            v3.asArray[v0] = BattleAnimScript_ReadWord(param0->scriptPtr);
            param0->scriptPtr += 1;
        }

        SpriteSystem_InitManagerWithCapacities(param0->context->spriteSystem, param0->unk_C8[v1], &v3);
    }
}

static void ov12_02222D84(BattleAnimSystem *param0)
{
    int v0;
    int v1;

    param0->scriptPtr += 1;

    v0 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v1 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    SpriteSystem_LoadCharResObjFromOpenNarc(param0->context->spriteSystem, param0->unk_C8[v0], param0->arcs[2], v1, TRUE, NNS_G2D_VRAM_TYPE_2DMAIN, v1 + 5000);
}

static void ov12_02222DCC(BattleAnimSystem *param0)
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

    SpriteSystem_LoadPaletteBufferFromOpenNarc(param0->unk_C4, 2, param0->context->spriteSystem, param0->unk_C8[v0], param0->arcs[3], v1, 0, NNS_G2D_VRAM_TYPE_2DMAIN, v2, v1 + 5000);
}

static void ov12_02222E2C(BattleAnimSystem *param0)
{
    int v0;
    int v1;

    param0->scriptPtr += 1;

    v0 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v1 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    SpriteSystem_LoadCellResObjFromOpenNarc(param0->context->spriteSystem, param0->unk_C8[v0], param0->arcs[4], v1, 1, v1 + 5000);
}

static void ov12_02222E74(BattleAnimSystem *param0)
{
    int v0;
    int v1;

    param0->scriptPtr += 1;

    v0 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v1 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    SpriteSystem_LoadAnimResObjFromOpenNarc(param0->context->spriteSystem, param0->unk_C8[v0], param0->arcs[5], v1, 1, v1 + 5000);
}

static void ov12_02222EBC(BattleAnimSystem *param0)
{
    int v0;
    int v1;
    int v2;
    int v3;
    ManagedSprite *v4;
    UnkFuncPtr_ov12_02239E68 v5;

    param0->scriptPtr += 1;

    v2 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v1 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    {
        SpriteTemplate v6;
        int v7;

        v7 = BattleAnimSystem_GetDefender(param0);

        v6.x = ov12_022258E0(param0, v7, 0);
        v6.y = ov12_022258E0(param0, v7, 1);
        v6.z = 0;
        v6.animIdx = 0;
        v6.priority = 100;
        v6.plttIdx = 0;
        v6.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
        v6.bgPriority = 1;
        v6.vramTransfer = FALSE;

        for (v0 = 0; v0 < 6; v0++) {
            v6.resources[v0] = BattleAnimScript_ReadWord(param0->scriptPtr) + 5000;
            param0->scriptPtr += 1;
        }

        param0->unk_100 = v6;

        v4 = SpriteSystem_NewSprite(param0->context->spriteSystem, param0->unk_C8[v2], &v6);
    }

    v3 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    for (v0 = 0; v0 < v3; v0++) {
        param0->scriptVars[v0] = BattleAnimScript_ReadWord(param0->scriptPtr);
        param0->scriptPtr += 1;
    }

    for (; v0 < (8 + 2); v0++) {
        param0->scriptVars[v0] = 0;
    }

    v5 = ov12_022269AC(v1);
    v5(param0, param0->context->spriteSystem, param0->unk_C8[v2], v4);
}

static void ov12_02222FC8(BattleAnimSystem *param0)
{
    int v0;
    int v1;
    int v2;
    ManagedSprite *v3;
    UnkFuncPtr_ov12_02239E68 v4;

    param0->scriptPtr += 1;

    v1 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v2 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    {
        SpriteTemplate v5;
        int v6;

        v6 = BattleAnimSystem_GetDefender(param0);

        v5.x = ov12_022258E0(param0, v6, 0);
        v5.y = ov12_022258E0(param0, v6, 1);
        v5.z = 0;
        v5.animIdx = 0;
        v5.priority = 100;
        v5.plttIdx = 0;
        v5.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
        v5.bgPriority = 1;
        v5.vramTransfer = FALSE;

        for (v0 = 0; v0 < 6; v0++) {
            v5.resources[v0] = BattleAnimScript_ReadWord(param0->scriptPtr) + 5000;
            param0->scriptPtr += 1;
        }

        param0->unk_100 = v5;

        v3 = SpriteSystem_NewSprite(param0->context->spriteSystem, param0->unk_C8[v1], &v5);
        GF_ASSERT(param0->unk_D8[v2] == NULL);
        param0->unk_D8[v2] = v3;
    }
}

static void ov12_0222307C(BattleAnimSystem *param0)
{
    int v0;

    param0->scriptPtr += 1;

    v0 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    if (param0->unk_C8[v0] != NULL) {
        SpriteSystem_FreeResourcesAndManager(param0->context->spriteSystem, param0->unk_C8[v0]);
    }

    param0->unk_C8[v0] = NULL;
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

    ManagedSprite_SetDrawFlag(param0->unk_138[v0], v1);
}

static void ov12_022230CC(BattleAnimSystem *param0)
{
    GF_ASSERT(FALSE);
}

static void ov12_022230D4(BattleAnimSystem *param0)
{
    enum PokemonCryMod cryMod;
    s16 v1;
    int v2;
    int v3;
    int v4;

    param0->scriptPtr += 1;

    cryMod = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v1 = (s16)BattleAnimScript_ReadWord(param0->scriptPtr);
    v1 = ov12_0222317C(param0, v1);
    param0->scriptPtr += 1;

    v2 = BattleAnimScript_ReadWord(param0->scriptPtr);
    param0->scriptPtr += 1;

    v3 = param0->context->battlerSpecies[param0->context->attacker];
    v4 = param0->context->battlerForms[param0->context->attacker];

    Pokemon_PlayCry(param0->context->chatotCry, cryMod, v3, v4, v1, v2, param0->context->transformed, param0->heapID);
}

static void ov12_02223134(BattleAnimSystem *param0)
{
    int v0;

    if (Sound_IsPokemonCryPlaying() == 0) {
        param0->scriptPtr += 1;
        v0 = BattleAnimScript_ReadWord(param0->scriptPtr);
        param0->scriptPtr += 1;
        param0->scriptDelay = 0;
        Sound_StopPokemonCries(v0);
    } else {
        param0->scriptDelay = 1;
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

s8 ov12_0222317C(BattleAnimSystem *param0, s8 param1)
{
    int v0 = param1;

    {
        int v1 = BattleAnimSystem_GetAttacker(param0);
        int v2 = BattleAnimSystem_GetDefender(param0);
        int v3 = ov12_0223525C(param0, v1);
        int v4 = ov12_0223525C(param0, v2);

        if ((ov12_0223525C(param0, v1) == 0x3) && (ov12_0223525C(param0, v2) == 0x4)) {
            (void)0;
        } else if ((ov12_0223525C(param0, v1) == 0x4) && (ov12_0223525C(param0, v2) == 0x3)) {
            v0 *= -1;
        } else if ((ov12_0223525C(param0, v1) == 0x3) && (ov12_0223525C(param0, v2) == 0x3)) {
            if (v0 > 0) {
                v0 *= -1;
            }
        } else if ((ov12_0223525C(param0, v1) == 0x4) && (ov12_0223525C(param0, v2) == 0x4)) {
            if (v0 < 0) {
                v0 *= -1;
            }
        }
    }

    if (BattleAnimSystem_IsContest(param0) == 1) {
        v0 *= -1;
    }

    return v0;
}

s8 ov12_02223234(s8 param0, s8 param1, s8 param2)
{
    s8 v0;

    if (param0 < param1) {
        v0 = +abs(param2);
    } else if (param0 > param1) {
        v0 = -abs(param2);
    } else {
        v0 = 0;
    }

    return v0;
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
    return param0->unk_100;
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
    return param0->unk_C4;
}

int ov12_02223334(BattleAnimSystem *param0, int param1)
{
    return param0->context->unk_B0[param1]->unk_08;
}

int ov12_02223344(BattleAnimSystem *param0, int param1)
{
    return param0->context->unk_B0[param1]->unk_04;
}

int ov12_02223354(BattleAnimSystem *param0, int param1)
{
    return param0->context->unk_B0[param1]->unk_0C;
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
    PaletteData_LoadBuffer(param0->unk_C4, param0->context->unk_114, 0, 0, 0x200);
}

BOOL ov12_022234A8(BattleAnimSystem *param0, int param1)
{
    int v0;
    int v1;

    v0 = ov12_022210A8(param0, param1);
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
