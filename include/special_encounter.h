#ifndef POKEPLATINUM_SPECIAL_ENCOUNTER_H
#define POKEPLATINUM_SPECIAL_ENCOUNTER_H

#include "struct_defs/radar_chain_records.h"
#include "struct_defs/special_encounter.h"

#include "savedata.h"

// for SpecialEncounter_GetDailyMon
#define DAILY_MARSH 1
#define DAILY_SWARM 2

#define NUM_TROPHY_GARDEN_SPECIAL_MONS 16
#define TROPHY_GARDEN_SLOT_NONE        0xFFFF

// for Roamer_Get/SetData
#define ROAMER_DATA_MAP_ID      1
#define ROAMER_DATA_IVS         2
#define ROAMER_DATA_PERSONALITY 3
#define ROAMER_DATA_SPECIES     4
#define ROAMER_DATA_CURRENT_HP  5
#define ROAMER_DATA_LEVEL       6
#define ROAMER_DATA_STATUS      7
#define ROAMER_DATA_ACTIVE      8

int SpecialEncounter_SaveSize(void);
void SpecialEncounter_Init(SpecialEncounter *speEnc);
void SpecialEncounter_SetMixedRecordDailies(SpecialEncounter *speEnc, const u32 mixedRecord);
u32 SpecialEncounter_GetDailyMon(SpecialEncounter *speEnc, const u8 dailyType);
RadarChainRecords *SpecialEncounter_GetRadarChainRecords(SpecialEncounter *speEnc);
SpecialEncounter *SaveData_GetSpecialEncounters(SaveData *saveData);
PlayerHoneyTreeStates *SpecialEncounter_GetPlayerHoneyTreeStates(SpecialEncounter *speEnc);
const int SpecialEncounter_GetLastSlatheredTreeId(PlayerHoneyTreeStates *treeDat);
void SpecialEncounter_SetLastSlatheredTreeId(const u8 treeId, PlayerHoneyTreeStates *treeDat);
HoneyTree *SpecialEncounter_GetHoneyTree(const u8 treeId, PlayerHoneyTreeStates *treeDat);
void SpecialEncounter_DecrementHoneyTreeTimers(SaveData *saveData, const int decrement);
void SpecialEncounter_EnableSwarms(SaveData *saveData);
u8 SpecialEncounter_IsSwarmEnabled(SpecialEncounter *speEnc);
void SpecialEncounter_UpdateRecentRoutes(SpecialEncounter *speEnc, const int newMap);
int SpecialEncounter_GetPlayerPreviousMap(SpecialEncounter *speEnc);
u8 SpecialEncounter_GetRoamerRouteIndex(SpecialEncounter *speEnc, const u8 roamerId);
void SpecialEncounter_SetRoamerRouteIndex(SpecialEncounter *speEnc, const u8 roamerId, const u8 routeIndex);
u8 SpecialEncounter_IsRoamerActive(SpecialEncounter *speEnc, const u8 slot);
void SpecialEncounter_ZeroRoamerData(Roamer **roamer);
Roamer *SpecialEncounter_GetRoamer(SpecialEncounter *speEnc, const u8 slot);
u32 Roamer_GetData(const Roamer *roamer, const u8 dataType);
void Roamer_SetData(Roamer *roamer, const u8 dataType, const u32 data);
u8 *SpecialEncounter_GetRadarCharge(SpecialEncounter *speEnc);
u8 *SpecialEncounter_GetRepelSteps(SpecialEncounter *speEnc);
BOOL SpecialEncounter_RepelStepsEmpty(SpecialEncounter *speEnc);
void SpecialEncounter_SetFluteFactor(SpecialEncounter *speEnc, const u8 flute);
u8 SpecialEncounter_GetFluteFactor(SpecialEncounter *speEnc);
void SpecialEncounter_GetTrophyGardenMons(SaveData *saveData, u16 *slot1, u16 *slot2);
void TrophyGarden_ShiftSlotsForNewMon(SaveData *saveData, const u16 newMon);

#endif // POKEPLATINUM_SPECIAL_ENCOUNTER_H
