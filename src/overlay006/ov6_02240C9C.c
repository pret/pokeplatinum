#include <nitro.h>
#include <string.h>

#include "inlines.h"

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
#include "unk_02025E08.h"
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

typedef struct {
    int species;
    u16 maxLevel;
    u16 minLevel;
} UnkStruct_ov6_0224222C;

typedef struct {
    u32 unk_00;
    BOOL unk_04;
    BOOL unk_08;
    u8 unk_0C;
    u8 unk_0D;
    u8 unk_0E;
    u8 unk_0F[2];
    u8 unk_11;
} UnkStruct_ov6_022422D0;

typedef struct UnkStruct_ov6_02248FF0 {
    int numberForms;
    const u8 * forms;
} UnkStruct_ov6_02248FF0;

static BOOL ov6_022417C8(FieldSystem * fieldSystem, const u32 param1, const u8 param2);
static u8 ov6_02241874(FieldSystem * fieldSystem, u8 param1, u8 * param2);
static BOOL ov6_022418B4(FieldSystem * fieldSystem, u32 param1);
static BOOL ov6_022418DC(FieldSystem * fieldSystem, u32 param1);
static BOOL ov6_0224222C(Pokemon * param0, const UnkStruct_ov6_022422D0 * param1, const UnkStruct_ov6_0224222C * param2, const u8 param3, const u8 param4, const u8 param5, u8 * param6);
static BOOL ov6_022422D0(const UnkStruct_ov6_022422D0 * param0, Pokemon * param1, const u8 param2);
static int ov6_0224214C(FieldSystem * fieldSystem);
static int ov6_02242158(FieldSystem * fieldSystem);
static int ov6_02242164(FieldSystem * fieldSystem, const int param1);
static BOOL ov6_02241674(FieldSystem * fieldSystem, Pokemon * param1, BattleParams * param2, WildEncounters * encounterData, UnkStruct_ov6_0224222C * param4, const UnkStruct_ov6_022422D0 * param5, const UnkStruct_ov6_02241674 * param6);
static BOOL ov6_0224174C(FieldSystem * fieldSystem, Pokemon * param1, BattleParams * param2, UnkStruct_ov6_0224222C * param3, const UnkStruct_ov6_022422D0 * param4);
static BOOL ov6_02241790(FieldSystem * fieldSystem, Pokemon * param1, BattleParams * param2, UnkStruct_ov6_0224222C * param3, const UnkStruct_ov6_022422D0 * param4);
static BOOL ov6_022417AC(FieldSystem * fieldSystem, Pokemon * param1, BattleParams * param2, UnkStruct_ov6_0224222C * param3, const UnkStruct_ov6_022422D0 * param4, const int param5);
static BOOL ov6_02241DC4(Pokemon * param0, const int param1, const UnkStruct_ov6_022422D0 * param2, const UnkStruct_ov6_0224222C * param3, const u8 encounterType, const int param5, BattleParams * param6);
static BOOL ov6_02241F7C(FieldSystem * fieldSystem, Pokemon * param1, const UnkStruct_ov6_022422D0 * param2, const UnkStruct_ov6_0224222C * param3, const int param4, BattleParams * param5, const int param6, const int param7);
static BOOL ov6_02241F2C(const int param0, const int param1, const int param2, const BOOL param3, const u32 param4, const UnkStruct_ov6_022422D0 * param5, Pokemon * param6, BattleParams * param7);
static u8 ov6_0224226C(const BOOL param0, const u8 param1, const UnkStruct_ov6_022422D0 * param2, const u32 param3, Pokemon * param4);
static void ov6_02242328(FieldSystem * fieldSystem, const BOOL param1, BattleParams ** param2);
static void ov6_02242354(FieldSystem * fieldSystem, const BOOL param1, const BOOL param2, UnkStruct_ov6_0224222C * param3);
static BOOL ov6_02242388(const u8 param0, const UnkStruct_ov6_022422D0 * param1);
static void ov6_0224239C(const u32 param0, UnkStruct_0206C638 * param1, BattleParams * param2);
static BOOL ov6_02242440(FieldSystem * fieldSystem, UnkStruct_0206C638 ** param1);
static BOOL ov6_02242514(const int param0, const UnkStruct_ov6_022422D0 * param1, Pokemon * param2, BattleParams * param3);
static u8 ov6_022425D4(const UnkStruct_ov6_0224222C * param0, const UnkStruct_ov6_022422D0 * param1, const u8 param2);
static void ov6_02242634(FieldSystem * fieldSystem, Pokemon * param1, WildEncounters * encounterData, UnkStruct_ov6_022422D0 * param3);
static void ov6_02241A90(Pokemon * param0, u8 * param1);
static void ov6_02241ABC(FieldSystem * fieldSystem, u8 * param1);

static const u8 UnownMostForms[] = {
    0x0,
    0x1,
    0x2,
    0x6,
    0x7,
    0x9,
    0xA,
    0xB,
    0xC,
    0xE,
    0xF,
    0x10,
    0x12,
    0x13,
    0x14,
    0x15,
    0x16,
    0x17,
    0x18,
    0x19
};

static const u8 UnownOnlyF[] = {
    0x5
};

static const u8 UnownOnlyR[] = {
    0x11
};

static const u8 UnownOnlyI[] = {
    0x8
};

static const u8 UnownOnlyN[] = {
    0xD
};

static const u8 UnownOnlyE[] = {
    0x4
};

static const u8 UnownOnlyD[] = {
    0x3
};

