#include "overlay006/wild_encounters.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle.h"
#include "constants/forms.h"
#include "constants/heap.h"
#include "constants/overworld_weather.h"
#include "constants/species.h"
#include "generated/abilities.h"
#include "generated/gender_ratios.h"
#include "generated/genders.h"
#include "generated/items.h"
#include "generated/species_data_params.h"

#include "struct_defs/special_encounter.h"

#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "overlay005/honey_tree.h"
#include "overlay006/dual_slot_encounters.h"
#include "overlay006/feebas_fishing.h"
#include "overlay006/great_marsh_daily_encounters.h"
#include "overlay006/special_dates.h"
#include "overlay006/swarm.h"
#include "overlay006/wild_encounters.h"

#include "encounter.h"
#include "field_battle_data_transfer.h"
#include "field_overworld_state.h"
#include "field_system.h"
#include "field_task.h"
#include "heap.h"
#include "inlines.h"
#include "map_header.h"
#include "map_header_data.h"
#include "map_tile_behavior.h"
#include "math_util.h"
#include "narc.h"
#include "party.h"
#include "player_avatar.h"
#include "pokedex.h"
#include "pokemon.h"
#include "pokeradar.h"
#include "roaming_pokemon.h"
#include "rtc.h"
#include "save_player.h"
#include "special_encounter.h"
#include "system_flags.h"
#include "system_vars.h"
#include "terrain_collision_manager.h"
#include "trainer_data.h"
#include "trainer_info.h"
#include "unk_02054884.h"
#include "unk_020559DC.h"
#include "vars_flags.h"

typedef struct RadarEncounterData {
    int shakeType;
    BOOL preserveChain;
    BOOL isShiny;
    BOOL isRadarEncounter;
} RadarEncounterData;

typedef struct EncounterSlot {
    int species;
    u16 maxLevel;
    u16 minLevel;
} EncounterSlot;

typedef struct WildEncounters_FieldParams {
    u32 trainerID;
    BOOL repelActive;
    BOOL ignoreAbilityBlock; // skips the check for Intimidate/Keen Eye blocking low level encounters
    u8 firstBattlerLevel;
    u8 isFirstMonEgg;
    u8 firstMonAbility;
    u8 encounterRatesForms[2]; // from encounterData. Only used for Shellos/Gastrodon
    u8 unownTableID;
} WildEncounters_FieldParams;

typedef struct UnownFormsGroup {
    int numberForms;
    const u8 *forms;
} UnownFormsGroup;

static BOOL ShouldGetRandomEncounter(FieldSystem *fieldSystem, const u32 encounterRate, const u8 tileBehavior);
static u8 GetTileEncounterRateAndType(FieldSystem *fieldSystem, u8 tileBehavior, u8 *encounterType);
static BOOL GracePeriodStepsUsed(FieldSystem *fieldSystem, u32 param1);
static BOOL CheckEncounterRateSuccess(FieldSystem *fieldSystem, u32 encounterRate);
static BOOL TryGetSlotForTypeMatchAbility(Pokemon *unused, const WildEncounters_FieldParams *encParams, const EncounterSlot *encTable, const u8 maxEncounters, const u8 type, const u8 ability, u8 *encSlot);
static BOOL FirstMonAbilityPreventsEncounter(const WildEncounters_FieldParams *encParams, Pokemon *firstMon, const u8 wildLevel);
static int GetGrassEncounterRate(FieldSystem *fieldSystem);
static int GetSurfEncounterRate(FieldSystem *fieldSystem);
static int GetFishingEncounterRate(FieldSystem *fieldSystem, const int rodType);
static BOOL TryGenerateGrassEncounter_WithRadar(FieldSystem *fieldSystem, Pokemon *firstMon, FieldBattleDTO *battleParams, WildEncounters *encounterData, EncounterSlot *encounterTable, const WildEncounters_FieldParams *fieldParams, const RadarEncounterData *radarData);
static BOOL TryGenerateGrassEncounter_DoubleBattle(FieldSystem *fieldSystem, Pokemon *firstMon, FieldBattleDTO *battleParams, EncounterSlot *encounterTable, const WildEncounters_FieldParams *fieldParams);
static BOOL TryGenerateSurfEncounter(FieldSystem *fieldSystem, Pokemon *param1, FieldBattleDTO *param2, EncounterSlot *param3, const WildEncounters_FieldParams *param4);
static BOOL TryGenerateFishingEncounter(FieldSystem *fieldSystem, Pokemon *param1, FieldBattleDTO *param2, EncounterSlot *param3, const WildEncounters_FieldParams *param4, const int param5);
static BOOL TryGenerateWildMon(Pokemon *firstPartyMon, const int fishingRodType, const WildEncounters_FieldParams *fieldParams, const EncounterSlot *encounterTable, const u8 encounterType, const int param5, FieldBattleDTO *param6);
static BOOL CreateWildMon_FromRadarNoChain(FieldSystem *fieldSystem, Pokemon *param1, const WildEncounters_FieldParams *param2, const EncounterSlot *param3, const int param4, FieldBattleDTO *param5, const int param6, const int param7);
static BOOL CreateWildMon_FromRadarKeepChain(const int species, const int level, const int partyDest, const BOOL isShiny, const u32 trainerId, const WildEncounters_FieldParams *fieldParams, Pokemon *mon, FieldBattleDTO *battleParams);
static u8 ModifyEncounterRateWithFieldParams(const BOOL isFishingEncounter, const u8 encounterRate, const WildEncounters_FieldParams *fieldParams, const u32 weatherEffect, Pokemon *unused);
static void CreateWildSingleBattle(FieldSystem *fieldSystem, const BOOL param1, FieldBattleDTO **param2);
static void WildEncounters_ReplaceGreatMarshDailyEncounters(FieldSystem *fieldSystem, const BOOL safariGameActive, const BOOL param2, EncounterSlot *encTable);
static BOOL RepelPreventsEncounter(const u8 param0, const WildEncounters_FieldParams *param1);
static void AddRoamerToEnemyParty(const u32 param0, Roamer *param1, FieldBattleDTO *param2);
static BOOL TryEncounterRoamer(FieldSystem *fieldSystem, Roamer **param1);
static BOOL AddWildMonToParty(const int partySlot, const WildEncounters_FieldParams *fieldParams, Pokemon *mon, FieldBattleDTO *battleParams);
static u8 TryFindHigherLevelSlot(const EncounterSlot *encounterTable, const WildEncounters_FieldParams *fieldParams, const u8 encounterSlot);
static void InitEncounterFieldParams(FieldSystem *fieldSystem, Pokemon *firstPartyMon, WildEncounters *encounterData, WildEncounters_FieldParams *param3);
static void ModifyEncounterRateWithHeldItem(Pokemon *param0, u8 *param1);
static void ModifyEncounterRateWithFlute(FieldSystem *fieldSystem, u8 *param1);

static const u8 UnownMostForms[] = {
    UNOWN_FORM_A,
    UNOWN_FORM_B,
    UNOWN_FORM_C,
    UNOWN_FORM_G,
    UNOWN_FORM_H,
    UNOWN_FORM_J,
    UNOWN_FORM_K,
    UNOWN_FORM_L,
    UNOWN_FORM_M,
    UNOWN_FORM_O,
    UNOWN_FORM_P,
    UNOWN_FORM_Q,
    UNOWN_FORM_S,
    UNOWN_FORM_T,
    UNOWN_FORM_U,
    UNOWN_FORM_V,
    UNOWN_FORM_W,
    UNOWN_FORM_X,
    UNOWN_FORM_Y,
    UNOWN_FORM_Z
};

static const u8 UnownOnlyF[] = {
    UNOWN_FORM_F
};

static const u8 UnownOnlyR[] = {
    UNOWN_FORM_R
};

static const u8 UnownOnlyI[] = {
    UNOWN_FORM_I
};

static const u8 UnownOnlyN[] = {
    UNOWN_FORM_N
};

static const u8 UnownOnlyE[] = {
    UNOWN_FORM_E
};

static const u8 UnownOnlyD[] = {
    UNOWN_FORM_D
};

static const u8 UnownOnlyExcQue[] = {
    UNOWN_FORM_EXC,
    UNOWN_FORM_QUE
};

// The first group is used for the "dead-end" rooms in Solaceon ruins. The last group is used for the secret room reached via the Maniac Tunnel after seeing 26 Unown forms.
// The middle groups are used in sequence for the "correct path" main rooms in Solaceon ruins, in the order F-R-I-E-N-D.
static const UnownFormsGroup WildEncounters_UnownTables[] = {
    { 0x14, UnownMostForms },
    { 0x1, UnownOnlyF },
    { 0x1, UnownOnlyR },
    { 0x1, UnownOnlyI },
    { 0x1, UnownOnlyN },
    { 0x1, UnownOnlyE },
    { 0x1, UnownOnlyD },
    { 0x2, UnownOnlyExcQue }
};

