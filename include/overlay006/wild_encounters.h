#ifndef POKEPLATINUM_WILD_ENCOUNTERS_H
#define POKEPLATINUM_WILD_ENCOUNTERS_H

#include "constants/wild_encounters.h"

#include "struct_defs/wild_encounters.h"

#include "field/field_system_decl.h"

#include "field_battle_data_transfer.h"
#include "field_task.h"

void WildEncounters_ReplaceTimedEncounters(const WildEncounters *encounterData, int *param1, int *param2);
BOOL WildEncounters_TryWildEncounter(FieldSystem *fieldSystem);
BOOL WildEncounters_TryFishingEncounter(FieldSystem *fieldSystem, enum EncounterFishingRodType fishingRodType, FieldBattleDTO **param2);
BOOL WildEncounters_TrySweetScentEncounter(FieldSystem *fieldSystem, FieldTask *param1);
BOOL WildEncounters_TryMudEncounter(FieldSystem *fieldSystem, FieldBattleDTO **param1);
void CreateWildMon_HoneyTree(FieldSystem *fieldSystem, FieldBattleDTO *param1);
void CreateWildMon_Scripted(FieldSystem *fieldSystem, u16 param1, u8 param2, FieldBattleDTO *param3);
BOOL WildEncounters_TileHasEncounterRate(FieldSystem *fieldSystem, u8 param1);

#endif // POKEPLATINUM_WILD_ENCOUNTERS_H
