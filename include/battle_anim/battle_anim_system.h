#ifndef POKEPLATINUM_BATTLE_ANIM_SYSTEM_H
#define POKEPLATINUM_BATTLE_ANIM_SYSTEM_H

#include "constants/battle.h"

#include "struct_decls/battle_system.h"

#include "battle/battle_anim_battler_context.h"
#include "battle/struct_ov16_02265BBC.h"
#include "battle_anim/struct_ov12_02223764.h"
#include "battle_anim/struct_ov12_022380DC.h"

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

#define BATTLE_BG_3D     BG_LAYER_MAIN_0
#define BATTLE_BG_WINDOW BG_LAYER_MAIN_1
#define BATTLE_BG_BASE   BG_LAYER_MAIN_2
#define BATTLE_BG_EFFECT BG_LAYER_MAIN_3

#define BATTLE_BG_BLENDMASK_3D     GX_BLEND_PLANEMASK_BG0
#define BATTLE_BG_BLENDMASK_WINDOW GX_BLEND_PLANEMASK_BG1
#define BATTLE_BG_BLENDMASK_BASE   GX_BLEND_PLANEMASK_BG2
#define BATTLE_BG_BLENDMASK_EFFECT GX_BLEND_PLANEMASK_BG3
#define BATTLE_BG_BLENDMASK_ALL    (BATTLE_BG_BLENDMASK_3D | BATTLE_BG_BLENDMASK_WINDOW | BATTLE_BG_BLENDMASK_BASE | BATTLE_BG_BLENDMASK_EFFECT)

#define BATTLE_BG_WNDMASK_3D     GX_WND_PLANEMASK_BG0
#define BATTLE_BG_WNDMASK_WINDOW GX_WND_PLANEMASK_BG1
#define BATTLE_BG_WNDMASK_BASE   GX_WND_PLANEMASK_BG2
#define BATTLE_BG_WNDMASK_EFFECT GX_WND_PLANEMASK_BG3
#define BATTLE_BG_WNDMASK_ALL    (BATTLE_BG_WNDMASK_3D | BATTLE_BG_WNDMASK_WINDOW | BATTLE_BG_WNDMASK_BASE | BATTLE_BG_WNDMASK_EFFECT)

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

typedef struct CustomBgScrollContext CustomBgScrollContext;

typedef struct BattleAnimScriptLoop {
    u32 *startPos;
    u8 curIteration;
    u8 maxIterations;
    BOOL isActive;
} BattleAnimScriptLoop;

typedef struct {
    struct BattleAnimSystem *battleAnimSys;
    SpriteManager *spriteManager;
    ManagedSprite *sprite;
    BOOL active;
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
    struct CustomBgScrollContext *unk_C0;
} UnkStruct_ov12_022224F8;

