#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "consts/abilities.h"
#include "consts/items.h"
#include "consts/gender.h"
#include "consts/pokemon.h"
#include "constants/battle.h"
#include "constants/forms.h"
#include "constants/overworld_weather.h"
#include "constants/species.h"
#include "trainer_info.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "pokemon.h"
#include "struct_decls/struct_party_decl.h"

#include "struct_defs/struct_0202D7B0.h"
#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "struct_defs/struct_0206C638.h"
#include "overlay006/battle_params.h"
#include "overlay006/wild_encounters.h"

#include "narc.h"
#include "rtc.h"
#include "heap.h"
#include "unk_0201D15C.h"
#include "save_state.h"
#include "trainer_info.h"
#include "unk_0202631C.h"
#include "unk_0202D7A8.h"
#include "map_header.h"
#include "map_header_data.h"
#include "field_overworld_state.h"
#include "field_system.h"
#include "vars_flags.h"
#include "unk_02050A74.h"
#include "unk_02051D8C.h"
#include "unk_02054884.h"
#include "unk_02054D00.h"
#include "unk_020559DC.h"
#include "unk_0205DAC8.h"
#include "player_avatar.h"
#include "pokeradar.h"
#include "unk_0206A8DC.h"
#include "unk_0206AFE0.h"
#include "roaming_pokemon.h"
#include "pokemon.h"
#include "trainer_data.h"
#include "party.h"
#include "overlay005/ov5_021EFB0C.h"
#include "overlay006/ov6_02240C9C.h"
#include "overlay006/ov6_02242F74.h"
#include "overlay006/ov6_02243218.h"
#include "overlay006/ov6_02246B74.h"
#include "overlay006/ov6_02247660.h"
#include "overlay006/ov6_022477B8.h"

typedef struct {
    int unk_00;
    BOOL unk_04;
    BOOL unk_08;
    BOOL unk_0C;
} UnkStruct_ov6_02241674;

typedef struct UnkStruct_ov6_0224222C {
    int species;
    u16 maxLevel;
    u16 minLevel;
} UnkStruct_ov6_0224222C;

typedef struct WildEncounters_FieldParams {
    u32 trainerID;
    BOOL unk_04;
    BOOL unk_08;
    u8 firstBattlerLevel;
    u8 isFirstMonEgg;
    u8 firstMonAbility;
    u8 unk_0F[2];
    u8 unownTableID;
} WildEncounters_FieldParams;

typedef struct UnkStruct_ov6_02248FF0 {
    int numberForms;
    const u8 * forms;
} UnkStruct_ov6_02248FF0;

static BOOL ov6_022417C8(FieldSystem * fieldSystem, const u32 param1, const u8 param2);
static u8 ov6_02241874(FieldSystem * fieldSystem, u8 param1, u8 * encounterType);
static BOOL ov6_022418B4(FieldSystem * fieldSystem, u32 param1);
static BOOL ov6_022418DC(FieldSystem * fieldSystem, u32 param1);
static BOOL ov6_0224222C(Pokemon * param0, const WildEncounters_FieldParams * param1, const UnkStruct_ov6_0224222C * param2, const u8 param3, const u8 param4, const u8 param5, u8 * param6);
static BOOL ov6_022422D0(const WildEncounters_FieldParams * param0, Pokemon * param1, const u8 param2);
static int GetGrassEncounterRate(FieldSystem * fieldSystem);
static int GetSurfEncounterRate(FieldSystem * fieldSystem);
static int GetFishingEncounterRate(FieldSystem * fieldSystem, const int param1);
static BOOL ov6_02241674(FieldSystem * fieldSystem, Pokemon * param1, BattleParams * param2, WildEncounters * encounterData, UnkStruct_ov6_0224222C * param4, const WildEncounters_FieldParams * param5, const UnkStruct_ov6_02241674 * param6);
static BOOL ov6_0224174C(FieldSystem * fieldSystem, Pokemon * param1, BattleParams * param2, UnkStruct_ov6_0224222C * param3, const WildEncounters_FieldParams * param4);
static BOOL ov6_02241790(FieldSystem * fieldSystem, Pokemon * param1, BattleParams * param2, UnkStruct_ov6_0224222C * param3, const WildEncounters_FieldParams * param4);
static BOOL ov6_022417AC(FieldSystem * fieldSystem, Pokemon * param1, BattleParams * param2, UnkStruct_ov6_0224222C * param3, const WildEncounters_FieldParams * param4, const int param5);
static BOOL ov6_02241DC4(Pokemon * param0, const int param1, const WildEncounters_FieldParams * param2, const UnkStruct_ov6_0224222C * param3, const u8 encounterType, const int param5, BattleParams * param6);
static BOOL ov6_02241F7C(FieldSystem * fieldSystem, Pokemon * param1, const WildEncounters_FieldParams * param2, const UnkStruct_ov6_0224222C * param3, const int param4, BattleParams * param5, const int param6, const int param7);
static BOOL ov6_02241F2C(const int param0, const int param1, const int param2, const BOOL param3, const u32 param4, const WildEncounters_FieldParams * param5, Pokemon * param6, BattleParams * param7);
static u8 ov6_0224226C(const BOOL param0, const u8 param1, const WildEncounters_FieldParams * param2, const u32 param3, Pokemon * param4);
static void ov6_02242328(FieldSystem * fieldSystem, const BOOL param1, BattleParams ** param2);
static void ov6_02242354(FieldSystem * fieldSystem, const BOOL param1, const BOOL param2, UnkStruct_ov6_0224222C * param3);
static BOOL ov6_02242388(const u8 param0, const WildEncounters_FieldParams * param1);
static void ov6_0224239C(const u32 param0, UnkStruct_0206C638 * param1, BattleParams * param2);
static BOOL ov6_02242440(FieldSystem * fieldSystem, UnkStruct_0206C638 ** param1);
static BOOL ov6_02242514(const int param0, const WildEncounters_FieldParams * param1, Pokemon * param2, BattleParams * param3);
static u8 ov6_022425D4(const UnkStruct_ov6_0224222C * param0, const WildEncounters_FieldParams * param1, const u8 param2);
static void ov6_02242634(FieldSystem * fieldSystem, Pokemon * param1, WildEncounters * encounterData, WildEncounters_FieldParams * param3);
static void ov6_02241A90(Pokemon * param0, u8 * param1);
static void ov6_02241ABC(FieldSystem * fieldSystem, u8 * param1);

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

static const UnkStruct_ov6_02248FF0 WildEncounters_UnownTables[] = {
    {0x14, UnownMostForms},
    {0x1, UnownOnlyF},
    {0x1, UnownOnlyR},
    {0x1, UnownOnlyI},
    {0x1, UnownOnlyN},
    {0x1, UnownOnlyE},
    {0x1, UnownOnlyD},
    {0x2, UnownOnlyExcQue}
};