// Default encounters are morning. They get replaced by this if it is not morning.
void WildEncounters_ReplaceTimedEncounters(const WildEncounters *encounterData, int *timedSlot1, int *timedSlot2)
{
    int timeOfDay = GetTimeOfDay();

    if (timeOfDay == TIMEOFDAY_DAY || timeOfDay == TIMEOFDAY_TWILIGHT) {
        *timedSlot1 = encounterData->dayEncounters[0];
        *timedSlot2 = encounterData->dayEncounters[1];
    } else if (timeOfDay == TIMEOFDAY_NIGHT || timeOfDay == TIMEOFDAY_LATE_NIGHT) {
        *timedSlot1 = encounterData->nightEncounters[0];
        *timedSlot2 = encounterData->nightEncounters[1];
    }
}

static void WildEncounters_ReplaceSwarmEncounters(FieldSystem *fieldSystem, const WildEncounters *encounterData, int *radarSlot1, int *radarSlot2)
{
    SpecialEncounter *specialEncounter = SaveData_GetSpecialEncounters(fieldSystem->saveData);

    if (SpecialEncounter_IsSwarmEnabled(specialEncounter)) {
        u32 swarmId = SpecialEncounter_GetDailyMon(specialEncounter, DAILY_SWARM);

        if (fieldSystem->location->mapId == Swarm_GetMapId(swarmId)) {
            *radarSlot1 = encounterData->swarmEncounters[0];
            *radarSlot2 = encounterData->swarmEncounters[1];
        }
    }
}

static void WildEncounters_ReplaceTrophyGardenEncounters(FieldSystem *fieldSystem, const BOOL nationalDexObtained, int *trophySlot1, int *trophySlot2)
{
    if (MapHeader_IsTrophyGarden(fieldSystem->location->mapId)) {
        u16 index1, index2;
        SpecialEncounter_GetTrophyGardenMons(fieldSystem->saveData, &index1, &index2);

        if (nationalDexObtained) {
            int *trophyGardenData = NARC_AllocAtEndAndReadWholeMemberByIndexPair(NARC_INDEX_ARC__ENCDATA_EX, 8, HEAP_ID_FIELD1);

            if (index1 != TROPHY_GARDEN_SLOT_NONE) {
                *trophySlot1 = trophyGardenData[index1];
            }

            if (index2 != TROPHY_GARDEN_SLOT_NONE) {
                *trophySlot2 = trophyGardenData[index2];
            }

            Heap_Free(trophyGardenData);
        }
    }
}

BOOL WildEncounters_TryWildEncounter(FieldSystem *fieldSystem)
{
    FieldBattleDTO *battleParams;
    Pokemon *firstPartyMon;
    u8 tileBehavior;
    u8 encounterType;
    BOOL gettingEncounter;
    BOOL encounterSuccess;
    BOOL withPartner;
    BOOL safariGameActive;
    RadarEncounterData radarData;
    EncounterSlot encounterTable[MAX_GRASS_ENCOUNTERS];
    WildEncounters_FieldParams encounterFieldParams;

    int playerX = Player_GetXPos(fieldSystem->playerAvatar);
    int playerZ = Player_GetZPos(fieldSystem->playerAvatar);
    tileBehavior = TerrainCollisionManager_GetTileBehavior(fieldSystem, playerX, playerZ);

    u8 encounterRate = GetTileEncounterRateAndType(fieldSystem, tileBehavior, &encounterType);

    if (encounterRate == 0) {
        return FALSE;
    }

    Party *party = SaveData_GetParty(fieldSystem->saveData);
    WildEncounters *encounterData = MapHeaderData_GetWildEncounters(fieldSystem);
    firstPartyMon = Party_GetPokemonBySlotIndex(party, 0);

    InitEncounterFieldParams(fieldSystem, firstPartyMon, encounterData, &encounterFieldParams);

    if (!SpecialEncounter_RepelStepsEmpty(SaveData_GetSpecialEncounters(fieldSystem->saveData))) {
        Pokemon *firstLiveMon = Party_FindFirstEligibleBattler(party);
        encounterFieldParams.repelActive = TRUE;
        encounterFieldParams.firstBattlerLevel = Pokemon_GetValue(firstLiveMon, MON_DATA_LEVEL, NULL);
    }

    encounterRate = ModifyEncounterRateWithFieldParams(FALSE, encounterRate, &encounterFieldParams, FieldOverworldState_GetWeather(SaveData_GetFieldOverworldState(fieldSystem->saveData)), firstPartyMon);

    ModifyEncounterRateWithFlute(fieldSystem, &encounterRate);
    ModifyEncounterRateWithHeldItem(firstPartyMon, &encounterRate);

    if (ShouldGetRandomEncounter(fieldSystem, encounterRate, tileBehavior)) {
        gettingEncounter = TRUE;
    } else {
        gettingEncounter = FALSE;
    }

    memset(&radarData, 0, sizeof(RadarEncounterData));

    if (!PokeRadar_ShouldDoRadarEncounter(playerX, playerZ, fieldSystem, fieldSystem->chain, &radarData.shakeType, &radarData.preserveChain, &radarData.isShiny)) {
        radarData.isRadarEncounter = FALSE;
    } else {
        radarData.isRadarEncounter = TRUE;
        gettingEncounter = TRUE;
    }

    if (!gettingEncounter) {
        return FALSE;
    }

    if (SystemFlag_CheckHasPartner(SaveData_GetVarsFlags(fieldSystem->saveData))) {
        withPartner = TRUE;
    } else {
        withPartner = FALSE;
    }

    // Roamers can't appear in Poke Radar patches or double battles.
    if (!withPartner && !radarData.isRadarEncounter) {
        Roamer *roamer;

        if (TryEncounterRoamer(fieldSystem, &roamer)) {
            if (!RepelPreventsEncounter(Roamer_GetData(roamer, ROAMER_DATA_LEVEL), &encounterFieldParams)) {
                battleParams = FieldBattleDTO_New(HEAP_ID_FIELD2, BATTLE_TYPE_ROAMER);

                FieldBattleDTO_Init(battleParams, fieldSystem);
                AddRoamerToEnemyParty(encounterFieldParams.trainerID, roamer, battleParams);
                RadarChain_Clear(fieldSystem->chain);
                Encounter_NewVsWild(fieldSystem, battleParams);
                return TRUE;
            } else {
                return FALSE;
            }
        }
    }

    if (!withPartner) {
        safariGameActive = SystemFlag_CheckSafariGameActive(SaveData_GetVarsFlags(fieldSystem->saveData));
        CreateWildSingleBattle(fieldSystem, safariGameActive, &battleParams);
    } else {
        battleParams = FieldBattleDTO_New(HEAP_ID_FIELD2, BATTLE_TYPE_AI_PARTNER);
    }

    FieldBattleDTO_Init(battleParams, fieldSystem);

    if (encounterType == ENCOUNTER_TYPE_GRASS) {
        for (int i = 0; i < MAX_GRASS_ENCOUNTERS; i++) {
            encounterTable[i].species = encounterData->grassEncounters.encounters[i].species;
            encounterTable[i].maxLevel = encounterData->grassEncounters.encounters[i].level;
            encounterTable[i].minLevel = encounterData->grassEncounters.encounters[i].level;
        }

        BOOL nationalDexObtained = Pokedex_IsNationalDexObtained(SaveData_GetPokedex(FieldSystem_GetSaveData(fieldSystem)));

        WildEncounters_ReplaceTimedEncounters(encounterData, &encounterTable[2].species, &encounterTable[3].species);
        WildEncounters_ReplaceSwarmEncounters(fieldSystem, encounterData, &encounterTable[0].species, &encounterTable[1].species);
        WildEncounters_ReplaceTrophyGardenEncounters(fieldSystem, nationalDexObtained, &encounterTable[6].species, &encounterTable[7].species);
        WildEncounters_ReplaceDualSlotEncounters(encounterData, nationalDexObtained, &encounterTable[8].species, &encounterTable[9].species);

        if (!withPartner) {
            WildEncounters_ReplaceGreatMarshDailyEncounters(fieldSystem, safariGameActive, nationalDexObtained, encounterTable);

            encounterSuccess = TryGenerateGrassEncounter_WithRadar(fieldSystem, firstPartyMon, battleParams, encounterData, encounterTable, &encounterFieldParams, &radarData);
        } else {
            battleParams->trainerIDs[BATTLER_PLAYER_2] = SystemVars_GetPartnerTrainerID(SaveData_GetVarsFlags(fieldSystem->saveData));
            Trainer_Encounter(battleParams, fieldSystem->saveData, HEAP_ID_FIELD2);
            encounterSuccess = TryGenerateGrassEncounter_DoubleBattle(fieldSystem, firstPartyMon, battleParams, encounterTable, &encounterFieldParams);
        }
    } else if (encounterType == ENCOUNTER_TYPE_SURF) {
        for (int i = 0; i < MAX_WATER_ENCOUNTERS; i++) {
            encounterTable[i].species = encounterData->surfEncounters.encounters[i].species;
            encounterTable[i].maxLevel = encounterData->surfEncounters.encounters[i].maxLevel;
            encounterTable[i].minLevel = encounterData->surfEncounters.encounters[i].minLevel;
        }

        encounterSuccess = TryGenerateSurfEncounter(fieldSystem, firstPartyMon, battleParams, encounterTable, &encounterFieldParams);
    } else {
        GF_ASSERT(FALSE);
        FieldBattleDTO_Free(battleParams);
        return FALSE;
    }

    if (encounterSuccess) {
        Encounter_NewVsWild(fieldSystem, battleParams);
    } else {
        gettingEncounter = FALSE;
    }

    GF_ASSERT(GF_heap_c_dummy_return_true(HEAP_ID_FIELD1));
    GF_ASSERT(GF_heap_c_dummy_return_true(HEAP_ID_FIELD2));

    if (!gettingEncounter) {
        FieldBattleDTO_Free(battleParams);
    }

    fieldSystem->wildBattleMetadata.encounterAttempts = 0;

    return gettingEncounter;
}

