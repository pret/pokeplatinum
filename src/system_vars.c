#include "system_vars.h"

#include "constants/savedata/vars_flags.h"
#include "generated/map_headers.h"
#include "generated/species.h"

#include "field_overworld_state.h"
#include "location.h"
#include "math_util.h"
#include "record_mixed_rng.h"
#include "savedata.h"
#include "system_flags.h"
#include "vars_flags.h"

static BOOL TrySetVarToValue(VarsFlags *varsFlags, u16 varID, u16 value);
static u16 TryGetVarValue(VarsFlags *varsFlags, u16 varID);
static int GetDistributionEventMagicNumber(enum DistributionEvent eventID);
static int GetHiddenLocationMagicNumber(enum HiddenLocation hiddenLocation);
static void SetJubilifeLotteryTrainerID(VarsFlags *varsFlags, u32 trainerID);
static BOOL SetDailyRandomLevel(VarsFlags *varsFlags, u16 level);
static u8 CalcVillaVisitorIndex(VarsFlags *varsFlags);
static void InitVillaVisitor(VarsFlags *varsFlags, u16 visitor);
static void SetRoamingCresseliaState(VarsFlags *varsFlags, u16 state);
static void SetRoamingMespritState(VarsFlags *varsFlags, u16 state);
static void SetRoamingMoltresState(VarsFlags *varsFlags, u16 state);
static void SetRoamingZapdosState(VarsFlags *varsFlags, u16 state);
static void SetRoamingArticunoState(VarsFlags *varsFlags, u16 state);

