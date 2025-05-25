#ifndef POKEPLATINUM_UNK_0203061C_H
#define POKEPLATINUM_UNK_0203061C_H

#include "struct_defs/battle_frontier.h"

#include "savedata.h"

int BattleFrontier_SaveSize(void);
void BattleFrontier_Init(BattleFrontier *frontier);
BattleFrontier *SaveData_GetBattleFrontier(SaveData *saveData);
u16 sub_02030698(BattleFrontier *frontier, int param1, int param2);
u16 sub_020306E4(BattleFrontier *frontier, int param1, int param2, u16 param3);
void sub_02030764(BattleFrontier *frontier);
void sub_02030788(BattleFrontier *frontier, int param1);
void sub_020307F0(BattleFrontier *frontier, int param1, int param2);
u16 sub_02030804(BattleFrontier *frontier, int param1, int param2, int param3);
u16 sub_02030824(BattleFrontier *frontier, int param1, int param2, int param3);
u16 sub_02030848(BattleFrontier *frontier, int param1, int param2, u16 param3);

#endif // POKEPLATINUM_UNK_0203061C_H
