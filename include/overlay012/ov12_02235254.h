#ifndef POKEPLATINUM_OV12_02235254_H
#define POKEPLATINUM_OV12_02235254_H

#include <nitro/fx/fx.h>

#include "generated/battle_script_battlers.h"

#include "overlay012/struct_ov12_0221FCDC_decl.h"
#include "overlay012/struct_ov12_02235350.h"
#include "overlay012/struct_ov12_0223595C.h"
#include "overlay012/struct_ov12_02235998.h"

#include "pokemon_sprite.h"
#include "sprite.h"

int BattleAnimUtil_GetBattlerType(BattleAnimSystem *param0, int param1);
enum Battler BattleAnimUtil_GetBattlerSide(BattleAnimSystem *param0, int param1);
int BattleAnimUtil_GetBattlerOfType(BattleAnimSystem *param0, int param1);
int BattleAnimUtil_GetAlliedBattlerType(BattleAnimSystem *param0, int param1);
int BattleAnimUtil_GetOpposingBattlerType(int param0);
void ov12_02235350(int param0, int param1, UnkStruct_ov12_02235350 *param2);
void ov12_022353AC(BattleAnimSystem *param0, int param1, UnkStruct_ov12_02235350 *param2);
void ov12_02235448(int param0, VecFx32 *param1, int param2, int param3);
void ov12_02235458(int param0, VecFx32 *param1, int param2, int param3);
void ov12_02235468(int param0, VecFx32 *param1, int param2, int param3);
void ov12_02235478(int param0, VecFx32 *param1, int param2, int param3);
void ov12_02235488(int param0, VecFx32 *param1, int param2, int param3);
void ov12_02235498(int param0, VecFx32 *param1, int param2, int param3);
void ov12_022354A8(int param0, VecFx32 *param1, int param2, int param3);
void ov12_022354B8(int param0, VecFx32 *param1, int param2, int param3);
void ov12_022354C8(int param0, VecFx32 *param1, int param2, int param3);
void ov12_022354D8(int param0, VecFx32 *param1, int param2, int param3);
void ov12_022354E8(int param0, VecFx32 *param1, int param2, int param3);
void ov12_022354F8(int param0, VecFx32 *param1, int param2, int param3);
void ov12_02235508(BattleAnimSystem *param0, int param1, VecFx32 *param2);
void ov12_02235538(BattleAnimSystem *param0, int param1, VecFx32 *param2);
void ov12_02235568(BattleAnimSystem *param0, int param1, VecFx32 *param2);
void ov12_02235598(BattleAnimSystem *param0, int param1, VecFx32 *param2);
void ov12_022355C8(BattleAnimSystem *param0, int param1, VecFx32 *param2);
void ov12_022355F8(BattleAnimSystem *param0, int param1, VecFx32 *param2);
void ov12_02235628(BattleAnimSystem *param0, int param1, VecFx32 *param2);
void ov12_02235658(BattleAnimSystem *param0, int param1, VecFx32 *param2);
void ov12_02235688(BattleAnimSystem *param0, int param1, VecFx32 *param2);
void ov12_022356B8(BattleAnimSystem *param0, int param1, VecFx32 *param2);
void ov12_022356E8(BattleAnimSystem *param0, int param1, VecFx32 *param2);
void ov12_02235718(BattleAnimSystem *param0, int param1, VecFx32 *param2);
void ov12_02235748(VecFx32 *param0);
void ov12_02235758(int param0, VecFx32 *param1, int param2, int param3);
void ov12_02235760(int param0, VecFx32 *param1);
void ov12_02235780(BattleAnimSystem *param0, int param1, int param2);
void ov12_022357BC(BattleAnimSystem *param0, int param1, int param2, int param3);
void ov12_022357EC(BattleAnimSystem *param0, int param1, int param2);
void ov12_02235838(BattleAnimSystem *param0, int param1, BOOL param2);
void ov12_02235918(PokemonSprite *param0, UnkStruct_ov12_02235350 *param1);
void ov12_02235950(ManagedSprite *param0, UnkStruct_ov12_02235350 *param1);
void ov12_0223595C(BattleAnimSystem *param0, UnkStruct_ov12_0223595C *param1);
void ov12_02235998(BattleAnimSystem *param0, int param1, UnkStruct_ov12_02235998 *param2, int *param3);
void ov12_02235D74(BattleAnimSystem *param0, int param1, UnkStruct_ov12_02235998 *param2, int *param3);
void *ov12_02235E50(BattleAnimSystem *param0, int param1);
void ov12_02235E80(void *param0);

#endif // POKEPLATINUM_OV12_02235254_H
