#ifndef POKEPLATINUM_OV12_0221FC20_H
#define POKEPLATINUM_OV12_0221FC20_H

#include "struct_decls/battle_system.h"

#include "battle/struct_ov16_02264408.h"
#include "battle/struct_ov16_02265BBC.h"
#include "overlay012/funcptr_ov12_02239EEC.h"
#include "overlay012/struct_ov12_0221FCDC_decl.h"
#include "overlay012/struct_ov12_02226504_decl.h"
#include "overlay012/struct_ov12_02223764.h"
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

typedef struct BattleAnimContext {
    u8 unk_00;
    u8 unk_01;
    u16 unk_02;
    s32 unk_04;
    u16 unk_08;
    u16 unk_0A;
    u32 fieldConditions;
    u16 unk_10;
    u16 unk_12;
    u16 unk_14;
    u16 unk_16;
    int currentParticleSystem;
    ParticleSystem *particleSystems[MAX_PARTICLE_SYSTEMS];
    SPLEmitter *emitters[MAX_EMITTERS];
    SpriteSystem *unk_AC;
    UnkStruct_ov16_0223E0C8 *unk_B0[4];
    u8 unk_C0[4];
    PokemonSprite *unk_C4[4];
    u32 battleType;
    u16 unk_D8[4];
    u8 unk_E0[4];
    u8 unk_E4[4];
    u8 unk_E8[4];
    u32 unk_EC[4];
    u32 unk_FC[4];
    ChatotCry *unk_10C;
    u8 *unk_110;
    u16 *unk_114;
    int unk_118;
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
    int heapID;
    enum NarcID effectArcID;
    BOOL unk_08;
    BOOL isActive;
    BOOL unk_10;
    void *unk_14;
    u32 *scriptPtr;
    u32 *callStack[BATTLE_ANIM_SCRIPT_MAX_CALL_STACK_DEPTH];
    BattleAnimScriptLoop loopStack[BATTLE_ANIM_SCRIPT_MAX_NESTED_LOOPS];
    UnkStruct_ov12_02221810 unk_48[2];
    u8 cameraProjections[MAX_PARTICLE_SYSTEMS]; // Projection setting for each particle system. See enum CameraProjection
    u8 unk_78[MAX_PARTICLE_SYSTEMS];
    s8 unk_88;
    u8 scriptDelay;
    u16 activeAnimTasks;
    u16 activeSoundTasks;
    s32 scriptVars[BATTLE_ANIM_SCRIPT_VAR_COUNT];
    void (*executeAnimScriptFunc)(BattleAnimSystem *);
    BattleAnimContext *context;
    BgConfig *bgConfig;
    PaletteData *unk_C4;
    SpriteManager *unk_C8[4];
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
void ov12_0221FDC0(BattleAnimSystem *param0, BOOL param1);
BOOL ov12_0221FDD4(BattleAnimSystem *param0);
enum HeapId BattleAnimSystem_GetHeapID(BattleAnimSystem *param0);
BOOL BattleAnimSystem_Delete(BattleAnimSystem *param0);
BOOL ov12_0221FE30(BattleAnimSystem *param0, UnkStruct_ov16_02265BBC *param1, u16 param2, UnkStruct_ov16_02264408 *param3);
BOOL BattleAnimSystem_ExecuteScript(BattleAnimSystem *param0);
BOOL ov12_02220188(BattleAnimSystem *param0);
BOOL ov12_02220198(BattleAnimSystem *param0);
BOOL BattleAnimSystem_IsActive(BattleAnimSystem *param0);
SysTask *BattleAnimSystem_StartAnimTaskEx(BattleAnimSystem *param0, SysTaskFunc param1, void *param2, u32 param3);
SysTask *BattleAnimSystem_StartAnimTask(BattleAnimSystem *param0, SysTaskFunc param1, void *param2);
SysTask *BattleAnimSystem_StartSoundTask(BattleAnimSystem *param0, SysTaskFunc param1, void *param2, u32 param3);
void BattleAnimSystem_EndAnimTask(BattleAnimSystem *param0, SysTask *param1);
void BattleAnimSystem_EndSoundTask(BattleAnimSystem *param0, SysTask *param1);
u16 ov12_02220240(BattleAnimSystem *param0);
u16 ov12_02220248(BattleAnimSystem *param0);
ParticleSystem *ov12_02220250(BattleAnimSystem *param0);
ParticleSystem *BattleAnimSystem_GetParticleSystem(BattleAnimSystem *param0, int param1);
SPLEmitter *BattleAnimSystem_GetEmitter(BattleAnimSystem *param0, int param1);
BgConfig *BattleAnimSystem_GetBgConfig(BattleAnimSystem *param0);
s32 BattleAnimSystem_GetScriptVar(BattleAnimSystem *param0, int param1);
ManagedSprite *ov12_02220298(BattleAnimSystem *param0, int param1);
ManagedSprite *ov12_022202C0(BattleAnimSystem *param0, int param1);
SpriteManager *ov12_022202EC(BattleAnimSystem *param0);
SpriteManager *ov12_02220300(BattleAnimSystem *param0);
SpriteSystem *ov12_02220308(BattleAnimSystem *param0);
void ov12_02220474(void);
int ov12_02220540(BattleAnimSystem *param0, int param1);
void ov12_02220590(BattleAnimSystem *param0, UnkStruct_ov12_022380DC *param1, int param2);
void ov12_02221238(BattleAnimSystem *param0, int param1);
void ov12_02222338(BattleAnimSystem *param0);
int ov12_02222354(BattleAnimSystem *param0);
void ov12_02222590(BattleAnimSystem *param0, int param1);
void ov12_02222664(BattleAnimSystem *param0, int param1);
BattleAnimScriptCmd BattleAnimSystem_GetScriptCmd(u32 param0);
int ov12_02223178(BattleAnimContext *param0);
s8 ov12_0222317C(BattleAnimSystem *param0, s8 param1);
s8 ov12_02223234(s8 param0, s8 param1, s8 param2);
BOOL ov12_0222325C(BattleAnimSystem *param0, int param1[], int param2);
SpriteTemplate ov12_0222329C(BattleAnimSystem *param0);
int ov12_022232B8(BattleAnimSystem *param0, int param1);
int ov12_022232C4(BattleAnimSystem *param0, int param1);
int ov12_022232D0(BattleAnimSystem *param0, int param1);
int ov12_022232E0(BattleAnimSystem *param0, int param1);
int ov12_022232EC(BattleAnimSystem *param0, int param1);
PokemonSprite *ov12_022232FC(BattleAnimSystem *param0, int param1);
PaletteData *ov12_0222332C(BattleAnimSystem *param0);
int ov12_02223334(BattleAnimSystem *param0, int param1);
int ov12_02223344(BattleAnimSystem *param0, int param1);
int ov12_02223354(BattleAnimSystem *param0, int param1);
BOOL ov12_02223364(BattleAnimSystem *param0);
BOOL ov12_0222337C(BattleAnimSystem *param0, int param1);
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