BOOL WildEncounters_TryFishingEncounter(FieldSystem *fieldSystem, enum EncounterFishingRodType fishingRodType, FieldBattleDTO **battleParams)
{
    EncounterSlot encounterTable[MAX_GRASS_ENCOUNTERS];

    u8 encounterRate = GetFishingEncounterRate(fieldSystem, fishingRodType);

    if (encounterRate == 0) {
        return FALSE;
    }

    Party *party = SaveData_GetParty(fieldSystem->saveData);
    Pokemon *firstPartyMon = Party_GetPokemonBySlotIndex(party, 0);
    WildEncounters_FieldParams encounterFieldParams;
    InitEncounterFieldParams(fieldSystem, firstPartyMon, NULL, &encounterFieldParams);
    encounterRate = ModifyEncounterRateWithFieldParams(TRUE, encounterRate, &encounterFieldParams, FieldOverworldState_GetWeather(SaveData_GetFieldOverworldState(fieldSystem->saveData)), firstPartyMon);

    if (LCRNG_RandMod(100) >= encounterRate) {
        return FALSE;
    }

    BOOL safariGameActive = SystemFlag_CheckSafariGameActive(SaveData_GetVarsFlags(fieldSystem->saveData));

    CreateWildSingleBattle(fieldSystem, safariGameActive, battleParams);

    FieldBattleDTO_Init(*battleParams, fieldSystem);
    FieldBattleDTO_SetWaterTerrain(*battleParams);

    if (MapHeader_HasFeebasTiles(fieldSystem->location->mapId) && PlayerAvatar_IsFacingFeebasTile(fieldSystem)) {
        int species;
        u8 maxLevel, minLevel;

        LoadFeebasLevelRange(&maxLevel, &minLevel); // 10-20
        LoadFeebasFromNARC(&species);

        for (u8 i = 0; i < MAX_WATER_ENCOUNTERS; i++) { // guaranteed to find Feebas if the above checks pass.
            encounterTable[i].species = species;
            encounterTable[i].maxLevel = maxLevel;
            encounterTable[i].minLevel = minLevel;
        }
    } else {
        WaterEncounter *fishingEncounters;
        WildEncounters *encounterData = MapHeaderData_GetWildEncounters(fieldSystem);

        switch (fishingRodType) {
        case FISHING_TYPE_OLD_ROD:
            fishingEncounters = encounterData->oldRodEncounters.encounters;
            break;
        case FISHING_TYPE_GOOD_ROD:
            fishingEncounters = encounterData->goodRodEncounters.encounters;
            break;
        case FISHING_TYPE_SUPER_ROD:
            fishingEncounters = encounterData->superRodEncounters.encounters;
            break;
        }

        for (u8 i = 0; i < MAX_WATER_ENCOUNTERS; i++) {
            encounterTable[i].species = fishingEncounters[i].species;
            encounterTable[i].maxLevel = fishingEncounters[i].maxLevel;
            encounterTable[i].minLevel = fishingEncounters[i].minLevel;
        }
    }

    if (!TryGenerateFishingEncounter(fieldSystem, firstPartyMon, *battleParams, encounterTable, &encounterFieldParams, fishingRodType)) {
        return FALSE;
    }

    return TRUE;
}

// Same as WildEncounters_TryWildEncounter except it always generates an encounter if they exist
BOOL WildEncounters_TrySweetScentEncounter(FieldSystem *fieldSystem, FieldTask *param1)
{
    FieldBattleDTO *battleParams;
    Pokemon *firstPartyMon;
    u8 encounterType;
    BOOL withPartner;
    BOOL safariGameActive;
    BOOL encounterSuccess;
    RadarEncounterData radarData;
    EncounterSlot encounterTable[MAX_GRASS_ENCOUNTERS];
    WildEncounters_FieldParams encounterFieldParams;

    int playerX = Player_GetXPos(fieldSystem->playerAvatar);
    int playerZ = Player_GetZPos(fieldSystem->playerAvatar);
    u8 tileBehavior = TerrainCollisionManager_GetTileBehavior(fieldSystem, playerX, playerZ);

    u8 encounterRate = GetTileEncounterRateAndType(fieldSystem, tileBehavior, &encounterType);

    if (encounterRate == 0) {
        return FALSE;
    }

    Party *party = SaveData_GetParty(fieldSystem->saveData);
    WildEncounters *encounterData = MapHeaderData_GetWildEncounters(fieldSystem);
    firstPartyMon = Party_GetPokemonBySlotIndex(party, 0);

    InitEncounterFieldParams(fieldSystem, firstPartyMon, encounterData, &encounterFieldParams);

    encounterFieldParams.repelActive = FALSE;
    encounterFieldParams.ignoreAbilityBlock = TRUE;

    memset(&radarData, 0, sizeof(RadarEncounterData));

    if (SystemFlag_CheckHasPartner(SaveData_GetVarsFlags(fieldSystem->saveData))) {
        withPartner = TRUE;
    } else {
        withPartner = FALSE;
    }

    if (!withPartner) {
        Roamer *roamer;

        if (TryEncounterRoamer(fieldSystem, &roamer)) {
            battleParams = FieldBattleDTO_New(HEAP_ID_FIELD2, BATTLE_TYPE_ROAMER);

            FieldBattleDTO_Init(battleParams, fieldSystem);
            AddRoamerToEnemyParty(encounterFieldParams.trainerID, roamer, battleParams);
            RadarChain_Clear(fieldSystem->chain);
            Encounter_StartVsWild(fieldSystem, param1, battleParams);
            return TRUE;
        }
    }

    if (!withPartner) {
        safariGameActive = SystemFlag_CheckSafariGameActive(SaveData_GetVarsFlags(fieldSystem->saveData));
        CreateWildSingleBattle(fieldSystem, safariGameActive, &battleParams);
    } else {
        battleParams = FieldBattleDTO_New(HEAP_ID_FIELD2, BATTLE_TYPE_AI_PARTNER);
    }

    FieldBattleDTO_Init(battleParams, fieldSystem);

    if (encounterType == ENCOUNTER_TYPE_GRASS) {
        for (int i = 0; i < MAX_GRASS_ENCOUNTERS; i++) {
            encounterTable[i].species = encounterData->grassEncounters.encounters[i].species;
            encounterTable[i].maxLevel = encounterData->grassEncounters.encounters[i].level;
            encounterTable[i].minLevel = encounterData->grassEncounters.encounters[i].level;
        }

        BOOL nationalDexObtained = Pokedex_IsNationalDexObtained(SaveData_GetPokedex(FieldSystem_GetSaveData(fieldSystem)));

        WildEncounters_ReplaceTimedEncounters(encounterData, &encounterTable[2].species, &encounterTable[3].species);
        WildEncounters_ReplaceSwarmEncounters(fieldSystem, encounterData, &encounterTable[0].species, &encounterTable[1].species);
        WildEncounters_ReplaceTrophyGardenEncounters(fieldSystem, nationalDexObtained, &encounterTable[6].species, &encounterTable[7].species);
        WildEncounters_ReplaceDualSlotEncounters(encounterData, nationalDexObtained, &encounterTable[8].species, &encounterTable[9].species);

        if (!withPartner) {
            WildEncounters_ReplaceGreatMarshDailyEncounters(fieldSystem, safariGameActive, nationalDexObtained, encounterTable);

            encounterSuccess = TryGenerateGrassEncounter_WithRadar(fieldSystem, firstPartyMon, battleParams, encounterData, encounterTable, &encounterFieldParams, &radarData);
        } else {
            battleParams->trainerIDs[BATTLER_PLAYER_2] = SystemVars_GetPartnerTrainerID(SaveData_GetVarsFlags(fieldSystem->saveData));
            Trainer_Encounter(battleParams, fieldSystem->saveData, HEAP_ID_FIELD2);
            encounterSuccess = TryGenerateGrassEncounter_DoubleBattle(fieldSystem, firstPartyMon, battleParams, encounterTable, &encounterFieldParams);
        }
    } else if (encounterType == ENCOUNTER_TYPE_SURF) {
        for (int i = 0; i < MAX_WATER_ENCOUNTERS; i++) {
            encounterTable[i].species = encounterData->surfEncounters.encounters[i].species;
            encounterTable[i].maxLevel = encounterData->surfEncounters.encounters[i].maxLevel;
            encounterTable[i].minLevel = encounterData->surfEncounters.encounters[i].minLevel;
        }

        encounterSuccess = TryGenerateSurfEncounter(fieldSystem, firstPartyMon, battleParams, encounterTable, &encounterFieldParams);
    } else {
        GF_ASSERT(FALSE);
        return FALSE;
    }

    if (encounterSuccess) {
        Encounter_StartVsWild(fieldSystem, param1, battleParams);
    } else {
        GF_ASSERT(FALSE);
    }

    fieldSystem->wildBattleMetadata.encounterAttempts = 0;
    return TRUE;
}

