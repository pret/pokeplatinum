#include "system_vars.h"

#include "constants/savedata/vars_flags.h"
#include "generated/map_headers.h"
#include "generated/species.h"

#include "struct_decls/struct_0203A790_decl.h"

#include "field_overworld_state.h"
#include "location.h"
#include "math.h"
#include "record_mixed_rng.h"
#include "savedata.h"
#include "system_flags.h"
#include "vars_flags.h"

static BOOL TrySetVarToValue(VarsFlags *varsFlags, u16 varID, u16 value);
static u16 TryGetVarValue(VarsFlags *varsFlags, u16 varID);
static int GetDistributionEventMagicNumber(int eventID);
static int GetHiddenLocationMagicNumber(int eventID);
static void SetJubilifeLotteryTrainerID(VarsFlags *param0, u32 param1);
static BOOL SetDailyRandomLevel(VarsFlags *param0, u16 param1);
static u8 CalcVillaVisitorIndex(VarsFlags *varsFlags);
static void InitVillaVisitor(VarsFlags *param0, u16 param1);
static void SetRoamingCresseliaState(VarsFlags *param0, u16 param1);
static void SetRoamingMespritState(VarsFlags *param0, u16 param1);
static void SetRoamingMoltresState(VarsFlags *param0, u16 param1);
static void SetRoamingZapdosState(VarsFlags *param0, u16 param1);
static void SetRoamingArticunoState(VarsFlags *param0, u16 param1);

static BOOL TrySetVarToValue(VarsFlags *varsFlags, u16 varID, u16 value)
{
    u16 *varAddress = VarsFlags_GetVarAddress(varsFlags, varID);
    if (varID < VARS_START || varID > SPECIAL_VARS_START) {
        GF_ASSERT(FALSE);
        return FALSE;
    }

    if (varAddress == NULL) {
        return FALSE;
    }

    *varAddress = value;
    return TRUE;
}

static u16 TryGetVarValue(VarsFlags *varsFlags, u16 varID)
{
    u16 *varAddress = VarsFlags_GetVarAddress(varsFlags, varID);
    if (varAddress == NULL) {
        return 0;
    }

    return *varAddress;
}

BOOL SystemVars_SetPartnerTrainerID(VarsFlags *param0, u16 param1)
{
    return TrySetVarToValue(param0, (15 + SYSTEM_VARS_START), param1);
}

u16 SystemVars_GetPartnerTrainerID(VarsFlags *param0)
{
    return TryGetVarValue(param0, (15 + SYSTEM_VARS_START));
}

BOOL SystemVars_SetPlayerStarter(VarsFlags *var, u16 species)
{
    return TrySetVarToValue(var, (0 + SYSTEM_VARS_START), species);
}

u16 SystemVars_GetPlayerStarter(VarsFlags *param0)
{
    return TryGetVarValue(param0, (0 + SYSTEM_VARS_START));
}

u16 SystemVars_GetRivalStarter(VarsFlags *vars)
{
    u16 rivalStarter;
    u16 playerStarter = TryGetVarValue(vars, (0 + SYSTEM_VARS_START));

    if (playerStarter == SPECIES_TURTWIG) {
        rivalStarter = SPECIES_CHIMCHAR;
    } else if (playerStarter == SPECIES_CHIMCHAR) {
        rivalStarter = SPECIES_PIPLUP;
    } else {
        rivalStarter = SPECIES_TURTWIG;
    }

    return rivalStarter;
}

u16 SystemVars_GetPlayerCounterpartStarter(VarsFlags *param0)
{
    u16 v0;
    u16 v1 = TryGetVarValue(param0, (0 + SYSTEM_VARS_START));

    if (v1 == 387) {
        v0 = 393;
    } else if (v1 == 390) {
        v0 = 387;
    } else {
        v0 = 390;
    }

    return v0;
}

u16 SystemVars_GetSizeContestRecord(VarsFlags *param0)
{
    return TryGetVarValue(param0, (5 + SYSTEM_VARS_START));
}