static const u8 UnownOnlyExcQue[] = {
    0x1A,
    0x1B
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

void ov6_02240C9C (const WildEncounters * encounterData, int * param1, int * param2)
{
    int timeOfDay = GetTimeOfDay();

    if ((timeOfDay == TOD_DAY) || (timeOfDay == TOD_TWILIGHT)) {
        (*param1) = encounterData->dayEncounters[0];
        (*param2) = encounterData->dayEncounters[1];
    } else if ((timeOfDay == TOD_NIGHT) || (timeOfDay == TOD_LATE_NIGHT)) {
        (*param1) = encounterData->nightEncounters[0];
        (*param2) = encounterData->nightEncounters[1];
    }
}

static void ov6_02240CC8 (FieldSystem * fieldSystem, const WildEncounters * encounterData, int * param2, int * param3)
{
    u32 v0;
    UnkStruct_0202D7B0 * v1;

    v1 = sub_0202D834(fieldSystem->saveData);

    if (sub_0202D898(v1)) {
        v0 = sub_0202D814(v1, 2);

        if (fieldSystem->location->mapId == ov6_02243218(v0)) {
            (*param2) = encounterData->swarmEncounters[0];
            (*param3) = encounterData->swarmEncounters[1];
        }
    }
}

static void ov6_02240D00 (FieldSystem * fieldSystem, const BOOL param1, int * param2, int * param3)
{
    int * v0;
    u16 v1, v2;

    if (MapHeader_IsTrophyGarden(fieldSystem->location->mapId)) {
        sub_0202DA10(fieldSystem->saveData, &v1, &v2);

        if (param1) {
            v0 = NARC_AllocAtEndAndReadWholeMemberByIndexPair(NARC_INDEX_ARC__ENCDATA_EX, 8, 4);

            if (v1 != 0xffff) {
                (*param2) = v0[v1];
            }

            if (v2 != 0xffff) {
                (*param3) = v0[v2];
            }

            Heap_FreeToHeap(v0);
        }
    }
}

BOOL ov6_02240D5C (FieldSystem * fieldSystem)
{
    BattleParams * v0;
    Pokemon * v1;
    int v2, v3;
    u8 v4;
    u8 v5;
    BOOL v6;
    BOOL v7;
    BOOL v8;
    BOOL v9;
    UnkStruct_ov6_02241674 v10;
    Party * v11;
    WildEncounters * encounterData;
    UnkStruct_ov6_0224222C v13[MAX_GRASS_ENCOUNTERS];
    UnkStruct_ov6_022422D0 v14;

    v2 = Player_GetXPos(fieldSystem->playerAvatar);
    v3 = Player_GetZPos(fieldSystem->playerAvatar);
    v4 = (u8)sub_02054F94(fieldSystem, v2, v3);

    {
        u8 v15;

        v15 = ov6_02241874(fieldSystem, v4, &v5);

        if (v15 == 0) {
            return 0;
        }

        v11 = Party_GetFromSavedata(fieldSystem->saveData);
        encounterData = MapHeaderData_GetWildEncounters(fieldSystem);
        v1 = Party_GetPokemonBySlotIndex(v11, 0);

        ov6_02242634(fieldSystem, v1, encounterData, &v14);

        {
            if (!sub_0202D9D8(sub_0202D834(fieldSystem->saveData))) {
                Pokemon * v16;

                v16 = Party_FindFirstEligibleBattler(v11);

                v14.unk_04 = 1;
                v14.unk_0C = Pokemon_GetValue(v16, MON_DATA_LEVEL, NULL);
            }
        }

        v15 = ov6_0224226C(0, v15, &v14, FieldOverworldState_GetWeather(SaveData_GetFieldOverworldState(fieldSystem->saveData)), v1);

        ov6_02241ABC(fieldSystem, &v15);
        ov6_02241A90(v1, &v15);

        if (ov6_022417C8(fieldSystem, v15, v4) == 0) {
            v6 = 0;
        } else {
            v6 = 1;
        }
    }

    memset(&v10, 0, sizeof(UnkStruct_ov6_02241674));

    if (!sub_020696DC(v2, v3, fieldSystem, fieldSystem->chain, &v10.unk_00, &v10.unk_04, &v10.unk_08)) {
        v10.unk_0C = 0;
    } else {
        v10.unk_0C = 1;
        v6 = 1;
    }

    if (v6 == 0) {
        return 0;
    }

    if (!sub_0206A984(SaveData_GetVarsFlags(fieldSystem->saveData))) {
        v8 = 0;
    } else {
        v8 = 1;
    }

    if ((!v8) && (v10.unk_0C == 0)) {
        UnkStruct_0206C638 * v17;

        if (ov6_02242440(fieldSystem, &v17)) {
            if (!ov6_02242388(sub_0202D93C(v17, 6), &v14)) {
                v0 = sub_02051D8C(11, 0x100);

                sub_02052314(v0, fieldSystem);
                ov6_0224239C(v14.unk_00, v17, v0);
                RadarChain_Clear(fieldSystem->chain);
                sub_02050E10(fieldSystem, v0);
                return 1;
            } else {
                return 0;
            }
        }
    }

    if (!v8) {
        v9 = sub_0206AE5C(SaveData_GetVarsFlags(fieldSystem->saveData));
        ov6_02242328(fieldSystem, v9, &v0);
    } else {
        v0 = sub_02051D8C(11, (0x2 | 0x8 | 0x40));
    }

    sub_02052314(v0, fieldSystem);

    if (v5 == ENCOUNTER_TYPE_GRASS) {
        BOOL v19;

        for (int i = 0; i < MAX_GRASS_ENCOUNTERS; i++) {
            v13[i].species = encounterData->grassEncounters.encounters[i].species;
            v13[i].maxLevel = encounterData->grassEncounters.encounters[i].level;
            v13[i].minLevel = encounterData->grassEncounters.encounters[i].level;
        }

        v19 = sub_02027474(SaveData_Pokedex(FieldSystem_SaveData(fieldSystem)));

        ov6_02240C9C(encounterData, &v13[2].species, &v13[3].species);
        ov6_02240CC8(fieldSystem, encounterData, &v13[0].species, &v13[1].species);
        ov6_02240D00(fieldSystem, v19, &v13[6].species, &v13[7].species);
        ov6_022477B8(encounterData, v19, &v13[8].species, &v13[9].species);

        if (!v8) {
            ov6_02242354(fieldSystem, v9, v19, v13);

            v7 = ov6_02241674(fieldSystem, v1, v0, encounterData, v13, &v14, &v10);
        } else {
            {
                v0->trainerIDs[2] = sub_0206B034(SaveData_GetVarsFlags(fieldSystem->saveData));
                TrainerData_Encounter(v0, fieldSystem->saveData, 11);
            }
            v7 = ov6_0224174C(fieldSystem, v1, v0, v13, &v14);
        }
    } else if (v5 == ENCOUNTER_TYPE_SURF) {
        for (int i = 0; i < MAX_WATER_ENCOUNTERS; i++) {
            v13[i].species = encounterData->surfEncounters.encounters[i].species;
            v13[i].maxLevel = encounterData->surfEncounters.encounters[i].maxLevel;
            v13[i].minLevel = encounterData->surfEncounters.encounters[i].minLevel;
        }

        v7 = ov6_02241790(fieldSystem, v1, v0, v13, &v14);
    } else {
        GF_ASSERT(FALSE);
        sub_020520A4(v0);
        return 0;
    }

    if (v7) {
        sub_02050E10(fieldSystem, v0);
    } else {
        v6 = 0;
    }

    GF_ASSERT(GF_heap_c_dummy_return_true(4));
    GF_ASSERT(GF_heap_c_dummy_return_true(11));

    if (v6 == 0) {
        sub_020520A4(v0);
    }

    fieldSystem->unk_78.unk_00 = 0;

    return v6;
}

BOOL ov6_0224106C (FieldSystem * fieldSystem, const int fishingRodType, BattleParams ** param2)
{
    Pokemon * v0;
    Party * v1;
    BOOL v2;
    UnkStruct_ov6_0224222C v3[MAX_GRASS_ENCOUNTERS];
    UnkStruct_ov6_022422D0 v4;

    {
        u8 v5;

        v5 = ov6_02242164(fieldSystem, fishingRodType);

        if (v5 == 0) {
            return FALSE;
        }

        v1 = Party_GetFromSavedata(fieldSystem->saveData);
        v0 = Party_GetPokemonBySlotIndex(v1, 0);
        ov6_02242634(fieldSystem, v0, NULL, &v4);
        v5 = ov6_0224226C(1, v5, &v4, FieldOverworldState_GetWeather(SaveData_GetFieldOverworldState(fieldSystem->saveData)), v0);

        if (inline_020564D0(100) >= v5) {
            return FALSE;
        }
    }

    v2 = sub_0206AE5C(SaveData_GetVarsFlags(fieldSystem->saveData));

    ov6_02242328(fieldSystem, v2, param2);

    sub_02052314(*param2, fieldSystem);
    sub_0205285C(*param2);

    if ((MapHeader_HasFeebasTiles(fieldSystem->location->mapId)) && ov6_02247660(fieldSystem)) {
        int v7;
        u8 maxLevel, minLevel;

        ov6_02247794(&maxLevel, &minLevel);
        ov6_022477A0(&v7);

        for (u8 i = 0; i < MAX_WATER_ENCOUNTERS; i++) {
            v3[i].species = v7;
            v3[i].maxLevel = maxLevel;
            v3[i].minLevel = minLevel;
        }
    } else {
        {
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
    }

    {
        BOOL v13;

        v13 = ov6_022417AC(fieldSystem, v0, *param2, v3, &v4, fishingRodType);

        if (!v13) {
            return FALSE;
        }
    }

    return TRUE;
}

BOOL ov6_022411C8 (FieldSystem * fieldSystem, TaskManager * param1)
{
    BattleParams * v0;
    Pokemon * v1;
    int v2, v3;
    u8 v4;
    u8 encounterType;
    BOOL v6;
    BOOL v7;
    BOOL v8;
    UnkStruct_ov6_02241674 v9;
    Party * v10;
    WildEncounters * encounterData;
    UnkStruct_ov6_0224222C v12[MAX_GRASS_ENCOUNTERS];
    UnkStruct_ov6_022422D0 v13;

    v2 = Player_GetXPos(fieldSystem->playerAvatar);
    v3 = Player_GetZPos(fieldSystem->playerAvatar);
    v4 = (u8)sub_02054F94(fieldSystem, v2, v3);

    {
        u8 v14;

        v14 = ov6_02241874(fieldSystem, v4, &encounterType);

        if (v14 == 0) {
            return 0;
        }
    }

    v10 = Party_GetFromSavedata(fieldSystem->saveData);
    encounterData = MapHeaderData_GetWildEncounters(fieldSystem);
    v1 = Party_GetPokemonBySlotIndex(v10, 0);

    ov6_02242634(fieldSystem, v1, encounterData, &v13);

    v13.unk_04 = 0;
    v13.unk_08 = 1;

    memset(&v9, 0, sizeof(UnkStruct_ov6_02241674));

    if (!sub_0206A984(SaveData_GetVarsFlags(fieldSystem->saveData))) {
        v6 = 0;
    } else {
        v6 = 1;
    }

    if (!v6) {
        UnkStruct_0206C638 * v15;

        if (ov6_02242440(fieldSystem, &v15)) {
            v0 = sub_02051D8C(11, 0x100);

            sub_02052314(v0, fieldSystem);
            ov6_0224239C(v13.unk_00, v15, v0);
            RadarChain_Clear(fieldSystem->chain);
            sub_02050E78(fieldSystem, param1, v0);
            return 1;
        }
    }

    if (!v6) {
        v7 = sub_0206AE5C(SaveData_GetVarsFlags(fieldSystem->saveData));
        ov6_02242328(fieldSystem, v7, &v0);
    } else {
        v0 = sub_02051D8C(11, (0x2 | 0x8 | 0x40));
    }

    sub_02052314(v0, fieldSystem);

    if (encounterType == ENCOUNTER_TYPE_GRASS) {
        BOOL v17;

        for (int i = 0; i < MAX_GRASS_ENCOUNTERS; i++) {
            v12[i].species = encounterData->grassEncounters.encounters[i].species;
            v12[i].maxLevel = encounterData->grassEncounters.encounters[i].level;
            v12[i].minLevel = encounterData->grassEncounters.encounters[i].level;
        }

        v17 = sub_02027474(SaveData_Pokedex(FieldSystem_SaveData(fieldSystem)));

        ov6_02240C9C(encounterData, &v12[2].species, &v12[3].species);
        ov6_02240CC8(fieldSystem, encounterData, &v12[0].species, &v12[1].species);
        ov6_02240D00(fieldSystem, v17, &v12[6].species, &v12[7].species);
        ov6_022477B8(encounterData, v17, &v12[8].species, &v12[9].species);

        if (!v6) {
            ov6_02242354(fieldSystem, v7, v17, v12);

            v8 = ov6_02241674(fieldSystem, v1, v0, encounterData, v12, &v13, &v9);
        } else {
            {
                v0->trainerIDs[2] = sub_0206B034(SaveData_GetVarsFlags(fieldSystem->saveData));
                TrainerData_Encounter(v0, fieldSystem->saveData, 11);
            }
            v8 = ov6_0224174C(fieldSystem, v1, v0, v12, &v13);
        }
    } else if (encounterType == ENCOUNTER_TYPE_SURF) {
        for (int i = 0; i < MAX_WATER_ENCOUNTERS; i++) {
            v12[i].species = encounterData->surfEncounters.encounters[i].species;
            v12[i].maxLevel = encounterData->surfEncounters.encounters[i].maxLevel;
            v12[i].minLevel = encounterData->surfEncounters.encounters[i].minLevel;
        }

        v8 = ov6_02241790(fieldSystem, v1, v0, v12, &v13);
    } else {
        GF_ASSERT(FALSE);
        return FALSE;
    }

    if (v8) {
        sub_02050E78(fieldSystem, param1, v0);
    } else {
        GF_ASSERT(FALSE);
    }

    fieldSystem->unk_78.unk_00 = 0;
    return TRUE;
}

BOOL ov6_022413E4 (FieldSystem * fieldSystem, BattleParams ** param1)
{
    Pokemon * v0;
    int v1, v2;
    u8 v3;
    u8 v4;
    BOOL v5;
    BOOL v6;
    BOOL v7;
    BOOL v8;
    UnkStruct_ov6_02241674 v9;
    Party * v10;
    WildEncounters * encounterData;
    UnkStruct_ov6_0224222C v12[MAX_GRASS_ENCOUNTERS];
    UnkStruct_ov6_022422D0 v13;

    *param1 = NULL;

    v1 = Player_GetXPos(fieldSystem->playerAvatar);
    v2 = Player_GetZPos(fieldSystem->playerAvatar);
    v3 = (u8)sub_02054F94(fieldSystem, v1, v2);

    {
        u8 v14;

        v14 = ov6_02241874(fieldSystem, v3, &v4);

        if (v14 == 0) {
            return 0;
        }

        v10 = Party_GetFromSavedata(fieldSystem->saveData);
        encounterData = (WildEncounters *)MapHeaderData_GetWildEncounters(fieldSystem);
        v0 = Party_GetPokemonBySlotIndex(v10, 0);

        ov6_02242634(fieldSystem, v0, encounterData, &v13);

        {
            if (!sub_0202D9D8(sub_0202D834(fieldSystem->saveData))) {
                Pokemon * v15;

                v15 = Party_FindFirstEligibleBattler(v10);

                v13.unk_04 = 1;
                v13.unk_0C = Pokemon_GetValue(v15, MON_DATA_LEVEL, NULL);
            }
        }

        v14 = ov6_0224226C(0, v14, &v13, FieldOverworldState_GetWeather(SaveData_GetFieldOverworldState(fieldSystem->saveData)), v0);

        ov6_02241ABC(fieldSystem, &v14);
        ov6_02241A90(v0, &v14);

        if (ov6_022417C8(fieldSystem, v14, v3) == 0) {
            v5 = 0;
        } else {
            v5 = 1;
        }
    }

    memset(&v9, 0, sizeof(UnkStruct_ov6_02241674));
    v9.unk_0C = 0;

    if (!sub_0206A984(SaveData_GetVarsFlags(fieldSystem->saveData))) {
        v7 = 0;
    } else {
        v7 = 1;
    }

    if (!v7) {
        UnkStruct_0206C638 * v16;

        if (ov6_02242440(fieldSystem, &v16)) {
            if (!ov6_02242388(sub_0202D93C(v16, 6), &v13)) {
                *param1 = sub_02051D8C(11, 0x100);

                sub_02052314(*param1, fieldSystem);
                ov6_0224239C(v13.unk_00, v16, *param1);
                RadarChain_Clear(fieldSystem->chain);
                return 1;
            } else {
                return 0;
            }
        }
    }

    if (!v7) {
        v8 = sub_0206AE5C(SaveData_GetVarsFlags(fieldSystem->saveData));
        ov6_02242328(fieldSystem, v8, param1);
    } else {
        *param1 = sub_02051D8C(11, (0x2 | 0x8 | 0x40));
    }

    sub_02052314(*param1, fieldSystem);

    if (v4 == 0) {
        BOOL v18;

        for (int i = 0; i < MAX_GRASS_ENCOUNTERS; i++) {
            v12[i].species = encounterData->grassEncounters.encounters[i].species;
            v12[i].maxLevel = encounterData->grassEncounters.encounters[i].level;
            v12[i].minLevel = encounterData->grassEncounters.encounters[i].level;
        }

        v18 = sub_02027474(SaveData_Pokedex(FieldSystem_SaveData(fieldSystem)));

        ov6_02240C9C(encounterData, &v12[2].species, &v12[3].species);
        ov6_02240CC8(fieldSystem, encounterData, &v12[0].species, &v12[1].species);
        ov6_02240D00(fieldSystem, v18, &v12[6].species, &v12[7].species);
        ov6_022477B8(encounterData, v18, &v12[8].species, &v12[9].species);

        if (!v7) {
            ov6_02242354(fieldSystem, v8, v18, v12);

            v6 = ov6_02241674(fieldSystem, v0, *param1, encounterData, v12, &v13, &v9);
        } else {
            {
                (*param1)->trainerIDs[2] = sub_0206B034(SaveData_GetVarsFlags(fieldSystem->saveData));
                TrainerData_Encounter(*param1, fieldSystem->saveData, 11);
            }
            v6 = ov6_0224174C(fieldSystem, v0, *param1, v12, &v13);
        }
    } else {
        GF_ASSERT(FALSE);
        sub_020520A4(*param1);
        return 0;
    }

    if (!v6) {
        v5 = 0;
    }

    GF_ASSERT(GF_heap_c_dummy_return_true(4));
    GF_ASSERT(GF_heap_c_dummy_return_true(11));

    if (v5 == 0) {
        sub_020520A4(*param1);
    } else {
        fieldSystem->unk_78.unk_00 = 0;
    }

    return v5;
}

static BOOL ov6_02241674 (FieldSystem * fieldSystem, Pokemon * param1, BattleParams * param2, WildEncounters * encounterData, UnkStruct_ov6_0224222C * param4, const UnkStruct_ov6_022422D0 * param5, const UnkStruct_ov6_02241674 * param6)
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
            TrainerInfo * v3;

            v3 = SaveData_GetTrainerInfo(FieldSystem_SaveData(fieldSystem));
            v0 = ov6_02241F2C(species, level, 1, param6->unk_08, TrainerInfo_ID(v3), param5, param1, param2);
        } else {
            v0 = ov6_02241F7C(fieldSystem, param1, param5, param4, 1, param2, species, level);
        }

        if (v0) {
            {
                int v4, v5;

                v4 = Player_GetXPos(fieldSystem->playerAvatar);
                v5 = Player_GetZPos(fieldSystem->playerAvatar);

                RadarSpawnPatches(fieldSystem, v4, v5, fieldSystem->chain);
            }
        }
    } else {
        v0 = ov6_02241DC4(param1, 0xff, param5, param4, ENCOUNTER_TYPE_GRASS, 1, param2);

        if (v0) {
            RadarChain_Clear(fieldSystem->chain);
        }
    }

    return v0;
}

