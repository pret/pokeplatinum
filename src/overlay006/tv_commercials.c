#include "overlay006/tv_commercials.h"

#include <nitro.h>
#include <string.h>

#include "generated/first_arrival_to_zones.h"

#include "field/field_system.h"

#include "inlines.h"
#include "math_util.h"
#include "pokedex.h"
#include "save_player.h"
#include "system_flags.h"
#include "trainer_info.h"
#include "vars_flags.h"

#include "res/text/bank/tv_commercials.h"

typedef BOOL (*TVCommercialUnlockFunc)(FieldSystem *);

static BOOL TVCommercial_IsEligible_Always(FieldSystem *fieldSystem);
static BOOL TVCommercial_IsEligible_Never(FieldSystem *fieldSystem);
static BOOL TVCommercial_IsEligible_ArrivedAtJubilifeCity(FieldSystem *fieldSystem);
static BOOL TVCommercial_IsEligible_ArrivedAtFloaromaTown(FieldSystem *fieldSystem);
static BOOL TVCommercial_IsEligible_ArrivedAtOreburghCity(FieldSystem *fieldSystem);
static BOOL TVCommercial_IsEligible_ArrivedAtEternaCity(FieldSystem *fieldSystem);
static BOOL TVCommercial_IsEligible_ArrivedAtHearthomeCity(FieldSystem *fieldSystem);
static BOOL TVCommercial_IsEligible_ArrivedAtFightArea(FieldSystem *fieldSystem);
static BOOL TVCommercial_IsEligible_HasFiveBadges(FieldSystem *fieldSystem);
static BOOL TVCommercial_IsEligible_LocalDexCompleted(FieldSystem *fieldSystem);
static BOOL TVCommercial_IsEligible_PokedexObtained(FieldSystem *fieldSystem);
static BOOL TVCommercial_IsEligible_GameCompleted(FieldSystem *fieldSystem);

enum TVCommercialUnlockCondition {
    TV_COMMERCIAL_UNLOCK_ALWAYS,
    TV_COMMERCIAL_UNLOCK_ARRIVED_TO_FLOAROMA,
    TV_COMMERCIAL_UNLOCK_ARRIVED_TO_JUBILIFE,
    TV_COMMERCIAL_UNLOCK_ARRIVED_TO_OREBURGH,
    TV_COMMERCIAL_UNLOCK_ARRIVED_TO_ETERNA,
    TV_COMMERCIAL_UNLOCK_ARRIVED_TO_HEARTHOME,
    TV_COMMERCIAL_UNLOCK_ARRIVED_TO_FIGHT_AREA,
    TV_COMMERCIAL_UNLOCK_FIVE_BADGES,
    TV_COMMERCIAL_UNLOCK_LOCAL_DEX_COMPLETED,
    TV_COMMERCIAL_UNLOCK_POKEDEX_OBTAINED,
    TV_COMMERCIAL_UNLOCK_GAME_COMPLETED,
    TV_COMMERCIAL_UNLOCK_NEVER,
};

// clang-format off
static const TVCommercialUnlockFunc sCommercialUnlockFuncs[] = {
    [TV_COMMERCIAL_UNLOCK_ALWAYS]                = TVCommercial_IsEligible_Always,
    [TV_COMMERCIAL_UNLOCK_ARRIVED_TO_FLOAROMA]   = TVCommercial_IsEligible_ArrivedAtFloaromaTown,
    [TV_COMMERCIAL_UNLOCK_ARRIVED_TO_JUBILIFE]   = TVCommercial_IsEligible_ArrivedAtJubilifeCity,
    [TV_COMMERCIAL_UNLOCK_ARRIVED_TO_OREBURGH]   = TVCommercial_IsEligible_ArrivedAtOreburghCity,
    [TV_COMMERCIAL_UNLOCK_ARRIVED_TO_ETERNA]     = TVCommercial_IsEligible_ArrivedAtEternaCity,
    [TV_COMMERCIAL_UNLOCK_ARRIVED_TO_HEARTHOME]  = TVCommercial_IsEligible_ArrivedAtHearthomeCity,
    [TV_COMMERCIAL_UNLOCK_ARRIVED_TO_FIGHT_AREA] = TVCommercial_IsEligible_ArrivedAtFightArea,
    [TV_COMMERCIAL_UNLOCK_FIVE_BADGES]           = TVCommercial_IsEligible_HasFiveBadges,
    [TV_COMMERCIAL_UNLOCK_LOCAL_DEX_COMPLETED]   = TVCommercial_IsEligible_LocalDexCompleted,
    [TV_COMMERCIAL_UNLOCK_POKEDEX_OBTAINED]      = TVCommercial_IsEligible_PokedexObtained,
    [TV_COMMERCIAL_UNLOCK_GAME_COMPLETED]        = TVCommercial_IsEligible_GameCompleted,
    [TV_COMMERCIAL_UNLOCK_NEVER]                 = TVCommercial_IsEligible_Never
};