void WildEncounters_ReplaceTimedEncounters (const WildEncounters * encounterData, int * timedSlot1, int * timedSlot2)
{
    int timeOfDay = GetTimeOfDay();

    if (timeOfDay == TOD_DAY || timeOfDay == TOD_TWILIGHT) {
        *timedSlot1 = encounterData->dayEncounters[0];
        *timedSlot2 = encounterData->dayEncounters[1];
    } else if (timeOfDay == TOD_NIGHT || timeOfDay == TOD_LATE_NIGHT) {
        *timedSlot1 = encounterData->nightEncounters[0];
        *timedSlot2 = encounterData->nightEncounters[1];
    }
}

static void WildEncounters_ReplaceRadarEncounters (FieldSystem * fieldSystem, const WildEncounters * encounterData, int * radarSlot1, int * radarSlot2)
{
    UnkStruct_0202D7B0 * v1 = sub_0202D834(fieldSystem->saveData);

    if (sub_0202D898(v1)) {
        u32 v0 = sub_0202D814(v1, 2);

        if (fieldSystem->location->mapId == ov6_02243218(v0)) {
            *radarSlot1 = encounterData->swarmEncounters[0];
            *radarSlot2 = encounterData->swarmEncounters[1];
        }
    }
}

static void WildEncounters_ReplaceTrophyGardenEncounters (FieldSystem * fieldSystem, const BOOL nationalDexObtained, int * trophySlot1, int * trophySlot2)
{
    if (MapHeader_IsTrophyGarden(fieldSystem->location->mapId)) {
        u16 v1, v2;
        sub_0202DA10(fieldSystem->saveData, &v1, &v2);

        if (nationalDexObtained) {
            int * v0 = NARC_AllocAtEndAndReadWholeMemberByIndexPair(NARC_INDEX_ARC__ENCDATA_EX, 8, 4);

            if (v1 != 0xffff) {
                *trophySlot1 = v0[v1];
            }

            if (v2 != 0xffff) {
                *trophySlot2 = v0[v2];
            }

            Heap_FreeToHeap(v0);
        }
    }
}

BOOL ov6_02240D5C (FieldSystem * fieldSystem)
{
    BattleParams * battleParams;
    Pokemon * firstPartyMon;
    u8 v4;
    u8 encounterType;
    BOOL v6;
    BOOL v7;
    BOOL v8;
    BOOL v9;
    UnkStruct_ov6_02241674 v10;
    UnkStruct_ov6_0224222C v13[MAX_GRASS_ENCOUNTERS];
    WildEncounters_FieldParams encounterFieldParams;

    int playerX = Player_GetXPos(fieldSystem->playerAvatar);
    int playerZ = Player_GetZPos(fieldSystem->playerAvatar);
    v4 = sub_02054F94(fieldSystem, playerX, playerZ);

    u8 encounterRate = ov6_02241874(fieldSystem, v4, &encounterType);

    if (encounterRate == 0) {
        return FALSE;
    }

    Party * party = Party_GetFromSavedata(fieldSystem->saveData);
    WildEncounters * encounterData = MapHeaderData_GetWildEncounters(fieldSystem);
    firstPartyMon = Party_GetPokemonBySlotIndex(party, 0);

    ov6_02242634(fieldSystem, firstPartyMon, encounterData, &encounterFieldParams);

    if (!sub_0202D9D8(sub_0202D834(fieldSystem->saveData))) {
        Pokemon * v16 = Party_FindFirstEligibleBattler(party);
        encounterFieldParams.unk_04 = TRUE;
        encounterFieldParams.firstBattlerLevel = Pokemon_GetValue(v16, MON_DATA_LEVEL, NULL);
    }

    encounterRate = ov6_0224226C(FALSE, encounterRate, &encounterFieldParams, FieldOverworldState_GetWeather(SaveData_GetFieldOverworldState(fieldSystem->saveData)), firstPartyMon);

    ov6_02241ABC(fieldSystem, &encounterRate);
    ov6_02241A90(firstPartyMon, &encounterRate);

    if (ov6_022417C8(fieldSystem, encounterRate, v4)) {
        v6 = TRUE;
    } else {
        v6 = FALSE;
    }

    memset(&v10, 0, sizeof(UnkStruct_ov6_02241674));

    if (!sub_020696DC(playerX, playerZ, fieldSystem, fieldSystem->chain, &v10.unk_00, &v10.unk_04, &v10.unk_08)) {
        v10.unk_0C = FALSE;
    } else {
        v10.unk_0C = TRUE;
        v6 = TRUE;
    }

    if (!v6) {
        return FALSE;
    }

    if (sub_0206A984(SaveData_GetVarsFlags(fieldSystem->saveData))) {
        v8 = TRUE;
    } else {
        v8 = FALSE;
    }

    if (!v8 && !v10.unk_0C) {
        UnkStruct_0206C638 * v17;

        if (ov6_02242440(fieldSystem, &v17)) {
            if (!ov6_02242388(sub_0202D93C(v17, 6), &encounterFieldParams)) {
                battleParams = sub_02051D8C(11, BATTLE_TYPE_ROAMER);

                sub_02052314(battleParams, fieldSystem);
                ov6_0224239C(encounterFieldParams.trainerID, v17, battleParams);
                RadarChain_Clear(fieldSystem->chain);
                sub_02050E10(fieldSystem, battleParams);
                return TRUE;
            } else {
                return FALSE;
            }
        }
    }

    if (!v8) {
        v9 = sub_0206AE5C(SaveData_GetVarsFlags(fieldSystem->saveData));
        ov6_02242328(fieldSystem, v9, &battleParams);
    } else {
        battleParams = sub_02051D8C(11, BATTLE_TYPE_AI_PARTNER);
    }

    sub_02052314(battleParams, fieldSystem);

    if (encounterType == ENCOUNTER_TYPE_GRASS) {
        for (int i = 0; i < MAX_GRASS_ENCOUNTERS; i++) {
            v13[i].species = encounterData->grassEncounters.encounters[i].species;
            v13[i].maxLevel = encounterData->grassEncounters.encounters[i].level;
            v13[i].minLevel = encounterData->grassEncounters.encounters[i].level;
        }

        BOOL nationalDexObtained = sub_02027474(SaveData_Pokedex(FieldSystem_SaveData(fieldSystem)));

        WildEncounters_ReplaceTimedEncounters(encounterData, &v13[2].species, &v13[3].species);
        WildEncounters_ReplaceRadarEncounters(fieldSystem, encounterData, &v13[0].species, &v13[1].species);
        WildEncounters_ReplaceTrophyGardenEncounters(fieldSystem, nationalDexObtained, &v13[6].species, &v13[7].species);
        WildEncounters_ReplaceDualSlotEncounters(encounterData, nationalDexObtained, &v13[8].species, &v13[9].species);

        if (!v8) {
            ov6_02242354(fieldSystem, v9, nationalDexObtained, v13);

            v7 = ov6_02241674(fieldSystem, firstPartyMon, battleParams, encounterData, v13, &encounterFieldParams, &v10);
        } else {
            {
                battleParams->trainerIDs[2] = sub_0206B034(SaveData_GetVarsFlags(fieldSystem->saveData));
                TrainerData_Encounter(battleParams, fieldSystem->saveData, 11);
            }
            v7 = ov6_0224174C(fieldSystem, firstPartyMon, battleParams, v13, &encounterFieldParams);
        }
    } else if (encounterType == ENCOUNTER_TYPE_SURF) {
        for (int i = 0; i < MAX_WATER_ENCOUNTERS; i++) {
            v13[i].species = encounterData->surfEncounters.encounters[i].species;
            v13[i].maxLevel = encounterData->surfEncounters.encounters[i].maxLevel;
            v13[i].minLevel = encounterData->surfEncounters.encounters[i].minLevel;
        }

        v7 = ov6_02241790(fieldSystem, firstPartyMon, battleParams, v13, &encounterFieldParams);
    } else {
        GF_ASSERT(FALSE);
        sub_020520A4(battleParams);
        return FALSE;
    }

    if (v7) {
        sub_02050E10(fieldSystem, battleParams);
    } else {
        v6 = FALSE;
    }

    GF_ASSERT(GF_heap_c_dummy_return_true(4));
    GF_ASSERT(GF_heap_c_dummy_return_true(11));

    if (!v6) {
        sub_020520A4(battleParams);
    }

    fieldSystem->unk_78.unk_00 = 0;

    return v6;
}

