#ifndef POKEPLATINUM_OV104_022339B4_H
#define POKEPLATINUM_OV104_022339B4_H

#include "applications/frontier/battle_factory/main.h"
#include "overlay104/struct_ov104_0223ADA0.h"

#include "savedata.h"

BattleFactory *ov104_022339B4(SaveData *saveData, u16 param1, u8 param2, u8 param3);
void ov104_02233B98(BattleFactory *param0, u16 param1);
void ov104_022340D0(BattleFactory *param0);
void BattleFactory_GetMonSelectionAppResult(BattleFactory *battleFactory, BattleFactoryAppArgs *args);
void ov104_02234148(BattleFactory *param0, u8 param1);
u16 ov104_02234430(BattleFactory *param0);
u16 ov104_0223443C(BattleFactory *param0);
u16 ov104_02234440(BattleFactory *param0, u8 param1);
void ov104_02234474(BattleFactory *param0);
void ov104_02234480(BattleFactory *param0);
void ov104_0223449C(BattleFactory *param0);
void ov104_02234570(BattleFactory *param0);
void ov104_022346A4(BattleFactory *param0);
void ov104_0223470C(BattleFactory *param0);
void ov104_02234790(BattleFactory *param0);
BOOL ov104_022347A4(BattleFactory *param0, u16 param1, u16 param2);
u16 ov104_022347F8(BattleFactory *param0);

#endif // POKEPLATINUM_OV104_022339B4_H