static u8 sTVCommercialMessageUnlockConditions[] = {
    [TVCommercial_Text_PokemonCenter]               = TV_COMMERCIAL_UNLOCK_ALWAYS,
    [TVCommercial_Text_PokemonMart]                 = TV_COMMERCIAL_UNLOCK_ALWAYS,
    [TVCommercial_Text_JubilifeTV]                  = TV_COMMERCIAL_UNLOCK_ALWAYS,
    [TVCommercial_Text_TrainersSchool]              = TV_COMMERCIAL_UNLOCK_ALWAYS,
    [TVCommercial_Text_Poketch]                     = TV_COMMERCIAL_UNLOCK_ALWAYS,
    [TVCommercial_Text_PoketchCompany]              = TV_COMMERCIAL_UNLOCK_ARRIVED_TO_JUBILIFE,
    [TVCommercial_Text_PickAPeckOfColorsFlowerShop] = TV_COMMERCIAL_UNLOCK_ARRIVED_TO_FLOAROMA,
    [TVCommercial_Text_RadRickshawCycleShop]        = TV_COMMERCIAL_UNLOCK_ARRIVED_TO_ETERNA,
    [TVCommercial_Text_HearthomeCityContests]       = TV_COMMERCIAL_UNLOCK_ARRIVED_TO_ETERNA,
    [TVCommercial_Text_HearthomeAmitySquare]        = TV_COMMERCIAL_UNLOCK_ARRIVED_TO_HEARTHOME,
    [TVCommercial_Text_VeilstoneDepartmentStore]    = TV_COMMERCIAL_UNLOCK_ARRIVED_TO_HEARTHOME,
    [TVCommercial_Text_VeilstoneGameCorner]         = TV_COMMERCIAL_UNLOCK_ARRIVED_TO_HEARTHOME,
    [TVCommercial_Text_SolaceonsPokemonDayCare]     = TV_COMMERCIAL_UNLOCK_ARRIVED_TO_HEARTHOME,
    [TVCommercial_Text_HotelGrandLake]              = TV_COMMERCIAL_UNLOCK_ARRIVED_TO_HEARTHOME,
    [TVCommercial_Text_GreatMarshSafariGame]        = TV_COMMERCIAL_UNLOCK_ARRIVED_TO_HEARTHOME,
    [TVCommercial_Text_SnowpointCity]               = TV_COMMERCIAL_UNLOCK_FIVE_BADGES,
    [TVCommercial_Text_SunyshoreMarket]             = TV_COMMERCIAL_UNLOCK_FIVE_BADGES,
    [TVCommercial_Text_GlobalTradeStation]          = TV_COMMERCIAL_UNLOCK_ARRIVED_TO_OREBURGH,
    [TVCommercial_Text_PalPark]                     = TV_COMMERCIAL_UNLOCK_LOCAL_DEX_COMPLETED,
    [TVCommercial_Text_BattleZone_1]                = TV_COMMERCIAL_UNLOCK_GAME_COMPLETED,
    [TVCommercial_Text_BattleZone_2]                = TV_COMMERCIAL_UNLOCK_GAME_COMPLETED,
    [TVCommercial_Text_RibbonSyndicate]             = TV_COMMERCIAL_UNLOCK_LOCAL_DEX_COMPLETED,
    [TVCommercial_Text_TeamGalactic_1]              = TV_COMMERCIAL_UNLOCK_ARRIVED_TO_HEARTHOME,
    [TVCommercial_Text_TeamGalactic_2]              = TV_COMMERCIAL_UNLOCK_ARRIVED_TO_HEARTHOME,
    [TVCommercial_Text_UnionRoom]                   = TV_COMMERCIAL_UNLOCK_POKEDEX_OBTAINED,
    [TVCommercial_Text_NintendoWFC]                 = TV_COMMERCIAL_UNLOCK_POKEDEX_OBTAINED,
    [TVCommercial_Text_BattleTower_1]               = TV_COMMERCIAL_UNLOCK_NEVER, // Probably because the Battle Tower is no longer on its own.
    [TVCommercial_Text_BattleTower_2]               = TV_COMMERCIAL_UNLOCK_NEVER, // Probably because the Battle Tower is no longer on its own.
    [TVCommercial_Text_SSSpiral]                    = TV_COMMERCIAL_UNLOCK_GAME_COMPLETED,
    [TVCommercial_Text_BattleHall]                  = TV_COMMERCIAL_UNLOCK_ARRIVED_TO_FIGHT_AREA,
    [TVCommercial_Text_BattleCastle]                = TV_COMMERCIAL_UNLOCK_ARRIVED_TO_FIGHT_AREA,
    [TVCommercial_Text_BattleArcade]                = TV_COMMERCIAL_UNLOCK_ARRIVED_TO_FIGHT_AREA,
    [TVCommercial_Text_BattleFactory]               = TV_COMMERCIAL_UNLOCK_ARRIVED_TO_FIGHT_AREA,
    [TVCommercial_Text_GlobalTerminal]              = TV_COMMERCIAL_UNLOCK_ARRIVED_TO_OREBURGH,
    [TVCommercial_Text_WiFiPlaza]                   = TV_COMMERCIAL_UNLOCK_ARRIVED_TO_OREBURGH,
};
// clang-format on