static BOOL ov6_0224174C (FieldSystem * fieldSystem, Pokemon * param1, BattleParams * param2, UnkStruct_ov6_0224222C * param3, const UnkStruct_ov6_022422D0 * param4)
{
    BOOL v0;
    {
        {
            v0 = ov6_02241DC4(param1, 0xff, param4, param3, ENCOUNTER_TYPE_GRASS, 1, param2);

            if (!v0) {
                return 0;
            }

            v0 = ov6_02241DC4(param1, 0xff, param4, param3, ENCOUNTER_TYPE_GRASS, 3, param2);
        }
    }

    return v0;
}

static BOOL ov6_02241790 (FieldSystem * fieldSystem, Pokemon * param1, BattleParams * param2, UnkStruct_ov6_0224222C * param3, const UnkStruct_ov6_022422D0 * param4)
{
    BOOL v0;

    {
        v0 = ov6_02241DC4(param1, 0xff, param4, param3, ENCOUNTER_TYPE_SURF, 1, param2);
    }

    return v0;
}

static BOOL ov6_022417AC (FieldSystem * fieldSystem, Pokemon * param1, BattleParams * param2, UnkStruct_ov6_0224222C * param3, const UnkStruct_ov6_022422D0 * param4, const int fishingRodType)
{
    BOOL v0;

    v0 = ov6_02241DC4(param1, fishingRodType, param4, param3, ENCOUNTER_TYPE_FISHING, 1, param2);
    return v0;
}