BOOL ov6_0224106C (FieldSystem * fieldSystem, const int fishingRodType, BattleParams ** battleParams)
{
    UnkStruct_ov6_0224222C v3[MAX_GRASS_ENCOUNTERS];

    u8 encounterRate = GetFishingEncounterRate(fieldSystem, fishingRodType);

    if (encounterRate == 0) {
        return FALSE;
    }

    Party * party = Party_GetFromSavedata(fieldSystem->saveData);
    Pokemon * firstPartyMon = Party_GetPokemonBySlotIndex(party, 0);
    WildEncounters_FieldParams encounterFieldParams;
    ov6_02242634(fieldSystem, firstPartyMon, NULL, &encounterFieldParams);
    encounterRate = ov6_0224226C(TRUE, encounterRate, &encounterFieldParams, FieldOverworldState_GetWeather(SaveData_GetFieldOverworldState(fieldSystem->saveData)), firstPartyMon);

    if (inline_020564D0(100) >= encounterRate) {
        return FALSE;
    }

    BOOL v2 = sub_0206AE5C(SaveData_GetVarsFlags(fieldSystem->saveData));

    ov6_02242328(fieldSystem, v2, battleParams);

    sub_02052314(*battleParams, fieldSystem);
    sub_0205285C(*battleParams);

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
        WaterEncounter * fishingEncounters;
        WildEncounters * encounterData = MapHeaderData_GetWildEncounters(fieldSystem);

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

    if (!ov6_022417AC(fieldSystem, firstPartyMon, *battleParams, v3, &encounterFieldParams, fishingRodType)) {
        return FALSE;
    }

    return TRUE;
}

BOOL ov6_022411C8 (FieldSystem * fieldSystem, TaskManager * param1)
{
    BattleParams * battleParams;
    Pokemon * firstPartyMon;
    u8 encounterType;
    BOOL v6;
    BOOL v7;
    BOOL v8;
    UnkStruct_ov6_02241674 v9;
    UnkStruct_ov6_0224222C v12[MAX_GRASS_ENCOUNTERS];
    WildEncounters_FieldParams encounterFieldParams;

    int playerX = Player_GetXPos(fieldSystem->playerAvatar);
    int playerZ = Player_GetZPos(fieldSystem->playerAvatar);
    u8 v4 = sub_02054F94(fieldSystem, playerX, playerZ);

    u8 encounterRate = ov6_02241874(fieldSystem, v4, &encounterType);

    if (encounterRate == 0) {
        return FALSE;
    }

    Party * party = Party_GetFromSavedata(fieldSystem->saveData);
    WildEncounters * encounterData = MapHeaderData_GetWildEncounters(fieldSystem);
    firstPartyMon = Party_GetPokemonBySlotIndex(party, 0);

    ov6_02242634(fieldSystem, firstPartyMon, encounterData, &encounterFieldParams);

    encounterFieldParams.unk_04 = FALSE;
    encounterFieldParams.unk_08 = TRUE;

    memset(&v9, 0, sizeof(UnkStruct_ov6_02241674));

    if (sub_0206A984(SaveData_GetVarsFlags(fieldSystem->saveData))) {
        v6 = TRUE;
    } else {
        v6 = FALSE;
    }

    if (!v6) {
        UnkStruct_0206C638 * v15;

        if (ov6_02242440(fieldSystem, &v15)) {
            battleParams = sub_02051D8C(11, BATTLE_TYPE_ROAMER);

            sub_02052314(battleParams, fieldSystem);
            ov6_0224239C(encounterFieldParams.trainerID, v15, battleParams);
            RadarChain_Clear(fieldSystem->chain);
            sub_02050E78(fieldSystem, param1, battleParams);
            return TRUE;
        }
    }

    if (!v6) {
        v7 = sub_0206AE5C(SaveData_GetVarsFlags(fieldSystem->saveData));
        ov6_02242328(fieldSystem, v7, &battleParams);
    } else {
        battleParams = sub_02051D8C(11, BATTLE_TYPE_AI_PARTNER);
    }

    sub_02052314(battleParams, fieldSystem);

    if (encounterType == ENCOUNTER_TYPE_GRASS) {
        for (int i = 0; i < MAX_GRASS_ENCOUNTERS; i++) {
            v12[i].species = encounterData->grassEncounters.encounters[i].species;
            v12[i].maxLevel = encounterData->grassEncounters.encounters[i].level;
            v12[i].minLevel = encounterData->grassEncounters.encounters[i].level;
        }

        BOOL nationalDexObtained = sub_02027474(SaveData_Pokedex(FieldSystem_SaveData(fieldSystem)));

        WildEncounters_ReplaceTimedEncounters(encounterData, &v12[2].species, &v12[3].species);
        WildEncounters_ReplaceRadarEncounters(fieldSystem, encounterData, &v12[0].species, &v12[1].species);
        WildEncounters_ReplaceTrophyGardenEncounters(fieldSystem, nationalDexObtained, &v12[6].species, &v12[7].species);
        WildEncounters_ReplaceDualSlotEncounters(encounterData, nationalDexObtained, &v12[8].species, &v12[9].species);

        if (!v6) {
            ov6_02242354(fieldSystem, v7, nationalDexObtained, v12);

            v8 = ov6_02241674(fieldSystem, firstPartyMon, battleParams, encounterData, v12, &encounterFieldParams, &v9);
        } else {
            battleParams->trainerIDs[2] = sub_0206B034(SaveData_GetVarsFlags(fieldSystem->saveData));
            TrainerData_Encounter(battleParams, fieldSystem->saveData, 11);
            v8 = ov6_0224174C(fieldSystem, firstPartyMon, battleParams, v12, &encounterFieldParams);
        }
    } else if (encounterType == ENCOUNTER_TYPE_SURF) {
        for (int i = 0; i < MAX_WATER_ENCOUNTERS; i++) {
            v12[i].species = encounterData->surfEncounters.encounters[i].species;
            v12[i].maxLevel = encounterData->surfEncounters.encounters[i].maxLevel;
            v12[i].minLevel = encounterData->surfEncounters.encounters[i].minLevel;
        }

        v8 = ov6_02241790(fieldSystem, firstPartyMon, battleParams, v12, &encounterFieldParams);
    } else {
        GF_ASSERT(FALSE);
        return FALSE;
    }

    if (v8) {
        sub_02050E78(fieldSystem, param1, battleParams);
    } else {
        GF_ASSERT(FALSE);
    }

    fieldSystem->unk_78.unk_00 = 0;
    return TRUE;
}