BOOL SystemVars_SetSizeContestRecord(VarsFlags *param0, u16 param1)
{
    return TrySetVarToValue(param0, (5 + SYSTEM_VARS_START), param1);
}

void SystemVars_ResetVsSeeker(VarsFlags *param0)
{
    SystemFlag_ClearVsSeekerUsed(param0);
    SystemVars_SetVsSeekerStepCount(param0, 0);
}

u16 SystemVars_GetVsSeekerBattery(VarsFlags *param0)
{
    return TryGetVarValue(param0, (3 + SYSTEM_VARS_START));
}

BOOL SystemVars_SetVsSeekerBattery(VarsFlags *param0, u16 param1)
{
    return TrySetVarToValue(param0, (3 + SYSTEM_VARS_START), param1);
}

u16 SystemVars_GetVsSeekerStepCount(VarsFlags *param0)
{
    return TryGetVarValue(param0, (4 + SYSTEM_VARS_START));
}

BOOL SystemVars_SetVsSeekerStepCount(VarsFlags *param0, u16 param1)
{
    return TrySetVarToValue(param0, (4 + SYSTEM_VARS_START), param1);
}

static const u16 sDistributionEventMagicNumbers[] = {
    0x1209,
    0x1112,
    0x1123,
    0x1103,
};

static int GetDistributionEventMagicNumber(int eventID)
{
    GF_ASSERT(0 <= eventID && eventID < NELEMS(sDistributionEventMagicNumbers));
    return sDistributionEventMagicNumbers[eventID];
}

void SystemVars_SetDistributionEventMagic(VarsFlags *param0, int param1)
{
    TrySetVarToValue(param0, (19 + SYSTEM_VARS_START) + param1, GetDistributionEventMagicNumber(param1));
}

BOOL SystemVars_CheckDistributionEvent(VarsFlags *param0, int param1)
{
    return TryGetVarValue(param0, (19 + SYSTEM_VARS_START) + param1) == GetDistributionEventMagicNumber(param1);
}

static const u16 sHiddenLocationMagicNumbers[] = {
    0x0208,
    0x0229,
    0x0312,
    0x1028,
};

static int GetHiddenLocationMagicNumber(int eventID)
{
    GF_ASSERT(0 <= eventID && eventID < 4);
    return sHiddenLocationMagicNumbers[eventID];
}

void SystemVars_SetHiddenLocationMagic(VarsFlags *param0, int param1)
{
    TrySetVarToValue(param0, (6 + SYSTEM_VARS_START) + param1, GetHiddenLocationMagicNumber(param1));
}

void SystemVars_ClearHiddenLocation(VarsFlags *param0, int param1)
{
    TrySetVarToValue(param0, (6 + SYSTEM_VARS_START) + param1, 0);
}

BOOL SystemVars_CheckHiddenLocation(VarsFlags *varFlags, int hiddenLocation)
{
    return TryGetVarValue(varFlags, (6 + SYSTEM_VARS_START) + hiddenLocation) == GetHiddenLocationMagicNumber(hiddenLocation);
}

BOOL SystemVars_ClearAmitySquareStepCount(VarsFlags *param0)
{
    return TrySetVarToValue(param0, (10 + SYSTEM_VARS_START), 0);
}

u16 SystemVars_GetAmitySquareStepCount(VarsFlags *param0)
{
    return TryGetVarValue(param0, (10 + SYSTEM_VARS_START));
}

BOOL SystemVars_IncrementAmitySquareStepCount(VarsFlags *param0)
{
    u16 v0 = TryGetVarValue(param0, (10 + SYSTEM_VARS_START));

    if (v0 < 10000) {
        v0++;
    } else {
        v0 = 10000;
    }

    return TrySetVarToValue(param0, (10 + SYSTEM_VARS_START), v0);
}

u16 SystemVars_GetNewsPressDeadline(VarsFlags *param0)
{
    return TryGetVarValue(param0, (11 + SYSTEM_VARS_START));
}

