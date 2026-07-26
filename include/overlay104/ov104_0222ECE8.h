#ifndef POKEPLATINUM_OV104_0222ECE8_H
#define POKEPLATINUM_OV104_0222ECE8_H

#include "overlay104/battle_castle.h"
#include "overlay104/battle_hall.h"
#include "overlay104/struct_battle_arcade.h"
#include "overlay104/struct_battle_factory.h"

void ov104_0222ECE8(int dummy1, int unused, void *dummy2, void *battleHall);
BOOL ov104_0222ED00(BattleHall *battleHall);
void ov104_0222ED2C(int dummy1, int unused1, void *dummy2, void *battleHall);
BOOL ov104_0222ED44(BattleHall *battleHall);
void ov104_0222ED74(int param0, int unused, void *trainerIDs, void *battleHall);
BOOL ov104_0222EDA8(BattleHall *battleHall);
void ov104_0222EDDC(int param0, int unused, void *param2, void *battleHall);
BOOL ov104_0222EE14(BattleHall *battleHall, u8 param1);
void ov104_0222EE38(int param0, int unused, void *param2, void *battleHall);
BOOL ov104_0222EE60(BattleHall *battleHall);
void ov104_0222EEA8(int param0, int unused, void *param2, void *battleHall);
u8 *ov104_0222EED8(int param0, void *battleHall, int size);
BOOL ov104_0222EEF8(BattleFactory *battleFactory);
void ov104_0222EF30(int param0, int unused1, void *param2, void *battleFactory);
BOOL ov104_0222EF64(BattleFactory *battleFactory);
void ov104_0222EF94(int param0, int unused, void *param2, void *battleFactory);
BOOL ov104_0222EFCC(BattleFactory *battleFactory);
void ov104_0222F03C(int param0, int unused, void *param2, void *battleFactory);
BOOL ov104_0222F0B4(BattleFactory *battleFactory);
void ov104_0222F124(int param0, int unused, void *param2, void *battleFactory);
BOOL ov104_0222F1A0(BattleFactory *battleFactory, u8 param1);
void ov104_0222F1C4(int param0, int unused, void *param2, void *battleFactory);
BOOL ov104_0222F1EC(BattleFactory *battleFactory, u8 param1);
void ov104_0222F210(int param0, int unused, void *param2, void *battleFactory);
BOOL ov104_0222F238(BattleFactory *battleFactory);
void ov104_0222F31C(int param0, int unused1, void *param2, void *battleFactory);
BOOL ov104_0222F3B8(BattleCastle *battleCastle);
void ov104_0222F418(int param0, int unused, void *param2, void *battleCastle);
BOOL ov104_0222F44C(BattleCastle *battleCastle);
void ov104_0222F480(int param0, int unused, void *trainerIDs, void *battleCastle);
BOOL ov104_0222F4B8(BattleCastle *battleCastle);
void ov104_0222F530(int param0, int unused, void *param2, void *battleCastle);
BOOL ov104_0222F5D4(BattleCastle *battleCastle);
void ov104_0222F650(int param0, int unused, void *param2, void *battleCastle);
BOOL ov104_0222F6C8(BattleCastle *battleCastle, u16 param1);
void ov104_0222F6E8(int param0, int unused, void *param2, void *battleCastle);
BOOL ov104_0222F710(BattleCastle *battleCastle, u16 param1);
void ov104_0222F730(int param0, int unused, void *param2, void *battleCastle);
BOOL ov104_0222F758(BattleCastle *battleCastle);
void ov104_0222F7BC(int param0, int unused, void *param2, void *battleCastle);
u8 *ov104_0222F84C(int index, void *battleCastle, int size);
BOOL ov104_0222F86C(BattleArcade *battleArcade);
void ov104_0222F8A0(int param0, int unused, void *param2, void *battleArcade);
BOOL ov104_0222F8D0(BattleArcade *battleArcade);
void ov104_0222F908(int param0, int unused, void *param2, void *battleArcade);
BOOL ov104_0222F944(BattleArcade *battleArcade);
void ov104_0222F9C0(int param0, int unused, void *param2, void *battleArcade);
BOOL ov104_0222FA38(BattleArcade *battleArcade, u16 param1);
void ov104_0222FA5C(int param0, int unused, void *param2, void *battleArcade);
BOOL ov104_0222FA84(BattleArcade *battleArcade, u16 param1);
void ov104_0222FAA8(int param0, int unused, void *param2, void *battleArcade);
BOOL ov104_0222FAD0(BattleArcade *battleArcade);
void ov104_0222FB34(int param0, int unused, void *param2, void *battleArcade);
u8 *ov104_0222FBC4(int param0, void *battleArcade, int size);

#endif // POKEPLATINUM_OV104_0222ECE8_H