typedef struct BattleBgAnim {
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
    enum HeapID heapID;
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

BattleAnimSystem *BattleAnimSystem_New(enum HeapID heapID);
void BattleAnimSystem_SetIsContest(BattleAnimSystem *system, BOOL isContest);
BOOL BattleAnimSystem_IsContest(BattleAnimSystem *system);
enum HeapID BattleAnimSystem_GetHeapID(BattleAnimSystem *system);
BOOL BattleAnimSystem_Delete(BattleAnimSystem *system);
BOOL BattleAnimSystem_StartMove(BattleAnimSystem *system, UnkStruct_ov16_02265BBC *param1, u16 move, BattleAnimBattlerContext *param3);
BOOL BattleAnimSystem_ExecuteScript(BattleAnimSystem *system);
BOOL BattleAnimSystem_IsMoveActive(BattleAnimSystem *system);
BOOL BattleAnimSystem_FreeScriptData(BattleAnimSystem *system);
BOOL BattleAnimSystem_IsActive(BattleAnimSystem *system);
SysTask *BattleAnimSystem_StartAnimTaskEx(BattleAnimSystem *system, SysTaskFunc func, void *param, u32 priority);
SysTask *BattleAnimSystem_StartAnimTask(BattleAnimSystem *system, SysTaskFunc func, void *param);
SysTask *BattleAnimSystem_StartSoundTask(BattleAnimSystem *system, SysTaskFunc func, void *param, u32 priority);
void BattleAnimSystem_EndAnimTask(BattleAnimSystem *system, SysTask *task);
void BattleAnimSystem_EndSoundTask(BattleAnimSystem *system, SysTask *task);
u16 BattleAnimSystem_GetAttacker(BattleAnimSystem *system);
u16 BattleAnimSystem_GetDefender(BattleAnimSystem *system);
ParticleSystem *BattleAnimSystem_GetCurrentParticleSystem(BattleAnimSystem *system);
ParticleSystem *BattleAnimSystem_GetParticleSystem(BattleAnimSystem *system, int index);
SPLEmitter *BattleAnimSystem_GetEmitter(BattleAnimSystem *system, int index);
BgConfig *BattleAnimSystem_GetBgConfig(BattleAnimSystem *system);
s32 BattleAnimSystem_GetScriptVar(BattleAnimSystem *system, int index);
ManagedSprite *BattleAnimSystem_GetSprite(BattleAnimSystem *system, int index);
ManagedSprite *BattleAnimSystem_GetPokemonSprite(BattleAnimSystem *system, int index);
SpriteManager *BattleAnimSystem_GetPokemonSpriteManager(BattleAnimSystem *system);
SpriteManager *BattleAnimSystem_GetPrimarySpriteManager(BattleAnimSystem *system);
SpriteSystem *BattleAnimSystem_GetSpriteSystem(BattleAnimSystem *system);
void BattleAnimSystem_SetDefaultAlphaBlending(void);
int BattleAnimSystem_GetMoveInfo(BattleAnimSystem *system, enum BattleAnimMoveInfoType type);
void ov12_02220590(BattleAnimSystem *system, UnkStruct_ov12_022380DC *param1, int param2);
void BattleAnimSystem_CancelTrackingTask(BattleAnimSystem *system, enum BattleAnimTrackingTask task);
void BattleAnimSystem_CancelBgAnim(BattleAnimSystem *system);
int BattleAnimSystem_GetBaseBgPalettes(BattleAnimSystem *system);
void BattleAnimSystem_LoadBaseBg(BattleAnimSystem *system, enum BgLayer bgLayer);
void BattleAnimSystem_UnloadBaseBg(BattleAnimSystem *system, enum BgLayer bgLayer);
BattleAnimScriptCmd BattleAnimSystem_GetScriptCmd(u32 id);
int ov12_02223178(BattleAnimContext *param0);
s8 BattleAnimSound_CorrectPanDirection(BattleAnimSystem *system, s8 pan);
s8 BattleAnimSound_CorrectStepDirection(s8 start, s8 end, s8 step);
BOOL BattleAnimSystem_GetExtraParams(BattleAnimSystem *system, int params[], int count);
SpriteTemplate BattleAnimSystem_GetLastSpriteTemplate(BattleAnimSystem *system);
int BattleAnimSystem_GetBattlerType(BattleAnimSystem *system, int battler);
int BattleAnimSystem_GetBattlerGender(BattleAnimSystem *system, int battler);
int BattleAnimSystem_GetBattlerSpecies(BattleAnimSystem *system, int battler);
int BattleAnimSystem_GetBattlerForm(BattleAnimSystem *system, int battler);
int BattleAnimSystem_GetBattlerPersonality(BattleAnimSystem *system, int battler);
PokemonSprite *BattleAnimSystem_GetBattlerSprite(BattleAnimSystem *system, int battler);
PaletteData *BattleAnimSystem_GetPaletteData(BattleAnimSystem *system);
int BattleAnimSystem_GetBattlerSpritePaletteIndex(BattleAnimSystem *system, int battler);
int BattleAnimSystem_GetBattlerSpriteNarcID(BattleAnimSystem *system, int battler);
int BattleAnimSystem_GetBattlerSpriteOffset(BattleAnimSystem *system, int battler);
BOOL BattleAnimSystem_IsDoubleBattle(BattleAnimSystem *system);
BOOL BattleAnimSystem_IsBattlerSemiInvulnerable(BattleAnimSystem *system, int battler);
int BattleAnimSystem_GetPokemonSpritePriority(BattleAnimSystem *system);
enum BgLayer BattleAnimSystem_GetBgLayer(BattleAnimSystem *system, int bg); // See BATTLE_ANIM_BG_*
int BattleAnimSystem_GetBgID(BattleAnimSystem *system, int bg); // See BATTLE_ANIM_BG_*
int BattleAnimSystem_GetBgPriority(BattleAnimSystem *system, int bg); // See BATTLE_ANIM_BG_*
void BattleAnimSystem_LoadBattleBgTiles(BattleAnimSystem *system, enum BgLayer layer);
void BattleAnimSystem_LoadBattleBgPaletteBuffer(BattleAnimSystem *system);
BOOL BattleAnimSystem_ShouldBattlerSpriteBeFlipped(BattleAnimSystem *system, int battlerRole);
int BattleAnimSystem_GetBgNarcMemberIndex(int bgID, enum BgNarcMemberType type);
UnkStruct_ov12_02223764 *ov12_022234F8(BattleSystem *battleSys, enum HeapID heapID, int param2);
UnkStruct_ov12_02223764 *ov12_02223764(BattleSystem *battleSys, enum HeapID heapID);
void ov12_02223770(UnkStruct_ov12_02223764 *param0);
void ov12_022237A4(UnkStruct_ov12_02223764 *param0, int param1);
int ov12_022237D8(UnkStruct_ov12_02223764 *param0);

#endif // POKEPLATINUM_BATTLE_ANIM_SYSTEM_H
