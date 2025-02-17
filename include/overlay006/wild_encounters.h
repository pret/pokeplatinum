#ifndef POKEPLATINUM_WILD_ENCOUNTERS_H
#define POKEPLATINUM_WILD_ENCOUNTERS_H

#include "constants/wild_encounters.h"

#include "field/field_system_decl.h"

typedef struct GrassEncounter {
    s8 level;
    u8 padding_01[3];
    int species;
} GrassEncounter;

typedef struct GrassEncounters {
    int encounterRate;
    GrassEncounter encounters[MAX_GRASS_ENCOUNTERS];
} GrassEncounters;

typedef struct WaterEncounter {
    s8 maxLevel;
    s8 minLevel;
    u8 padding_02[2];
    int species;

} WaterEncounter;
typedef struct WaterEncounters {
    int encounterRate;
    WaterEncounter encounters[MAX_WATER_ENCOUNTERS];
} WaterEncounters;

typedef struct WildEncounters {
    GrassEncounters grassEncounters;
    int swarmEncounters[MAX_SWARM_ENCOUNTERS];
    int dayEncounters[MAX_TIMED_ENCOUNTERS];
    int nightEncounters[MAX_TIMED_ENCOUNTERS];
    int radarEncounters[MAX_RADAR_ENCOUNTERS];
    int encounterRatesForms[5];
    int unownTableID;
    int dualSlotRubyEncounters[MAX_DUAL_SLOT_ENCOUNTERS];
    int dualSlotSapphireEncounters[MAX_DUAL_SLOT_ENCOUNTERS];
    int dualSlotEmeraldEncouters[MAX_DUAL_SLOT_ENCOUNTERS];
    int dualSlotFireredEncounters[MAX_DUAL_SLOT_ENCOUNTERS];
    int dualSlotLeafgreenEncounters[MAX_DUAL_SLOT_ENCOUNTERS];
    WaterEncounters surfEncounters;
    WaterEncounters unused;
    WaterEncounters oldRodEncounters;
    WaterEncounters goodRodEncounters;
    WaterEncounters superRodEncounters;
} WildEncounters;

#include "field_battle_data_transfer.h"
#include "field_task.h"

void WildEncounters_ReplaceTimedEncounters(const WildEncounters *encounterData, int *param1, int *param2);
BOOL WildEncounters_TryWildEncounter(FieldSystem *fieldSystem);
BOOL WildEncounters_TryFishingEncounter(FieldSystem *fieldSystem, const int param1, FieldBattleDTO **param2);
BOOL WildEncounters_TrySweetScentEncounter(FieldSystem *fieldSystem, FieldTask *param1);
BOOL WildEncounters_TryMudEncounter(FieldSystem *fieldSystem, FieldBattleDTO **param1);
void CreateWildMon_HoneyTree(FieldSystem *fieldSystem, FieldBattleDTO *param1);
void CreateWildMon_Scripted(FieldSystem *fieldSystem, u16 param1, u8 param2, FieldBattleDTO *param3);
BOOL WildEncounters_TileHasEncounterRate(FieldSystem *fieldSystem, u8 param1);

#endif // POKEPLATINUM_WILD_ENCOUNTERS_H
