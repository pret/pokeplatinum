#ifndef POKEPLATINUM_OV12_0221FC20_H
#define POKEPLATINUM_OV12_0221FC20_H

#include "struct_decls/battle_system.h"
#include "struct_decls/struct_02014014_decl.h"
#include "struct_defs/pokemon_sprite.h"

#include "battle/struct_ov16_02264408.h"
#include "battle/struct_ov16_02265BBC.h"
#include "overlay012/funcptr_ov12_02239EEC.h"
#include "overlay012/struct_ov12_0221FCDC_decl.h"
#include "overlay012/struct_ov12_02223178_decl.h"
#include "overlay012/struct_ov12_02223764.h"
#include "overlay012/struct_ov12_022380DC.h"

#include "bg_window.h"
#include "palette.h"
#include "spl.h"
#include "sprite_system.h"
#include "sys_task_manager.h"

UnkStruct_ov12_0221FCDC *ov12_0221FCDC(int heapID);
void ov12_0221FDC0(UnkStruct_ov12_0221FCDC *param0, BOOL param1);
BOOL ov12_0221FDD4(UnkStruct_ov12_0221FCDC *param0);
int ov12_0221FDE4(UnkStruct_ov12_0221FCDC *param0);
BOOL ov12_0221FDF4(UnkStruct_ov12_0221FCDC *param0);
BOOL ov12_0221FE30(UnkStruct_ov12_0221FCDC *param0, UnkStruct_ov16_02265BBC *param1, u16 param2, UnkStruct_ov16_02264408 *param3);
BOOL ov12_0222016C(UnkStruct_ov12_0221FCDC *param0);
BOOL ov12_02220188(UnkStruct_ov12_0221FCDC *param0);
BOOL ov12_02220198(UnkStruct_ov12_0221FCDC *param0);
BOOL ov12_022201B4(UnkStruct_ov12_0221FCDC *param0);
SysTask *ov12_022201CC(UnkStruct_ov12_0221FCDC *param0, SysTaskFunc param1, void *param2, u32 param3);
SysTask *ov12_022201E8(UnkStruct_ov12_0221FCDC *param0, SysTaskFunc param1, void *param2);
SysTask *ov12_02220204(UnkStruct_ov12_0221FCDC *param0, SysTaskFunc param1, void *param2, u32 param3);
void ov12_02220220(UnkStruct_ov12_0221FCDC *param0, SysTask *param1);
void ov12_02220230(UnkStruct_ov12_0221FCDC *param0, SysTask *param1);
u16 ov12_02220240(UnkStruct_ov12_0221FCDC *param0);
u16 ov12_02220248(UnkStruct_ov12_0221FCDC *param0);
UnkStruct_02014014 *ov12_02220250(UnkStruct_ov12_0221FCDC *param0);
UnkStruct_02014014 *ov12_02220260(UnkStruct_ov12_0221FCDC *param0, int param1);
SPLEmitter *ov12_0222026C(UnkStruct_ov12_0221FCDC *param0, int param1);
BgConfig *ov12_02220278(UnkStruct_ov12_0221FCDC *param0);
s32 ov12_02220280(UnkStruct_ov12_0221FCDC *param0, int param1);
ManagedSprite *ov12_02220298(UnkStruct_ov12_0221FCDC *param0, int param1);
ManagedSprite *ov12_022202C0(UnkStruct_ov12_0221FCDC *param0, int param1);
SpriteManager *ov12_022202EC(UnkStruct_ov12_0221FCDC *param0);
SpriteManager *ov12_02220300(UnkStruct_ov12_0221FCDC *param0);
SpriteSystem *ov12_02220308(UnkStruct_ov12_0221FCDC *param0);
void ov12_02220474(void);
int ov12_02220540(UnkStruct_ov12_0221FCDC *param0, int param1);
void ov12_02220590(UnkStruct_ov12_0221FCDC *param0, UnkStruct_ov12_022380DC *param1, int param2);
void ov12_02221238(UnkStruct_ov12_0221FCDC *param0, int param1);
void ov12_02222338(UnkStruct_ov12_0221FCDC *param0);
int ov12_02222354(UnkStruct_ov12_0221FCDC *param0);
void ov12_02222590(UnkStruct_ov12_0221FCDC *param0, int param1);
void ov12_02222664(UnkStruct_ov12_0221FCDC *param0, int param1);
UnkFuncPtr_ov12_02239EEC ov12_02223164(u32 param0);
int ov12_02223178(UnkStruct_ov12_02223178 *param0);
s8 ov12_0222317C(UnkStruct_ov12_0221FCDC *param0, s8 param1);
s8 ov12_02223234(s8 param0, s8 param1, s8 param2);
BOOL ov12_0222325C(UnkStruct_ov12_0221FCDC *param0, int param1[], int param2);
SpriteTemplate ov12_0222329C(UnkStruct_ov12_0221FCDC *param0);
int ov12_022232B8(UnkStruct_ov12_0221FCDC *param0, int param1);
int ov12_022232C4(UnkStruct_ov12_0221FCDC *param0, int param1);
int ov12_022232D0(UnkStruct_ov12_0221FCDC *param0, int param1);
int ov12_022232E0(UnkStruct_ov12_0221FCDC *param0, int param1);
int ov12_022232EC(UnkStruct_ov12_0221FCDC *param0, int param1);
PokemonSprite *ov12_022232FC(UnkStruct_ov12_0221FCDC *param0, int param1);
PaletteData *ov12_0222332C(UnkStruct_ov12_0221FCDC *param0);
int ov12_02223334(UnkStruct_ov12_0221FCDC *param0, int param1);
int ov12_02223344(UnkStruct_ov12_0221FCDC *param0, int param1);
int ov12_02223354(UnkStruct_ov12_0221FCDC *param0, int param1);
BOOL ov12_02223364(UnkStruct_ov12_0221FCDC *param0);
BOOL ov12_0222337C(UnkStruct_ov12_0221FCDC *param0, int param1);
int ov12_0222339C(UnkStruct_ov12_0221FCDC *param0);
int ov12_022233B0(UnkStruct_ov12_0221FCDC *param0, int param1);
int ov12_022233EC(UnkStruct_ov12_0221FCDC *param0, int param1);
int ov12_02223428(UnkStruct_ov12_0221FCDC *param0, int param1);
void ov12_02223460(UnkStruct_ov12_0221FCDC *param0, int param1);
void ov12_02223488(UnkStruct_ov12_0221FCDC *param0);
BOOL ov12_022234A8(UnkStruct_ov12_0221FCDC *param0, int param1);
int ov12_022234E4(int param0, int param1);
UnkStruct_ov12_02223764 *ov12_022234F8(BattleSystem *battleSys, int heapID, int param2);
UnkStruct_ov12_02223764 *ov12_02223764(BattleSystem *battleSys, int heapID);
void ov12_02223770(UnkStruct_ov12_02223764 *param0);
void ov12_022237A4(UnkStruct_ov12_02223764 *param0, int param1);
int ov12_022237D8(UnkStruct_ov12_02223764 *param0);

#endif // POKEPLATINUM_OV12_0221FC20_H