static BOOL TrySetVarToValue(VarsFlags *varsFlags, u16 varID, u16 value)
{
    u16 *varAddress = VarsFlags_GetVarAddress(varsFlags, varID);
    if (varID < VARS_START || varID > SCRIPT_LOCAL_VARS_START) {
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

BOOL SystemVars_SetPartnerTrainerID(VarsFlags *varsFlags, u16 trainerID)
{
    return TrySetVarToValue(varsFlags, VAR_PARTNER_TRAINER_ID, trainerID);
}

u16 SystemVars_GetPartnerTrainerID(VarsFlags *varsFlags)
{
    return TryGetVarValue(varsFlags, VAR_PARTNER_TRAINER_ID);
}

BOOL SystemVars_SetPlayerStarter(VarsFlags *varsFlags, u16 species)
{
    return TrySetVarToValue(varsFlags, VAR_PLAYER_STARTER, species);
}

u16 SystemVars_GetPlayerStarter(VarsFlags *varsFlags)
{
    return TryGetVarValue(varsFlags, VAR_PLAYER_STARTER);
}

u16 SystemVars_GetRivalStarter(VarsFlags *varsFlags)
{
    u16 rivalStarter;
    u16 playerStarter = TryGetVarValue(varsFlags, VAR_PLAYER_STARTER);

    if (playerStarter == SPECIES_TURTWIG) {
        rivalStarter = SPECIES_CHIMCHAR;
    } else if (playerStarter == SPECIES_CHIMCHAR) {
        rivalStarter = SPECIES_PIPLUP;
    } else {
        rivalStarter = SPECIES_TURTWIG;
    }

    return rivalStarter;
}

u16 SystemVars_GetPlayerCounterpartStarter(VarsFlags *varsFlags)
{
    u16 counterpartStarter;
    u16 playerStarter = TryGetVarValue(varsFlags, VAR_PLAYER_STARTER);

    if (playerStarter == SPECIES_TURTWIG) {
        counterpartStarter = SPECIES_PIPLUP;
    } else if (playerStarter == SPECIES_CHIMCHAR) {
        counterpartStarter = SPECIES_TURTWIG;
    } else {
        counterpartStarter = SPECIES_CHIMCHAR;
    }

    return counterpartStarter;
}

u16 SystemVars_GetSizeContestRecord(VarsFlags *varsFlags)
{
    return TryGetVarValue(varsFlags, VAR_SIZE_CONTEST_RECORD);
}

BOOL SystemVars_SetSizeContestRecord(VarsFlags *varsFlags, u16 value)
{
    return TrySetVarToValue(varsFlags, VAR_SIZE_CONTEST_RECORD, value);
}

void SystemVars_ResetVsSeeker(VarsFlags *varsFlags)
{
    SystemFlag_ClearVsSeekerUsed(varsFlags);
    SystemVars_SetVsSeekerStepCount(varsFlags, 0);
}

u16 SystemVars_GetVsSeekerBattery(VarsFlags *varsFlags)
{
    return TryGetVarValue(varsFlags, VAR_VS_SEEKER_BATTERY_LEVEL);
}

BOOL SystemVars_SetVsSeekerBattery(VarsFlags *varsFlags, u16 battery)
{
    return TrySetVarToValue(varsFlags, VAR_VS_SEEKER_BATTERY_LEVEL, battery);
}

u16 SystemVars_GetVsSeekerStepCount(VarsFlags *varsFlags)
{
    return TryGetVarValue(varsFlags, VAR_VS_SEEKER_STEP_COUNT);
}

BOOL SystemVars_SetVsSeekerStepCount(VarsFlags *varsFlags, u16 stepCount)
{
    return TrySetVarToValue(varsFlags, VAR_VS_SEEKER_STEP_COUNT, stepCount);
}

static const u16 sDistributionEventMagicNumbers[] = {
    [DISTRIBUTION_EVENT_DARKRAI] = 0x1209,
    [DISTRIBUTION_EVENT_SHAYMIN] = 0x1112,
    [DISTRIBUTION_EVENT_ARCEUS] = 0x1123,
    [DISTRIBUTION_EVENT_ROTOM] = 0x1103,
};

static int GetDistributionEventMagicNumber(enum DistributionEvent eventID)
{
    GF_ASSERT(0 <= eventID && eventID < NELEMS(sDistributionEventMagicNumbers)); // Does not match as enum-literal
    return sDistributionEventMagicNumbers[eventID];
}

void SystemVars_SetDistributionEventMagic(VarsFlags *varsFlags, enum DistributionEvent eventID)
{
    TrySetVarToValue(varsFlags, VAR_DISTRIBUTION_EVENT_DARKRAI + eventID, GetDistributionEventMagicNumber(eventID));
}

BOOL SystemVars_CheckDistributionEvent(VarsFlags *varsFlags, enum DistributionEvent eventID)
{
    return TryGetVarValue(varsFlags, VAR_DISTRIBUTION_EVENT_DARKRAI + eventID) == GetDistributionEventMagicNumber(eventID);
}

static const u16 sHiddenLocationMagicNumbers[] = {
    [HIDDEN_LOCATION_FULLMOON_ISLAND] = 0x0208,
    [HIDDEN_LOCATION_NEWMOON_ISLAND] = 0x0229,
    [HIDDEN_LOCATION_SPRING_PATH] = 0x0312,
    [HIDDEN_LOCATION_SEABREAK_PATH] = 0x1028,
};

static int GetHiddenLocationMagicNumber(enum HiddenLocation hiddenLocation)
{
    GF_ASSERT(0 <= hiddenLocation && hiddenLocation < HIDDEN_LOCATION_MAX);
    return sHiddenLocationMagicNumbers[hiddenLocation];
}

void SystemVars_SetHiddenLocationMagic(VarsFlags *varsFlags, enum HiddenLocation hiddenLocation)
{
    TrySetVarToValue(varsFlags, VAR_HIDDEN_LOCATION_FULL_MOON_ISLAND + hiddenLocation, GetHiddenLocationMagicNumber(hiddenLocation));
}

void SystemVars_ClearHiddenLocation(VarsFlags *varsFlags, enum HiddenLocation hiddenLocation)
{
    TrySetVarToValue(varsFlags, VAR_HIDDEN_LOCATION_FULL_MOON_ISLAND + hiddenLocation, 0);
}

BOOL SystemVars_CheckHiddenLocation(VarsFlags *varsFlags, enum HiddenLocation hiddenLocation)
{
    return TryGetVarValue(varsFlags, VAR_HIDDEN_LOCATION_FULL_MOON_ISLAND + hiddenLocation) == GetHiddenLocationMagicNumber(hiddenLocation);
}

BOOL SystemVars_ClearAmitySquareStepCount(VarsFlags *varsFlags)
{
    return TrySetVarToValue(varsFlags, VAR_AMITY_SQUARE_STEP_COUNT, 0);
}

u16 SystemVars_GetAmitySquareStepCount(VarsFlags *varsFlags)
{
    return TryGetVarValue(varsFlags, VAR_AMITY_SQUARE_STEP_COUNT);
}

BOOL SystemVars_IncrementAmitySquareStepCount(VarsFlags *varsFlags)
{
    u16 stepCount = TryGetVarValue(varsFlags, VAR_AMITY_SQUARE_STEP_COUNT);
    if (stepCount < 10000) {
        stepCount++;
    } else {
        stepCount = 10000;
    }

    return TrySetVarToValue(varsFlags, VAR_AMITY_SQUARE_STEP_COUNT, stepCount);
}

u16 SystemVars_GetNewsPressDeadline(VarsFlags *varsFlags)
{
    return TryGetVarValue(varsFlags, VAR_NEWS_PRESS_DEADLINE);
}

BOOL SystemVars_SetNewsPressDeadline(VarsFlags *varsFlags, u16 deadlineInDays)
{
    return TrySetVarToValue(varsFlags, VAR_NEWS_PRESS_DEADLINE, deadlineInDays);
}

static void SetJubilifeLotteryTrainerID(VarsFlags *varsFlags, u32 trainerID)
{
    u16 hi = HI_HALF(trainerID);
    u16 lo = LO_HALF(trainerID);
    TrySetVarToValue(varsFlags, VAR_LOTTERY_TRAINER_ID_LOW_HALF, lo);
    TrySetVarToValue(varsFlags, VAR_LOTTERY_TRAINER_ID_LOW_HALF, hi);
}

u32 SystemVars_GetJubilifeLotteryTrainerID(VarsFlags *varsFlags)
{
    u16 lo = TryGetVarValue(varsFlags, VAR_LOTTERY_TRAINER_ID_LOW_HALF);
    u16 hi = TryGetVarValue(varsFlags, VAR_LOTTERY_TRAINER_ID_HIGH_HALF);
    return HI_AND_LO(hi, lo);
}

void SystemVars_RandomizeJubilifeLotteryTrainerID(VarsFlags *varsFlags)
{
    u16 loRand = LCRNG_Next();
    u16 hiRand = LCRNG_Next();
    SetJubilifeLotteryTrainerID(varsFlags, HI_AND_LO(hiRand, loRand));
}

#define LOTTERY_LCRNG_INCREMENT 12345

void SystemVars_SynchronizeJubilifeLotteryTrainerID(SaveData *saveData, u16 trainerID)
{
    VarsFlags *varsFlags = SaveData_GetVarsFlags(saveData);
    u32 recordMixedRand = RecordMixedRNG_GetRand(SaveData_GetRecordMixedRNG(saveData)) * LCRNG_MULTIPLIER + LOTTERY_LCRNG_INCREMENT;
    SetJubilifeLotteryTrainerID(varsFlags, recordMixedRand);
}

u16 SystemVars_GetDailyRandomLevel(VarsFlags *varsFlags)
{
    return TryGetVarValue(varsFlags, VAR_DAILY_RANDOM_LEVEL);
}

static BOOL SetDailyRandomLevel(VarsFlags *varsFlags, u16 level)
{
    return TrySetVarToValue(varsFlags, VAR_DAILY_RANDOM_LEVEL, level);
}

void SystemVars_InitDailyRandomLevel(SaveData *saveData)
{
    VarsFlags *varsFlags = SaveData_GetVarsFlags(saveData);
    u32 level = (LCRNG_Next() % 98) + 2;
    SetDailyRandomLevel(varsFlags, level);
}

u16 SystemVars_GetSpiritombCounter(VarsFlags *varsFlags)
{
    return TryGetVarValue(varsFlags, VAR_SPIRITOMB_COUNTER);
}

BOOL SystemVars_SetSpiritombCounter(VarsFlags *varsFlags, u16 value)
{
    return TrySetVarToValue(varsFlags, VAR_SPIRITOMB_COUNTER, value);
}

u16 SystemVars_GetUndergroundTalkCounter(VarsFlags *varsFlags)
{
    return TryGetVarValue(varsFlags, VAR_UNDERGROUND_TALK_COUNTER);
}

BOOL SystemVars_SetUndergroundTalkCounter(VarsFlags *varsFlags, u16 value)
{
    return TrySetVarToValue(varsFlags, VAR_UNDERGROUND_TALK_COUNTER, value);
}

u16 SystemVars_GetConsecutiveBonusRoundWins(VarsFlags *varsFlags)
{
    return TryGetVarValue(varsFlags, VAR_CONSECUTIVE_BONUS_ROUND_WINS);
}

BOOL SystemVars_SetConsecutiveBonusRoundWins(VarsFlags *varsFlags, u16 wins)
{
    return TrySetVarToValue(varsFlags, VAR_CONSECUTIVE_BONUS_ROUND_WINS, wins);
}

BOOL SystemVars_IncrementDepartmentStoreBuyCount(VarsFlags *varsFlags)
{
    u16 counter = TryGetVarValue(varsFlags, VAR_DEPARTMENT_STORE_REGULAR_COUNTER);
    if (counter < 10000) {
        counter++;
    } else {
        counter = 10000;
    }

    return TrySetVarToValue(varsFlags, VAR_DEPARTMENT_STORE_REGULAR_COUNTER, counter);
}

u16 SystemVars_GetDepartmentStoreBuyCount(VarsFlags *varsFlags)
{
    return TryGetVarValue(varsFlags, VAR_DEPARTMENT_STORE_REGULAR_COUNTER);
}

u16 SystemVars_GetUndergroundItemsGivenAway(VarsFlags *varsFlags)
{
    return TryGetVarValue(varsFlags, VAR_UNDERGROUND_ITEMS_GIVEN_AWAY);
}

BOOL SystemVars_SetUndergroundItemsGivenAway(VarsFlags *varsFlags, u16 value)
{
    return TrySetVarToValue(varsFlags, VAR_UNDERGROUND_ITEMS_GIVEN_AWAY, value);
}

u16 SystemVars_GetUndergroundFossilsUnearthed(VarsFlags *varsFlags)
{
    return TryGetVarValue(varsFlags, VAR_UNDERGROUND_FOSSILS_UNEARTHED);
}

BOOL SystemVars_SetUndergroundFossilsUnearthed(VarsFlags *varsFlags, u16 value)
{
    return TrySetVarToValue(varsFlags, VAR_UNDERGROUND_FOSSILS_UNEARTHED, value);
}

u16 SystemVars_GetUndergroundTrapsSet(VarsFlags *varsFlags)
{
    return TryGetVarValue(varsFlags, VAR_UNDERGROUND_TRAPS_SET);
}

BOOL SystemVars_SetUndergroundTrapsSet(VarsFlags *varsFlags, u16 value)
{
    return TrySetVarToValue(varsFlags, VAR_UNDERGROUND_TRAPS_SET, value);
}

u16 SystemVars_GetFriendshipStepCount(VarsFlags *varsFlags)
{
    return TryGetVarValue(varsFlags, VAR_FRIENDSHIP_INCREMENT_STEP_COUNTER);
}

void SystemVars_SetFriendshipStepCount(VarsFlags *varsFlags, u16 value)
{
    TrySetVarToValue(varsFlags, VAR_FRIENDSHIP_INCREMENT_STEP_COUNTER, value);
}

void SystemVars_SetEternaGymFlowerClockState(VarsFlags *varsFlags, u16 state)
{
    TrySetVarToValue(varsFlags, VAR_ETERNA_GYM_FLOWER_CLOCK_STATE, state);
}

u16 SystemVars_GetEternaGymFlowerClockState(VarsFlags *varsFlags)
{
    return TryGetVarValue(varsFlags, VAR_ETERNA_GYM_FLOWER_CLOCK_STATE);
}

void SystemVars_SetTotalTurnsForLastBattle(VarsFlags *varsFlags, u16 turns)
{
    TrySetVarToValue(varsFlags, VAR_TOTAL_TURNS_LAST_BATTLE, turns + 1);
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

void SystemVars_UpdateVillaVisitor(SaveData *saveData)
{
    VarsFlags *varsFlags = SaveData_GetVarsFlags(saveData);
    FieldOverworldState *fieldState = SaveData_GetFieldOverworldState(saveData);
    Location *location = FieldOverworldState_GetPlayerLocation(fieldState);

    if (location->mapId != MAP_HEADER_RESORT_AREA && location->mapId != MAP_HEADER_VILLA) {
        SystemFlag_ClearVillaVisitorInside(varsFlags);
        SystemFlag_ClearVillaVisitorOutside(varsFlags);
        InitVillaVisitor(varsFlags, CalcVillaVisitorIndex(varsFlags));
    }
}

static void InitVillaVisitor(VarsFlags *varsFlags, u16 visitor)
{
    TrySetVarToValue(varsFlags, VAR_RESORT_VILLA_VISITOR, visitor);
    TrySetVarToValue(varsFlags, VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, LCRNG_Next() % 5);
}

u16 SystemVars_GetBattleFactoryPrintState(VarsFlags *varsFlags)
{
    return TryGetVarValue(varsFlags, VAR_BATTLE_FACTORY_PRINT_STATE);
}

u16 SystemVars_GetBattleHallPrintState(VarsFlags *varsFlags)
{
    return TryGetVarValue(varsFlags, VAR_BATTLE_HALL_PRINT_STATE);
}

u16 SystemVars_GetBattleCastlePrintState(VarsFlags *varsFlags)
{
    return TryGetVarValue(varsFlags, VAR_BATTLE_CASTLE_PRINT_STATE);
}

u16 SystemVars_GetBattleArcadePrintState(VarsFlags *varsFlags)
{
    return TryGetVarValue(varsFlags, VAR_BATTLE_ARCADE_PRINT_STATE);
}

u16 SystemVars_GetBattleTowerPrintState(VarsFlags *varsFlags)
{
    return TryGetVarValue(varsFlags, VAR_BATTLE_TOWER_PRINT_STATE);
}

u16 SystemVars_GetDistortionWorldProgress(VarsFlags *varsFlags)
{
    return TryGetVarValue(varsFlags, VAR_DISTORTION_WORLD_PROGRESS);
}

void SystemVars_SetDistortionWorldProgress(VarsFlags *varsFlags, u16 state)
{
    TrySetVarToValue(varsFlags, VAR_DISTORTION_WORLD_PROGRESS, state);
}

u16 SystemVars_GetArceusEventState(VarsFlags *varsFlags)
{
    return TryGetVarValue(varsFlags, VAR_ARCEUS_EVENT_STATE);
}

void SystemVars_SetArceusEventState(VarsFlags *varsFlags, u16 state)
{
    TrySetVarToValue(varsFlags, VAR_ARCEUS_EVENT_STATE, state);
}

u16 SystemVars_GetShayminEventState(VarsFlags *varsFlags)
{
    return TryGetVarValue(varsFlags, VAR_SHAYMIN_EVENT_STATE);
}

void SystemVars_SetShayminEventState(VarsFlags *varsFlags, u16 state)
{
    TrySetVarToValue(varsFlags, VAR_SHAYMIN_EVENT_STATE, state);
}

static void SetRoamingCresseliaState(VarsFlags *varsFlags, u16 state)
{
    TrySetVarToValue(varsFlags, VAR_ROAMING_CRESSELIA_STATE, state);
}

static void SetRoamingMespritState(VarsFlags *varsFlags, u16 state)
{
    TrySetVarToValue(varsFlags, VAR_ROAMING_MESPRIT_STATE, state);
}

static void SetRoamingMoltresState(VarsFlags *varsFlags, u16 state)
{
    TrySetVarToValue(varsFlags, VAR_ROAMING_MOLTRES_STATE, state);
}

static void SetRoamingZapdosState(VarsFlags *varsFlags, u16 state)
{
    TrySetVarToValue(varsFlags, VAR_ROAMING_ZAPDOS_STATE, state);
}

static void SetRoamingArticunoState(VarsFlags *varsFlags, u16 state)
{
    TrySetVarToValue(varsFlags, VAR_ROAMING_ARTICUNO_STATE, state);
}

void SystemVars_SetRoamingSpeciesState(VarsFlags *varsFlags, u16 species, u16 state)
{
    switch (species) {
    case SPECIES_MESPRIT:
        SetRoamingMespritState(varsFlags, state);
        break;

    case SPECIES_CRESSELIA:
        SetRoamingCresseliaState(varsFlags, state);
        break;

    case SPECIES_MOLTRES:
        SetRoamingMoltresState(varsFlags, state);
        break;

    case SPECIES_ZAPDOS:
        SetRoamingZapdosState(varsFlags, state);
        break;

    case SPECIES_ARTICUNO:
        SetRoamingArticunoState(varsFlags, state);
        break;
    }
}

u16 SystemVars_GetDistortionWorldCyrusApperanceState(VarsFlags *varsFlags)
{
    return TryGetVarValue(varsFlags, VAR_DISTORTION_WORLD_CYRUS_APPEARANCE);
}

void SystemVars_SetDistortionWorldCyrusApperanceState(VarsFlags *varsFlags, u16 state)
{
    TrySetVarToValue(varsFlags, VAR_DISTORTION_WORLD_CYRUS_APPEARANCE, state);
}

u16 SystemVars_GetWiFiFrontierCleared(VarsFlags *varsFlags)
{
    return TryGetVarValue(varsFlags, VAR_WIFI_FRONTIER_CLEARED);
}