// seemingly the same as TryGrassEncounter, but doesn't check Surf tables because it's always a grass tile
BOOL WildEncounters_TryMudEncounter(FieldSystem *fieldSystem, FieldBattleDTO **battleParams)
{
    Pokemon *firstPartyMon;
    u8 encounterType;
    BOOL gettingEncounter;
    BOOL encounterSuccess;
    BOOL withPartner;
    BOOL safariGameActive;
    RadarEncounterData radarData;
    EncounterSlot encounterTable[MAX_GRASS_ENCOUNTERS];
    WildEncounters_FieldParams encounterFieldParams;

    *battleParams = NULL;

    int playerX = Player_GetXPos(fieldSystem->playerAvatar);
    int playerZ = Player_GetZPos(fieldSystem->playerAvatar);
    u8 tileBehavior = TerrainCollisionManager_GetTileBehavior(fieldSystem, playerX, playerZ);

    u8 encounterRate = GetTileEncounterRateAndType(fieldSystem, tileBehavior, &encounterType);

    if (encounterRate == 0) {
        return FALSE;
    }

    Party *party = SaveData_GetParty(fieldSystem->saveData);
    WildEncounters *encounterData = MapHeaderData_GetWildEncounters(fieldSystem);
    firstPartyMon = Party_GetPokemonBySlotIndex(party, 0);

    InitEncounterFieldParams(fieldSystem, firstPartyMon, encounterData, &encounterFieldParams);

    if (!SpecialEncounter_RepelStepsEmpty(SaveData_GetSpecialEncounters(fieldSystem->saveData))) {
        Pokemon *v15 = Party_FindFirstEligibleBattler(party);

        encounterFieldParams.repelActive = TRUE;
        encounterFieldParams.firstBattlerLevel = Pokemon_GetValue(v15, MON_DATA_LEVEL, NULL);
    }

    encounterRate = ModifyEncounterRateWithFieldParams(FALSE, encounterRate, &encounterFieldParams, FieldOverworldState_GetWeather(SaveData_GetFieldOverworldState(fieldSystem->saveData)), firstPartyMon);

    ModifyEncounterRateWithFlute(fieldSystem, &encounterRate);
    ModifyEncounterRateWithHeldItem(firstPartyMon, &encounterRate);

    if (ShouldGetRandomEncounter(fieldSystem, encounterRate, tileBehavior)) {
        gettingEncounter = TRUE;
    } else {
        gettingEncounter = FALSE;
    }

    memset(&radarData, 0, sizeof(RadarEncounterData));
    radarData.isRadarEncounter = FALSE;

    if (SystemFlag_CheckHasPartner(SaveData_GetVarsFlags(fieldSystem->saveData))) {
        withPartner = TRUE;
    } else {
        withPartner = FALSE;
    }

    if (!withPartner) {
        Roamer *roamer;

        if (TryEncounterRoamer(fieldSystem, &roamer)) {
            if (!RepelPreventsEncounter(Roamer_GetData(roamer, ROAMER_DATA_LEVEL), &encounterFieldParams)) {
                *battleParams = FieldBattleDTO_New(HEAP_ID_FIELD2, BATTLE_TYPE_ROAMER);

                FieldBattleDTO_Init(*battleParams, fieldSystem);
                AddRoamerToEnemyParty(encounterFieldParams.trainerID, roamer, *battleParams);
                RadarChain_Clear(fieldSystem->chain);
                return TRUE;
            } else {
                return FALSE;
            }
        }
    }

    if (!withPartner) {
        safariGameActive = SystemFlag_CheckSafariGameActive(SaveData_GetVarsFlags(fieldSystem->saveData));
        CreateWildSingleBattle(fieldSystem, safariGameActive, battleParams);
    } else {
        *battleParams = FieldBattleDTO_New(HEAP_ID_FIELD2, BATTLE_TYPE_AI_PARTNER);
    }

    FieldBattleDTO_Init(*battleParams, fieldSystem);

    if (encounterType == ENCOUNTER_TYPE_GRASS) {
        for (int i = 0; i < MAX_GRASS_ENCOUNTERS; i++) {
            encounterTable[i].species = encounterData->grassEncounters.encounters[i].species;
            encounterTable[i].maxLevel = encounterData->grassEncounters.encounters[i].level;
            encounterTable[i].minLevel = encounterData->grassEncounters.encounters[i].level;
        }

        BOOL nationalDexObtained = Pokedex_IsNationalDexObtained(SaveData_GetPokedex(FieldSystem_GetSaveData(fieldSystem)));

        WildEncounters_ReplaceTimedEncounters(encounterData, &encounterTable[2].species, &encounterTable[3].species);
        WildEncounters_ReplaceSwarmEncounters(fieldSystem, encounterData, &encounterTable[0].species, &encounterTable[1].species);
        WildEncounters_ReplaceTrophyGardenEncounters(fieldSystem, nationalDexObtained, &encounterTable[6].species, &encounterTable[7].species);
        WildEncounters_ReplaceDualSlotEncounters(encounterData, nationalDexObtained, &encounterTable[8].species, &encounterTable[9].species);

        if (!withPartner) {
            WildEncounters_ReplaceGreatMarshDailyEncounters(fieldSystem, safariGameActive, nationalDexObtained, encounterTable);

            encounterSuccess = TryGenerateGrassEncounter_WithRadar(fieldSystem, firstPartyMon, *battleParams, encounterData, encounterTable, &encounterFieldParams, &radarData);
        } else {
            (*battleParams)->trainerIDs[BATTLER_PLAYER_2] = SystemVars_GetPartnerTrainerID(SaveData_GetVarsFlags(fieldSystem->saveData));
            Trainer_Encounter(*battleParams, fieldSystem->saveData, HEAP_ID_FIELD2);
            encounterSuccess = TryGenerateGrassEncounter_DoubleBattle(fieldSystem, firstPartyMon, *battleParams, encounterTable, &encounterFieldParams);
        }
    } else {
        GF_ASSERT(FALSE);
        FieldBattleDTO_Free(*battleParams);
        return FALSE;
    }

    if (!encounterSuccess) {
        gettingEncounter = FALSE;
    }

    GF_ASSERT(GF_heap_c_dummy_return_true(HEAP_ID_FIELD1));
    GF_ASSERT(GF_heap_c_dummy_return_true(HEAP_ID_FIELD2));

    if (!gettingEncounter) {
        FieldBattleDTO_Free(*battleParams);
    } else {
        fieldSystem->wildBattleMetadata.encounterAttempts = 0;
    }

    return gettingEncounter;
}

// If using radar, adds radar encounters to table and tries to preserve the chain
static BOOL TryGenerateGrassEncounter_WithRadar(FieldSystem *fieldSystem, Pokemon *firstPartyMon, FieldBattleDTO *battleParams, WildEncounters *encounterData, EncounterSlot *encounterTable, const WildEncounters_FieldParams *encounterFieldParams, const RadarEncounterData *radarData)
{
    BOOL encounterSuccess;

    if (radarData->isRadarEncounter) {
        int species, level;

        if (radarData->shakeType == 1) {
            encounterTable[4].species = encounterData->radarEncounters[0];
            encounterTable[5].species = encounterData->radarEncounters[1];
            encounterTable[10].species = encounterData->radarEncounters[2];
            encounterTable[11].species = encounterData->radarEncounters[3];
        }

        GetRadarMon(fieldSystem->chain, &species, &level);

        if (radarData->preserveChain == 1) {
            TrainerInfo *v3 = SaveData_GetTrainerInfo(FieldSystem_GetSaveData(fieldSystem));
            encounterSuccess = CreateWildMon_FromRadarKeepChain(species, level, 1, radarData->isShiny, TrainerInfo_ID(v3), encounterFieldParams, firstPartyMon, battleParams);
        } else {
            encounterSuccess = CreateWildMon_FromRadarNoChain(fieldSystem, firstPartyMon, encounterFieldParams, encounterTable, 1, battleParams, species, level);
        }

        if (encounterSuccess) {
            {
                int playerX = Player_GetXPos(fieldSystem->playerAvatar);
                int playerZ = Player_GetZPos(fieldSystem->playerAvatar);

                RadarSpawnPatches(fieldSystem, playerX, playerZ, fieldSystem->chain);
            }
        }
    } else {
        encounterSuccess = TryGenerateWildMon(firstPartyMon, 0xff, encounterFieldParams, encounterTable, ENCOUNTER_TYPE_GRASS, 1, battleParams);

        if (encounterSuccess) {
            RadarChain_Clear(fieldSystem->chain);
        }
    }

    return encounterSuccess;
}

