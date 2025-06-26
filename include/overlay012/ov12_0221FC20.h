#ifndef POKEPLATINUM_OV12_0221FC20_H
#define POKEPLATINUM_OV12_0221FC20_H

#include "constants/battle.h"

#include "struct_decls/battle_system.h"

#include "battle/struct_ov16_02264408.h"
#include "battle/struct_ov16_02265BBC.h"
#include "overlay012/funcptr_ov12_02239EEC.h"
#include "overlay012/struct_ov12_0221FCDC_decl.h"
#include "overlay012/struct_ov12_02223764.h"
#include "overlay012/struct_ov12_02226504_decl.h"
#include "overlay012/struct_ov12_022380DC.h"

#include "bg_window.h"
#include "palette.h"
#include "particle_system.h"
#include "pokemon_sprite.h"
#include "spl.h"
#include "sprite_system.h"
#include "sys_task_manager.h"

#define BATTLE_ANIM_SCRIPT_VAR_COUNT            10
#define BATTLE_ANIM_SCRIPT_MAX_NESTED_LOOPS     3
#define BATTLE_ANIM_SCRIPT_MAX_CALL_STACK_DEPTH 3

enum BattleAnimSystemArc {
    BATTLE_ANIM_SYSTEM_ARC_BATT_BG = 0,
    BATTLE_ANIM_SYSTEM_ARC_BATT_OBJ,
    BATTLE_ANIM_SYSTEM_ARC_WECHAR,
    BATTLE_ANIM_SYSTEM_ARC_WEPLTT,
    BATTLE_ANIM_SYSTEM_ARC_WECELL,
    BATTLE_ANIM_SYSTEM_ARC_WECELLANM,

    BATTLE_ANIM_SYSTEM_ARC_COUNT,
};

enum BattleAnimMoveInfoType {
    BATTLE_ANIM_MOVE_INFO_DAMAGE = 0,
    BATTLE_ANIM_MOVE_INFO_POWER,
    BATTLE_ANIM_MOVE_INFO_FRIENDSHIP,
    BATTLE_ANIM_MOVE_INFO_FIELD_CONDITIONS,
    // BATTLE_ANIM_MOVE_INFO_??? = 4,
    BATTLE_ANIM_MOVE_INFO_TERRAIN = 5,

    BATTLE_ANIM_MOVE_INFO_COUNT
};

// Holds context information for the current move animation
typedef struct BattleAnimContext {
    u8 unk_00;
    u8 unk_01;

    // Current Move info
    u16 move;
    s32 damage;
    u16 power;
    u16 friendship; // Friendship of the attacker
    u32 fieldConditions; // Field conditions at the time of the move
    u16 unk_10;
    u16 terrain; // Terrain at the time of the move

    u16 attacker;
    u16 defender;
    int currentParticleSystem; // Index of the last accessed particle system
    ParticleSystem *particleSystems[MAX_PARTICLE_SYSTEMS];
    SPLEmitter *emitters[MAX_EMITTERS];
    SpriteSystem *spriteSystem;

    // Battler info
    UnkStruct_ov16_0223E0C8 *unk_B0[4];
    u8 battlerTypes[MAX_BATTLERS];
    PokemonSprite *battlerSprites[MAX_BATTLERS];
    u32 battleType;
    u16 battlerSpecies[MAX_BATTLERS];
    u8 battlerGenders[MAX_BATTLERS];
    u8 battlerShinyFlags[MAX_BATTLERS];
    u8 battlerForms[MAX_BATTLERS];
    u32 battlerPersonalities[MAX_BATTLERS];
    u32 battlerMoveEffects[MAX_BATTLERS];
    ChatotCry *chatotCry;
    u8 *unk_110;
    u16 *unk_114;
    int transformed; // Flag for if transform is currently active
} BattleAnimContext;

typedef struct BattleAnimScriptLoop {
    u32 *startPos;
    u8 curIteration;
    u8 maxIterations;
    BOOL isActive;
} BattleAnimScriptLoop;

typedef struct {
    BattleAnimSystem *unk_00;
    SpriteManager *unk_04;
    ManagedSprite *unk_08;
    BOOL unk_0C;
} UnkStruct_ov12_02221810;

typedef struct {
    s16 unk_00;
    s16 unk_02;
    s16 unk_04;
    s16 unk_06;
    int unk_08;
} UnkStruct_ov12_022224F8_sub1;

typedef struct {
    UnkStruct_ov12_022224F8_sub1 unk_00[16];
    UnkStruct_ov12_02226504 *unk_C0;
} UnkStruct_ov12_022224F8;