static BOOL TVCommercial_IsEligible_Always(FieldSystem *fieldSystem)
{
    return TRUE;
}

static BOOL TVCommercial_IsEligible_Never(FieldSystem *fieldSystem)
{
    return FALSE;
}

static BOOL TVCommercial_IsEligible_ArrivedAtJubilifeCity(FieldSystem *fieldSystem)
{
    return SystemFlag_HandleFirstArrivalToZone(SaveData_GetVarsFlags(fieldSystem->saveData), HANDLE_FLAG_CHECK, FIRST_ARRIVAL_JUBILIFE_CITY);
}

static BOOL TVCommercial_IsEligible_ArrivedAtFloaromaTown(FieldSystem *fieldSystem)
{
    return SystemFlag_HandleFirstArrivalToZone(SaveData_GetVarsFlags(fieldSystem->saveData), HANDLE_FLAG_CHECK, FIRST_ARRIVAL_FLOAROMA_TOWN);
}

static BOOL TVCommercial_IsEligible_ArrivedAtOreburghCity(FieldSystem *fieldSystem)
{
    return SystemFlag_HandleFirstArrivalToZone(SaveData_GetVarsFlags(fieldSystem->saveData), HANDLE_FLAG_CHECK, FIRST_ARRIVAL_OREBURGH_CITY);
}

static BOOL TVCommercial_IsEligible_ArrivedAtEternaCity(FieldSystem *fieldSystem)
{
    return SystemFlag_HandleFirstArrivalToZone(SaveData_GetVarsFlags(fieldSystem->saveData), HANDLE_FLAG_CHECK, FIRST_ARRIVAL_ETERNA_CITY);
}

static BOOL TVCommercial_IsEligible_ArrivedAtHearthomeCity(FieldSystem *fieldSystem)
{
    return SystemFlag_HandleFirstArrivalToZone(SaveData_GetVarsFlags(fieldSystem->saveData), HANDLE_FLAG_CHECK, FIRST_ARRIVAL_HEARTHOME_CITY);
}

static BOOL TVCommercial_IsEligible_ArrivedAtFightArea(FieldSystem *fieldSystem)
{
    return SystemFlag_HandleFirstArrivalToZone(SaveData_GetVarsFlags(fieldSystem->saveData), HANDLE_FLAG_CHECK, FIRST_ARRIVAL_FIGHT_AREA);
}

static BOOL TVCommercial_IsEligible_HasFiveBadges(FieldSystem *fieldSystem)
{
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(fieldSystem->saveData);

    return TrainerInfo_BadgeCount(trainerInfo) >= 5;
}

static BOOL TVCommercial_IsEligible_LocalDexCompleted(FieldSystem *fieldSystem)
{
    return Pokedex_LocalDexCompleted(SaveData_GetPokedex(fieldSystem->saveData));
}

static BOOL TVCommercial_IsEligible_PokedexObtained(FieldSystem *fieldSystem)
{
    return Pokedex_IsObtained(SaveData_GetPokedex(fieldSystem->saveData));
}

static BOOL TVCommercial_IsEligible_GameCompleted(FieldSystem *fieldSystem)
{
    return SystemFlag_CheckGameCompleted(SaveData_GetVarsFlags(fieldSystem->saveData));
}

static int TVCommercial_GetUnlockedMessages(FieldSystem *fieldSystem, u8 *messages)
{
    int i, count;
    BOOL flags[NELEMS(sCommercialUnlockFuncs)];

    GF_ASSERT(NELEMS(sCommercialUnlockFuncs) == 12);

    for (i = 0; i < NELEMS(sCommercialUnlockFuncs); i++) {
        flags[i] = sCommercialUnlockFuncs[i](fieldSystem);
    }

    for (i = 0, count = 0; i < NELEMS(sTVCommercialMessageUnlockConditions); i++) {
        if (flags[sTVCommercialMessageUnlockConditions[i]]) {
            messages[count] = i;
            count++;
        }
    }

    return count;
}

int TVBroadcast_GetProgramCommercialMessage(FieldSystem *fieldSystem)
{
    u8 messages[36];
    int count;

    MI_CpuClear8(messages, sizeof(messages));
    count = TVCommercial_GetUnlockedMessages(fieldSystem, messages);

    if (count == 0) {
        return TVCommercial_Text_PokemonCenter;
    }

    return messages[MTRNG_Next() % count];
}
