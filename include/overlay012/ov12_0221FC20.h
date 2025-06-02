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


enum MoveEffectSystemArc {
    MOVE_EFFECT_SYSTEM_ARC_BATT_BG = 0,
    MOVE_EFFECT_SYSTEM_ARC_BATT_OBJ,
    MOVE_EFFECT_SYSTEM_ARC_WECHAR,
    MOVE_EFFECT_SYSTEM_ARC_WEPLTT,
    MOVE_EFFECT_SYSTEM_ARC_WECELL,
    MOVE_EFFECT_SYSTEM_ARC_WECELLANM,

    MOVE_EFFECT_SYSTEM_ARC_COUNT,
};

typedef struct UnkStruct_ov12_02223178_t {
    u8 unk_00;
    u8 unk_01;
    u16 unk_02;
    s32 unk_04;
    u16 unk_08;
    u16 unk_0A;
    u32 unk_0C;
    u16 unk_10;
    u16 unk_12;
    u16 unk_14;
    u16 unk_16;
    int unk_18;
    ParticleSystem *unk_1C[16];
    SPLEmitter *unk_5C[20];
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
} UnkStruct_ov12_02223178;

typedef struct {
    u32 *unk_00;
    u8 unk_04;
    u8 unk_05;
    BOOL unk_08;
} UnkStruct_ov12_0221FCDC_sub1;

typedef struct {
    MoveEffectSystem *unk_00;
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

typedef struct MoveEffectSystem {
    int heapID;
    int narcID;
    BOOL unk_08;
    BOOL unk_0C;
    BOOL unk_10;
    void *unk_14;
    u32 *unk_18;
    u32 *unk_1C[3];
    UnkStruct_ov12_0221FCDC_sub1 unk_28[3];
    UnkStruct_ov12_02221810 unk_48[2];
    u8 unk_68[16];
    u8 unk_78[16];
    s8 unk_88;
    u8 unk_89;
    u16 unk_8A;
    u16 unk_8C;
    s32 unk_90[10];
    UnkFuncPtr_ov12_02239EEC unk_B8;
    UnkStruct_ov12_02223178 *unk_BC;
    BgConfig *unk_C0;
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
    u8 unk_19C[4];
    NARC *arcs[6];
} MoveEffectSystem;


MoveEffectSystem *MoveEffectSystem_New(enum HeapId heapID);
void ov12_0221FDC0(MoveEffectSystem *param0, BOOL param1);
BOOL ov12_0221FDD4(MoveEffectSystem *param0);
int ov12_0221FDE4(MoveEffectSystem *param0);
BOOL MoveEffectSystem_Delete(MoveEffectSystem *param0);
BOOL ov12_0221FE30(MoveEffectSystem *param0, UnkStruct_ov16_02265BBC *param1, u16 param2, UnkStruct_ov16_02264408 *param3);
BOOL ov12_0222016C(MoveEffectSystem *param0);
BOOL ov12_02220188(MoveEffectSystem *param0);
BOOL ov12_02220198(MoveEffectSystem *param0);
BOOL ov12_022201B4(MoveEffectSystem *param0);
SysTask *ov12_022201CC(MoveEffectSystem *param0, SysTaskFunc param1, void *param2, u32 param3);
SysTask *ov12_022201E8(MoveEffectSystem *param0, SysTaskFunc param1, void *param2);
SysTask *ov12_02220204(MoveEffectSystem *param0, SysTaskFunc param1, void *param2, u32 param3);
void ov12_02220220(MoveEffectSystem *param0, SysTask *param1);
void ov12_02220230(MoveEffectSystem *param0, SysTask *param1);
u16 ov12_02220240(MoveEffectSystem *param0);
u16 ov12_02220248(MoveEffectSystem *param0);
ParticleSystem *ov12_02220250(MoveEffectSystem *param0);
ParticleSystem *ov12_02220260(MoveEffectSystem *param0, int param1);
SPLEmitter *ov12_0222026C(MoveEffectSystem *param0, int param1);
BgConfig *ov12_02220278(MoveEffectSystem *param0);
s32 ov12_02220280(MoveEffectSystem *param0, int param1);
ManagedSprite *ov12_02220298(MoveEffectSystem *param0, int param1);
ManagedSprite *ov12_022202C0(MoveEffectSystem *param0, int param1);
SpriteManager *ov12_022202EC(MoveEffectSystem *param0);
SpriteManager *ov12_02220300(MoveEffectSystem *param0);
SpriteSystem *ov12_02220308(MoveEffectSystem *param0);
void ov12_02220474(void);
int ov12_02220540(MoveEffectSystem *param0, int param1);
void ov12_02220590(MoveEffectSystem *param0, UnkStruct_ov12_022380DC *param1, int param2);
void ov12_02221238(MoveEffectSystem *param0, int param1);
void ov12_02222338(MoveEffectSystem *param0);
int ov12_02222354(MoveEffectSystem *param0);
void ov12_02222590(MoveEffectSystem *param0, int param1);
void ov12_02222664(MoveEffectSystem *param0, int param1);
UnkFuncPtr_ov12_02239EEC ov12_02223164(u32 param0);
int ov12_02223178(UnkStruct_ov12_02223178 *param0);
s8 ov12_0222317C(MoveEffectSystem *param0, s8 param1);
s8 ov12_02223234(s8 param0, s8 param1, s8 param2);
BOOL ov12_0222325C(MoveEffectSystem *param0, int param1[], int param2);
SpriteTemplate ov12_0222329C(MoveEffectSystem *param0);
int ov12_022232B8(MoveEffectSystem *param0, int param1);
int ov12_022232C4(MoveEffectSystem *param0, int param1);
int ov12_022232D0(MoveEffectSystem *param0, int param1);
int ov12_022232E0(MoveEffectSystem *param0, int param1);
int ov12_022232EC(MoveEffectSystem *param0, int param1);
PokemonSprite *ov12_022232FC(MoveEffectSystem *param0, int param1);
PaletteData *ov12_0222332C(MoveEffectSystem *param0);
int ov12_02223334(MoveEffectSystem *param0, int param1);
int ov12_02223344(MoveEffectSystem *param0, int param1);
int ov12_02223354(MoveEffectSystem *param0, int param1);
BOOL ov12_02223364(MoveEffectSystem *param0);
BOOL ov12_0222337C(MoveEffectSystem *param0, int param1);
int ov12_0222339C(MoveEffectSystem *param0);
int ov12_022233B0(MoveEffectSystem *param0, int param1);
int ov12_022233EC(MoveEffectSystem *param0, int param1);
int ov12_02223428(MoveEffectSystem *param0, int param1);
void ov12_02223460(MoveEffectSystem *param0, int param1);
void ov12_02223488(MoveEffectSystem *param0);
BOOL ov12_022234A8(MoveEffectSystem *param0, int param1);
int ov12_022234E4(int param0, int param1);
UnkStruct_ov12_02223764 *ov12_022234F8(BattleSystem *battleSys, int heapID, int param2);
UnkStruct_ov12_02223764 *ov12_02223764(BattleSystem *battleSys, int heapID);
void ov12_02223770(UnkStruct_ov12_02223764 *param0);
void ov12_022237A4(UnkStruct_ov12_02223764 *param0, int param1);
int ov12_022237D8(UnkStruct_ov12_02223764 *param0);

#endif // POKEPLATINUM_OV12_0221FC20_H