BOOL ov6_022413E4 (FieldSystem * fieldSystem, BattleParams ** battleParams)
{
    Pokemon * firstPartyMon;
    u8 encounterType;
    BOOL v5;
    BOOL v6;
    BOOL v7;
    BOOL v8;
    UnkStruct_ov6_02241674 v9;
    UnkStruct_ov6_0224222C v12[MAX_GRASS_ENCOUNTERS];
    WildEncounters_FieldParams encounterFieldParams;

    *battleParams = NULL;

    int playerX = Player_GetXPos(fieldSystem->playerAvatar);
    int playerZ = Player_GetZPos(fieldSystem->playerAvatar);
    u8 v3 = sub_02054F94(fieldSystem, playerX, playerZ);

    u8 encounterRate = ov6_02241874(fieldSystem, v3, &encounterType);

    if (encounterRate == 0) {
        return FALSE;
    }

    Party * party = Party_GetFromSavedata(fieldSystem->saveData);
    WildEncounters * encounterData = MapHeaderData_GetWildEncounters(fieldSystem);
    firstPartyMon = Party_GetPokemonBySlotIndex(party, 0);

    ov6_02242634(fieldSystem, firstPartyMon, encounterData, &encounterFieldParams);

    if (!sub_0202D9D8(sub_0202D834(fieldSystem->saveData))) {
        Pokemon * v15 = Party_FindFirstEligibleBattler(party);

        encounterFieldParams.unk_04 = TRUE;
        encounterFieldParams.firstBattlerLevel = Pokemon_GetValue(v15, MON_DATA_LEVEL, NULL);
    }

    encounterRate = ov6_0224226C(FALSE, encounterRate, &encounterFieldParams, FieldOverworldState_GetWeather(SaveData_GetFieldOverworldState(fieldSystem->saveData)), firstPartyMon);

    ov6_02241ABC(fieldSystem, &encounterRate);
    ov6_02241A90(firstPartyMon, &encounterRate);

    if (ov6_022417C8(fieldSystem, encounterRate, v3)) {
        v5 = TRUE;
    } else {
        v5 = FALSE;
    }

    memset(&v9, 0, sizeof(UnkStruct_ov6_02241674));
    v9.unk_0C = FALSE;

    if (sub_0206A984(SaveData_GetVarsFlags(fieldSystem->saveData))) {
        v7 = TRUE;
    } else {
        v7 = FALSE;
    }

    if (!v7) {
        UnkStruct_0206C638 * v16;

        if (ov6_02242440(fieldSystem, &v16)) {
            if (!ov6_02242388(sub_0202D93C(v16, 6), &encounterFieldParams)) {
                *battleParams = sub_02051D8C(11, BATTLE_TYPE_ROAMER);

                sub_02052314(*battleParams, fieldSystem);
                ov6_0224239C(encounterFieldParams.trainerID, v16, *battleParams);
                RadarChain_Clear(fieldSystem->chain);
                return TRUE;
            } else {
                return FALSE;
            }
        }
    }

    if (!v7) {
        v8 = sub_0206AE5C(SaveData_GetVarsFlags(fieldSystem->saveData));
        ov6_02242328(fieldSystem, v8, battleParams);
    } else {
        *battleParams = sub_02051D8C(11, BATTLE_TYPE_AI_PARTNER);
    }

    sub_02052314(*battleParams, fieldSystem);

    if (encounterType == ENCOUNTER_TYPE_GRASS) {
        for (int i = 0; i < MAX_GRASS_ENCOUNTERS; i++) {
            v12[i].species = encounterData->grassEncounters.encounters[i].species;
            v12[i].maxLevel = encounterData->grassEncounters.encounters[i].level;
            v12[i].minLevel = encounterData->grassEncounters.encounters[i].level;
        }

        BOOL nationalDexObtained = sub_02027474(SaveData_Pokedex(FieldSystem_SaveData(fieldSystem)));

        WildEncounters_ReplaceTimedEncounters(encounterData, &v12[2].species, &v12[3].species);
        WildEncounters_ReplaceRadarEncounters(fieldSystem, encounterData, &v12[0].species, &v12[1].species);
        WildEncounters_ReplaceTrophyGardenEncounters(fieldSystem, nationalDexObtained, &v12[6].species, &v12[7].species);
        WildEncounters_ReplaceDualSlotEncounters(encounterData, nationalDexObtained, &v12[8].species, &v12[9].species);

        if (!v7) {
            ov6_02242354(fieldSystem, v8, nationalDexObtained, v12);

            v6 = ov6_02241674(fieldSystem, firstPartyMon, *battleParams, encounterData, v12, &encounterFieldParams, &v9);
        } else {
            {
                (*battleParams)->trainerIDs[2] = sub_0206B034(SaveData_GetVarsFlags(fieldSystem->saveData));
                TrainerData_Encounter(*battleParams, fieldSystem->saveData, 11);
            }
            v6 = ov6_0224174C(fieldSystem, firstPartyMon, *battleParams, v12, &encounterFieldParams);
        }
    } else {
        GF_ASSERT(FALSE);
        sub_020520A4(*battleParams);
        return FALSE;
    }

    if (!v6) {
        v5 = FALSE;
    }

    GF_ASSERT(GF_heap_c_dummy_return_true(4));
    GF_ASSERT(GF_heap_c_dummy_return_true(11));

    if (!v5) {
        sub_020520A4(*battleParams);
    } else {
        fieldSystem->unk_78.unk_00 = 0;
    }

    return v5;
}

