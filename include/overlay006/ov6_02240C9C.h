#ifndef POKEPLATINUM_OV6_02240C9C_H
#define POKEPLATINUM_OV6_02240C9C_H

#include "field/field_system_decl.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "overlay006/battle_params.h"
#include "overlay006/encounter_data.h"

void ov6_02240C9C(const WildEncounters * encounterData, int * param1, int * param2);
BOOL ov6_02240D5C(FieldSystem * fieldSystem);
BOOL ov6_0224106C(FieldSystem * fieldSystem, const int param1, BattleParams ** param2);
BOOL ov6_022411C8(FieldSystem * fieldSystem, TaskManager * param1);
BOOL ov6_022413E4(FieldSystem * fieldSystem, BattleParams ** param1);
void ov6_02242034(FieldSystem * fieldSystem, BattleParams * param1);
void ov6_022420D4(FieldSystem * fieldSystem, u16 param1, u8 param2, BattleParams * param3);
BOOL ov6_02242110(FieldSystem * fieldSystem, u8 param1);

#endif // POKEPLATINUM_OV6_02240C9C_H
