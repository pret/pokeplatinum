#ifndef POKEPLATINUM_UNK_0202D7A8_H
#define POKEPLATINUM_UNK_0202D7A8_H

#include "struct_defs/struct_0202D7B0.h"
#include "struct_defs/struct_020698E4.h"
#include "struct_defs/struct_0206C638.h"

#include "savedata.h"

// for SpecialEncounter_GetDailyMon
#define DAILY_MARSH 1
#define DAILY_SWARM 2

#define NUM_TROPHY_GARDEN_SPECIAL_MONS 16
#define TROPHY_GARDEN_SLOT_NONE        0xFFFF

// for Roamer_Get/SetData
#define ROAMER_DATA_IVS         2
#define ROAMER_DATA_PERSONALITY 3
#define ROAMER_DATA_SPECIES     4
#define ROAMER_DATA_CURRENT_HP  5
#define ROAMER_DATA_LEVEL       6
#define ROAMER_DATA_STATUS      7
#define ROAMER_DATA_ACTIVE      8

int SpecialEncounter_SaveSize(void);
void SpecialEncounter_Init(SpecialEncounter *param0);
void SpecialEncounter_SetMixedRecordDailies(SpecialEncounter *speEnc, const u32 mixedRecord);
u32 SpecialEncounter_GetDailyMon(SpecialEncounter *param0, const u8 dailyType);
UnkStruct_020698E4 *sub_0202D830(SpecialEncounter *param0);
SpecialEncounter *SaveData_GetSpecialEncounters(SaveData *param0);
HoneyTreeData *SpecialEncounter_GetHoneyTreeData(SpecialEncounter *param0);
const int SpecialEncounter_GetLastSlatheredTreeId(HoneyTreeData *treeDat);
void SpecialEncounter_SetLastSlatheredTreeId(const u8 treeId, HoneyTreeData *treeDat);
HoneyTree *SpecialEncounter_GetHoneyTree(const u8 param0, HoneyTreeData *param1);
void SpecialEncounter_DecrementHoneyTreeTimers(SaveData *param0, const int param1);
void SpecialEncounter_EnableSwarms(SaveData *param0);
u8 SpecialEncounter_IsSwarmEnabled(SpecialEncounter *param0);
void sub_0202D8A4(SpecialEncounter *param0, const int param1);
int sub_0202D8BC(SpecialEncounter *param0);
u8 SpecialEncounter_GetRoamerRouteIndex(SpecialEncounter *param0, const u8 param1);
void SpecialEncounter_SetRoamerRouteIndex(SpecialEncounter *param0, const u8 param1, const u8 param2);
u8 SpecialEncounter_IsRoamerActive(SpecialEncounter *param0, const u8 param1);
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

#endif // POKEPLATINUM_UNK_0202D7A8_H
