#ifndef POKEPLATINUM_UNK_0202440C_H
#define POKEPLATINUM_UNK_0202440C_H

#include "struct_defs/struct_0202440C.h"
#include "struct_decls/struct_0202442C_decl.h"
#include "struct_decls/struct_02024440_decl.h"
#include "struct_defs/struct_0202DF8C.h"
#include "struct_defs/struct_0202F264.h"
#include "struct_decls/struct_020308A0_decl.h"
#include "struct_decls/struct_020797DC_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

TVBroadcast * SaveData_TVBroadcast(SaveData *save);
PSSBoxes * SaveData_PSSBoxes(SaveData *save);
MysteryGift * SaveData_MysteryGift(SaveData *save);
PalParkTransfer * SaveData_PalParkTransfer(SaveData *save);
HallOfFame * SaveData_HallOfFame(SaveData *save, int heapID, int *resultCode);
int SaveData_SaveHallOfFame(SaveData *save, HallOfFame *hof);
BattleRecording * SaveData_BattleRecording(SaveData *save, int heapID, int *resultCode, int recNum);
int SaveData_SaveBattleRecording(SaveData *save, BattleRecording *rec, int recNum);
BattleFrontierStage * SaveData_BattleFrontierStage(SaveData *save, int heapID, int *resultCode);
int SaveData_SaveBattleFrontierStage(SaveData *save, BattleFrontierStage *frontier);

#endif // POKEPLATINUM_UNK_0202440C_H
