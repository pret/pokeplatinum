#ifndef POKEPLATINUM_OV104_022361B4_H
#define POKEPLATINUM_OV104_022361B4_H

#include "applications/frontier/battle_castle/args.h"
#include "overlay104/defs.h"
#include "overlay104/struct_battle_castle.h"

#include "savedata.h"

BattleCastle *ov104_022361B4(SaveData *saveData, u16 param1, u8 param2, u16 param3, u16 param4, u16 param5, u16 *param6);
void ov104_02236514(BattleCastle *param0, u16 param1);
void ov104_022367AC(BattleCastle *param0);
void BattleCastle_StoreAppResults(BattleCastle *battleCastle, BattleCastleAppArgs *args);
void ov104_02236848(BattleCastle *param0, u8 param1);
u16 ov104_02236B48(BattleCastle *param0);
u16 ov104_02236B54(BattleCastle *param0);
u16 ov104_02236B58(BattleCastle *param0, u8 param1);
void ov104_02236B8C(BattleCastle *param0);
void ov104_02236BD0(BattleCastle *param0);
void ov104_02236BF0(BattleCastle *param0);
void ov104_02236BF8(BattleCastle *param0);
void ov104_02236C50(BattleCastle *param0);
int ov104_02236D10(BattleCastle *param0);
void ov104_02236ED8(SaveData *saveData, u8 param1, int param2);
BOOL ov104_02236F70(BattleCastle *param0, u16 param1, u16 param2);
void ov104_02236FC0(FrontierScriptManager *param0, BattleCastle *param1);
void ov104_022370E0(FrontierScriptManager *param0, BattleCastle *param1);
void ov104_02237180(FrontierScriptManager *param0, BattleCastle *param1);
u16 ov104_02237338(BattleCastle *param0);

#endif // POKEPLATINUM_OV104_022361B4_H
