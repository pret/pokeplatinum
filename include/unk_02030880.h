#ifndef POKEPLATINUM_UNK_02030880_H
#define POKEPLATINUM_UNK_02030880_H

#include "constants/heap.h"

#include "struct_decls/struct_020308A0_decl.h"

#include "savedata.h"

int Frontier_Extra_SaveSize(void);
void Frontier_Extra_Init(BattleFrontierStage *param0);
BattleFrontierStage *sub_020308A0(SaveData *saveData, enum HeapID heapID, int *param2);
int sub_020308A8(SaveData *saveData, BattleFrontierStage *param1);
u16 sub_020308BC(SaveData *saveData, BattleFrontierStage *frontierStage, int challengeType, int species);
BOOL sub_020309A0(SaveData *saveData, int param1, int param2, int param3, int param4, enum HeapID heapID, int *param6, int *param7);

#endif // POKEPLATINUM_UNK_02030880_H