BOOL SystemVars_SetNewsPressDeadline(VarsFlags *param0, u16 param1)
{
    return TrySetVarToValue(param0, (11 + SYSTEM_VARS_START), param1);
}

static void SetJubilifeLotteryTrainerID(VarsFlags *param0, u32 param1)
{
    u16 v1 = (param1 >> 16) & 0xffff;
    u16 v0 = param1 & 0xffff;
    TrySetVarToValue(param0, (12 + SYSTEM_VARS_START), v0);
    TrySetVarToValue(param0, (12 + SYSTEM_VARS_START), v1);
}

u32 SystemVars_GetJubilifeLotteryTrainerID(VarsFlags *param0)
{
    u16 v0 = TryGetVarValue(param0, (12 + SYSTEM_VARS_START));
    u16 v1 = TryGetVarValue(param0, (13 + SYSTEM_VARS_START));

    return (v1 << 16) | v0;
}

void SystemVars_RandomizeJubilifeLotteryTrainerID(VarsFlags *param0)
{
    u16 v0 = LCRNG_Next();
    u16 v1 = LCRNG_Next();

    SetJubilifeLotteryTrainerID(param0, (v1 << 16) | v0);
}

void SystemVars_SynchronizeJubilifeLotteryTrainerID(SaveData *param0, u16 param1)
{
    VarsFlags *v0 = SaveData_GetVarsFlags(param0);
    u32 v1 = RecordMixedRNG_GetRand(SaveData_GetRecordMixedRNG(param0)) * 1103515245L + 12345;

    SetJubilifeLotteryTrainerID(v0, v1);
}

u16 SystemVars_GetDailyRandomLevel(VarsFlags *param0)
{
    return TryGetVarValue(param0, (17 + SYSTEM_VARS_START));
}

static BOOL SetDailyRandomLevel(VarsFlags *param0, u16 param1)
{
    return TrySetVarToValue(param0, (17 + SYSTEM_VARS_START), param1);
}

void SystemVars_SetDailyRandomLevel(SaveData *param0)
{
    VarsFlags *v0 = SaveData_GetVarsFlags(param0);
    u32 v1 = (LCRNG_Next() % 98) + 2;
    SetDailyRandomLevel(v0, v1);
}

u16 SystemVars_GetSpiritombCounter(VarsFlags *param0)
{
    return TryGetVarValue(param0, (14 + SYSTEM_VARS_START));
}

BOOL SystemVars_SetSpiritombCounter(VarsFlags *param0, u16 param1)
{
    return TrySetVarToValue(param0, (14 + SYSTEM_VARS_START), param1);
}

u16 SystemVars_GetUndergroundTalkCounter(VarsFlags *param0)
{
    return TryGetVarValue(param0, (25 + SYSTEM_VARS_START));
}

BOOL SystemVars_SetUndergroundTalkCounter(VarsFlags *param0, u16 param1)
{
    return TrySetVarToValue(param0, (25 + SYSTEM_VARS_START), param1);
}

u16 SystemVars_GetConsecutiveBonusRoundWins(VarsFlags *param0)
{
    return TryGetVarValue(param0, (16 + SYSTEM_VARS_START));
}

BOOL SystemVars_SetConsecutiveBonusRoundWins(VarsFlags *param0, u16 param1)
{
    return TrySetVarToValue(param0, (16 + SYSTEM_VARS_START), param1);
}

BOOL SystemVars_IncrementDepartmentStoreRegularCount(VarsFlags *param0)
{
    u16 v0 = TryGetVarValue(param0, (18 + SYSTEM_VARS_START));

    if (v0 < 10000) {
        v0++;
    } else {
        v0 = 10000;
    }

    return TrySetVarToValue(param0, (18 + SYSTEM_VARS_START), v0);
}

u16 SystemVars_GetDepartmentStoreRegularCount(VarsFlags *param0)
{
    return TryGetVarValue(param0, (18 + SYSTEM_VARS_START));
}

u16 SystemVars_GetUndergroundItemsGivenAway(VarsFlags *param0)
{
    return TryGetVarValue(param0, (36 + SYSTEM_VARS_START));
}

