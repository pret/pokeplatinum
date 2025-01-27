#include "overlay006/ov6_02240C9C.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle.h"
#include "constants/forms.h"
#include "constants/overworld_weather.h"
#include "constants/species.h"
#include "consts/abilities.h"
#include "consts/gender.h"
#include "consts/items.h"
#include "consts/pokemon.h"

#include "struct_defs/struct_0202D7B0.h"
#include "struct_defs/struct_0206C638.h"

#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "overlay005/ov5_021EFB0C.h"
#include "overlay006/dual_slot_encounters.h"
#include "overlay006/great_marsh_daily_encounters.h"
#include "overlay006/ov6_02243218.h"
#include "overlay006/ov6_02246B74.h"
#include "overlay006/ov6_02247660.h"
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
#include "math.h"
#include "narc.h"
#include "party.h"
#include "player_avatar.h"
#include "pokedex.h"
#include "pokemon.h"
#include "pokeradar.h"
#include "roaming_pokemon.h"
#include "rtc.h"
#include "save_player.h"
#include "system_flags.h"
#include "trainer_data.h"
#include "trainer_info.h"
#include "unk_0202D7A8.h"
#include "unk_02054884.h"
#include "unk_02054D00.h"
#include "unk_020559DC.h"
#include "unk_0206AFE0.h"
#include "vars_flags.h"

typedef struct RadarEncounterData {
    int shakeType;
    BOOL unk_04;
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
    BOOL unk_08;
    u8 firstBattlerLevel;
    u8 isFirstMonEgg;
    u8 firstMonAbility;
    u8 unk_0F[2];
    u8 unownTableID;
} WildEncounters_FieldParams;

typedef struct UnownFormsGroup {
    int numberForms;
    const u8 *forms;
} UnownFormsGroup;

static BOOL ShouldGetRandomEncounter(FieldSystem *fieldSystem, const u32 param1, const u8 param2);
static u8 GetTileEncounterRateAndType(FieldSystem *fieldSystem, u8 tileBehavior, u8 *encounterType);
static BOOL ov6_022418B4(FieldSystem *fieldSystem, u32 param1);
static BOOL CheckEncounterRateSuccess(FieldSystem *fieldSystem, u32 param1);
static BOOL ov6_0224222C(Pokemon *param0, const WildEncounters_FieldParams *param1, const EncounterSlot *param2, const u8 param3, const u8 param4, const u8 param5, u8 *param6);
static BOOL FirstMonAbilityPreventsEncounter(const WildEncounters_FieldParams *param0, Pokemon *param1, const u8 param2);
static int GetGrassEncounterRate(FieldSystem *fieldSystem);
static int GetSurfEncounterRate(FieldSystem *fieldSystem);
static int GetFishingEncounterRate(FieldSystem *fieldSystem, const int param1);
static BOOL TryGenerateGrassEncounter_WithRadar(FieldSystem *fieldSystem, Pokemon *param1, FieldBattleDTO *param2, WildEncounters *encounterData, EncounterSlot *param4, const WildEncounters_FieldParams *param5, const RadarEncounterData *param6);
static BOOL TryGenerateGrassEncounter_DoubleBattle(FieldSystem *fieldSystem, Pokemon *param1, FieldBattleDTO *param2, EncounterSlot *param3, const WildEncounters_FieldParams *param4);
static BOOL TryGenerateSurfEncounter(FieldSystem *fieldSystem, Pokemon *param1, FieldBattleDTO *param2, EncounterSlot *param3, const WildEncounters_FieldParams *param4);
static BOOL TryGenerateFishingEncounter(FieldSystem *fieldSystem, Pokemon *param1, FieldBattleDTO *param2, EncounterSlot *param3, const WildEncounters_FieldParams *param4, const int param5);
static BOOL TryGenerateWildMon(Pokemon *param0, const int param1, const WildEncounters_FieldParams *param2, const EncounterSlot *param3, const u8 encounterType, const int param5, FieldBattleDTO *param6);
static BOOL ov6_02241F7C(FieldSystem *fieldSystem, Pokemon *param1, const WildEncounters_FieldParams *param2, const EncounterSlot *param3, const int param4, FieldBattleDTO *param5, const int param6, const int param7);
static BOOL ov6_02241F2C(const int param0, const int param1, const int param2, const BOOL param3, const u32 param4, const WildEncounters_FieldParams *param5, Pokemon *param6, FieldBattleDTO *param7);
static u8 ModifyEncounterRateWithFieldParams(const BOOL isFishingEncounter, const u8 encounterRate, const WildEncounters_FieldParams *fieldParams, const u32 weatherEffect, Pokemon *unused);
static void CreateWildSingleBattle(FieldSystem *fieldSystem, const BOOL param1, FieldBattleDTO **param2);
static void WildEncounters_ReplaceGreatMarshDailyEncounters(FieldSystem *fieldSystem, const BOOL safariGameActive, const BOOL param2, EncounterSlot *encTable);
static BOOL RepelPreventsEncounter(const u8 param0, const WildEncounters_FieldParams *param1);
static void AddRoamerToEnemyParty(const u32 param0, Roamer *param1, FieldBattleDTO *param2);
static BOOL TryEncounterRoamer(FieldSystem *fieldSystem, Roamer **param1);
static BOOL ov6_02242514(const int param0, const WildEncounters_FieldParams *param1, Pokemon *param2, FieldBattleDTO *param3);
static u8 ov6_022425D4(const EncounterSlot *param0, const WildEncounters_FieldParams *param1, const u8 param2);
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
            int *trophyGardenData = NARC_AllocAtEndAndReadWholeMemberByIndexPair(NARC_INDEX_ARC__ENCDATA_EX, 8, HEAP_ID_FIELD);

            if (index1 != TROPHY_GARDEN_SLOT_NONE) {
                *trophySlot1 = trophyGardenData[index1];
            }

            if (index2 != TROPHY_GARDEN_SLOT_NONE) {
                *trophySlot2 = trophyGardenData[index2];
            }

            Heap_FreeToHeap(trophyGardenData);
        }
    }
}