static BOOL TryGenerateGrassEncounter_DoubleBattle(FieldSystem *fieldSystem, Pokemon *firstPartyMon, FieldBattleDTO *battleParams, EncounterSlot *encounterTable, const WildEncounters_FieldParams *fieldParams)
{
    if (!TryGenerateWildMon(firstPartyMon, 0xff, fieldParams, encounterTable, ENCOUNTER_TYPE_GRASS, 1, battleParams)) {
        return FALSE;
    }

    BOOL encounterSuccess = TryGenerateWildMon(firstPartyMon, 0xff, fieldParams, encounterTable, ENCOUNTER_TYPE_GRASS, 3, battleParams);
    return encounterSuccess;
}

static BOOL TryGenerateSurfEncounter(FieldSystem *fieldSystem, Pokemon *param1, FieldBattleDTO *param2, EncounterSlot *param3, const WildEncounters_FieldParams *param4)
{
    return TryGenerateWildMon(param1, 0xff, param4, param3, ENCOUNTER_TYPE_SURF, 1, param2);
}

static BOOL TryGenerateFishingEncounter(FieldSystem *fieldSystem, Pokemon *param1, FieldBattleDTO *param2, EncounterSlot *param3, const WildEncounters_FieldParams *param4, const int fishingRodType)
{
    return TryGenerateWildMon(param1, fishingRodType, param4, param3, ENCOUNTER_TYPE_FISHING, 1, param2);
}

static BOOL ShouldGetRandomEncounter(FieldSystem *fieldSystem, const u32 encounterRate, const u8 tileBehavior)
{
    u32 encRate = encounterRate << 8;

    // lowers effective encounter rate by 95% for the first few steps after each encounter.
    if (!GracePeriodStepsUsed(fieldSystem, encRate)) {
        fieldSystem->wildBattleMetadata.encounterAttempts++;

        if (LCRNG_RandMod(100) >= 5) {
            return FALSE;
        }
    }

    // flat 60% chance for the encounter attempt to fail, which is decreased by long grass, biking, and on certain dates.
    u8 flatEncounterRate = 40;

    if (TileBehavior_IsVeryTallGrass(tileBehavior)) {
        flatEncounterRate += 30;
    } else if (PlayerAvatar_GetPlayerState(fieldSystem->playerAvatar) == PLAYER_STATE_CYCLING) {
        flatEncounterRate += 30;
    }

    flatEncounterRate = SpecialDates_ModifyEncounterRate(flatEncounterRate, FieldSystem_HasPenalty(fieldSystem));

    if (flatEncounterRate > 100) {
        flatEncounterRate = 100;
    }

    return LCRNG_RandMod(100) < flatEncounterRate && CheckEncounterRateSuccess(fieldSystem, encounterRate);
}

// Returns encounter rate. Assigns encounter type to third parameter.
static u8 GetTileEncounterRateAndType(FieldSystem *fieldSystem, u8 tileBehavior, u8 *encounterType)
{
    if (TileBehavior_HasEncounters(tileBehavior)) {
        if (TileBehavior_IsSurfable(tileBehavior)) {
            *encounterType = ENCOUNTER_TYPE_SURF;
            return GetSurfEncounterRate(fieldSystem);
        } else {
            *encounterType = ENCOUNTER_TYPE_GRASS;
            return GetGrassEncounterRate(fieldSystem);
        }
    }

    return 0;
}

// Suppresses the first few encounter attempts after each map transition or wild battle.
static BOOL GracePeriodStepsUsed(FieldSystem *fieldSystem, u32 encounterRate)
{
    encounterRate = (encounterRate / 10) >> 8;

    if (encounterRate > 8) {
        encounterRate = 8;
    }

    encounterRate = 8 - (encounterRate); // higher encounter rates also lower the grace period.

    return fieldSystem->wildBattleMetadata.encounterAttempts >= encounterRate;
}

static BOOL CheckEncounterRateSuccess(FieldSystem *fieldSystem, u32 encounterRate)
{
    if (LCRNG_RandMod(100) >= encounterRate) {
        return FALSE;
    } else {
        return TRUE;
    }
}

static u8 GetGroundEncounterSlot(void)
{
    u8 roll = LCRNG_RandMod(100);

    if (roll < 20) {
        return 0;
    } else if (roll >= 20 && roll < 40) {
        return 1;
    } else if (roll >= 40 && roll < 50) {
        return 2;
    } else if (roll >= 50 && roll < 60) {
        return 3;
    } else if (roll >= 60 && roll < 70) {
        return 4;
    } else if (roll >= 70 && roll < 80) {
        return 5;
    } else if (roll >= 80 && roll < 85) {
        return 6;
    } else if (roll >= 85 && roll < 90) {
        return 7;
    } else if (roll >= 90 && roll < 94) {
        return 8;
    } else if (roll >= 94 && roll < 98) {
        return 9;
    } else if (roll == 98) {
        return 10;
    }

    return 11;
}

static u8 GetWaterEncounterSlot(void)
{
    u8 roll = LCRNG_RandMod(100);

    if (roll < 60) {
        return 0;
    } else if (roll >= 60 && roll < 90) {
        return 1;
    } else if (roll >= 90 && roll < 95) {
        return 2;
    } else if (roll >= 95 && roll < 99) {
        return 3;
    }

    return 4;
}

static u8 GetRodEncounterSlot(const int fishingRodType)
{
    u8 encSlot = 0;

    u8 roll = LCRNG_RandMod(100);

    switch (fishingRodType) {
    case FISHING_TYPE_OLD_ROD:
        if (roll < 60) {
            encSlot = 0;
        } else if (roll < 90) {
            encSlot = 1;
        } else if (roll < 95) {
            encSlot = 2;
        } else if (roll < 99) {
            encSlot = 3;
        } else {
            encSlot = 4;
        }
        break;
    case FISHING_TYPE_GOOD_ROD:
        if (roll < 40) {
            encSlot = 0;
        } else if (roll < 80) {
            encSlot = 1;
        } else if (roll < 95) {
            encSlot = 2;
        } else if (roll < 99) {
            encSlot = 3;
        } else {
            encSlot = 4;
        }
        break;
    case FISHING_TYPE_SUPER_ROD:
        if (roll < 40) {
            encSlot = 0;
        } else if (roll < 80) {
            encSlot = 1;
        } else if (roll < 95) {
            encSlot = 2;
        } else if (roll < 99) {
            encSlot = 3;
        } else {
            encSlot = 4;
        }
        break;
    default:
        GF_ASSERT(FALSE);
    }

    return encSlot;
}

static void ModifyEncounterRateWithHeldItem(Pokemon *mon, u8 *encounterRate)
{
    u16 heldItem = Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL);

    if (heldItem == ITEM_CLEANSE_TAG || heldItem == ITEM_PURE_INCENSE) {
        *encounterRate = (*encounterRate * 2) / 3;
    }
}

static void ModifyEncounterRateWithFlute(FieldSystem *fieldSystem, u8 *encounterRate)
{
    u8 activeFlute = SpecialEncounter_GetFluteFactor(SaveData_GetSpecialEncounters(fieldSystem->saveData));

    if (activeFlute == FLUTE_FACTOR_USED_BLACK) {
        *encounterRate /= 2;
    } else if (activeFlute == FLUTE_FACTOR_USED_WHITE) {
        *encounterRate = *encounterRate + (*encounterRate / 2);
    }
}

// checks Synchronize, returns a random nature otherwise.
static u8 GetNatureForWildMon(Pokemon *firstMon, const WildEncounters_FieldParams *encounterFieldParams)
{
    if (!encounterFieldParams->isFirstMonEgg && encounterFieldParams->firstMonAbility == ABILITY_SYNCHRONIZE && LCRNG_RandMod(2) == 0) {
        u32 leadPersonality = Pokemon_GetValue(firstMon, MON_DATA_PERSONALITY, NULL);
        return (u8)(leadPersonality % 25);
    }

    return LCRNG_RandMod(25);
}

// Only used for Surf and Fishing. Grass mons have their level distributions spread across multiple slots instead of min/maxLevel.
static u8 GetWildMonLevel(const EncounterSlot *slot, const WildEncounters_FieldParams *encounterFieldParams)
{
    u8 randRange;
    u8 minLevel, maxLevel;

    if (slot->maxLevel >= slot->minLevel) {
        minLevel = slot->minLevel;
        maxLevel = slot->maxLevel;
    } else {
        minLevel = slot->maxLevel;
        maxLevel = slot->minLevel;
    }

    u8 levelRange = maxLevel - minLevel + 1;
    randRange = LCRNG_Next() % levelRange;

    // Hustle and Vital Spirit give a 50% chance to force mons to be max level
    if (!encounterFieldParams->isFirstMonEgg && (encounterFieldParams->firstMonAbility == ABILITY_HUSTLE || encounterFieldParams->firstMonAbility == ABILITY_VITAL_SPIRIT || encounterFieldParams->firstMonAbility == ABILITY_PRESSURE)) {
        if (LCRNG_RandMod(2) == 0) {
            return minLevel + randRange;
        }

        return maxLevel;
    }

    return minLevel + randRange;
}

