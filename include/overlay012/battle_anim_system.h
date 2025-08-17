#ifndef POKEPLATINUM_BATTLE_ANIM_SYSTEM_H
#define POKEPLATINUM_BATTLE_ANIM_SYSTEM_H

#include "constants/battle.h"

#include "struct_decls/battle_system.h"

#include "battle/battle_anim_battler_context.h"
#include "battle/struct_ov16_02265BBC.h"
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
#define BATTLE_ANIM_SCRIPT_MAX_POKEMON_SPRITES  5
#define BATTLE_ANIM_SCRIPT_MAX_SPRITES          10
#define BATTLE_ANIM_SCRIPT_MAX_SPRITE_MANAGERS  4

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

enum BgNarcMemberType {
    BG_NARC_MEMBER_NCGR = 0,
    BG_NARC_MEMBER_NCLR,
    BG_NARC_MEMBER_NSCR1,
    BG_NARC_MEMBER_NSCR2,
    BG_NARC_MEMBER_NSCR3,

    BG_NARC_MEMBER_COUNT,
};

enum BattleAnimTrackingTask {
    BATTLE_ANIM_TRACKING_TASK_SPRITE_0 = 0,
    BATTLE_ANIM_TRACKING_TASK_SPRITE_1,
    BATTLE_ANIM_TRACKING_TASK_SPRITE_2,
    BATTLE_ANIM_TRACKING_TASK_SPRITE_3,
    BATTLE_ANIM_TRACKING_TASK_BG,

    BATTLE_ANIM_TRACKING_TASK_COUNT,
};

enum BattleAnimBg {
    BATTLE_ANIM_BG_WINDOW = 0, // BG for windows
    BATTLE_ANIM_BG_BASE, // BG for base battle BG
    BATTLE_ANIM_BG_EFFECT, // BG for move anim BG switching
    BATTLE_ANIM_BG_POKEMON, // BG for Pokemon sprites
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
    PokemonSpriteData *pokemonSpriteData[MAX_BATTLERS];
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
    u8 *bgTiles;
    u16 *bgPaletteBuffer;
    BOOL transformed; // Flag for if transform is currently active
} BattleAnimContext;

typedef struct BattleAnimScriptLoop {
    u32 *startPos;
    u8 curIteration;
    u8 maxIterations;
    BOOL isActive;
} BattleAnimScriptLoop;

typedef struct {
    struct BattleAnimSystem *unk_00;
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
    BgConfig *bgConfig;
    s16 offsetX;
    s16 offsetY;
    s16 stepX;
    s16 stepY;
    int bg;
    int unusedBg;
    BOOL unused;
    BOOL cancel;
    UnkStruct_ov12_022224F8 *unk_1C;
} BattleBgAnim;

typedef struct PokemonSpriteTrackingTask {
    u8 frameCount; // Frame counter for the interval below, set to 0
    u8 interval; // Interval, in frames, at which to update the position (0 means every frame)
    PokemonSprite *sprite; // Pokemon sprite to be tracked
} PokemonSpriteTrackingData;

typedef struct SpriteTrackingTask {
    ManagedSprite *sprite;
    PokemonSpriteTrackingData data;
    SysTask *task;
} SpriteTrackingTask;

typedef struct BgTrackingTask {
    BgConfig *bg;
    PokemonSpriteTrackingData data;
    SysTask *task;
} BgTrackingTask;

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
    void (*executeAnimScriptFunc)(struct BattleAnimSystem *);
    BattleAnimContext *context;
    BgConfig *bgConfig;
    PaletteData *paletteData;
    SpriteManager *spriteManagers[BATTLE_ANIM_SCRIPT_MAX_SPRITE_MANAGERS];
    ManagedSprite *sprites[BATTLE_ANIM_SCRIPT_MAX_SPRITES];
    SpriteTemplate lastSpriteTemplate;
    SpriteManager *pokemonSpriteManager;
    ManagedSprite *pokemonSprites[BATTLE_ANIM_SCRIPT_MAX_POKEMON_SPRITES];
    BOOL usedPokemonSprites[BATTLE_ANIM_SCRIPT_MAX_POKEMON_SPRITES];
    SpriteTrackingTask *spriteTrackingTasks[BATTLE_ANIM_SCRIPT_MAX_POKEMON_SPRITES];
    BgTrackingTask *bgTrackingTask;
    u8 bgSwitchState;
    u8 soundEffectWaitTimer;
    u8 unk_17A;
    u8 unk_17B;
    BattleBgAnim *bgAnim;
    BattleBackgroundReference battleBgRefs;
    int baseBgPalettes;
    u8 bgLayerPriorities[4];
    NARC *arcs[BATTLE_ANIM_SYSTEM_ARC_COUNT];
} BattleAnimSystem;

typedef void (*BattleAnimScriptCmd)(BattleAnimSystem *);