BOOL SystemVars_SetUndergroundItemsGivenAway(VarsFlags *param0, u16 param1)
{
    return TrySetVarToValue(param0, (36 + SYSTEM_VARS_START), param1);
}

u16 SystemVars_GetUndergroundFossilsUnearthed(VarsFlags *param0)
{
    return TryGetVarValue(param0, (23 + SYSTEM_VARS_START));
}

BOOL SystemVars_SetUndergroundFossilsUnearthed(VarsFlags *param0, u16 param1)
{
    return TrySetVarToValue(param0, (23 + SYSTEM_VARS_START), param1);
}

u16 SystemVars_GetUndergroundTrapsSet(VarsFlags *param0)
{
    return TryGetVarValue(param0, (24 + SYSTEM_VARS_START));
}

BOOL SystemVars_SetUndergroundTrapsSet(VarsFlags *param0, u16 param1)
{
    return TrySetVarToValue(param0, (24 + SYSTEM_VARS_START), param1);
}

u16 SystemVars_GetFriendshipStepCount(VarsFlags *param0)
{
    return TryGetVarValue(param0, (26 + SYSTEM_VARS_START));
}

void SystemVars_SetFriendshipStepCount(VarsFlags *param0, u16 param1)
{
    TrySetVarToValue(param0, (26 + SYSTEM_VARS_START), param1);
}

void SystemVars_SetEternaGymFlowerClock(VarsFlags *param0, u16 param1)
{
    TrySetVarToValue(param0, (27 + SYSTEM_VARS_START), param1);
}

u16 SystemVars_GetEternaGymFlowerClock(VarsFlags *param0)
{
    return TryGetVarValue(param0, (27 + SYSTEM_VARS_START));
}

void SystemVars_SetTotalTurnsForLastBattle(VarsFlags *param0, u16 param1)
{
    TrySetVarToValue(param0, (29 + SYSTEM_VARS_START), (param1 + 1));
}

static const u8 sVillaVisitorPercentChances[] = {
    25,
    75,
    90,
};

static const u8 sNumPossibleVillaVisitors[] = {
    4,
    12,
    15,
};

static u8 CalcVillaVisitorIndex(VarsFlags *varsFlags)
{
    // must pre-declare to match
    int i;
    u16 ownedFurniturePieces = 0, rngPercent, index;

    for (i = 0; i < VILLA_FURNITURE_MAX; i++) {
        if (SystemFlag_HandleOwnsVillaFurniture(varsFlags, HANDLE_FLAG_CHECK, i) == TRUE) {
            ownedFurniturePieces++;
        }
    }

    if (ownedFurniturePieces >= 12) {
        index = 2;
    } else if (ownedFurniturePieces >= 8) {
        index = 1;
    } else {
        index = 0;
    }

    rngPercent = (LCRNG_Next() % 100);
    if (rngPercent > sVillaVisitorPercentChances[index]) {
        return 0xFF;
    }

    rngPercent = (LCRNG_Next() % sNumPossibleVillaVisitors[index]);
    return rngPercent;
}

void SystemVars_UpdateVillaVisitor(SaveData *param0)
{
    VarsFlags *v1 = SaveData_GetVarsFlags(param0);
    FieldOverworldState *fieldState = SaveData_GetFieldOverworldState(param0);
    Location *location = FieldOverworldState_GetPlayerLocation(fieldState);

    if ((location->mapId != MAP_HEADER_RESORT_AREA) && (location->mapId != MAP_HEADER_VILLA)) {
        SystemFlag_ClearVillaVisitorInside(v1);
        SystemFlag_ClearVillaVisitorOutside(v1);
        InitVillaVisitor(v1, CalcVillaVisitorIndex(v1));
    }

    return;
}

static void InitVillaVisitor(VarsFlags *param0, u16 param1)
{
    TrySetVarToValue(param0, (30 + SYSTEM_VARS_START), param1);
    TrySetVarToValue(param0, (42 + SYSTEM_VARS_START), (LCRNG_Next() % 5));
}

