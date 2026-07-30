#ifndef POKEPLATINUM_OV104_02237DD8_H
#define POKEPLATINUM_OV104_02237DD8_H

#include "applications/frontier/battle_arcade/main.h"
#include "overlay104/frontier_graphics.h"
#include "overlay104/struct_battle_arcade.h"

#include "party.h"
#include "savedata.h"

BattleArcade *ov104_02237DD8(SaveData *saveData, u16 param1, u8 param2, u16 param3, u16 param4, u16 param5, u16 *param6);
void ov104_0223806C(BattleArcade *param0, u16 param1);
void ov104_02238210(BattleArcade *param0);
void BattleArcade_StoreAppResults(BattleArcade *battleArcade, BattleArcadeAppArgs *args);
void ov104_02238278(BattleArcade *param0, u8 param1);
u16 ov104_02238454(BattleArcade *param0);
u16 ov104_02238460(BattleArcade *param0);
u16 ov104_02238464(BattleArcade *param0, u8 param1);
u16 ov104_02238498(BattleArcade *param0, u8 param1);
void ov104_022384A8(BattleArcade *param0);
void ov104_022384B4(BattleArcade *param0);
void ov104_022384D4(BattleArcade *param0);
void ov104_022384DC(BattleArcade *param0);
int BattleArcade_FitnessScore(BattleArcade *battleArcade, Party *party1, Party *party2, int totalTurnsElapsed);
void ov104_02238658(void *param0, FrontierGraphics *param1);
void ov104_02238728(void *param0, FrontierGraphics *param1);
void ov104_02238764(BattleArcade *param0, FrontierGraphics *param1, u16 param2);
void ov104_02238814(BattleArcade *param0, FrontierGraphics *param1, u16 param2);
void ov104_0223886C(BattleArcade *param0, FrontierGraphics *param1, u16 param2, u16 param3);
void ov104_022388A4(BattleArcade *param0, FrontierGraphics *param1, u16 param2, u16 param3);
void ov104_022388DC(BattleArcade *param0, FrontierGraphics *param1, u16 param2);
void ov104_022389A0(BattleArcade *param0, FrontierGraphics *param1, u16 param2);
void ov104_022389F4(BattleArcade *param0, FrontierGraphics *param1, u16 param2, u16 slot, u16 param4);
void ov104_02238AB4(u8 param0, u8 param1);
BOOL ov104_02238B40(BattleArcade *param0, u16 param1, u16 param2);
void ov104_02238B88(BattleArcade *param0, u8 param1);
u16 ov104_02239014(BattleArcade *param0);
void ov104_02239054(Party *param0, Party *param1, int param2, int param3);

#endif // POKEPLATINUM_OV104_02237DD8_H