BattleAnimSystem *BattleAnimSystem_New(enum HeapId heapID);
void BattleAnimSystem_SetIsContest(BattleAnimSystem *param0, BOOL param1);
BOOL BattleAnimSystem_IsContest(BattleAnimSystem *param0);
enum HeapId BattleAnimSystem_GetHeapID(BattleAnimSystem *param0);
BOOL BattleAnimSystem_Delete(BattleAnimSystem *param0);
BOOL BattleAnimSystem_StartMove(BattleAnimSystem *param0, UnkStruct_ov16_02265BBC *param1, u16 param2, BattleAnimBattlerContext *param3);
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
ManagedSprite *BattleAnimSystem_GetSprite(BattleAnimSystem *param0, int param1);
ManagedSprite *BattleAnimSystem_GetPokemonSprite(BattleAnimSystem *param0, int param1);
SpriteManager *BattleAnimSystem_GetPokemonSpriteManager(BattleAnimSystem *param0);
SpriteManager *ov12_02220300(BattleAnimSystem *param0);
SpriteSystem *BattleAnimSystem_GetSpriteSystem(BattleAnimSystem *param0);
void BattleAnimSystem_SetDefaultAlphaBlending(void);
int BattleAnimSystem_GetMoveInfo(BattleAnimSystem *param0, enum BattleAnimMoveInfoType param1);
void ov12_02220590(BattleAnimSystem *param0, UnkStruct_ov12_022380DC *param1, int param2);
void BattleAnimSystem_CancelTrackingTask(BattleAnimSystem *param0, enum BattleAnimTrackingTask param1);
void BattleAnimSystem_CancelBgAnim(BattleAnimSystem *param0);
int BattleAnimSystem_GetBaseBgPalettes(BattleAnimSystem *param0);
void BattleAnimSystem_LoadBaseBg(BattleAnimSystem *param0, enum BgLayer param1);
void BattleAnimSystem_UnloadBaseBg(BattleAnimSystem *param0, enum BgLayer param1);
BattleAnimScriptCmd BattleAnimSystem_GetScriptCmd(u32 param0);
int ov12_02223178(BattleAnimContext *param0);
s8 BattleAnimSound_CorrectPanDirection(BattleAnimSystem *param0, s8 param1);
s8 BattleAnimSound_CorrectStepDirection(s8 param0, s8 param1, s8 param2);
BOOL ov12_0222325C(BattleAnimSystem *param0, int param1[], int param2);
SpriteTemplate BattleAnimSystem_GetLastSpriteTemplate(BattleAnimSystem *param0);
int BattleAnimSystem_GetBattlerType(BattleAnimSystem *param0, int param1);
int BattleAnimSystem_GetBattlerGender(BattleAnimSystem *param0, int param1);
int BattleAnimSystem_GetBattlerSpecies(BattleAnimSystem *param0, int param1);
int BattleAnimSystem_GetBattlerForm(BattleAnimSystem *param0, int param1);
int BattleAnimSystem_GetBattlerPersonality(BattleAnimSystem *param0, int param1);
PokemonSprite *BattleAnimSystem_GetBattlerSprite(BattleAnimSystem *param0, int param1);
PaletteData *BattleAnimSystem_GetPaletteData(BattleAnimSystem *param0);
int BattleAnimSystem_GetBattlerSpritePaletteIndex(BattleAnimSystem *param0, int param1);
int BattleAnimSystem_GetBattlerSpriteNarcID(BattleAnimSystem *param0, int param1);
int BattleAnimSystem_GetBattlerSpriteHeight(BattleAnimSystem *param0, int param1);
BOOL BattleAnimSystem_IsDoubleBattle(BattleAnimSystem *param0);
BOOL BattleAnimSystem_IsBattlerSemiInvulnerable(BattleAnimSystem *param0, int param1);
int BattleAnimSystem_GetPokemonSpritePriority(BattleAnimSystem *param0);
enum BgLayer BattleAnimSystem_GetBgLayer(BattleAnimSystem *param0, enum BattleAnimBg param1);
int BattleAnimSystem_GetBgID(BattleAnimSystem *param0, enum BattleAnimBg param1);
int BattleAnimSystem_GetBgPriority(BattleAnimSystem *param0, enum BattleAnimBg param1);
void BattleAnimSystem_LoadBattleBgTiles(BattleAnimSystem *param0, enum BgLayer param1);
void BattleAnimSystem_LoadBattleBgPaletteBuffer(BattleAnimSystem *param0);
BOOL BattleAnimSystem_ShouldBattlerSpriteBeFlipped(BattleAnimSystem *param0, enum BattleAnimBattlerType param1);
int BattleAnimSystem_GetBgNarcMemberIndex(int bgID, enum BgNarcMemberType type);
UnkStruct_ov12_02223764 *ov12_022234F8(BattleSystem *battleSys, int heapID, int param2);
UnkStruct_ov12_02223764 *ov12_02223764(BattleSystem *battleSys, int heapID);
void ov12_02223770(UnkStruct_ov12_02223764 *param0);
void ov12_022237A4(UnkStruct_ov12_02223764 *param0, int param1);
int ov12_022237D8(UnkStruct_ov12_02223764 *param0);

#endif // POKEPLATINUM_BATTLE_ANIM_SYSTEM_H