BOOL WildEncounter_TryWildEncounter(FieldSystem *fieldSystem)
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
    tileBehavior = FieldSystem_GetTileBehavior(fieldSystem, playerX, playerZ);

    u8 encounterRate = GetTileEncounterRateAndType(fieldSystem, tileBehavior, &encounterType);

    if (encounterRate == 0) {
        return FALSE;
    }

    Party *party = Party_GetFromSavedata(fieldSystem->saveData);
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

    if (!PokeRadar_ShouldDoRadarEncounter(playerX, playerZ, fieldSystem, fieldSystem->chain, &radarData.shakeType, &radarData.unk_04, &radarData.isShiny)) {
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

    if (!withPartner && !radarData.isRadarEncounter) {
        Roamer *roamer;

        if (TryEncounterRoamer(fieldSystem, &roamer)) {
            if (!RepelPreventsEncounter(Roamer_GetData(roamer, ROAMER_DATA_LEVEL), &encounterFieldParams)) {
                battleParams = FieldBattleDTO_New(HEAP_ID_FIELDMAP, BATTLE_TYPE_ROAMER);

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
        battleParams = FieldBattleDTO_New(HEAP_ID_FIELDMAP, BATTLE_TYPE_AI_PARTNER);
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
            battleParams->trainerIDs[2] = sub_0206B034(SaveData_GetVarsFlags(fieldSystem->saveData));
            Trainer_Encounter(battleParams, fieldSystem->saveData, HEAP_ID_FIELDMAP);
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

    GF_ASSERT(GF_heap_c_dummy_return_true(HEAP_ID_FIELD));
    GF_ASSERT(GF_heap_c_dummy_return_true(HEAP_ID_FIELDMAP));

    if (!gettingEncounter) {
        FieldBattleDTO_Free(battleParams);
    }

    fieldSystem->unk_78.unk_00 = 0;

    return gettingEncounter;
}

BOOL ov6_0224106C(FieldSystem *fieldSystem, const int fishingRodType, FieldBattleDTO **battleParams)
{
    EncounterSlot v3[MAX_GRASS_ENCOUNTERS];

    u8 encounterRate = GetFishingEncounterRate(fieldSystem, fishingRodType);

    if (encounterRate == 0) {
        return FALSE;
    }

    Party *party = Party_GetFromSavedata(fieldSystem->saveData);
    Pokemon *firstPartyMon = Party_GetPokemonBySlotIndex(party, 0);
    WildEncounters_FieldParams encounterFieldParams;
    InitEncounterFieldParams(fieldSystem, firstPartyMon, NULL, &encounterFieldParams);
    encounterRate = ModifyEncounterRateWithFieldParams(TRUE, encounterRate, &encounterFieldParams, FieldOverworldState_GetWeather(SaveData_GetFieldOverworldState(fieldSystem->saveData)), firstPartyMon);

    if (LCRNG_RandMod(100) >= encounterRate) {
        return FALSE;
    }

    BOOL v2 = SystemFlag_CheckSafariGameActive(SaveData_GetVarsFlags(fieldSystem->saveData));

    CreateWildSingleBattle(fieldSystem, v2, battleParams);

    FieldBattleDTO_Init(*battleParams, fieldSystem);
    FieldBattleDTO_SetWaterTerrain(*battleParams);

    if (MapHeader_HasFeebasTiles(fieldSystem->location->mapId) && ov6_02247660(fieldSystem)) {
        int species;
        u8 maxLevel, minLevel;

        ov6_02247794(&maxLevel, &minLevel);
        ov6_022477A0(&species);

        for (u8 i = 0; i < MAX_WATER_ENCOUNTERS; i++) {
            v3[i].species = species;
            v3[i].maxLevel = maxLevel;
            v3[i].minLevel = minLevel;
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
            v3[i].species = fishingEncounters[i].species;
            v3[i].maxLevel = fishingEncounters[i].maxLevel;
            v3[i].minLevel = fishingEncounters[i].minLevel;
        }
    }

    if (!TryGenerateFishingEncounter(fieldSystem, firstPartyMon, *battleParams, v3, &encounterFieldParams, fishingRodType)) {
        return FALSE;
    }

    return TRUE;
}

BOOL ov6_022411C8(FieldSystem *fieldSystem, FieldTask *param1)
{
    FieldBattleDTO *battleParams;
    Pokemon *firstPartyMon;
    u8 encounterType;
    BOOL v6;
    BOOL safariGameActive;
    BOOL v8;
    RadarEncounterData v9;
    EncounterSlot v12[MAX_GRASS_ENCOUNTERS];
    WildEncounters_FieldParams encounterFieldParams;

    int playerX = Player_GetXPos(fieldSystem->playerAvatar);
    int playerZ = Player_GetZPos(fieldSystem->playerAvatar);
    u8 v4 = FieldSystem_GetTileBehavior(fieldSystem, playerX, playerZ);

    u8 encounterRate = GetTileEncounterRateAndType(fieldSystem, v4, &encounterType);

    if (encounterRate == 0) {
        return FALSE;
    }

    Party *party = Party_GetFromSavedata(fieldSystem->saveData);
    WildEncounters *encounterData = MapHeaderData_GetWildEncounters(fieldSystem);
    firstPartyMon = Party_GetPokemonBySlotIndex(party, 0);

    InitEncounterFieldParams(fieldSystem, firstPartyMon, encounterData, &encounterFieldParams);

    encounterFieldParams.repelActive = FALSE;
    encounterFieldParams.unk_08 = TRUE;

    memset(&v9, 0, sizeof(RadarEncounterData));

    if (SystemFlag_CheckHasPartner(SaveData_GetVarsFlags(fieldSystem->saveData))) {
        v6 = TRUE;
    } else {
        v6 = FALSE;
    }

    if (!v6) {
        Roamer *v15;

        if (TryEncounterRoamer(fieldSystem, &v15)) {
            battleParams = FieldBattleDTO_New(11, BATTLE_TYPE_ROAMER);

            FieldBattleDTO_Init(battleParams, fieldSystem);
            AddRoamerToEnemyParty(encounterFieldParams.trainerID, v15, battleParams);
            RadarChain_Clear(fieldSystem->chain);
            Encounter_StartVsWild(fieldSystem, param1, battleParams);
            return TRUE;
        }
    }

    if (!v6) {
        safariGameActive = SystemFlag_CheckSafariGameActive(SaveData_GetVarsFlags(fieldSystem->saveData));
        CreateWildSingleBattle(fieldSystem, safariGameActive, &battleParams);
    } else {
        battleParams = FieldBattleDTO_New(11, BATTLE_TYPE_AI_PARTNER);
    }

    FieldBattleDTO_Init(battleParams, fieldSystem);

    if (encounterType == ENCOUNTER_TYPE_GRASS) {
        for (int i = 0; i < MAX_GRASS_ENCOUNTERS; i++) {
            v12[i].species = encounterData->grassEncounters.encounters[i].species;
            v12[i].maxLevel = encounterData->grassEncounters.encounters[i].level;
            v12[i].minLevel = encounterData->grassEncounters.encounters[i].level;
        }

        BOOL nationalDexObtained = Pokedex_IsNationalDexObtained(SaveData_GetPokedex(FieldSystem_GetSaveData(fieldSystem)));

        WildEncounters_ReplaceTimedEncounters(encounterData, &v12[2].species, &v12[3].species);
        WildEncounters_ReplaceSwarmEncounters(fieldSystem, encounterData, &v12[0].species, &v12[1].species);
        WildEncounters_ReplaceTrophyGardenEncounters(fieldSystem, nationalDexObtained, &v12[6].species, &v12[7].species);
        WildEncounters_ReplaceDualSlotEncounters(encounterData, nationalDexObtained, &v12[8].species, &v12[9].species);

        if (!v6) {
            WildEncounters_ReplaceGreatMarshDailyEncounters(fieldSystem, safariGameActive, nationalDexObtained, v12);

            v8 = TryGenerateGrassEncounter_WithRadar(fieldSystem, firstPartyMon, battleParams, encounterData, v12, &encounterFieldParams, &v9);
        } else {
            battleParams->trainerIDs[2] = sub_0206B034(SaveData_GetVarsFlags(fieldSystem->saveData));
            Trainer_Encounter(battleParams, fieldSystem->saveData, 11);
            v8 = TryGenerateGrassEncounter_DoubleBattle(fieldSystem, firstPartyMon, battleParams, v12, &encounterFieldParams);
        }
    } else if (encounterType == ENCOUNTER_TYPE_SURF) {
        for (int i = 0; i < MAX_WATER_ENCOUNTERS; i++) {
            v12[i].species = encounterData->surfEncounters.encounters[i].species;
            v12[i].maxLevel = encounterData->surfEncounters.encounters[i].maxLevel;
            v12[i].minLevel = encounterData->surfEncounters.encounters[i].minLevel;
        }

        v8 = TryGenerateSurfEncounter(fieldSystem, firstPartyMon, battleParams, v12, &encounterFieldParams);
    } else {
        GF_ASSERT(FALSE);
        return FALSE;
    }

    if (v8) {
        Encounter_StartVsWild(fieldSystem, param1, battleParams);
    } else {
        GF_ASSERT(FALSE);
    }

    fieldSystem->unk_78.unk_00 = 0;
    return TRUE;
}

BOOL ov6_022413E4(FieldSystem *fieldSystem, FieldBattleDTO **battleParams)
{
    Pokemon *firstPartyMon;
    u8 encounterType;
    BOOL v5;
    BOOL v6;
    BOOL v7;
    BOOL safariGameActive;
    RadarEncounterData v9;
    EncounterSlot v12[MAX_GRASS_ENCOUNTERS];
    WildEncounters_FieldParams encounterFieldParams;

    *battleParams = NULL;

    int playerX = Player_GetXPos(fieldSystem->playerAvatar);
    int playerZ = Player_GetZPos(fieldSystem->playerAvatar);
    u8 v3 = FieldSystem_GetTileBehavior(fieldSystem, playerX, playerZ);

    u8 encounterRate = GetTileEncounterRateAndType(fieldSystem, v3, &encounterType);

    if (encounterRate == 0) {
        return FALSE;
    }

    Party *party = Party_GetFromSavedata(fieldSystem->saveData);
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

    if (ShouldGetRandomEncounter(fieldSystem, encounterRate, v3)) {
        v5 = TRUE;
    } else {
        v5 = FALSE;
    }

    memset(&v9, 0, sizeof(RadarEncounterData));
    v9.isRadarEncounter = FALSE;

    if (SystemFlag_CheckHasPartner(SaveData_GetVarsFlags(fieldSystem->saveData))) {
        v7 = TRUE;
    } else {
        v7 = FALSE;
    }

    if (!v7) {
        Roamer *v16;

        if (TryEncounterRoamer(fieldSystem, &v16)) {
            if (!RepelPreventsEncounter(Roamer_GetData(v16, ROAMER_DATA_LEVEL), &encounterFieldParams)) {
                *battleParams = FieldBattleDTO_New(11, BATTLE_TYPE_ROAMER);

                FieldBattleDTO_Init(*battleParams, fieldSystem);
                AddRoamerToEnemyParty(encounterFieldParams.trainerID, v16, *battleParams);
                RadarChain_Clear(fieldSystem->chain);
                return TRUE;
            } else {
                return FALSE;
            }
        }
    }

    if (!v7) {
        safariGameActive = SystemFlag_CheckSafariGameActive(SaveData_GetVarsFlags(fieldSystem->saveData));
        CreateWildSingleBattle(fieldSystem, safariGameActive, battleParams);
    } else {
        *battleParams = FieldBattleDTO_New(11, BATTLE_TYPE_AI_PARTNER);
    }

    FieldBattleDTO_Init(*battleParams, fieldSystem);

    if (encounterType == ENCOUNTER_TYPE_GRASS) {
        for (int i = 0; i < MAX_GRASS_ENCOUNTERS; i++) {
            v12[i].species = encounterData->grassEncounters.encounters[i].species;
            v12[i].maxLevel = encounterData->grassEncounters.encounters[i].level;
            v12[i].minLevel = encounterData->grassEncounters.encounters[i].level;
        }

        BOOL nationalDexObtained = Pokedex_IsNationalDexObtained(SaveData_GetPokedex(FieldSystem_GetSaveData(fieldSystem)));

        WildEncounters_ReplaceTimedEncounters(encounterData, &v12[2].species, &v12[3].species);
        WildEncounters_ReplaceSwarmEncounters(fieldSystem, encounterData, &v12[0].species, &v12[1].species);
        WildEncounters_ReplaceTrophyGardenEncounters(fieldSystem, nationalDexObtained, &v12[6].species, &v12[7].species);
        WildEncounters_ReplaceDualSlotEncounters(encounterData, nationalDexObtained, &v12[8].species, &v12[9].species);

        if (!v7) {
            WildEncounters_ReplaceGreatMarshDailyEncounters(fieldSystem, safariGameActive, nationalDexObtained, v12);

            v6 = TryGenerateGrassEncounter_WithRadar(fieldSystem, firstPartyMon, *battleParams, encounterData, v12, &encounterFieldParams, &v9);
        } else {
            {
                (*battleParams)->trainerIDs[2] = sub_0206B034(SaveData_GetVarsFlags(fieldSystem->saveData));
                Trainer_Encounter(*battleParams, fieldSystem->saveData, 11);
            }
            v6 = TryGenerateGrassEncounter_DoubleBattle(fieldSystem, firstPartyMon, *battleParams, v12, &encounterFieldParams);
        }
    } else {
        GF_ASSERT(FALSE);
        FieldBattleDTO_Free(*battleParams);
        return FALSE;
    }

    if (!v6) {
        v5 = FALSE;
    }

    GF_ASSERT(GF_heap_c_dummy_return_true(4));
    GF_ASSERT(GF_heap_c_dummy_return_true(11));

    if (!v5) {
        FieldBattleDTO_Free(*battleParams);
    } else {
        fieldSystem->unk_78.unk_00 = 0;
    }

    return v5;
}

static BOOL TryGenerateGrassEncounter_WithRadar(FieldSystem *fieldSystem, Pokemon *firstPartyMon, FieldBattleDTO *battleParams, WildEncounters *encounterData, EncounterSlot *encounterTable, const WildEncounters_FieldParams *encounterFieldParams, const RadarEncounterData *param6)
{
    BOOL v0;

    if (param6->isRadarEncounter) {
        int species, level;

        if (param6->shakeType == 1) {
            encounterTable[4].species = encounterData->radarEncounters[0];
            encounterTable[5].species = encounterData->radarEncounters[1];
            encounterTable[10].species = encounterData->radarEncounters[2];
            encounterTable[11].species = encounterData->radarEncounters[3];
        }

        GetRadarMon(fieldSystem->chain, &species, &level);

        if (param6->unk_04 == 1) {
            TrainerInfo *v3 = SaveData_GetTrainerInfo(FieldSystem_GetSaveData(fieldSystem));
            v0 = ov6_02241F2C(species, level, 1, param6->isShiny, TrainerInfo_ID(v3), encounterFieldParams, firstPartyMon, battleParams);
        } else {
            v0 = ov6_02241F7C(fieldSystem, firstPartyMon, encounterFieldParams, encounterTable, 1, battleParams, species, level);
        }

        if (v0) {
            {
                int playerX = Player_GetXPos(fieldSystem->playerAvatar);
                int playerZ = Player_GetZPos(fieldSystem->playerAvatar);

                RadarSpawnPatches(fieldSystem, playerX, playerZ, fieldSystem->chain);
            }
        }
    } else {
        v0 = TryGenerateWildMon(firstPartyMon, 0xff, encounterFieldParams, encounterTable, ENCOUNTER_TYPE_GRASS, 1, battleParams);

        if (v0) {
            RadarChain_Clear(fieldSystem->chain);
        }
    }

    return v0;
}

static BOOL TryGenerateGrassEncounter_DoubleBattle(FieldSystem *fieldSystem, Pokemon *param1, FieldBattleDTO *param2, EncounterSlot *param3, const WildEncounters_FieldParams *param4)
{
    if (!TryGenerateWildMon(param1, 0xff, param4, param3, ENCOUNTER_TYPE_GRASS, 1, param2)) {
        return FALSE;
    }

    BOOL v0 = TryGenerateWildMon(param1, 0xff, param4, param3, ENCOUNTER_TYPE_GRASS, 3, param2);
    return v0;
}

static BOOL TryGenerateSurfEncounter(FieldSystem *fieldSystem, Pokemon *param1, FieldBattleDTO *param2, EncounterSlot *param3, const WildEncounters_FieldParams *param4)
{
    return TryGenerateWildMon(param1, 0xff, param4, param3, ENCOUNTER_TYPE_SURF, 1, param2);
}

static BOOL TryGenerateFishingEncounter(FieldSystem *fieldSystem, Pokemon *param1, FieldBattleDTO *param2, EncounterSlot *param3, const WildEncounters_FieldParams *param4, const int fishingRodType)
{
    return TryGenerateWildMon(param1, fishingRodType, param4, param3, ENCOUNTER_TYPE_FISHING, 1, param2);
}

static BOOL ShouldGetRandomEncounter(FieldSystem *fieldSystem, const u32 encounterRate, const u8 param2)
{
    u32 v1 = encounterRate << 8;

    if (!ov6_022418B4(fieldSystem, v1)) {
        fieldSystem->unk_78.unk_00++;

        if (LCRNG_RandMod(100) >= 5) {
            return FALSE;
        }
    }

    u8 v0 = 40;

    if (TileBehavior_IsVeryTallGrass(param2)) {
        v0 += 30;
    } else if (PlayerAvatar_GetPlayerState(fieldSystem->playerAvatar) == PLAYER_STATE_CYCLING) {
        v0 += 30;
    }

    v0 = ov6_02246B74(v0, sub_02055C40(fieldSystem));

    if (v0 > 100) {
        v0 = 100;
    }

    return LCRNG_RandMod(100) < v0 && CheckEncounterRateSuccess(fieldSystem, encounterRate);
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

static BOOL ov6_022418B4(FieldSystem *fieldSystem, u32 param1)
{
    param1 = (param1 / 10) >> 8;

    if (param1 > 8) {
        param1 = 8;
    }

    param1 = 8 - (param1);

    return fieldSystem->unk_78.unk_00 >= param1;
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

static u8 ov6_02241B40(const EncounterSlot *param0, const WildEncounters_FieldParams *encounterFieldParams)
{
    u8 v1;
    u8 minLevel, maxLevel;

    if (param0->maxLevel >= param0->minLevel) {
        minLevel = param0->minLevel;
        maxLevel = param0->maxLevel;
    } else {
        minLevel = param0->maxLevel;
        maxLevel = param0->minLevel;
    }

    u8 levelRange = maxLevel - minLevel + 1;
    v1 = LCRNG_Next() % levelRange;

    if (!encounterFieldParams->isFirstMonEgg && (encounterFieldParams->firstMonAbility == ABILITY_HUSTLE || encounterFieldParams->firstMonAbility == ABILITY_VITAL_SPIRIT || encounterFieldParams->firstMonAbility == ABILITY_PRESSURE)) {
        if (LCRNG_RandMod(2) == 0) {
            return minLevel + v1;
        }

        return maxLevel;
    }

    return minLevel + v1;
}

static void ov6_02241BAC(const u16 species, const u8 level, const int param2, const u32 param3, const WildEncounters_FieldParams *encounterFieldParams, Pokemon *firstPartyMon, FieldBattleDTO *battleParams)
{
    u8 firstMonGender;
    u8 firstMonNature;

    Pokemon *newEncounter = Pokemon_New(11);
    Pokemon_Init(newEncounter);

    BOOL abilityInEffect = FALSE;

    if (!encounterFieldParams->isFirstMonEgg) {
        if (encounterFieldParams->firstMonAbility == ABILITY_CUTE_CHARM) {
            u32 speciesGenderRatio = PokemonPersonalData_GetSpeciesValue(species, MON_DATA_PERSONAL_GENDER);

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

    Pokemon_InitWith(newEncounter, species, level, 32, TRUE, newEncounterPersonality, OTID_SET, encounterFieldParams->trainerID);

    GF_ASSERT(ov6_02242514(param2, encounterFieldParams, newEncounter, battleParams));
    Heap_FreeToHeap(newEncounter);
}

static void CreateWildMon(u16 species, u8 level, const int param2, const WildEncounters_FieldParams *encounterFieldParams, Pokemon *firstPartyMon, FieldBattleDTO *battleParams)
{
    Pokemon *newEncounter = Pokemon_New(HEAP_ID_FIELDMAP);
    Pokemon_Init(newEncounter);
    BOOL hasRandomGender = TRUE;

    u32 speciesGenderRatio = PokemonPersonalData_GetSpeciesValue(species, MON_DATA_PERSONAL_GENDER);

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

        GF_ASSERT(ov6_02242514(param2, encounterFieldParams, newEncounter, battleParams));
        Heap_FreeToHeap(newEncounter);
        return;
    }

    sub_02074044(newEncounter, species, level, 32, GetNatureForWildMon(firstPartyMon, encounterFieldParams));
    Pokemon_SetValue(newEncounter, MON_DATA_OT_ID, &encounterFieldParams->trainerID);

    GF_ASSERT(ov6_02242514(param2, encounterFieldParams, newEncounter, battleParams));
    Heap_FreeToHeap(newEncounter);
}

static BOOL TryGenerateWildMon(Pokemon *firstPartyMon, const int fishingRodType, const WildEncounters_FieldParams *encounterFieldParams, const EncounterSlot *param3, const u8 encounterType, const int param5, FieldBattleDTO *battleParams)
{
    BOOL v0;
    u8 encounterSlot = 0;
    u8 level = 0;

    switch (encounterType) {
    case ENCOUNTER_TYPE_GRASS:
        v0 = ov6_0224222C(firstPartyMon, encounterFieldParams, param3, MAX_GRASS_ENCOUNTERS, TYPE_STEEL, ABILITY_MAGNET_PULL, &encounterSlot);

        if (!v0) {
            v0 = ov6_0224222C(firstPartyMon, encounterFieldParams, param3, MAX_GRASS_ENCOUNTERS, TYPE_ELECTRIC, ABILITY_STATIC, &encounterSlot);

            if (!v0) {
                encounterSlot = GetGroundEncounterSlot();
            }
        }

        encounterSlot = ov6_022425D4(param3, encounterFieldParams, encounterSlot);
        level = param3[encounterSlot].maxLevel;
        break;
    case ENCOUNTER_TYPE_SURF:
        v0 = ov6_0224222C(firstPartyMon, encounterFieldParams, param3, MAX_WATER_ENCOUNTERS, TYPE_STEEL, ABILITY_MAGNET_PULL, &encounterSlot);
        v0 = ov6_0224222C(firstPartyMon, encounterFieldParams, param3, MAX_WATER_ENCOUNTERS, TYPE_ELECTRIC, ABILITY_STATIC, &encounterSlot);

        if (!v0) {
            encounterSlot = GetWaterEncounterSlot();
        }

        level = ov6_02241B40(&param3[encounterSlot], encounterFieldParams);
        break;
    case ENCOUNTER_TYPE_FISHING:
        v0 = ov6_0224222C(firstPartyMon, encounterFieldParams, param3, MAX_WATER_ENCOUNTERS, TYPE_STEEL, ABILITY_MAGNET_PULL, &encounterSlot);
        v0 = ov6_0224222C(firstPartyMon, encounterFieldParams, param3, MAX_WATER_ENCOUNTERS, TYPE_ELECTRIC, ABILITY_STATIC, &encounterSlot);

        if (!v0) {
            encounterSlot = GetRodEncounterSlot(fishingRodType);
        }

        level = ov6_02241B40(&param3[encounterSlot], encounterFieldParams);
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

    CreateWildMon(param3[encounterSlot].species, level, param5, encounterFieldParams, firstPartyMon, battleParams);
    return TRUE;
}

static BOOL ov6_02241F2C(const int param0, const int param1, const int param2, const BOOL param3, const u32 param4, const WildEncounters_FieldParams *encounterFieldParams, Pokemon *param6, FieldBattleDTO *battleParams)
{
    GF_ASSERT(param0 != 0);
    u8 v0 = param1;

    if (param3) {
        ov6_02241BAC(param0, v0, param2, param4, encounterFieldParams, param6, battleParams);
    } else {
        CreateWildMon(param0, v0, param2, encounterFieldParams, param6, battleParams);
    }

    return TRUE;
}

static BOOL ov6_02241F7C(FieldSystem *fieldSystem, Pokemon *param1, const WildEncounters_FieldParams *encounterFieldParams, const EncounterSlot *param3, const int param4, FieldBattleDTO *battleParams, const int species, const int level)
{
    u8 encounterSlot = 0;

    u8 v0 = ov6_0224222C(param1, encounterFieldParams, param3, MAX_GRASS_ENCOUNTERS, TYPE_STEEL, ABILITY_MAGNET_PULL, &encounterSlot);

    if (v0 == 0) {
        v0 = ov6_0224222C(param1, encounterFieldParams, param3, MAX_GRASS_ENCOUNTERS, TYPE_ELECTRIC, ABILITY_STATIC, &encounterSlot);

        if (v0 == 0) {
            encounterSlot = GetGroundEncounterSlot();
        }
    }

    u8 v2 = param3[encounterSlot].maxLevel;
    int v3 = param3[encounterSlot].species;

    if (species == 0) {
        SetRadarMon(fieldSystem->chain, v3, v2);
        sub_02069B74(fieldSystem);
    } else if (v3 == species) {
        v3 = species;
        v2 = level;
        sub_02069B74(fieldSystem);
    } else {
        RadarChain_Clear(fieldSystem->chain);
    }

    CreateWildMon(v3, v2, param4, encounterFieldParams, param1, battleParams);
    return TRUE;
}

void ov6_02242034(FieldSystem *fieldSystem, FieldBattleDTO *battleParams)
{
    Pokemon *v0;

    int v1 = ov5_021EFFE4(fieldSystem);

    Party *v4 = Party_GetFromSavedata(fieldSystem->saveData);
    v0 = Party_GetPokemonBySlotIndex(v4, 0);

    WildEncounters_FieldParams encounterFieldParams;
    InitEncounterFieldParams(fieldSystem, v0, NULL, &encounterFieldParams);

    u8 v5 = 15 - 5 + 1;

    u8 v3 = 5 + LCRNG_RandMod(v5);

    if (!encounterFieldParams.isFirstMonEgg && (encounterFieldParams.firstMonAbility == ABILITY_HUSTLE || encounterFieldParams.firstMonAbility == ABILITY_VITAL_SPIRIT || encounterFieldParams.firstMonAbility == ABILITY_PRESSURE)) {
        if (LCRNG_RandMod(2) == 0) {
            (void)0;
        } else {
            v3 = 15;
        }
    }

    ov5_021F0040(fieldSystem);
    battleParams->battleStatusMask |= BATTLE_STATUS_HONEY_TREE;
    CreateWildMon(v1, v3, 1, &encounterFieldParams, v0, battleParams);

    return;
}

void ov6_022420D4(FieldSystem *fieldSystem, u16 param1, u8 param2, FieldBattleDTO *param3)
{
    Party *v2 = Party_GetFromSavedata(fieldSystem->saveData);
    Pokemon *v0 = Party_GetPokemonBySlotIndex(v2, 0);

    WildEncounters_FieldParams encounterFieldParams;
    InitEncounterFieldParams(fieldSystem, v0, NULL, &encounterFieldParams);

    CreateWildMon(param1, param2, 1, &encounterFieldParams, v0, param3);
    return;
}

BOOL ov6_02242110(FieldSystem *fieldSystem, u8 param1)
{
    int encounterRate = 0;

    if (TileBehavior_HasEncounters(param1)) {
        if (TileBehavior_IsSurfable(param1)) {
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

static BOOL ov6_0224219C(const EncounterSlot *param0, const u8 maxEncounters, const u8 type, u8 *encounterSlot)
{
    u8 v0[MAX_GRASS_ENCOUNTERS];
    u8 v2;

    for (v2 = 0; v2 < MAX_GRASS_ENCOUNTERS; v2++) {
        v0[v2] = 0;
    }

    u8 v1 = 0;

    for (v2 = 0; v2 < maxEncounters; v2++) {
        u8 v3 = PokemonPersonalData_GetSpeciesValue(param0[v2].species, MON_DATA_PERSONAL_TYPE_1);
        u8 v4 = PokemonPersonalData_GetSpeciesValue(param0[v2].species, MON_DATA_PERSONAL_TYPE_2);

        if (v3 == type || v4 == type) {
            v0[v1++] = v2;
        }
    }

    if (v1 == 0 || v1 == maxEncounters) {
        return FALSE;
    }

    *encounterSlot = v0[LCRNG_Next() % v1];
    return TRUE;
}

static BOOL ov6_0224222C(Pokemon *param0, const WildEncounters_FieldParams *encounterFieldParams, const EncounterSlot *param2, const u8 maxEncounters, const u8 type, const u8 ability, u8 *encounterSlot)
{
    if (!encounterFieldParams->isFirstMonEgg && encounterFieldParams->firstMonAbility == ability && LCRNG_RandMod(2) == 0) {
        return ov6_0224219C(param2, maxEncounters, type, encounterSlot);
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
    if (encounterFieldParams->unk_08) {
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

static void CreateWildSingleBattle(FieldSystem *fieldSystem, const BOOL safariGameActive, FieldBattleDTO **param2)
{
    if (!safariGameActive) {
        *param2 = FieldBattleDTO_New(HEAP_ID_FIELDMAP, (0x0 | 0x0));
    } else {
        u16 *safariBallsCount = FieldOverworldState_GetSafariBallCount(SaveData_GetFieldOverworldState(fieldSystem->saveData));
        *param2 = FieldBattleDTO_NewSafari(HEAP_ID_FIELDMAP, *safariBallsCount);
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
    Pokemon *mon = Pokemon_New(HEAP_ID_FIELD);
    int roamerSpecies = Roamer_GetData(roamer, ROAMER_DATA_SPECIES);
    u8 roamerLevel = Roamer_GetData(roamer, ROAMER_DATA_LEVEL);
    u32 roamerCombinedIVs = Roamer_GetData(roamer, ROAMER_DATA_IVS);
    u32 roamerPersonality = Roamer_GetData(roamer, ROAMER_DATA_PERSONALITY);
    u32 roamerStatusCondition = Roamer_GetData(roamer, ROAMER_DATA_STATUS);
    u16 roamerCurrentHP = Roamer_GetData(roamer, ROAMER_DATA_CURRENT_HP);

    Pokemon_InitAndCalcStats(mon, roamerSpecies, roamerLevel, roamerCombinedIVs, roamerPersonality);
    Pokemon_SetValue(mon, MON_DATA_OT_ID, &trainerID);
    Pokemon_SetValue(mon, MON_DATA_STATUS_CONDITION, &roamerStatusCondition);
    Pokemon_SetValue(mon, MON_DATA_CURRENT_HP, &roamerCurrentHP);

    GF_ASSERT(Party_AddPokemon(battle->parties[1], mon));
    Heap_FreeToHeap(mon);
}

// 50% chance to encounter a roamer if there is one on the current map.
// If there are multiple on the same map, picks one randomly.
static BOOL TryEncounterRoamer(FieldSystem *fieldSystem, Roamer **param1)
{
    Roamer *roamers[ROAMING_SLOT_MAX];

    u8 numRoamersOnMap = 0;
    SpecialEncounter *speEnc = SaveData_GetSpecialEncounters(fieldSystem->saveData);

    for (u8 slot = 0; slot < ROAMING_SLOT_MAX; slot++) {
        int roamerMapId = RoamingPokemon_GetRouteFromId(SpecialEncounter_GetRoamerRouteId(speEnc, slot));

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
        *param1 = roamers[LCRNG_RandMod(numRoamersOnMap)];
    } else {
        *param1 = roamers[0];
    }

    return TRUE;
}

static BOOL ov6_02242514(const int param0, const WildEncounters_FieldParams *encounterFieldParams, Pokemon *mon, FieldBattleDTO *battleParams)
{
    int v0 = 0;

    if (encounterFieldParams->isFirstMonEgg == FALSE && encounterFieldParams->firstMonAbility == ABILITY_COMPOUND_EYES) {
        v0 = 1;
    }

    Pokemon_GiveHeldItem(mon, battleParams->battleType, v0);

    u8 form;

    BOOL setForm = FALSE;
    int species = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);

    if (species == SPECIES_SHELLOS) {
        setForm = TRUE;

        if (!encounterFieldParams->unk_0F[0]) {
            form = 0;
        } else {
            form = 1;
        }
    } else if (species == SPECIES_GASTRODON) {
        setForm = TRUE;

        if (!encounterFieldParams->unk_0F[1]) {
            form = 0;
        } else {
            form = 1;
        }
    } else if (species == SPECIES_UNOWN) {
        setForm = TRUE;

        u8 availableUnownForms = WildEncounters_UnownTables[encounterFieldParams->unownTableID].numberForms;
        form = WildEncounters_UnownTables[encounterFieldParams->unownTableID].forms[LCRNG_Next() % availableUnownForms];
    }

    if (setForm) {
        Pokemon_SetValue(mon, MON_DATA_FORM, &form);
    }

    return Party_AddPokemon(battleParams->parties[param0], mon);
}

static u8 ov6_022425D4(const EncounterSlot *param0, const WildEncounters_FieldParams *encounterFieldParams, const u8 encounterSlot)
{
    if (!encounterFieldParams->isFirstMonEgg && (encounterFieldParams->firstMonAbility == ABILITY_VITAL_SPIRIT || encounterFieldParams->firstMonAbility == ABILITY_HUSTLE || encounterFieldParams->firstMonAbility == ABILITY_PRESSURE)) {
        if (LCRNG_RandMod(2) == 0) {
            return encounterSlot;
        }

        u8 v0 = encounterSlot;

        for (u8 i = 0; i < MAX_GRASS_ENCOUNTERS; i++) {
            if (param0[i].species == param0[v0].species && param0[i].maxLevel > param0[v0].maxLevel) {
                v0 = i;
            }
        }

        return v0;
    }

    return encounterSlot;
}

static void InitEncounterFieldParams(FieldSystem *fieldSystem, Pokemon *firstPartyMon, WildEncounters *encounterData, WildEncounters_FieldParams *encounterFieldParams)
{
    if (Pokemon_GetValue(firstPartyMon, MON_DATA_IS_EGG, NULL) == 0) {
        encounterFieldParams->isFirstMonEgg = FALSE;
        encounterFieldParams->firstMonAbility = Pokemon_GetValue(firstPartyMon, MON_DATA_ABILITY, NULL);
    } else {
        encounterFieldParams->isFirstMonEgg = TRUE;
        encounterFieldParams->firstMonAbility = 123;
    }

    encounterFieldParams->firstBattlerLevel = 0;
    encounterFieldParams->repelActive = FALSE;
    encounterFieldParams->unk_08 = FALSE;

    if (encounterData != NULL) {
        encounterFieldParams->unk_0F[0] = encounterData->encounterRatesForms[0];
        encounterFieldParams->unk_0F[1] = encounterData->encounterRatesForms[1];

        if (encounterData->unownTableID != 0) {
            GF_ASSERT(encounterData->unownTableID <= 8);

            encounterFieldParams->unownTableID = encounterData->unownTableID - 1;
        } else {
            encounterFieldParams->unownTableID = 0;
        }
    }

    encounterFieldParams->trainerID = TrainerInfo_ID(SaveData_GetTrainerInfo(fieldSystem->saveData));
}