static BOOL ov6_02241674 (FieldSystem * fieldSystem, Pokemon * firstPartyMon, BattleParams * battleParams, WildEncounters * encounterData, UnkStruct_ov6_0224222C * param4, const WildEncounters_FieldParams * encounterFieldParams, const UnkStruct_ov6_02241674 * param6)
{
    BOOL v0;

    if (param6->unk_0C) {
        int species, level;

        if (param6->unk_00 == 1) {
            param4[4].species = encounterData->radarEncounters[0];
            param4[5].species = encounterData->radarEncounters[1];
            param4[10].species = encounterData->radarEncounters[2];
            param4[11].species = encounterData->radarEncounters[3];
        }

        GetRadarMon(fieldSystem->chain, &species, &level);

        if (param6->unk_04 == 1) {
            TrainerInfo * v3 = SaveData_GetTrainerInfo(FieldSystem_SaveData(fieldSystem));
            v0 = ov6_02241F2C(species, level, 1, param6->unk_08, TrainerInfo_ID(v3), encounterFieldParams, firstPartyMon, battleParams);
        } else {
            v0 = ov6_02241F7C(fieldSystem, firstPartyMon, encounterFieldParams, param4, 1, battleParams, species, level);
        }

        if (v0) {
            {
                int playerX = Player_GetXPos(fieldSystem->playerAvatar);
                int playerZ = Player_GetZPos(fieldSystem->playerAvatar);

                RadarSpawnPatches(fieldSystem, playerX, playerZ, fieldSystem->chain);
            }
        }
    } else {
        v0 = ov6_02241DC4(firstPartyMon, 0xff, encounterFieldParams, param4, ENCOUNTER_TYPE_GRASS, 1, battleParams);

        if (v0) {
            RadarChain_Clear(fieldSystem->chain);
        }
    }

    return v0;
}

static BOOL ov6_0224174C (FieldSystem * fieldSystem, Pokemon * param1, BattleParams * param2, UnkStruct_ov6_0224222C * param3, const WildEncounters_FieldParams * param4)
{
    if (!ov6_02241DC4(param1, 0xff, param4, param3, ENCOUNTER_TYPE_GRASS, 1, param2)) {
        return FALSE;
    }

    BOOL v0 = ov6_02241DC4(param1, 0xff, param4, param3, ENCOUNTER_TYPE_GRASS, 3, param2);
    return v0;
}

static BOOL ov6_02241790 (FieldSystem * fieldSystem, Pokemon * param1, BattleParams * param2, UnkStruct_ov6_0224222C * param3, const WildEncounters_FieldParams * param4)
{
    return ov6_02241DC4(param1, 0xff, param4, param3, ENCOUNTER_TYPE_SURF, 1, param2);
}

static BOOL ov6_022417AC (FieldSystem * fieldSystem, Pokemon * param1, BattleParams * param2, UnkStruct_ov6_0224222C * param3, const WildEncounters_FieldParams * param4, const int fishingRodType)
{
    return ov6_02241DC4(param1, fishingRodType, param4, param3, ENCOUNTER_TYPE_FISHING, 1, param2);
}

static BOOL ov6_022417C8 (FieldSystem * fieldSystem, const u32 encounterRate, const u8 param2)
{
    u32 v1 = encounterRate << 8;

    if (!ov6_022418B4(fieldSystem, v1)) {
        fieldSystem->unk_78.unk_00++;

        if (inline_020564D0(100) >= 5) {
            return FALSE;
        }
    }

    u8 v0 = 40;

    if (sub_0205DAD4(param2)) {
        v0 += 30;
    } else if (PlayerAvatar_GetPlayerState(fieldSystem->playerAvatar) == PLAYER_STATE_CYCLING) {
            v0 += 30;
    }

    v0 = ov6_02246B74(v0, sub_02055C40(fieldSystem));

    if (v0 > 100) {
        v0 = 100;
    }

    return (inline_020564D0(100) < v0 && ov6_022418DC(fieldSystem, encounterRate));
}

static u8 ov6_02241874 (FieldSystem * fieldSystem, u8 param1, u8 * encounterType)
{
    if (sub_0205DE6C(param1)) {
        if (sub_0205DB58(param1)) {
            *encounterType = ENCOUNTER_TYPE_SURF;
            return GetSurfEncounterRate(fieldSystem);
        } else {
            *encounterType = ENCOUNTER_TYPE_GRASS;
            return GetGrassEncounterRate(fieldSystem);
        }
    }

    return 0;
}

static BOOL ov6_022418B4 (FieldSystem * fieldSystem, u32 param1)
{
    param1 = (param1 / 10) >> 8;

    if (param1 > 8) {
        param1 = 8;
    }

    param1 = 8 - (param1);

    return fieldSystem->unk_78.unk_00 >= param1;
}

static BOOL ov6_022418DC (FieldSystem * fieldSystem, u32 encounterRate)
{
    if (inline_020564D0(100) >= encounterRate) {
        return FALSE;
    } else {
        return TRUE;
    }
}

static u8 ov6_02241904 (void)
{
    u8 v0 = inline_020564D0(100);

    if (v0 < 20) {
        return 0;
    }

    if (v0 >= 20 && v0 < 40) {
        return 1;
    }

    if (v0 >= 40 && v0 < 50) {
        return 2;
    }

    if (v0 >= 50 && v0 < 60) {
        return 3;
    }

    if (v0 >= 60 && v0 < 70) {
        return 4;
    }

    if (v0 >= 70 && v0 < 80) {
        return 5;
    }

    if (v0 >= 80 && v0 < 85) {
        return 6;
    }

    if (v0 >= 85 && v0 < 90) {
        return 7;
    }

    if (v0 >= 90 && v0 < 94) {
        return 8;
    }

    if (v0 >= 94 && v0 < 98) {
        return 9;
    }

    if (v0 == 98) {
        return 10;
    }

    return 11;
}

static u8 ov6_022419A0 (void)
{
    u8 v0 = inline_020564D0(100);

    if (v0 < 60) {
        return 0;
    }

    if (v0 >= 60 && v0 < 90) {
        return 1;
    }

    if (v0 >= 90 && v0 < 95) {
        return 2;
    }

    if (v0 >= 95 && v0 < 99) {
        return 3;
    }

    return 4;
}

