#ifndef POKEPLATINUM_TRAINER_DATA_H
#define POKEPLATINUM_TRAINER_DATA_H

#include "strbuf.h"
#include "struct_defs/trainer_data.h"
#include "struct_decls/struct_021C0794_decl.h"
#include "overlay006/battle_params.h"

void TrainerData_Encounter(BattleParams * param0, const SaveData * param1, int param2);
u32 TrainerData_LoadParam(int param0, int param1);
BOOL TrainerData_HasMessageType(int param0, int param1, int param2);
void TrainerData_LoadMessage(int param0, int param1, Strbuf *param2, int param3);
void TrainerData_Load(int param0, TrainerData * param1);
void TrainerData_LoadParty(int param0, void * param1);
u8 TrainerClass_Gender(int param0);

#endif // POKEPLATINUM_TRAINER_DATA_H