u16 SystemVars_GetBattleFactoryPrintState(VarsFlags *param0)
{
    return TryGetVarValue(param0, (32 + SYSTEM_VARS_START));
}

u16 SystemVars_GetBattleHallPrintState(VarsFlags *param0)
{
    return TryGetVarValue(param0, (33 + SYSTEM_VARS_START));
}

u16 SystemVars_GetBattleCastlePrintState(VarsFlags *param0)
{
    return TryGetVarValue(param0, (34 + SYSTEM_VARS_START));
}

u16 SystemVars_GetBattleArcadePrintState(VarsFlags *param0)
{
    return TryGetVarValue(param0, (35 + SYSTEM_VARS_START));
}

u16 SystemVars_GetBattleTowerPrintState(VarsFlags *param0)
{
    return TryGetVarValue(param0, (31 + SYSTEM_VARS_START));
}

u16 SystemVars_GetDistortionWorldProgress(VarsFlags *param0)
{
    return TryGetVarValue(param0, (37 + SYSTEM_VARS_START));
}

void SystemVars_SetDistortionWorldProgress(VarsFlags *param0, u16 param1)
{
    TrySetVarToValue(param0, (37 + SYSTEM_VARS_START), param1);
}

u16 SystemVars_GetArceusEventState(VarsFlags *param0)
{
    return TryGetVarValue(param0, (38 + SYSTEM_VARS_START));
}

void SystemVars_SetArceusEventState(VarsFlags *param0, u16 param1)
{
    TrySetVarToValue(param0, (38 + SYSTEM_VARS_START), param1);
}

u16 SystemVars_GetShayminEventState(VarsFlags *param0)
{
    return TryGetVarValue(param0, (39 + SYSTEM_VARS_START));
}

void SystemVars_SetShayminEventState(VarsFlags *param0, u16 param1)
{
    TrySetVarToValue(param0, (39 + SYSTEM_VARS_START), param1);
}

static void SetRoamingCresseliaState(VarsFlags *param0, u16 param1)
{
    TrySetVarToValue(param0, (40 + SYSTEM_VARS_START), param1);
}

static void SetRoamingMespritState(VarsFlags *param0, u16 param1)
{
    TrySetVarToValue(param0, (41 + SYSTEM_VARS_START), param1);
}

static void SetRoamingMoltresState(VarsFlags *param0, u16 param1)
{
    TrySetVarToValue(param0, (46 + SYSTEM_VARS_START), param1);
}

static void SetRoamingZapdosState(VarsFlags *param0, u16 param1)
{
    TrySetVarToValue(param0, (47 + SYSTEM_VARS_START), param1);
}

static void SetRoamingArticunoState(VarsFlags *param0, u16 param1)
{
    TrySetVarToValue(param0, (48 + SYSTEM_VARS_START), param1);
}

void SystemVars_SetRoamingSpeciesState(VarsFlags *param0, u16 param1, u16 param2)
{
    switch (param1) {
    case 481:
        SetRoamingMespritState(param0, param2);
        break;
    case 488:
        SetRoamingCresseliaState(param0, param2);
        break;
    case 146:
        SetRoamingMoltresState(param0, param2);
        break;
    case 145:
        SetRoamingZapdosState(param0, param2);
        break;
    case 144:
        SetRoamingArticunoState(param0, param2);
        break;
    }

    return;
}

u16 SystemVars_GetDistortionWorldCyrusApperanceState(VarsFlags *param0)
{
    return TryGetVarValue(param0, (43 + SYSTEM_VARS_START));
}

void SystemVars_SetDistortionWorldCyrusApperanceState(VarsFlags *param0, u16 param1)
{
    TrySetVarToValue(param0, (43 + SYSTEM_VARS_START), param1);
}

u16 SystemVars_GetWiFiFrontierCleared(VarsFlags *param0)
{
    return TryGetVarValue(param0, (52 + SYSTEM_VARS_START));
}