static u8 ov6_022419EC (const int fishingRodType)
{
    u8 v1 = 0;

    u8 v0 = inline_020564D0(100);

    switch (fishingRodType) {
    case FISHING_TYPE_OLD_ROD:
        if (v0 < 60) {
            v1 = 0;
        } else if (v0 < 90) {
            v1 = 1;
        } else if (v0 < 95) {
            v1 = 2;
        } else if (v0 < 99) {
            v1 = 3;
        } else {
            v1 = 4;
        }
        break;
    case FISHING_TYPE_GOOD_ROD:
        if (v0 < 40) {
            v1 = 0;
        } else if (v0 < 80) {
            v1 = 1;
        } else if (v0 < 95) {
            v1 = 2;
        } else if (v0 < 99) {
            v1 = 3;
        } else {
            v1 = 4;
        }
        break;
    case FISHING_TYPE_SUPER_ROD:
        if (v0 < 40) {
            v1 = 0;
        } else if (v0 < 80) {
            v1 = 1;
        } else if (v0 < 95) {
            v1 = 2;
        } else if (v0 < 99) {
            v1 = 3;
        } else {
            v1 = 4;
        }
        break;
    default:
        GF_ASSERT(FALSE);
    }

    return v1;
}

static void ov6_02241A90 (Pokemon * mon, u8 * encounterRate)
{
    u16 heldItem = Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL);

    if (heldItem == ITEM_CLEANSE_TAG || heldItem == ITEM_PURE_INCENSE) {
        *encounterRate = (*encounterRate * 2) / 3;
    }
}

static void ov6_02241ABC (FieldSystem * fieldSystem, u8 * encounterRate)
{
    u8 v0 = sub_0202DA04(sub_0202D834(fieldSystem->saveData));

    if (v0 == 1) {
        *encounterRate /= 2;
    } else if (v0 == 2) {
        *encounterRate = *encounterRate + (*encounterRate / 2);
    }
}

static u8 ov6_02241AE4 (Pokemon * param0, const WildEncounters_FieldParams * encounterFieldParams)
{
    if (!encounterFieldParams->isFirstMonEgg && encounterFieldParams->firstMonAbility == ABILITY_SYNCHRONIZE && inline_020564D0(2) == 0) {
        u32 v0 = Pokemon_GetValue(param0, MON_DATA_PERSONALITY, NULL);
        return (u8)(v0 % 25);
    }

    return inline_020564D0(25);
}

static u8 ov6_02241B40 (const UnkStruct_ov6_0224222C * param0, const WildEncounters_FieldParams * encounterFieldParams)
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
        if (inline_020564D0(2) == 0) {
            return minLevel + v1;
        }

        return maxLevel;
    }

    return minLevel + v1;
}

static void ov6_02241BAC (const u16 species, const u8 level, const int param2, const u32 param3, const WildEncounters_FieldParams * encounterFieldParams, Pokemon * firstPartyMon, BattleParams * battleParams)
{
    u8 firstMonGender;
    u8 firstMonNature;

    Pokemon * newEncounter = Pokemon_New(11);
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
                if (inline_020564D0(3) > 0) {
                    firstMonGender = Pokemon_GetValue(firstPartyMon, MON_DATA_GENDER, NULL);
                    abilityInEffect = TRUE;
                }
            }
        } else if (encounterFieldParams->firstMonAbility == ABILITY_SYNCHRONIZE) {
            if (inline_020564D0(2) == 0) {
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

    Pokemon_InitWith(newEncounter, species, level, 32, TRUE, newEncounterPersonality, 1, encounterFieldParams->trainerID);

    GF_ASSERT(ov6_02242514(param2, encounterFieldParams, newEncounter, battleParams));
    Heap_FreeToHeap(newEncounter);
}

static void ov6_02241CC0 (u16 species, u8 level, const int param2, const WildEncounters_FieldParams * encounterFieldParams, Pokemon * firstPartyMon, BattleParams * battleParams)
{
    Pokemon * newEncounter = Pokemon_New(11);
    Pokemon_Init(newEncounter);
    BOOL v0 = TRUE;

    u32 speciesGenderRatio = PokemonPersonalData_GetSpeciesValue(species, MON_DATA_PERSONAL_GENDER);

    switch (speciesGenderRatio) {
    case GENDER_RATIO_MALE_ONLY:
    case GENDER_RATIO_FEMALE_ONLY:
    case GENDER_RATIO_NO_GENDER:
        v0 = FALSE;
    }

    if (v0 && !encounterFieldParams->isFirstMonEgg && encounterFieldParams->firstMonAbility == ABILITY_CUTE_CHARM && inline_020564D0(3) > 0) {
        u8 gender = Pokemon_GetValue(firstPartyMon, MON_DATA_GENDER, NULL);

        if (gender == GENDER_FEMALE) {
            gender = GENDER_MALE;
        } else if (gender == GENDER_MALE) {
            gender = GENDER_FEMALE;
        } else {
            GF_ASSERT(FALSE);
        }

        sub_02074088(newEncounter, species, level, 32, gender, ov6_02241AE4(firstPartyMon, encounterFieldParams), 0);
        Pokemon_SetValue(newEncounter, MON_DATA_OT_ID, &encounterFieldParams->trainerID);

        GF_ASSERT(ov6_02242514(param2, encounterFieldParams, newEncounter, battleParams));
        Heap_FreeToHeap(newEncounter);
        return;
    }

    sub_02074044(newEncounter, species, level, 32, ov6_02241AE4(firstPartyMon, encounterFieldParams));
    Pokemon_SetValue(newEncounter, MON_DATA_OT_ID, &encounterFieldParams->trainerID);

    GF_ASSERT(ov6_02242514(param2, encounterFieldParams, newEncounter, battleParams));
    Heap_FreeToHeap(newEncounter);
}

static BOOL ov6_02241DC4 (Pokemon * firstPartyMon, const int fishingRodType, const WildEncounters_FieldParams * encounterFieldParams, const UnkStruct_ov6_0224222C * param3, const u8 encounterType, const int param5, BattleParams * battleParams)
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
                encounterSlot = ov6_02241904();
            }
        }

        encounterSlot = ov6_022425D4(param3, encounterFieldParams, encounterSlot);
        level = param3[encounterSlot].maxLevel;
        break;
    case ENCOUNTER_TYPE_SURF:
        v0 = ov6_0224222C(firstPartyMon, encounterFieldParams, param3, MAX_WATER_ENCOUNTERS, TYPE_STEEL, ABILITY_MAGNET_PULL, &encounterSlot);
        v0 = ov6_0224222C(firstPartyMon, encounterFieldParams, param3, MAX_WATER_ENCOUNTERS, TYPE_ELECTRIC, ABILITY_STATIC, &encounterSlot);

        if (!v0) {
            encounterSlot = ov6_022419A0();
        }

        level = ov6_02241B40(&param3[encounterSlot], encounterFieldParams);
        break;
    case ENCOUNTER_TYPE_FISHING:
        v0 = ov6_0224222C(firstPartyMon, encounterFieldParams, param3, MAX_WATER_ENCOUNTERS, TYPE_STEEL, ABILITY_MAGNET_PULL, &encounterSlot);
        v0 = ov6_0224222C(firstPartyMon, encounterFieldParams, param3, MAX_WATER_ENCOUNTERS, TYPE_ELECTRIC, ABILITY_STATIC, &encounterSlot);

        if (!v0) {
            encounterSlot = ov6_022419EC(fishingRodType);
        }

        level = ov6_02241B40(&param3[encounterSlot], encounterFieldParams);
        break;
    default:
        GF_ASSERT(FALSE);
    }

    if (ov6_022422D0(encounterFieldParams, firstPartyMon, level)) {
        return FALSE;
    }

    if (ov6_02242388(level, encounterFieldParams) == TRUE) {
        return FALSE;
    }

    ov6_02241CC0(param3[encounterSlot].species, level, param5, encounterFieldParams, firstPartyMon, battleParams);
    return TRUE;
}

