#ifndef POKEPLATINUM_OV6_02240C9C_H
#define POKEPLATINUM_OV6_02240C9C_H

#include "field/field_system_decl.h"
#include "overlay006/wild_encounters.h"

#include "field_battle_data_transfer.h"
#include "field_task.h"

void WildEncounters_ReplaceTimedEncounters(const WildEncounters *encounterData, int *param1, int *param2);
BOOL WildEncounter_TryWildEncounter(FieldSystem *fieldSystem);
BOOL WildEncounter_TryFishingEncounter(FieldSystem *fieldSystem, const int param1, FieldBattleDTO **param2);
BOOL ov6_022411C8(FieldSystem *fieldSystem, FieldTask *param1);
BOOL ov6_022413E4(FieldSystem *fieldSystem, FieldBattleDTO **param1);
void CreateWildMon_HoneyTree(FieldSystem *fieldSystem, FieldBattleDTO *param1);
void CreateWildMon_Scripted(FieldSystem *fieldSystem, u16 param1, u8 param2, FieldBattleDTO *param3);
BOOL WildEncounter_TileHasEncounterRate(FieldSystem *fieldSystem, u8 param1);

#endif // POKEPLATINUM_OV6_02240C9C_H
