#ifndef POKEPLATINUM_UNK_0206AFE0_H
#define POKEPLATINUM_UNK_0206AFE0_H

#include "savedata.h"
#include "vars_flags.h"

enum HiddenLocations {
    HL_FULLMOONISLAND = 0,
    HL_NEWMOONISLAND = 1,
    HL_SPRINGPATH = 2,
    HL_SEABREAKPATH = 3,
};

BOOL SystemVars_SetPartnerTrainerID(VarsFlags *varsFlags, u16 param1);
u16 SystemVars_GetPartnerTrainerID(VarsFlags *varsFlags);
BOOL SystemVars_SetPlayerStarter(VarsFlags *varsFlags, u16 param1);
u16 SystemVars_GetPlayerStarter(VarsFlags *varsFlags);
u16 SystemVars_GetRivalStarter(VarsFlags *varsFlags);
u16 SystemVars_GetPlayerCounterpartStarter(VarsFlags *varsFlags);
u16 SystemVars_GetSizeContestRecord(VarsFlags *varsFlags);
BOOL SystemVars_SetSizeContestRecord(VarsFlags *varsFlags, u16 param1);
void SystemVars_ResetVsSeeker(VarsFlags *varsFlags);
u16 SystemVars_GetVsSeekerBattery(VarsFlags *varsFlags);
BOOL SystemVars_SetVsSeekerBattery(VarsFlags *varsFlags, u16 param1);
u16 SystemVars_GetVsSeekerStepCount(VarsFlags *varsFlags);
BOOL SystemVars_SetVsSeekerStepCount(VarsFlags *varsFlags, u16 param1);
void SystemVars_SetDistributionEventMagic(VarsFlags *varsFlags, int param1);
BOOL SystemVars_CheckDistributionEvent(VarsFlags *varsFlags, int param1);
void SystemVars_SetHiddenLocationMagic(VarsFlags *varsFlags, int param1);
void SystemVars_ClearHiddenLocation(VarsFlags *varsFlags, int param1);
BOOL SystemVars_CheckHiddenLocation(VarsFlags *varsFlags, int hiddenLocation);
BOOL SystemVars_ClearAmitySquareStepCount(VarsFlags *varsFlags);
u16 SystemVars_GetAmitySquareStepCount(VarsFlags *varsFlags);
BOOL SystemVars_IncrementAmitySquareStepCount(VarsFlags *varsFlags);
u16 SystemVars_GetNewsPressDeadline(VarsFlags *varsFlags);
BOOL SystemVars_SetNewsPressDeadline(VarsFlags *varsFlags, u16 param1);
u32 sub_0206B2A4(VarsFlags *varsFlags);
void SystemVars_RandomizeJubilifeLotteryTrainerID(VarsFlags *varsFlags);
void SystemVars_SynchronizeJubilifeLotteryTrainerID(SaveData *param0, u16 param1);
u16 SystemVars_GetDailyRandomLevel(VarsFlags *varsFlags);
void SystemVars_SetDailyRandomLevel(SaveData *varsFlags);
u16 SystemVars_GetSpiritombCounter(VarsFlags *varsFlags);
BOOL SystemVars_SetSpiritombCounter(VarsFlags *varsFlags, u16 param1);
u16 SystemVars_GetUndergroundTalkCounter(VarsFlags *varsFlags);
BOOL SystemVars_SetUndergroundTalkCounter(VarsFlags *varsFlags, u16 param1);
u16 SystemVars_GetConsecutiveBonusRoundWins(VarsFlags *varsFlags);
BOOL SystemVars_SetConsecutiveBonusRoundWins(VarsFlags *varsFlags, u16 param1);
BOOL SystemVars_IncrementDepartmentStoreRegularCount(VarsFlags *varsFlags);
u16 SystemVars_GetDepartmentStoreRegularCount(VarsFlags *varsFlags);
u16 SystemVars_GetUndergroundItemsGivenAway(VarsFlags *varsFlags);
BOOL SystemVars_SetUndergroundItemsGivenAway(VarsFlags *varsFlags, u16 param1);
u16 SystemVars_GetUndergroundFossilsUnearthed(VarsFlags *varsFlags);
BOOL SystemVars_SetUndergroundFossilsUnearthed(VarsFlags *varsFlags, u16 param1);
u16 SystemVars_GetUndergroundTrapsSet(VarsFlags *varsFlags);
BOOL SystemVars_SetUndergroundTrapsSet(VarsFlags *varsFlags, u16 param1);
u16 SystemVars_GetFriendshipStepCount(VarsFlags *varsFlags);
void SystemVars_SetFriendshipStepCount(VarsFlags *varsFlags, u16 param1);
void SystemVars_SetEternaGymFlowerClock(VarsFlags *varsFlags, u16 param1);
u16 SystemVars_GetEternaGymFlowerClock(VarsFlags *varsFlags);
void SystemVars_SetTotalTurnsForLastBattle(VarsFlags *varsFlags, u16 param1);
void SystemVars_UpdateVillaVisitor(SaveData *varsFlags);
u16 SystemVars_GetBattleFactoryPrintState(VarsFlags *varsFlags);
u16 SystemVars_GetBattleHallPrintState(VarsFlags *varsFlags);
u16 SystemVars_GetBattleCastlePrintState(VarsFlags *varsFlags);
u16 SystemVars_GetBattleArcadePrintState(VarsFlags *varsFlags);
u16 SystemVars_GetBattleTowerPrintState(VarsFlags *varsFlags);
u16 SystemVars_GetDistortionWorldProgress(VarsFlags *varsFlags);
void SystemVars_SetDistortionWorldProgress(VarsFlags *varsFlags, u16 param1);
u16 SystemVars_GetArceusEventState(VarsFlags *varsFlags);
void SystemVars_SetArceusEventState(VarsFlags *varsFlags, u16 param1);
u16 SystemVars_GetShayminEventState(VarsFlags *varsFlags);
void SystemVars_SetShayminEventState(VarsFlags *varsFlags, u16 param1);
void SystemVars_SetRoamingSpeciesState(VarsFlags *varsFlags, u16 param1, u16 param2);
u16 SystemVars_GetDistortionWorldCyrusApperanceState(VarsFlags *varsFlags);
void SystemVars_SetDistortionWorldCyrusApperanceState(VarsFlags *varsFlags, u16 param1);
u16 SystemVars_GetWiFiFrontierCleared(VarsFlags *varsFlags);

#endif // POKEPLATINUM_UNK_0206AFE0_H