typedef struct UnkStruct_ov12_022222D4_t {
    BgConfig *unk_00;
    s16 unk_04;
    s16 unk_06;
    s16 unk_08;
    s16 unk_0A;
    int unk_0C;
    int unk_10;
    BOOL unk_14;
    BOOL unk_18;
    UnkStruct_ov12_022224F8 *unk_1C;
} UnkStruct_ov12_022222D4;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    PokemonSprite *unk_04;
    SysTask *unk_08;
} UnkStruct_ov12_0222118C_sub1;

typedef struct UnkStruct_ov12_0222118C_t {
    ManagedSprite *unk_00;
    UnkStruct_ov12_0222118C_sub1 unk_04;
} UnkStruct_ov12_0222118C;

typedef struct UnkStruct_ov12_022211D8_t {
    BgConfig *unk_00;
    UnkStruct_ov12_0222118C_sub1 unk_04;
} UnkStruct_ov12_022211D8;

typedef struct BattleAnimSystem {
    enum HeapId heapID;
    enum NarcID moveArcID;
    BOOL isContest;
    BOOL isActive;
    BOOL moveActive;
    void *scriptData; // Raw pointer to data read from NARC
    u32 *scriptPtr;
    u32 *callStack[BATTLE_ANIM_SCRIPT_MAX_CALL_STACK_DEPTH];
    BattleAnimScriptLoop loopStack[BATTLE_ANIM_SCRIPT_MAX_NESTED_LOOPS];
    UnkStruct_ov12_02221810 unk_48[2];
    u8 cameraProjections[MAX_PARTICLE_SYSTEMS]; // Projection setting for each particle system. See enum CameraProjection
    u8 particleSystemCameraFlip[MAX_PARTICLE_SYSTEMS]; // Whether to flip the camera (Y axis) for each particle system
    s8 unk_88;
    u8 scriptDelay;
    u16 activeAnimTasks;
    u16 activeSoundTasks;
    s32 scriptVars[BATTLE_ANIM_SCRIPT_VAR_COUNT];
    void (*executeAnimScriptFunc)(BattleAnimSystem *);
    BattleAnimContext *context;
    BgConfig *bgConfig;
    PaletteData *paletteData;
    SpriteManager *spriteManagers[4];
    ManagedSprite *unk_D8[10];
    SpriteTemplate unk_100;
    SpriteManager *unk_134;
    ManagedSprite *unk_138[5];
    BOOL unk_14C[5];
    UnkStruct_ov12_0222118C *unk_160[5];
    UnkStruct_ov12_022211D8 *unk_174;
    u8 unk_178;
    u8 unk_179;
    u8 unk_17A;
    u8 unk_17B;
    UnkStruct_ov12_022222D4 *unk_17C;
    UnkStruct_ov16_02264408_sub1 unk_180;
    int unk_198;
    u8 bgLayerPriorities[4];
    NARC *arcs[BATTLE_ANIM_SYSTEM_ARC_COUNT];
} BattleAnimSystem;