// Creates a mon with a personality that will make it shiny, and complies with Cute Charm/Synchronize.
// It only has to check one or the other, not both, because only one ability can be in effect at a time.
static void CreateWildMonShinyWithGenderOrNature(const u16 species, const u8 level, const int partySlot, const u32 param3, const WildEncounters_FieldParams *encounterFieldParams, Pokemon *firstPartyMon, FieldBattleDTO *battleParams)
{
    u8 firstMonGender;
    u8 firstMonNature;

    Pokemon *newEncounter = Pokemon_New(HEAP_ID_FIELD2);
    Pokemon_Init(newEncounter);

    BOOL abilityInEffect = FALSE;

    if (!encounterFieldParams->isFirstMonEgg) {
        if (encounterFieldParams->firstMonAbility == ABILITY_CUTE_CHARM) {
            u32 speciesGenderRatio = SpeciesData_GetSpeciesValue(species, SPECIES_DATA_GENDER_RATIO);

            switch (speciesGenderRatio) {
            case GENDER_RATIO_MALE_ONLY:
            case GENDER_RATIO_FEMALE_ONLY:
            case GENDER_RATIO_NO_GENDER:
                break;
            default:
                if (LCRNG_RandMod(3) > 0) {
                    firstMonGender = Pokemon_GetValue(firstPartyMon, MON_DATA_GENDER, NULL);
                    abilityInEffect = TRUE;
                }
            }
        } else if (encounterFieldParams->firstMonAbility == ABILITY_SYNCHRONIZE) {
            if (LCRNG_RandMod(2) == 0) {
                firstMonNature = Pokemon_GetNature(firstPartyMon);
                abilityInEffect = TRUE;
            }
        }
    }

    u32 newEncounterPersonality = Pokemon_FindShinyPersonality(param3);

    if (abilityInEffect) {
        do {
            if (encounterFieldParams->firstMonAbility == ABILITY_CUTE_CHARM) {
                u8 newEncounterGender = Pokemon_GetGenderOf(species, newEncounterPersonality);
                GF_ASSERT(newEncounterGender != GENDER_NONE);

                if (newEncounterGender != firstMonGender) {
                    break;
                } else {
                    newEncounterPersonality = Pokemon_FindShinyPersonality(param3);
                }
            } else if (encounterFieldParams->firstMonAbility == ABILITY_SYNCHRONIZE) {
                u8 newEncounterNature = Pokemon_GetNatureOf(newEncounterPersonality);

                if (newEncounterNature == firstMonNature) {
                    break;
                } else {
                    newEncounterPersonality = Pokemon_FindShinyPersonality(param3);
                }
            }
        } while (TRUE);
    }

    Pokemon_InitWith(newEncounter, species, level, INIT_IVS_RANDOM, TRUE, newEncounterPersonality, OTID_SET, encounterFieldParams->trainerID);

    GF_ASSERT(AddWildMonToParty(partySlot, encounterFieldParams, newEncounter, battleParams));
    Heap_Free(newEncounter);
}

static void CreateWildMon(u16 species, u8 level, const int partyDest, const WildEncounters_FieldParams *encounterFieldParams, Pokemon *firstPartyMon, FieldBattleDTO *battleParams)
{
    Pokemon *newEncounter = Pokemon_New(HEAP_ID_FIELD2);
    Pokemon_Init(newEncounter);
    BOOL hasRandomGender = TRUE;

    u32 speciesGenderRatio = SpeciesData_GetSpeciesValue(species, SPECIES_DATA_GENDER_RATIO);

    switch (speciesGenderRatio) {
    case GENDER_RATIO_MALE_ONLY:
    case GENDER_RATIO_FEMALE_ONLY:
    case GENDER_RATIO_NO_GENDER:
        hasRandomGender = FALSE;
    }

    // 2/3 chance for Cute Charm to force the encounter to be the opposite gender of the lead, if possible.
    if (hasRandomGender && !encounterFieldParams->isFirstMonEgg && encounterFieldParams->firstMonAbility == ABILITY_CUTE_CHARM && LCRNG_RandMod(3) > 0) {
        u8 gender = Pokemon_GetValue(firstPartyMon, MON_DATA_GENDER, NULL);

        if (gender == GENDER_FEMALE) {
            gender = GENDER_MALE;
        } else if (gender == GENDER_MALE) {
            gender = GENDER_FEMALE;
        } else {
            GF_ASSERT(FALSE);
        }

        sub_02074088(newEncounter, species, level, 32, gender, GetNatureForWildMon(firstPartyMon, encounterFieldParams), 0);
        Pokemon_SetValue(newEncounter, MON_DATA_OT_ID, &encounterFieldParams->trainerID);

        GF_ASSERT(AddWildMonToParty(partyDest, encounterFieldParams, newEncounter, battleParams));
        Heap_Free(newEncounter);
        return;
    }

    sub_02074044(newEncounter, species, level, 32, GetNatureForWildMon(firstPartyMon, encounterFieldParams));
    Pokemon_SetValue(newEncounter, MON_DATA_OT_ID, &encounterFieldParams->trainerID);

    GF_ASSERT(AddWildMonToParty(partyDest, encounterFieldParams, newEncounter, battleParams));
    Heap_Free(newEncounter);
}

static BOOL TryGenerateWildMon(Pokemon *firstPartyMon, const int fishingRodType, const WildEncounters_FieldParams *encounterFieldParams, const EncounterSlot *encounterTable, const u8 encounterType, const int partyDest, FieldBattleDTO *battleParams)
{
    BOOL forcedSlot;
    u8 encounterSlot = 0;
    u8 level = 0;

    switch (encounterType) {
    case ENCOUNTER_TYPE_GRASS:
        forcedSlot = TryGetSlotForTypeMatchAbility(firstPartyMon, encounterFieldParams, encounterTable, MAX_GRASS_ENCOUNTERS, TYPE_STEEL, ABILITY_MAGNET_PULL, &encounterSlot);

        if (!forcedSlot) {
            forcedSlot = TryGetSlotForTypeMatchAbility(firstPartyMon, encounterFieldParams, encounterTable, MAX_GRASS_ENCOUNTERS, TYPE_ELECTRIC, ABILITY_STATIC, &encounterSlot);

            if (!forcedSlot) {
                encounterSlot = GetGroundEncounterSlot();
            }
        }

        encounterSlot = TryFindHigherLevelSlot(encounterTable, encounterFieldParams, encounterSlot);
        level = encounterTable[encounterSlot].maxLevel;
        break;
    case ENCOUNTER_TYPE_SURF:
        // BUG: Magnet Pull doesn't function in water because its encounter slot gets overwritten when the Static check returns FALSE.
        forcedSlot = TryGetSlotForTypeMatchAbility(firstPartyMon, encounterFieldParams, encounterTable, MAX_WATER_ENCOUNTERS, TYPE_STEEL, ABILITY_MAGNET_PULL, &encounterSlot);
        forcedSlot = TryGetSlotForTypeMatchAbility(firstPartyMon, encounterFieldParams, encounterTable, MAX_WATER_ENCOUNTERS, TYPE_ELECTRIC, ABILITY_STATIC, &encounterSlot);

        if (!forcedSlot) {
            encounterSlot = GetWaterEncounterSlot();
        }

        level = GetWildMonLevel(&encounterTable[encounterSlot], encounterFieldParams);
        break;
    case ENCOUNTER_TYPE_FISHING:
        // BUG: Magnet Pull doesn't function in water because its encounter slot gets overwritten when the Static check returns FALSE.
        forcedSlot = TryGetSlotForTypeMatchAbility(firstPartyMon, encounterFieldParams, encounterTable, MAX_WATER_ENCOUNTERS, TYPE_STEEL, ABILITY_MAGNET_PULL, &encounterSlot);
        forcedSlot = TryGetSlotForTypeMatchAbility(firstPartyMon, encounterFieldParams, encounterTable, MAX_WATER_ENCOUNTERS, TYPE_ELECTRIC, ABILITY_STATIC, &encounterSlot);

        if (!forcedSlot) {
            encounterSlot = GetRodEncounterSlot(fishingRodType);
        }

        level = GetWildMonLevel(&encounterTable[encounterSlot], encounterFieldParams);
        break;
    default:
        GF_ASSERT(FALSE);
    }

    if (FirstMonAbilityPreventsEncounter(encounterFieldParams, firstPartyMon, level)) {
        return FALSE;
    }

    if (RepelPreventsEncounter(level, encounterFieldParams) == TRUE) {
        return FALSE;
    }

    CreateWildMon(encounterTable[encounterSlot].species, level, partyDest, encounterFieldParams, firstPartyMon, battleParams);
    return TRUE;
}

// Forced to be the species of the chain.
static BOOL CreateWildMon_FromRadarKeepChain(const int species, const int level, const int partyDest, const BOOL isShiny, const u32 trainerId, const WildEncounters_FieldParams *encounterFieldParams, Pokemon *mon, FieldBattleDTO *battleParams)
{
    GF_ASSERT(species != 0);
    u8 lvl = level;

    if (isShiny) {
        CreateWildMonShinyWithGenderOrNature(species, lvl, partyDest, trainerId, encounterFieldParams, mon, battleParams);
    } else {
        CreateWildMon(species, lvl, partyDest, encounterFieldParams, mon, battleParams);
    }

    return TRUE;
}

