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
u32 SpecialEncounter_GetDailyMon(SpecialEncounter *param0, const u8 dailyType);
RadarChainRecords *SpecialEncounter_GetRadarChainRecords(SpecialEncounter *speEnc);
SpecialEncounter *SaveData_GetSpecialEncounters(SaveData *sDat);
PlayerHoneyTreeStates *SpecialEncounter_GetPlayerHoneyTreeStates(SpecialEncounter *speEnc);
const int SpecialEncounter_GetLastSlatheredTreeId(PlayerHoneyTreeStates *treeDat);
void SpecialEncounter_SetLastSlatheredTreeId(const u8 treeId, PlayerHoneyTreeStates *treeDat);
HoneyTree *SpecialEncounter_GetHoneyTree(const u8 param0, PlayerHoneyTreeStates *param1);
void SpecialEncounter_DecrementHoneyTreeTimers(SaveData *param0, const int param1);
void SpecialEncounter_EnableSwarms(SaveData *param0);
u8 SpecialEncounter_IsSwarmEnabled(SpecialEncounter *speEnc);
void SpecialEncounter_UpdateRecentRoutes(SpecialEncounter *speEnc, const int param1);
int SpecialEncounter_GetPlayerPreviousMap(SpecialEncounter *speEnc);
u8 SpecialEncounter_GetRoamerRouteIndex(SpecialEncounter *speEnc, const u8 param1);
void SpecialEncounter_SetRoamerRouteIndex(SpecialEncounter *speEnc, const u8 param1, const u8 param2);
u8 SpecialEncounter_IsRoamerActive(SpecialEncounter *speEnc, const u8 param1);
void SpecialEncounter_ZeroRoamerData(Roamer **param0);
Roamer *SpecialEncounter_GetRoamer(SpecialEncounter *speEnc, const u8 slot);
u32 Roamer_GetData(const Roamer *param0, const u8 param1);
void Roamer_SetData(Roamer *param0, const u8 param1, const u32 param2);
u8 *SpecialEncounter_GetRadarCharge(SpecialEncounter *param0);
u8 *SpecialEncounter_GetRepelSteps(SpecialEncounter *param0);
BOOL SpecialEncounter_RepelStepsEmpty(SpecialEncounter *param0);
void SpecialEncounter_SetFluteFactor(SpecialEncounter *param0, const u8 param1);
u8 SpecialEncounter_GetFluteFactor(SpecialEncounter *param0);
void SpecialEncounter_GetTrophyGardenMons(SaveData *saveData, u16 *slot1, u16 *slot2);
void TrophyGarden_ShiftSlotsForNewMon(SaveData *saveData, const u16 newMon);

#endif // POKEPLATINUM_SPECIAL_ENCOUNTER_H