static BOOL ov6_02241F2C (const int param0, const int param1, const int param2, const BOOL param3, const u32 param4, const WildEncounters_FieldParams * encounterFieldParams, Pokemon * param6, BattleParams * battleParams)
{
    GF_ASSERT(param0 != 0);
    u8 v0 = param1;

    if (param3) {
        ov6_02241BAC(param0, v0, param2, param4, encounterFieldParams, param6, battleParams);
    } else {
        ov6_02241CC0(param0, v0, param2, encounterFieldParams, param6, battleParams);
    }

    return TRUE;
}

static BOOL ov6_02241F7C (FieldSystem * fieldSystem, Pokemon * param1, const WildEncounters_FieldParams * encounterFieldParams, const UnkStruct_ov6_0224222C * param3, const int param4, BattleParams * battleParams, const int species, const int level)
{
    u8 encounterSlot = 0;

    u8 v0 = ov6_0224222C(param1, encounterFieldParams, param3, MAX_GRASS_ENCOUNTERS, TYPE_STEEL, ABILITY_MAGNET_PULL, &encounterSlot);

    if (v0 == 0) {
        v0 = ov6_0224222C(param1, encounterFieldParams, param3, MAX_GRASS_ENCOUNTERS, TYPE_ELECTRIC, ABILITY_STATIC, &encounterSlot);

        if (v0 == 0) {
            encounterSlot = ov6_02241904();
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

    ov6_02241CC0(v3, v2, param4, encounterFieldParams, param1, battleParams);
    return TRUE;
}

void ov6_02242034 (FieldSystem * fieldSystem, BattleParams * battleParams)
{
    Pokemon * v0;

    int v1 = ov5_021EFFE4(fieldSystem);

    Party * v4 = Party_GetFromSavedata(fieldSystem->saveData);
    v0 = Party_GetPokemonBySlotIndex(v4, 0);

    WildEncounters_FieldParams encounterFieldParams;
    ov6_02242634(fieldSystem, v0, NULL, &encounterFieldParams);

    u8 v5 = 15 - 5 + 1;

    u8 v3 = 5 + inline_020564D0(v5);

    if (!encounterFieldParams.isFirstMonEgg && (encounterFieldParams.firstMonAbility == ABILITY_HUSTLE || encounterFieldParams.firstMonAbility == ABILITY_VITAL_SPIRIT || encounterFieldParams.firstMonAbility == ABILITY_PRESSURE)) {
        if (inline_020564D0(2) == 0) {
            (void)0;
        } else {
            v3 = 15;
        }
    }

    ov5_021F0040(fieldSystem);
    battleParams->unk_164 |= 0x2;
    ov6_02241CC0(v1, v3, 1, &encounterFieldParams, v0, battleParams);

    return;
}

void ov6_022420D4 (FieldSystem * fieldSystem, u16 param1, u8 param2, BattleParams * param3)
{
    Party * v2 = Party_GetFromSavedata(fieldSystem->saveData);
    Pokemon * v0 = Party_GetPokemonBySlotIndex(v2, 0);

    WildEncounters_FieldParams encounterFieldParams;
    ov6_02242634(fieldSystem, v0, NULL, &encounterFieldParams);

    ov6_02241CC0(param1, param2, 1, &encounterFieldParams, v0, param3);
    return;
}

BOOL ov6_02242110 (FieldSystem * fieldSystem, u8 param1)
{
    int encounterRate = 0;

    if (sub_0205DE6C(param1)) {
        if (sub_0205DB58(param1)) {
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

static int GetGrassEncounterRate (FieldSystem * fieldSystem)
{
    WildEncounters * encounterData = MapHeaderData_GetWildEncounters(fieldSystem);
    return encounterData->grassEncounters.encounterRate;
}

static int GetSurfEncounterRate (FieldSystem * fieldSystem)
{
    WildEncounters * encounterData = MapHeaderData_GetWildEncounters(fieldSystem);
    return encounterData->surfEncounters.encounterRate;
}

static int GetFishingEncounterRate (FieldSystem * fieldSystem, const int fishingRodType)
{
    WildEncounters * encounterData = MapHeaderData_GetWildEncounters(fieldSystem);

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

static BOOL ov6_0224219C (const UnkStruct_ov6_0224222C * param0, const u8 maxEncounters, const u8 type, u8 * encounterSlot)
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

static BOOL ov6_0224222C (Pokemon * param0, const WildEncounters_FieldParams * encounterFieldParams, const UnkStruct_ov6_0224222C * param2, const u8 maxEncounters, const u8 type, const u8 ability, u8 * encounterSlot)
{
    if (!encounterFieldParams->isFirstMonEgg && encounterFieldParams->firstMonAbility == ability && inline_020564D0(2) == 0) {
        return ov6_0224219C(param2, maxEncounters, type, encounterSlot);
    }

    return FALSE;
}

static u8 ov6_0224226C (const BOOL isFishingEncounter, const u8 param1, const WildEncounters_FieldParams * encounterFieldParams, const u32 weatherEffect, Pokemon * param4)
{
    int v0 = param1;

    if (!encounterFieldParams->isFirstMonEgg) {
        if (isFishingEncounter) {
            if (encounterFieldParams->firstMonAbility == ABILITY_STICKY_HOLD || encounterFieldParams->firstMonAbility == ABILITY_SUCTION_CUPS) {
                v0 * 2; // BUG: Abilities do not Increase Fishing Encounter Rate (see docs/bugs_and_glitches.md)
            }
        } else {
            if (encounterFieldParams->firstMonAbility == ABILITY_ARENA_TRAP || encounterFieldParams->firstMonAbility == ABILITY_NO_GUARD || encounterFieldParams->firstMonAbility == ABILITY_ILLUMINATE) {
                v0 *= 2;
            } else if (encounterFieldParams->firstMonAbility == ABILITY_SAND_VEIL) {
                if (weatherEffect == OVERWORLD_WEATHER_SANDSTORM) {
                    v0 /= 2;
                }
            } else if (encounterFieldParams->firstMonAbility == ABILITY_SNOW_CLOAK) {
                if (weatherEffect == OVERWORLD_WEATHER_SNOWING || weatherEffect == OVERWORLD_WEATHER_HEAVY_SNOW || weatherEffect == OVERWORLD_WEATHER_BLIZZARD) {
                    v0 /= 2;
                }
            } else if (encounterFieldParams->firstMonAbility == ABILITY_WHITE_SMOKE || encounterFieldParams->firstMonAbility == ABILITY_QUICK_FEET || encounterFieldParams->firstMonAbility == ABILITY_STENCH) {
                v0 /= 2;
            }
        }

        if (v0 > 100) {
            v0 = 100;
        }
    }

    return v0;
}

static BOOL ov6_022422D0 (const WildEncounters_FieldParams * encounterFieldParams, Pokemon * param1, const u8 param2)
{
    if (encounterFieldParams->unk_08) {
        return FALSE;
    }

    if (!encounterFieldParams->isFirstMonEgg && (encounterFieldParams->firstMonAbility == ABILITY_KEEN_EYE || encounterFieldParams->firstMonAbility == ABILITY_INTIMIDATE)) {
        u8 v0 = Pokemon_GetValue(param1, MON_DATA_LEVEL, NULL);

        if (v0 <= 5) {
            return FALSE;
        }

        if (param2 <= v0 - 5 && inline_020564D0(2) == 0) {
            return TRUE;
        }
    }

    return FALSE;
}

static void ov6_02242328 (FieldSystem * fieldSystem, const BOOL param1, BattleParams ** param2)
{
    if (!param1) {
        *param2 = sub_02051D8C(11, (0x0 | 0x0));
    } else {
        u16 * v0 = sub_0203A784(SaveData_GetFieldOverworldState(fieldSystem->saveData));
        *param2 = sub_02051F24(11, *v0);
    }
}

static void ov6_02242354 (FieldSystem * fieldSystem, const BOOL param1, const BOOL nationalDexObtained, UnkStruct_ov6_0224222C * param3)
{
    if (param1) {
        ov6_02242F74(sub_0202D814(sub_0202D834(fieldSystem->saveData), 1), nationalDexObtained, fieldSystem->location->mapId, &param3[6].species, &param3[7].species);
    }
}

static BOOL ov6_02242388 (const u8 roamerLevel, const WildEncounters_FieldParams * encounterFieldParams)
{
    return encounterFieldParams->unk_04 && encounterFieldParams->firstBattlerLevel > roamerLevel;
}

static void ov6_0224239C (const u32 trainerID, UnkStruct_0206C638 * param1, BattleParams * param2)
{
    Pokemon * mon = Pokemon_New(4);
    int roamerSpecies = sub_0202D93C(param1, 4);
    u8 roamerLevel = sub_0202D93C(param1, 6);
    u32 roamerCombinedIVs = sub_0202D93C(param1, 2);
    u32 roamerPersonality = sub_0202D93C(param1, 3);
    u32 roamerStatusCondition = sub_0202D93C(param1, 7);
    u16 roamerCurrentHP = sub_0202D93C(param1, 5);

    sub_02074158(mon, roamerSpecies, roamerLevel, roamerCombinedIVs, roamerPersonality);
    Pokemon_SetValue(mon, MON_DATA_OT_ID, &trainerID);
    Pokemon_SetValue(mon, MON_DATA_STATUS_CONDITION, &roamerStatusCondition);
    Pokemon_SetValue(mon, MON_DATA_CURRENT_HP, &roamerCurrentHP);

    GF_ASSERT(Party_AddPokemon(param2->parties[1], mon));
    Heap_FreeToHeap(mon);
}

static BOOL ov6_02242440 (FieldSystem * fieldSystem, UnkStruct_0206C638 ** param1)
{
    UnkStruct_0206C638 * v1[6];

    u8 v2 = 0;
    UnkStruct_0202D7B0 * v0 = sub_0202D834(fieldSystem->saveData);

    for (u8 v3 = 0; v3 < 6; v3++) {
        int v4 = sub_0206C3C8(sub_0202D8C4(v0, v3));

        if (sub_0202D8F8(v0, v3) && v4 == fieldSystem->location->mapId) {
            v1[v2] = sub_0202D924(v0, v3);
            v2++;
        }
    }

    if (v2 == 0) {
        return FALSE;
    } else if (inline_020564D0(2) == 0) {
        return FALSE;
    }

    if (v2 > 1) {
        *param1 = v1[inline_020564D0(v2)];
    } else {
        *param1 = v1[0];
    }

    return TRUE;
}

static BOOL ov6_02242514 (const int param0, const WildEncounters_FieldParams * encounterFieldParams, Pokemon * mon, BattleParams * battleParams)
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

static u8 ov6_022425D4 (const UnkStruct_ov6_0224222C * param0, const WildEncounters_FieldParams * encounterFieldParams, const u8 encounterSlot)
{
    if (!encounterFieldParams->isFirstMonEgg && (encounterFieldParams->firstMonAbility == ABILITY_VITAL_SPIRIT || encounterFieldParams->firstMonAbility == ABILITY_HUSTLE || encounterFieldParams->firstMonAbility == ABILITY_PRESSURE)) {
        if (inline_020564D0(2) == 0) {
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

static void ov6_02242634 (FieldSystem * fieldSystem, Pokemon * param1, WildEncounters * encounterData, WildEncounters_FieldParams * encounterFieldParams)
{
    if (Pokemon_GetValue(param1, MON_DATA_IS_EGG, NULL) == 0) {
        encounterFieldParams->isFirstMonEgg = FALSE;
        encounterFieldParams->firstMonAbility = Pokemon_GetValue(param1, MON_DATA_ABILITY, NULL);
    } else {
        encounterFieldParams->isFirstMonEgg = TRUE;
        encounterFieldParams->firstMonAbility = 123;
    }

    encounterFieldParams->firstBattlerLevel = 0;
    encounterFieldParams->unk_04 = FALSE;
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