BattleAnimSystem *BattleAnimSystem_New(enum HeapId heapID);
void BattleAnimSystem_SetIsContest(BattleAnimSystem *param0, BOOL param1);
BOOL BattleAnimSystem_IsContest(BattleAnimSystem *param0);
enum HeapId BattleAnimSystem_GetHeapID(BattleAnimSystem *param0);
BOOL BattleAnimSystem_Delete(BattleAnimSystem *param0);
BOOL BattleAnimSystem_StartMove(BattleAnimSystem *param0, UnkStruct_ov16_02265BBC *param1, u16 param2, UnkStruct_ov16_02264408 *param3);
BOOL BattleAnimSystem_ExecuteScript(BattleAnimSystem *param0);
BOOL BattleAnimSystem_IsMoveActive(BattleAnimSystem *param0);
BOOL BattleAnimSystem_FreeScriptData(BattleAnimSystem *param0);
BOOL BattleAnimSystem_IsActive(BattleAnimSystem *param0);
SysTask *BattleAnimSystem_StartAnimTaskEx(BattleAnimSystem *param0, SysTaskFunc param1, void *param2, u32 param3);
SysTask *BattleAnimSystem_StartAnimTask(BattleAnimSystem *param0, SysTaskFunc param1, void *param2);
SysTask *BattleAnimSystem_StartSoundTask(BattleAnimSystem *param0, SysTaskFunc param1, void *param2, u32 param3);
void BattleAnimSystem_EndAnimTask(BattleAnimSystem *param0, SysTask *param1);
void BattleAnimSystem_EndSoundTask(BattleAnimSystem *param0, SysTask *param1);
u16 BattleAnimSystem_GetAttacker(BattleAnimSystem *param0);
u16 BattleAnimSystem_GetDefender(BattleAnimSystem *param0);
ParticleSystem *BattleAnimSystem_GetCurrentParticleSystem(BattleAnimSystem *param0);
ParticleSystem *BattleAnimSystem_GetParticleSystem(BattleAnimSystem *param0, int param1);
SPLEmitter *BattleAnimSystem_GetEmitter(BattleAnimSystem *param0, int param1);
BgConfig *BattleAnimSystem_GetBgConfig(BattleAnimSystem *param0);
s32 BattleAnimSystem_GetScriptVar(BattleAnimSystem *param0, int param1);
ManagedSprite *ov12_02220298(BattleAnimSystem *param0, int param1);
ManagedSprite *ov12_022202C0(BattleAnimSystem *param0, int param1);
SpriteManager *ov12_022202EC(BattleAnimSystem *param0);
SpriteManager *ov12_02220300(BattleAnimSystem *param0);
SpriteSystem *BattleAnimSystem_GetSpriteSystem(BattleAnimSystem *param0);
void BattleAnimSystem_SetDefaultAlphaBlending(void);
int BattleAnimSystem_GetMoveInfo(BattleAnimSystem *param0, enum BattleAnimMoveInfoType param1);
void ov12_02220590(BattleAnimSystem *param0, UnkStruct_ov12_022380DC *param1, int param2);
void ov12_02221238(BattleAnimSystem *param0, int param1);
void ov12_02222338(BattleAnimSystem *param0);
int ov12_02222354(BattleAnimSystem *param0);
void ov12_02222590(BattleAnimSystem *param0, int param1);
void ov12_02222664(BattleAnimSystem *param0, int param1);
BattleAnimScriptCmd BattleAnimSystem_GetScriptCmd(u32 param0);
int ov12_02223178(BattleAnimContext *param0);
s8 BattleAnimSound_CorrectPanDirection(BattleAnimSystem *param0, s8 param1);
s8 BattleAnimSound_CorrectStepDirection(s8 param0, s8 param1, s8 param2);
BOOL ov12_0222325C(BattleAnimSystem *param0, int param1[], int param2);
SpriteTemplate ov12_0222329C(BattleAnimSystem *param0);
int BattleAnimSystem_GetBattlerType(BattleAnimSystem *param0, int param1);
int BattleAnimSystem_GetBattlerGender(BattleAnimSystem *param0, int param1);
int BattleAnimSystem_GetBattlerSpecies(BattleAnimSystem *param0, int param1);
int BattleAnimSystem_GetBattlerForm(BattleAnimSystem *param0, int param1);
int BattleAnimSystem_GetBattlerPersonality(BattleAnimSystem *param0, int param1);
PokemonSprite *BattleAnimSystem_GetBattlerSprite(BattleAnimSystem *param0, int param1);
PaletteData *ov12_0222332C(BattleAnimSystem *param0);
int ov12_02223334(BattleAnimSystem *param0, int param1);
int ov12_02223344(BattleAnimSystem *param0, int param1);
int ov12_02223354(BattleAnimSystem *param0, int param1);
BOOL BattleAnimSystem_IsDoubleBattle(BattleAnimSystem *param0);
BOOL BattleAnimSystem_IsBattlerSemiInvulnerable(BattleAnimSystem *param0, int param1);
int ov12_0222339C(BattleAnimSystem *param0);
int ov12_022233B0(BattleAnimSystem *param0, int param1);
int ov12_022233EC(BattleAnimSystem *param0, int param1);
int ov12_02223428(BattleAnimSystem *param0, int param1);
void ov12_02223460(BattleAnimSystem *param0, int param1);
void ov12_02223488(BattleAnimSystem *param0);
BOOL ov12_022234A8(BattleAnimSystem *param0, int param1);
int ov12_022234E4(int param0, int param1);
UnkStruct_ov12_02223764 *ov12_022234F8(BattleSystem *battleSys, int heapID, int param2);
UnkStruct_ov12_02223764 *ov12_02223764(BattleSystem *battleSys, int heapID);
void ov12_02223770(UnkStruct_ov12_02223764 *param0);
void ov12_022237A4(UnkStruct_ov12_02223764 *param0, int param1);
int ov12_022237D8(UnkStruct_ov12_02223764 *param0);

#endif // POKEPLATINUM_OV12_0221FC20_H