static BOOL ov6_022417C8 (FieldSystem * fieldSystem, const u32 param1, const u8 param2)
{
    u8 v0;
    u32 v1;

    if (param1 > 100) {
        v1 = 100;
    }

    v1 = param1 << 8;

    if (ov6_022418B4(fieldSystem, v1) == 0) {
        fieldSystem->unk_78.unk_00++;

        if ((inline_020564D0(100)) >= 5) {
            return 0;
        }
    }

    v0 = 40;

    if (sub_0205DAD4(param2)) {
        v0 += 30;
    } else {
        if (PlayerAvatar_GetPlayerState(fieldSystem->playerAvatar) == 0x1) {
            v0 += 30;
        }
    }

    v0 = ov6_02246B74(v0, sub_02055C40(fieldSystem));

    if (v0 > 100) {
        v0 = 100;
    }

    if ((inline_020564D0(100)) < v0) {
        if (ov6_022418DC(fieldSystem, param1)) {
            return 1;
        }
    }

    return 0;
}

static u8 ov6_02241874 (FieldSystem * fieldSystem, u8 param1, u8 * param2)
{
    if (sub_0205DE6C(param1)) {
        if (sub_0205DB58(param1)) {
            (*param2) = 1;
            return ov6_02242158(fieldSystem);
        } else {
            (*param2) = 0;
            return ov6_0224214C(fieldSystem);
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

    if (fieldSystem->unk_78.unk_00 >= param1) {
        return 1;
    }

    return 0;
}

static BOOL ov6_022418DC (FieldSystem * fieldSystem, u32 param1)
{
    if (inline_020564D0(100) >= param1) {
        return 0;
    } else {
        return 1;
    }
}

static u8 ov6_02241904 (void)
{
    u8 v0;

    v0 = inline_020564D0(100);

    if (v0 < 20) {
        return 0;
    }

    if ((v0 >= 20) && (v0 < 40)) {
        return 1;
    }

    if ((v0 >= 40) && (v0 < 50)) {
        return 2;
    }

    if ((v0 >= 50) && (v0 < 60)) {
        return 3;
    }

    if ((v0 >= 60) && (v0 < 70)) {
        return 4;
    }

    if ((v0 >= 70) && (v0 < 80)) {
        return 5;
    }

    if ((v0 >= 80) && (v0 < 85)) {
        return 6;
    }

    if ((v0 >= 85) && (v0 < 90)) {
        return 7;
    }

    if ((v0 >= 90) && (v0 < 94)) {
        return 8;
    }

    if ((v0 >= 94) && (v0 < 98)) {
        return 9;
    }

    if (v0 == 98) {
        return 10;
    }

    return 11;
}

static u8 ov6_022419A0 (void)
{
    u8 v0;

    v0 = inline_020564D0(100);

    if (v0 < 60) {
        return 0;
    }

    if ((v0 >= 60) && (v0 < 90)) {
        return 1;
    }

    if ((v0 >= 90) && (v0 < 95)) {
        return 2;
    }

    if ((v0 >= 95) && (v0 < 99)) {
        return 3;
    }

    return 4;
}

static u8 ov6_022419EC (const int fishingRodType)
{
    u8 v0;
    u8 v1 = 0;

    v0 = inline_020564D0(100);

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

static void ov6_02241A90 (Pokemon * param0, u8 * param1)
{
    u16 v0;

    v0 = Pokemon_GetValue(param0, MON_DATA_HELD_ITEM, NULL);

    if ((v0 == 224) || (v0 == 320)) {
        (*param1) = ((*param1) * 2) / 3;
    }
}

static void ov6_02241ABC (FieldSystem * fieldSystem, u8 * param1)
{
    u8 v0;

    v0 = sub_0202DA04(sub_0202D834(fieldSystem->saveData));

    if (v0 == 1) {
        (*param1) /= 2;
    } else if (v0 == 2) {
        (*param1) = (*param1) + ((*param1) / 2);
    }
}

static u8 ov6_02241AE4 (Pokemon * param0, const UnkStruct_ov6_022422D0 * param1)
{
    u32 v0;

    if (param1->unk_0D == 0) {
        if (param1->unk_0E == 28) {
            if (inline_020564D0(2) == 0) {
                v0 = (u32)Pokemon_GetValue(param0, MON_DATA_PERSONALITY, NULL);
                v0 = v0 % 25;
                return (u8)v0;
            }
        }
    }

    return inline_020564D0(25);
}

static u8 ov6_02241B40 (const UnkStruct_ov6_0224222C * param0, const UnkStruct_ov6_022422D0 * param1)
{
    u8 v0;
    u8 v1;
    u8 minLevel, maxLevel;
    u8 v4;

    if (param0->maxLevel >= param0->minLevel) {
        minLevel = param0->minLevel;
        maxLevel = param0->maxLevel;
    } else {
        minLevel = param0->maxLevel;
        maxLevel = param0->minLevel;
    }

    v0 = maxLevel - minLevel + 1;
    v1 = LCRNG_Next() % v0;

    if (param1->unk_0D == 0) {
        if ((param1->unk_0E == 55) || (param1->unk_0E == 72) || (param1->unk_0E == 46)) {
            if (inline_020564D0(2) == 0) {
                return minLevel + v1;
            }

            return maxLevel;
        }
    }

    return minLevel + v1;
}

static void ov6_02241BAC (const u16 param0, const u8 param1, const int param2, const u32 param3, const UnkStruct_ov6_022422D0 * param4, Pokemon * param5, BattleParams * param6)
{
    BOOL v0;
    u32 v1;
    BOOL v2;
    u8 v3;
    u8 v4;
    Pokemon * v5;

    v5 = Pokemon_New(11);
    Pokemon_Init(v5);

    v2 = 0;

    if (param4->unk_0D == 0) {
        if (param4->unk_0E == 56) {
            u32 v6;

            v6 = PokemonPersonalData_GetSpeciesValue(param0, 18);

            switch (v6) {
            case 0:
            case 254:
            case 255:
                break;
            default:
                if (inline_020564D0(3) > 0) {
                    v3 = Pokemon_GetValue(param5, MON_DATA_GENDER, NULL);
                    v2 = 1;
                }
            }
        } else if (param4->unk_0E == 28) {
            if (inline_020564D0(2) == 0) {
                v4 = Pokemon_GetNature(param5);
                v2 = 1;
            }
        }
    }

    v1 = Pokemon_FindShinyPersonality(param3);

    if (v2) {
        u8 v7, v8;

        do {
            if (param4->unk_0E == 56) {
                v7 = Pokemon_GetGenderOf(param0, v1);
                GF_ASSERT(v7 != 2);

                if (v7 != v3) {
                    break;
                } else {
                    v1 = Pokemon_FindShinyPersonality(param3);
                }
            } else if (param4->unk_0E == 28) {
                v8 = Pokemon_GetNatureOf(v1);

                if (v8 == v4) {
                    break;
                } else {
                    v1 = Pokemon_FindShinyPersonality(param3);
                }
            }
        } while (TRUE);
    }

    Pokemon_InitWith(v5, param0, param1, 32, 1, v1, 1, param4->unk_00);
    v0 = ov6_02242514(param2, param4, v5, param6);

    GF_ASSERT(v0);
    Heap_FreeToHeap(v5);
}

static void ov6_02241CC0 (u16 species, u8 level, const int param2, const UnkStruct_ov6_022422D0 * param3, Pokemon * param4, BattleParams * param5)
{
    u8 v0;
    u8 v1;
    BOOL v2;
    Pokemon * v3;

    v3 = Pokemon_New(11);
    Pokemon_Init(v3);
    v0 = 1;

    {
        u32 v4;

        v4 = PokemonPersonalData_GetSpeciesValue(species, 18);

        switch (v4) {
        case 0:
        case 254:
        case 255:
            v0 = 0;
        }
    }

    if (v0) {
        if (param3->unk_0D == 0) {
            if (param3->unk_0E == 56) {
                if (inline_020564D0(3) > 0) {
                    v1 = Pokemon_GetValue(param4, MON_DATA_GENDER, NULL);

                    if (v1 == 1) {
                        v1 = 0;
                    } else if (v1 == 0) {
                        v1 = 1;
                    } else {
                        GF_ASSERT(FALSE);
                    }

                    sub_02074088(v3, species, level, 32, v1, ov6_02241AE4(param4, param3), 0);
                    Pokemon_SetValue(v3, 7, &param3->unk_00);

                    v2 = ov6_02242514(param2, param3, v3, param5);
                    GF_ASSERT(v2);
                    Heap_FreeToHeap(v3);
                    return;
                }
            }
        }
    }

    sub_02074044(v3, species, level, 32, ov6_02241AE4(param4, param3));
    Pokemon_SetValue(v3, 7, &param3->unk_00);
    v2 = ov6_02242514(param2, param3, v3, param5);

    GF_ASSERT(v2);
    Heap_FreeToHeap(v3);
}

static BOOL ov6_02241DC4 (Pokemon * param0, const int fishingRodType, const UnkStruct_ov6_022422D0 * param2, const UnkStruct_ov6_0224222C * param3, const u8 encounterType, const int param5, BattleParams * param6)
{
    BOOL v0;
    u8 encounterSlot = 0;
    u8 level = 0;

    switch (encounterType) {
    case ENCOUNTER_TYPE_GRASS:
        v0 = ov6_0224222C(param0, param2, param3, MAX_GRASS_ENCOUNTERS, 8, 42, &encounterSlot);

        if (v0 == 0) {
            v0 = ov6_0224222C(param0, param2, param3, MAX_GRASS_ENCOUNTERS, 13, 9, &encounterSlot);

            if (v0 == 0) {
                encounterSlot = ov6_02241904();
            }
        }

        encounterSlot = ov6_022425D4(param3, param2, encounterSlot);
        level = param3[encounterSlot].maxLevel;
        break;
    case ENCOUNTER_TYPE_SURF:
        v0 = ov6_0224222C(param0, param2, param3, MAX_WATER_ENCOUNTERS, 8, 42, &encounterSlot);
        v0 = ov6_0224222C(param0, param2, param3, MAX_WATER_ENCOUNTERS, 13, 9, &encounterSlot);

        if (v0 == 0) {
            encounterSlot = ov6_022419A0();
        }

        level = ov6_02241B40(&param3[encounterSlot], param2);
        break;
    case ENCOUNTER_TYPE_FISHING:
        v0 = ov6_0224222C(param0, param2, param3, MAX_WATER_ENCOUNTERS, 8, 42, &encounterSlot);
        v0 = ov6_0224222C(param0, param2, param3, MAX_WATER_ENCOUNTERS, 13, 9, &encounterSlot);

        if (v0 == 0) {
            encounterSlot = ov6_022419EC(fishingRodType);
        }

        level = ov6_02241B40(&param3[encounterSlot], param2);
        break;
    default:
        GF_ASSERT(FALSE);
    }

    if (ov6_022422D0(param2, param0, level)) {
        return FALSE;
    }

    if (ov6_02242388(level, param2) == 1) {
        return FALSE;
    }

    ov6_02241CC0(param3[encounterSlot].species, level, param5, param2, param0, param6);
    return TRUE;
}

static BOOL ov6_02241F2C (const int param0, const int param1, const int param2, const BOOL param3, const u32 param4, const UnkStruct_ov6_022422D0 * param5, Pokemon * param6, BattleParams * param7)
{
    u8 v0 = 0;

    GF_ASSERT(param0 != 0);
    v0 = param1;

    if (param3) {
        ov6_02241BAC(param0, v0, param2, param4, param5, param6, param7);
    } else {
        ov6_02241CC0(param0, v0, param2, param5, param6, param7);
    }

    return 1;
}

static BOOL ov6_02241F7C (FieldSystem * fieldSystem, Pokemon * param1, const UnkStruct_ov6_022422D0 * param2, const UnkStruct_ov6_0224222C * param3, const int param4, BattleParams * param5, const int species, const int level)
{
    u8 v0;
    u8 encounterSlot = 0;
    u8 v2 = 0;
    int v3;

    v0 = ov6_0224222C(param1, param2, param3, MAX_GRASS_ENCOUNTERS, 8, 42, &encounterSlot);

    if (v0 == 0) {
        v0 = ov6_0224222C(param1, param2, param3, MAX_GRASS_ENCOUNTERS, 13, 9, &encounterSlot);

        if (v0 == 0) {
            encounterSlot = ov6_02241904();
        }
    }

    v2 = param3[encounterSlot].maxLevel;
    v3 = param3[encounterSlot].species;

    if (species == 0) {
        SetRadarMon(fieldSystem->chain, v3, v2);
        sub_02069B74(fieldSystem);
    } else {
        if (v3 == species) {
            v3 = species;
            v2 = level;
            sub_02069B74(fieldSystem);
        } else {
            RadarChain_Clear(fieldSystem->chain);
        }
    }

    ov6_02241CC0(v3, v2, param4, param2, param1, param5);
    return TRUE;
}

void ov6_02242034 (FieldSystem * fieldSystem, BattleParams * param1)
{
    Pokemon * v0;
    int v1;
    UnkStruct_ov6_022422D0 v2;
    u8 v3;

    v1 = ov5_021EFFE4(fieldSystem);

    {
        Party * v4;

        v4 = Party_GetFromSavedata(fieldSystem->saveData);
        v0 = Party_GetPokemonBySlotIndex(v4, 0);

        ov6_02242634(fieldSystem, v0, NULL, &v2);
    }

    {
        u8 v5 = 15 - 5 + 1;

        v3 = 5 + inline_020564D0(v5);

        if (v2.unk_0D == 0) {
            if ((v2.unk_0E == 55) || (v2.unk_0E == 72) || (v2.unk_0E == 46)) {
                if (inline_020564D0(2) == 0) {
                    (void)0;
                } else {
                    v3 = 15;
                }
            }
        }
    }

    ov5_021F0040(fieldSystem);
    param1->unk_164 |= 0x2;
    ov6_02241CC0(v1, v3, 1, &v2, v0, param1);

    return;
}

void ov6_022420D4 (FieldSystem * fieldSystem, u16 param1, u8 param2, BattleParams * param3)
{
    Pokemon * v0;
    UnkStruct_ov6_022422D0 v1;

    {
        Party * v2;

        v2 = Party_GetFromSavedata(fieldSystem->saveData);
        v0 = Party_GetPokemonBySlotIndex(v2, 0);

        ov6_02242634(fieldSystem, v0, NULL, &v1);
    }

    ov6_02241CC0(param1, param2, 1, &v1, v0, param3);
    return;
}

BOOL ov6_02242110 (FieldSystem * fieldSystem, u8 param1)
{
    int v0 = 0;

    if (sub_0205DE6C(param1)) {
        if (sub_0205DB58(param1)) {
            v0 = ov6_02242158(fieldSystem);
        } else {
            v0 = ov6_0224214C(fieldSystem);
        }
    }

    if (v0) {
        return 1;
    } else {
        return 0;
    }
}

static int ov6_0224214C (FieldSystem * fieldSystem)
{
    WildEncounters * encounterData = MapHeaderData_GetWildEncounters(fieldSystem);
    return encounterData->grassEncounters.encounterRate;
}

static int ov6_02242158 (FieldSystem * fieldSystem)
{
    WildEncounters * encounterData = MapHeaderData_GetWildEncounters(fieldSystem);
    return encounterData->surfEncounters.encounterRate;
}

static int ov6_02242164 (FieldSystem * fieldSystem, const int fishingRodType)
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

static BOOL ov6_0224219C (const UnkStruct_ov6_0224222C * param0, const u8 maxEncounters, const u8 param2, u8 * encounterSlot)
{
    u8 v0[MAX_GRASS_ENCOUNTERS];
    u8 v1;
    u8 v2;
    u8 v3, v4;

    for (v2 = 0; v2 < MAX_GRASS_ENCOUNTERS; v2++) {
        v0[v2] = 0;
    }

    v1 = 0;

    for (v2 = 0; v2 < maxEncounters; v2++) {
        v3 = PokemonPersonalData_GetSpeciesValue(param0[v2].species, MON_DATA_PERSONAL_TYPE_1);
        v4 = PokemonPersonalData_GetSpeciesValue(param0[v2].species, MON_DATA_PERSONAL_TYPE_2);

        if ((v3 == param2) || (v4 == param2)) {
            v0[v1++] = v2;
        }
    }

    if ((v1 == 0) || (v1 == maxEncounters)) {
        return FALSE;
    }

    *encounterSlot = v0[LCRNG_Next() % v1];
    return TRUE;
}

static BOOL ov6_0224222C (Pokemon * param0, const UnkStruct_ov6_022422D0 * param1, const UnkStruct_ov6_0224222C * param2, const u8 maxEncounters, const u8 param4, const u8 param5, u8 * encounterSlot)
{
    if (param1->unk_0D == 0) {
        if (param1->unk_0E == param5) {
            if (inline_020564D0(2) == 0) {
                return ov6_0224219C(param2, maxEncounters, param4, encounterSlot);
            }
        }
    }

    return FALSE;
}

static u8 ov6_0224226C (const BOOL param0, const u8 param1, const UnkStruct_ov6_022422D0 * param2, const u32 param3, Pokemon * param4)
{
    int v0;

    v0 = param1;

    if (param2->unk_0D == 0) {
        if (param0) {
            if ((param2->unk_0E == 60) || (param2->unk_0E == 21)) {
                (void)(v0 * 2);
            }
        } else {
            if ((param2->unk_0E == 71) || (param2->unk_0E == 99) || (param2->unk_0E == 35)) {
                v0 *= 2;
            } else if (param2->unk_0E == 8) {
                if (param3 == 10) {
                    v0 /= 2;
                }
            } else if (param2->unk_0E == 81) {
                if ((param3 == 5) || (param3 == 6) || (param3 == 7)) {
                    v0 /= 2;
                }
            } else if ((param2->unk_0E == 73) || (param2->unk_0E == 95) || (param2->unk_0E == 1)) {
                v0 /= 2;
            }
        }

        if (v0 > 100) {
            v0 = 100;
        }
    }

    return v0;
}

static BOOL ov6_022422D0 (const UnkStruct_ov6_022422D0 * param0, Pokemon * param1, const u8 param2)
{
    u8 v0;

    if (param0->unk_08) {
        return 0;
    }

    if (param0->unk_0D == 0) {
        if ((param0->unk_0E == 51) || (param0->unk_0E == 22)) {
            v0 = Pokemon_GetValue(param1, MON_DATA_LEVEL, NULL);

            if (v0 <= 5) {
                return 0;
            }

            if (param2 <= v0 - 5) {
                if (inline_020564D0(2) == 0) {
                    return 1;
                }
            }
        }
    }

    return 0;
}

static void ov6_02242328 (FieldSystem * fieldSystem, const BOOL param1, BattleParams ** param2)
{
    if (!param1) {
        (*param2) = sub_02051D8C(11, (0x0 | 0x0));
    } else {
        u16 * v0 = sub_0203A784(SaveData_GetFieldOverworldState(fieldSystem->saveData));
        (*param2) = sub_02051F24(11, *v0);
    }
}

static void ov6_02242354 (FieldSystem * fieldSystem, const BOOL param1, const BOOL param2, UnkStruct_ov6_0224222C * param3)
{
    if (param1) {
        ov6_02242F74(sub_0202D814(sub_0202D834(fieldSystem->saveData), 1), param2, fieldSystem->location->mapId, &param3[6].species, &param3[7].species);
    }
}

static BOOL ov6_02242388 (const u8 param0, const UnkStruct_ov6_022422D0 * param1)
{
    if (param1->unk_04) {
        if (param1->unk_0C > param0) {
            return 1;
        }
    }

    return 0;
}

static void ov6_0224239C (const u32 param0, UnkStruct_0206C638 * param1, BattleParams * param2)
{
    int v0;
    u8 v1;
    u32 v2;
    u32 v3;
    u32 v4;
    u16 v5;
    BOOL v6;
    Pokemon * v7;

    v7 = Pokemon_New(4);
    v0 = sub_0202D93C(param1, 4);
    v1 = sub_0202D93C(param1, 6);
    v2 = sub_0202D93C(param1, 2);
    v3 = sub_0202D93C(param1, 3);
    v4 = sub_0202D93C(param1, 7);
    v5 = sub_0202D93C(param1, 5);

    sub_02074158(v7, v0, v1, v2, v3);
    Pokemon_SetValue(v7, 7, &param0);
    Pokemon_SetValue(v7, 160, &v4);
    Pokemon_SetValue(v7, 163, &v5);

    v6 = Party_AddPokemon(param2->parties[1], v7);

    GF_ASSERT(v6);
    Heap_FreeToHeap(v7);
}

static BOOL ov6_02242440 (FieldSystem * fieldSystem, UnkStruct_0206C638 ** param1)
{
    UnkStruct_0202D7B0 * v0;
    UnkStruct_0206C638 * v1[6];
    u8 v2;
    u8 v3;
    int v4;

    v2 = 0;
    v0 = sub_0202D834(fieldSystem->saveData);

    for (v3 = 0; v3 < 6; v3++) {
        v4 = sub_0206C3C8(sub_0202D8C4(v0, v3));

        if (sub_0202D8F8(v0, v3) && (v4 == fieldSystem->location->mapId)) {
            v1[v2] = sub_0202D924(v0, v3);
            v2++;
        }
    }

    if (v2 == 0) {
        return 0;
    } else {
        if (inline_020564D0(2) == 0) {
            return 0;
        }
    }

    if (v2 > 1) {
        (*param1) = v1[inline_020564D0(v2)];
    } else {
        (*param1) = v1[0];
    }

    return 1;
}

static BOOL ov6_02242514 (const int param0, const UnkStruct_ov6_022422D0 * param1, Pokemon * param2, BattleParams * param3)
{
    int v0 = 0;

    if (param1->unk_0D == 0) {
        if (param1->unk_0E == 14) {
            v0 = 1;
        }
    }

    Pokemon_GiveHeldItem(param2, param3->battleType, v0);

    {
        u8 v1;
        u8 v2;
        int v3;

        v1 = 0;
        v3 = Pokemon_GetValue(param2, MON_DATA_SPECIES, NULL);

        if (v3 == 422) {
            v1 = 1;

            if (!param1->unk_0F[0]) {
                v2 = 0;
            } else {
                v2 = 1;
            }
        } else if (v3 == 423) {
            v1 = 1;

            if (!param1->unk_0F[1]) {
                v2 = 0;
            } else {
                v2 = 1;
            }
        } else if (v3 == 201) {
            u8 v4;

            u8 availableUnownForms = WildEncounters_UnownTables[param1->unownTableID].numberForms;
            form = WildEncounters_UnownTables[param1->unownTableID].forms[LCRNG_Next() % availableUnownForms];
        }

        if (v1) {
            Pokemon_SetValue(param2, 112, (u8 *)&v2);
        }
    }

    return Party_AddPokemon(param3->parties[param0], param2);
}

static u8 ov6_022425D4 (const UnkStruct_ov6_0224222C * param0, const UnkStruct_ov6_022422D0 * param1, const u8 encounterSlot)
{
    u8 v0;

    if (param1->unk_0D == 0) {
        if ((param1->unk_0E == 72) || (param1->unk_0E == 55) || (param1->unk_0E == 46)) {
            if (inline_020564D0(2) == 0) {
                return encounterSlot;
            }

            v0 = encounterSlot;

            for (u8 i = 0; i < MAX_GRASS_ENCOUNTERS; i++) {
                if (param0[i].species == param0[v0].species) {
                    if (param0[i].maxLevel > param0[v0].maxLevel) {
                        v0 = i;
                    }
                }
            }

            return v0;
        }
    }

    return encounterSlot;
}

static void ov6_02242634 (FieldSystem * fieldSystem, Pokemon * param1, WildEncounters * encounterData, UnkStruct_ov6_022422D0 * param3)
{
    if (Pokemon_GetValue(param1, MON_DATA_IS_EGG, NULL) == 0) {
        param3->unk_0D = 0;
        param3->unk_0E = Pokemon_GetValue(param1, MON_DATA_ABILITY, NULL);
    } else {
        param3->unk_0D = 1;
        param3->unk_0E = 123;
    }

    param3->unk_0C = 0;
    param3->unk_04 = 0;
    param3->unk_08 = 0;

    if (encounterData != NULL) {
        param3->unk_0F[0] = encounterData->encounterRatesForms[0];
        param3->unk_0F[1] = encounterData->encounterRatesForms[1];

        if (encounterData->unownTableID != 0) {
            GF_ASSERT(encounterData->unownTableID <= 8);

            param3->unk_11 = encounterData->unownTableID - 1;
        } else {
            param3->unk_11 = 0;
        }
    }

    param3->unk_00 = TrainerInfo_ID(SaveData_GetTrainerInfo(fieldSystem->saveData));
}