// Generates new encounter slot, so may or may not break the chain.
static BOOL CreateWildMon_FromRadarNoChain(FieldSystem *fieldSystem, Pokemon *mon, const WildEncounters_FieldParams *encounterFieldParams, const EncounterSlot *encounterTable, const int partyDest, FieldBattleDTO *battleParams, const int species, const int level)
{
    u8 encounterSlot = 0;

    u8 forcedSlot = TryGetSlotForTypeMatchAbility(mon, encounterFieldParams, encounterTable, MAX_GRASS_ENCOUNTERS, TYPE_STEEL, ABILITY_MAGNET_PULL, &encounterSlot);

    if (forcedSlot == 0) {
        forcedSlot = TryGetSlotForTypeMatchAbility(mon, encounterFieldParams, encounterTable, MAX_GRASS_ENCOUNTERS, TYPE_ELECTRIC, ABILITY_STATIC, &encounterSlot);

        if (forcedSlot == 0) {
            encounterSlot = GetGroundEncounterSlot();
        }
    }

    u8 newLevel = encounterTable[encounterSlot].maxLevel;
    int newSpecies = encounterTable[encounterSlot].species;

    if (species == 0) {
        SetRadarMon(fieldSystem->chain, newSpecies, newLevel);
        RadarChain_Increment(fieldSystem);
    } else if (newSpecies == species) {
        newSpecies = species;
        newLevel = level;
        RadarChain_Increment(fieldSystem);
    } else {
        RadarChain_Clear(fieldSystem->chain);
    }

    CreateWildMon(newSpecies, newLevel, partyDest, encounterFieldParams, mon, battleParams);
    return TRUE;
}

void CreateWildMon_HoneyTree(FieldSystem *fieldSystem, FieldBattleDTO *battleParams)
{
    Pokemon *firstPartyMon;

    int species = HoneyTree_GetSpecies(fieldSystem);

    Party *playerParty = SaveData_GetParty(fieldSystem->saveData);
    firstPartyMon = Party_GetPokemonBySlotIndex(playerParty, 0);

    WildEncounters_FieldParams encounterFieldParams;
    InitEncounterFieldParams(fieldSystem, firstPartyMon, NULL, &encounterFieldParams);

    u8 levelVariance = 15 - 5 + 1;

    u8 level = 5 + LCRNG_RandMod(levelVariance);

    if (!encounterFieldParams.isFirstMonEgg && (encounterFieldParams.firstMonAbility == ABILITY_HUSTLE || encounterFieldParams.firstMonAbility == ABILITY_VITAL_SPIRIT || encounterFieldParams.firstMonAbility == ABILITY_PRESSURE)) {
        if (LCRNG_RandMod(2) == 0) {
            (void)0;
        } else {
            level = 15;
        }
    }

    HoneyTree_Unslather(fieldSystem);
    battleParams->battleStatusMask |= BATTLE_STATUS_HONEY_TREE;
    CreateWildMon(species, level, 1, &encounterFieldParams, firstPartyMon, battleParams);

    return;
}

void CreateWildMon_Scripted(FieldSystem *fieldSystem, u16 species, u8 level, FieldBattleDTO *battleParams)
{
    Party *playerParty = SaveData_GetParty(fieldSystem->saveData);
    Pokemon *firstPartyMon = Party_GetPokemonBySlotIndex(playerParty, 0);

    WildEncounters_FieldParams encounterFieldParams;
    InitEncounterFieldParams(fieldSystem, firstPartyMon, NULL, &encounterFieldParams);

    CreateWildMon(species, level, 1, &encounterFieldParams, firstPartyMon, battleParams);
    return;
}

BOOL WildEncounters_TileHasEncounterRate(FieldSystem *fieldSystem, u8 tileBehavior)
{
    int encounterRate = 0;

    if (TileBehavior_HasEncounters(tileBehavior)) {
        if (TileBehavior_IsSurfable(tileBehavior)) {
            encounterRate = GetSurfEncounterRate(fieldSystem);
        } else {
            encounterRate = GetGrassEncounterRate(fieldSystem);
        }
    }

    if (encounterRate) {
        return TRUE;
    } else {
        return FALSE;
    }
}

static int GetGrassEncounterRate(FieldSystem *fieldSystem)
{
    WildEncounters *encounterData = MapHeaderData_GetWildEncounters(fieldSystem);
    return encounterData->grassEncounters.encounterRate;
}

static int GetSurfEncounterRate(FieldSystem *fieldSystem)
{
    WildEncounters *encounterData = MapHeaderData_GetWildEncounters(fieldSystem);
    return encounterData->surfEncounters.encounterRate;
}

static int GetFishingEncounterRate(FieldSystem *fieldSystem, const int fishingRodType)
{
    WildEncounters *encounterData = MapHeaderData_GetWildEncounters(fieldSystem);

    switch (fishingRodType) {
    case FISHING_TYPE_OLD_ROD:
        return encounterData->oldRodEncounters.encounterRate;
    case FISHING_TYPE_GOOD_ROD:
        return encounterData->goodRodEncounters.encounterRate;
    case FISHING_TYPE_SUPER_ROD:
        return encounterData->superRodEncounters.encounterRate;
    default:
        GF_ASSERT(FALSE);
        return FALSE;
    }
}

// assigns to encounterSlot the index of a slot in encounterTable that contains a mon of type.
static BOOL ForceMatchingTypeEncounterSlot(const EncounterSlot *encounterTable, const u8 maxEncounters, const u8 type, u8 *encounterSlot)
{
    u8 typeMatchingSlots[MAX_GRASS_ENCOUNTERS];
    u8 i;

    for (i = 0; i < MAX_GRASS_ENCOUNTERS; i++) {
        typeMatchingSlots[i] = 0;
    }

    u8 numMonsOfType = 0;

    for (i = 0; i < maxEncounters; i++) {
        u8 type1 = SpeciesData_GetSpeciesValue(encounterTable[i].species, SPECIES_DATA_TYPE_1);
        u8 type2 = SpeciesData_GetSpeciesValue(encounterTable[i].species, SPECIES_DATA_TYPE_2);

        if (type1 == type || type2 == type) {
            typeMatchingSlots[numMonsOfType++] = i;
        }
    }

    if (numMonsOfType == 0 || numMonsOfType == maxEncounters) {
        return FALSE;
    }

    *encounterSlot = typeMatchingSlots[LCRNG_Next() % numMonsOfType];
    return TRUE;
}

// 50% chance to force encounterSlot to correspond to a mon of type if one exists and the lead mon has ability
static BOOL TryGetSlotForTypeMatchAbility(Pokemon *unused, const WildEncounters_FieldParams *encounterFieldParams, const EncounterSlot *encounterTable, const u8 maxEncounters, const u8 type, const u8 ability, u8 *encounterSlot)
{
    if (!encounterFieldParams->isFirstMonEgg && encounterFieldParams->firstMonAbility == ability && LCRNG_RandMod(2) == 0) {
        return ForceMatchingTypeEncounterSlot(encounterTable, maxEncounters, type, encounterSlot);
    }

    return FALSE;
}

static u8 ModifyEncounterRateWithFieldParams(const BOOL isFishingEncounter, const u8 encounterRate, const WildEncounters_FieldParams *encounterFieldParams, const u32 weatherEffect, Pokemon *unused)
{
    int newEncRate = encounterRate;

    if (!encounterFieldParams->isFirstMonEgg) {
        if (isFishingEncounter) {
            if (encounterFieldParams->firstMonAbility == ABILITY_STICKY_HOLD || encounterFieldParams->firstMonAbility == ABILITY_SUCTION_CUPS) {
                newEncRate * 2; // BUG: Abilities do not Increase Fishing Encounter Rate (see docs/bugs_and_glitches.md)
            }
        } else {
            if (encounterFieldParams->firstMonAbility == ABILITY_ARENA_TRAP || encounterFieldParams->firstMonAbility == ABILITY_NO_GUARD || encounterFieldParams->firstMonAbility == ABILITY_ILLUMINATE) {
                newEncRate *= 2;
            } else if (encounterFieldParams->firstMonAbility == ABILITY_SAND_VEIL) {
                if (weatherEffect == OVERWORLD_WEATHER_SANDSTORM) {
                    newEncRate /= 2;
                }
            } else if (encounterFieldParams->firstMonAbility == ABILITY_SNOW_CLOAK) {
                if (weatherEffect == OVERWORLD_WEATHER_SNOWING || weatherEffect == OVERWORLD_WEATHER_HEAVY_SNOW || weatherEffect == OVERWORLD_WEATHER_BLIZZARD) {
                    newEncRate /= 2;
                }
            } else if (encounterFieldParams->firstMonAbility == ABILITY_WHITE_SMOKE || encounterFieldParams->firstMonAbility == ABILITY_QUICK_FEET || encounterFieldParams->firstMonAbility == ABILITY_STENCH) {
                newEncRate /= 2;
            }
        }

        if (newEncRate > 100) {
            newEncRate = 100;
        }
    }

    return newEncRate;
}

