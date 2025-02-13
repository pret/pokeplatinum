#ifndef POKEPLATINUM_SYSTEM_VARS_H
#define POKEPLATINUM_SYSTEM_VARS_H

#include "savedata.h"
#include "vars_flags.h"

enum DistributionEvent {
    DISTEVENT_DARKRAI = 0,
    DISTEVENT_SHAYMIN,
    DISTEVENT_ARCEUS,
    DISTEVENT_ROTOM,

    DISTEVENT_MAX,
};

enum HiddenLocation {
    HL_FULLMOONISLAND = 0,
    HL_NEWMOONISLAND,
    HL_SPRINGPATH,
    HL_SEABREAKPATH,

    HL_MAX,
};

BOOL SystemVars_SetPartnerTrainerID(VarsFlags *varsFlags, u16 trainerID);
u16 SystemVars_GetPartnerTrainerID(VarsFlags *varsFlags);
BOOL SystemVars_SetPlayerStarter(VarsFlags *varsFlags, u16 species);
u16 SystemVars_GetPlayerStarter(VarsFlags *varsFlags);
u16 SystemVars_GetRivalStarter(VarsFlags *varsFlags);
u16 SystemVars_GetPlayerCounterpartStarter(VarsFlags *varsFlags);
u16 SystemVars_GetSizeContestRecord(VarsFlags *varsFlags);
BOOL SystemVars_SetSizeContestRecord(VarsFlags *varsFlags, u16 size);
void SystemVars_ResetVsSeeker(VarsFlags *varsFlags);
u16 SystemVars_GetVsSeekerBattery(VarsFlags *varsFlags);
BOOL SystemVars_SetVsSeekerBattery(VarsFlags *varsFlags, u16 battery);
u16 SystemVars_GetVsSeekerStepCount(VarsFlags *varsFlags);
BOOL SystemVars_SetVsSeekerStepCount(VarsFlags *varsFlags, u16 count);
void SystemVars_SetDistributionEventMagic(VarsFlags *varsFlags, enum DistributionEvent eventID);
BOOL SystemVars_CheckDistributionEvent(VarsFlags *varsFlags, enum DistributionEvent eventID);
void SystemVars_SetHiddenLocationMagic(VarsFlags *varsFlags, enum HiddenLocation hiddenLocation);
void SystemVars_ClearHiddenLocation(VarsFlags *varsFlags, enum HiddenLocation hiddenLocation);
BOOL SystemVars_CheckHiddenLocation(VarsFlags *varsFlags, enum HiddenLocation hiddenLocation);
BOOL SystemVars_ClearAmitySquareStepCount(VarsFlags *varsFlags);
u16 SystemVars_GetAmitySquareStepCount(VarsFlags *varsFlags);
BOOL SystemVars_IncrementAmitySquareStepCount(VarsFlags *varsFlags);
u16 SystemVars_GetNewsPressDeadline(VarsFlags *varsFlags);
BOOL SystemVars_SetNewsPressDeadline(VarsFlags *varsFlags, u16 deadlineInDays);
void SystemVars_RandomizeJubilifeLotteryTrainerID(VarsFlags *varsFlags);
void SystemVars_SynchronizeJubilifeLotteryTrainerID(SaveData *saveData, u16 trainerID);
u16 SystemVars_GetDailyRandomLevel(VarsFlags *varsFlags);
void SystemVars_SetDailyRandomLevel(SaveData *saveData);
u16 SystemVars_GetSpiritombCounter(VarsFlags *varsFlags);
BOOL SystemVars_SetSpiritombCounter(VarsFlags *varsFlags, u16 value);
u16 SystemVars_GetUndergroundTalkCounter(VarsFlags *varsFlags);
BOOL SystemVars_SetUndergroundTalkCounter(VarsFlags *varsFlags, u16 value);
u16 SystemVars_GetConsecutiveBonusRoundWins(VarsFlags *varsFlags);
BOOL SystemVars_SetConsecutiveBonusRoundWins(VarsFlags *varsFlags, u16 wins);
BOOL SystemVars_IncrementDepartmentStoreRegularCount(VarsFlags *varsFlags);
u16 SystemVars_GetDepartmentStoreRegularCount(VarsFlags *varsFlags);
u16 SystemVars_GetUndergroundItemsGivenAway(VarsFlags *varsFlags);
BOOL SystemVars_SetUndergroundItemsGivenAway(VarsFlags *varsFlags, u16 value);
u16 SystemVars_GetUndergroundFossilsUnearthed(VarsFlags *varsFlags);
BOOL SystemVars_SetUndergroundFossilsUnearthed(VarsFlags *varsFlags, u16 value);
u16 SystemVars_GetUndergroundTrapsSet(VarsFlags *varsFlags);
BOOL SystemVars_SetUndergroundTrapsSet(VarsFlags *varsFlags, u16 value);
u16 SystemVars_GetFriendshipStepCount(VarsFlags *varsFlags);
void SystemVars_SetFriendshipStepCount(VarsFlags *varsFlags, u16 value);
void SystemVars_SetEternaGymFlowerClock(VarsFlags *varsFlags, u16 state);
u16 SystemVars_GetEternaGymFlowerClock(VarsFlags *varsFlags);
void SystemVars_SetTotalTurnsForLastBattle(VarsFlags *varsFlags, u16 turns);
void SystemVars_UpdateVillaVisitor(SaveData *varsFlags);
u16 SystemVars_GetBattleFactoryPrintState(VarsFlags *varsFlags);
u16 SystemVars_GetBattleHallPrintState(VarsFlags *varsFlags);
u16 SystemVars_GetBattleCastlePrintState(VarsFlags *varsFlags);
u16 SystemVars_GetBattleArcadePrintState(VarsFlags *varsFlags);
u16 SystemVars_GetBattleTowerPrintState(VarsFlags *varsFlags);
u16 SystemVars_GetDistortionWorldProgress(VarsFlags *varsFlags);
void SystemVars_SetDistortionWorldProgress(VarsFlags *varsFlags, u16 state);
u16 SystemVars_GetArceusEventState(VarsFlags *varsFlags);
void SystemVars_SetArceusEventState(VarsFlags *varsFlags, u16 state);
u16 SystemVars_GetShayminEventState(VarsFlags *varsFlags);
void SystemVars_SetShayminEventState(VarsFlags *varsFlags, u16 state);
void SystemVars_SetRoamingSpeciesState(VarsFlags *varsFlags, u16 species, u16 state);
u16 SystemVars_GetDistortionWorldCyrusApperanceState(VarsFlags *varsFlags);
void SystemVars_SetDistortionWorldCyrusApperanceState(VarsFlags *varsFlags, u16 state);
u16 SystemVars_GetWiFiFrontierCleared(VarsFlags *varsFlags);

#endif // POKEPLATINUM_SYSTEM_VARS_H