static BOOL FirstMonAbilityPreventsEncounter(const WildEncounters_FieldParams *encounterFieldParams, Pokemon *firstMon, const u8 wildLevel)
{
    if (encounterFieldParams->ignoreAbilityBlock) {
        return FALSE;
    }

    if (!encounterFieldParams->isFirstMonEgg && (encounterFieldParams->firstMonAbility == ABILITY_KEEN_EYE || encounterFieldParams->firstMonAbility == ABILITY_INTIMIDATE)) {
        u8 leadLevel = Pokemon_GetValue(firstMon, MON_DATA_LEVEL, NULL);

        if (leadLevel <= 5) {
            return FALSE;
        }

        if (wildLevel <= leadLevel - 5 && LCRNG_RandMod(2) == 0) {
            return TRUE;
        }
    }

    return FALSE;
}

static void CreateWildSingleBattle(FieldSystem *fieldSystem, const BOOL safariGameActive, FieldBattleDTO **battleParams)
{
    if (!safariGameActive) {
        *battleParams = FieldBattleDTO_New(HEAP_ID_FIELD2, (0x0 | 0x0));
    } else {
        u16 *safariBallsCount = FieldOverworldState_GetSafariBallCount(SaveData_GetFieldOverworldState(fieldSystem->saveData));
        *battleParams = FieldBattleDTO_NewSafari(HEAP_ID_FIELD2, *safariBallsCount);
    }
}

static void WildEncounters_ReplaceGreatMarshDailyEncounters(FieldSystem *fieldSystem, const BOOL safariGameActive, const BOOL nationalDexObtained, EncounterSlot *encTable)
{
    if (safariGameActive) {
        ReplaceGreatMarshDailyEncounters(SpecialEncounter_GetDailyMon(SaveData_GetSpecialEncounters(fieldSystem->saveData), DAILY_MARSH), nationalDexObtained, fieldSystem->location->mapId, &encTable[6].species, &encTable[7].species);
    }
}

static BOOL RepelPreventsEncounter(const u8 wildLevel, const WildEncounters_FieldParams *encounterFieldParams)
{
    return encounterFieldParams->repelActive && encounterFieldParams->firstBattlerLevel > wildLevel;
}

static void AddRoamerToEnemyParty(const u32 trainerID, Roamer *roamer, FieldBattleDTO *battle)
{
    Pokemon *mon = Pokemon_New(HEAP_ID_FIELD1);
    int roamerSpecies = Roamer_GetData(roamer, ROAMER_DATA_SPECIES);
    u8 roamerLevel = Roamer_GetData(roamer, ROAMER_DATA_LEVEL);
    u32 roamerCombinedIVs = Roamer_GetData(roamer, ROAMER_DATA_IVS);
    u32 roamerPersonality = Roamer_GetData(roamer, ROAMER_DATA_PERSONALITY);
    u32 roamerStatusCondition = Roamer_GetData(roamer, ROAMER_DATA_STATUS);
    u16 roamerCurrentHP = Roamer_GetData(roamer, ROAMER_DATA_CURRENT_HP);

    Pokemon_InitAndCalcStats(mon, roamerSpecies, roamerLevel, roamerCombinedIVs, roamerPersonality);
    Pokemon_SetValue(mon, MON_DATA_OT_ID, &trainerID);
    Pokemon_SetValue(mon, MON_DATA_STATUS, &roamerStatusCondition);
    Pokemon_SetValue(mon, MON_DATA_HP, &roamerCurrentHP);

    GF_ASSERT(Party_AddPokemon(battle->parties[1], mon));
    Heap_Free(mon);
}

// 50% chance to encounter a roamer if there is one on the current map.
// If there are multiple on the same map, picks one randomly.
static BOOL TryEncounterRoamer(FieldSystem *fieldSystem, Roamer **encounteredRoamer)
{
    Roamer *roamers[ROAMING_SLOT_MAX];

    u8 numRoamersOnMap = 0;
    SpecialEncounter *speEnc = SaveData_GetSpecialEncounters(fieldSystem->saveData);

    for (u8 slot = 0; slot < ROAMING_SLOT_MAX; slot++) {
        int roamerMapId = RoamingPokemon_GetRouteFromId(SpecialEncounter_GetRoamerRouteIndex(speEnc, slot));

        if (SpecialEncounter_IsRoamerActive(speEnc, slot) && roamerMapId == fieldSystem->location->mapId) {
            roamers[numRoamersOnMap] = SpecialEncounter_GetRoamer(speEnc, slot);
            numRoamersOnMap++;
        }
    }

    if (numRoamersOnMap == 0) {
        return FALSE;
    } else if (LCRNG_RandMod(2) == 0) {
        return FALSE;
    }

    if (numRoamersOnMap > 1) {
        *encounteredRoamer = roamers[LCRNG_RandMod(numRoamersOnMap)];
    } else {
        *encounteredRoamer = roamers[0];
    }

    return TRUE;
}

static BOOL AddWildMonToParty(const int partySlot, const WildEncounters_FieldParams *encounterFieldParams, Pokemon *mon, FieldBattleDTO *battleParams)
{
    int hasCompoundEyes = 0;

    if (encounterFieldParams->isFirstMonEgg == FALSE && encounterFieldParams->firstMonAbility == ABILITY_COMPOUND_EYES) {
        hasCompoundEyes = 1;
    }

    Pokemon_GiveHeldItem(mon, battleParams->battleType, hasCompoundEyes);

    u8 form;

    BOOL setForm = FALSE;
    int species = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);

    if (species == SPECIES_SHELLOS) {
        setForm = TRUE;

        if (!encounterFieldParams->encounterRatesForms[0]) {
            form = 0; // west
        } else {
            form = 1; // east
        }
    } else if (species == SPECIES_GASTRODON) {
        setForm = TRUE;

        if (!encounterFieldParams->encounterRatesForms[1]) {
            form = 0; // west
        } else {
            form = 1; // east
        }
    } else if (species == SPECIES_UNOWN) {
        setForm = TRUE;

        u8 availableUnownForms = WildEncounters_UnownTables[encounterFieldParams->unownTableID].numberForms;
        form = WildEncounters_UnownTables[encounterFieldParams->unownTableID].forms[LCRNG_Next() % availableUnownForms];
    }

    if (setForm) {
        Pokemon_SetValue(mon, MON_DATA_FORM, &form);
    }

    return Party_AddPokemon(battleParams->parties[partySlot], mon);
}

static u8 TryFindHigherLevelSlot(const EncounterSlot *encounterTable, const WildEncounters_FieldParams *encounterFieldParams, const u8 encounterSlot)
{
    if (!encounterFieldParams->isFirstMonEgg && (encounterFieldParams->firstMonAbility == ABILITY_VITAL_SPIRIT || encounterFieldParams->firstMonAbility == ABILITY_HUSTLE || encounterFieldParams->firstMonAbility == ABILITY_PRESSURE)) {
        if (LCRNG_RandMod(2) == 0) {
            return encounterSlot;
        }

        u8 newSlot = encounterSlot;

        for (u8 i = 0; i < MAX_GRASS_ENCOUNTERS; i++) {
            if (encounterTable[i].species == encounterTable[newSlot].species && encounterTable[i].maxLevel > encounterTable[newSlot].maxLevel) {
                newSlot = i;
            }
        }

        return newSlot;
    }

    return encounterSlot;
}

static void InitEncounterFieldParams(FieldSystem *fieldSystem, Pokemon *firstPartyMon, WildEncounters *encounterData, WildEncounters_FieldParams *encounterFieldParams)
{
    if (Pokemon_GetValue(firstPartyMon, MON_DATA_IS_EGG, NULL) == FALSE) {
        encounterFieldParams->isFirstMonEgg = FALSE;
        encounterFieldParams->firstMonAbility = Pokemon_GetValue(firstPartyMon, MON_DATA_ABILITY, NULL);
    } else {
        encounterFieldParams->isFirstMonEgg = TRUE;
        encounterFieldParams->firstMonAbility = ABILITY_BAD_DREAMS; // ABILITY_BAD_DREAMS seemingly standing in for ABILITY_NONE. Bad Dreams doesn't have a field effect anyway.
    }

    encounterFieldParams->firstBattlerLevel = 0;
    encounterFieldParams->repelActive = FALSE;
    encounterFieldParams->ignoreAbilityBlock = FALSE;

    if (encounterData != NULL) {
        encounterFieldParams->encounterRatesForms[0] = encounterData->encounterRatesForms[0];
        encounterFieldParams->encounterRatesForms[1] = encounterData->encounterRatesForms[1];

        if (encounterData->unownTableID != 0) {
            GF_ASSERT(encounterData->unownTableID <= 8);

            encounterFieldParams->unownTableID = encounterData->unownTableID - 1;
        } else {
            encounterFieldParams->unownTableID = 0;
        }
    }

    encounterFieldParams->trainerID = TrainerInfo_ID(SaveData_GetTrainerInfo(fieldSystem->saveData));
}
