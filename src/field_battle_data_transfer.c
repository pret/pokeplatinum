#include "field_battle_data_transfer.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle.h"
#include "constants/pokemon.h"
#include "consts/battle.h"
#include "consts/species.h"

#include "struct_decls/pokedexdata_decl.h"
#include "struct_decls/struct_0203A790_decl.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_defs/chatot_cry.h"
#include "struct_defs/struct_0202610C.h"
#include "struct_defs/struct_0205EC34.h"
#include "struct_defs/struct_0209C370.h"
#include "struct_defs/trainer_data.h"

#include "applications/pokemon_summary_screen/main.h"
#include "field/field_system.h"
#include "savedata/save_table.h"

#include "bag.h"
#include "charcode_util.h"
#include "communication_system.h"
#include "core_sys.h"
#include "field_overworld_state.h"
#include "game_options.h"
#include "game_records.h"
#include "heap.h"
#include "journal.h"
#include "map_header.h"
#include "message.h"
#include "party.h"
#include "pokemon.h"
#include "poketch_data.h"
#include "rtc.h"
#include "save_player.h"
#include "savedata.h"
#include "strbuf.h"
#include "system_data.h"
#include "system_flags.h"
#include "trainer_info.h"
#include "unk_0202602C.h"
#include "unk_0202631C.h"
#include "unk_02027F84.h"
#include "unk_0202C858.h"
#include "unk_0202CC64.h"
#include "unk_0203266C.h"
#include "unk_020366A0.h"
#include "unk_02054D00.h"
#include "unk_020559DC.h"
#include "unk_0205C980.h"
#include "unk_0205DAC8.h"
#include "unk_0206AFE0.h"
#include "unk_0206CCB0.h"
#include "vars_flags.h"

#include "res/text/gmm/message_bank_location_names.h"

static void sub_0205281C(FieldBattleDTO *param0, const FieldSystem *fieldSystem);
void sub_02052894(FieldBattleDTO *param0);

FieldBattleDTO *sub_02051D8C(int param0, u32 param1)
{
    int v0;
    FieldBattleDTO *v1;

    v1 = Heap_AllocFromHeap(param0, sizeof(FieldBattleDTO));
    MI_CpuClear8(v1, sizeof(FieldBattleDTO));

    v1->battleType = param1;
    v1->battleStatusMask = 0;
    v1->resultMask = 0;

    for (v0 = 0; v0 < 4; v0++) {
        v1->trainerIDs[v0] = 0;
        MI_CpuClear32(&v1->trainerData[v0], sizeof(TrainerData));
    }

    v1->background = 0;
    v1->terrain = TERRAIN_MAX;
    v1->mapLabelTextID = pl_msg_00000433_00000;
    v1->timeOfDay = TOD_MORNING;
    v1->mapEvolutionMethod = 0;
    v1->visitedContestHall = 1;
    v1->metBebe = 1;
    v1->fieldWeather = 0;

    for (v0 = 0; v0 < 4; v0++) {
        v1->parties[v0] = Party_New(param0);
    }

    for (v0 = 0; v0 < 4; v0++) {
        v1->trainerInfo[v0] = TrainerInfo_New(param0);
    }

    for (v0 = 0; v0 < 4; v0++) {
        v1->chatotCries[v0] = AllocateAndInitializeChatotCryData(param0);
    }

    v1->bag = Bag_New(param0);
    v1->pokedex = sub_02026324(param0);
    v1->options = Options_New(param0);
    v1->unk_10C = sub_0206D140(param0);
    v1->bagCursor = NULL;
    v1->unk_190 = NULL;
    v1->countSafariBalls = 0;
    v1->unk_104 = NULL;
    v1->records = NULL;
    v1->journal = NULL;
    v1->rulesetMask = 0;

    {
        RTCDate v2;
        RTCTime v3;

        GetCurrentDateTime(&v2, &v3);
        v1->seed = v2.year + v2.month * 0x100 * v2.day * 0x10000 + v3.hour * 0x10000 + (v3.minute + v3.second) * 0x1000000 + gCoreSys.vblankCounter;
    }

    if (CommSys_IsInitialized() == 1) {
        for (v0 = 0; v0 < CommSys_ConnectedCount(); v0++) {
            v1->unk_178[v0] = sub_020362F4(v0);
        }

        v1->networkID = CommSys_CurNetId();
    }

    MI_CpuClear8(&(v1->battleRecords), sizeof(BattleRecords));
    return v1;
}

FieldBattleDTO *sub_02051F24(int param0, int param1)
{
    FieldBattleDTO *v0;

    v0 = sub_02051D8C(param0, 0x20);
    v0->countSafariBalls = param1;

    return v0;
}

FieldBattleDTO *sub_02051F38(int param0, int param1)
{
    FieldBattleDTO *v0;

    v0 = sub_02051D8C(param0, 0x200);
    v0->countSafariBalls = param1;

    return v0;
}

FieldBattleDTO *sub_02051F4C(int param0, const FieldSystem *fieldSystem)
{
    TrainerInfo *v0 = SaveData_GetTrainerInfo(fieldSystem->saveData);
    Options *v1 = SaveData_Options(fieldSystem->saveData);
    MessageLoader *v2;
    Strbuf *v3;
    FieldBattleDTO *v4;
    Pokemon *v5;

    v4 = sub_02051D8C(param0, 0x400);
    v2 = MessageLoader_Init(1, 26, 553, param0);
    v3 = Strbuf_Init(8, param0);

    MessageLoader_GetStrbuf(v2, TrainerInfo_Gender(v0) ^ 1, v3);
    TrainerInfo_SetName(v4->trainerInfo[0], Strbuf_GetData(v3));
    Strbuf_Free(v3);
    MessageLoader_Free(v2);
    TrainerInfo_SetGender(v4->trainerInfo[0], TrainerInfo_Gender(v0) ^ 1);
    sub_0205281C(v4, fieldSystem);
    Options_Copy(v1, v4->options);

    v4->timeOfDay = sub_02055BA8(fieldSystem);
    Bag_TryAddItem(v4->bag, 4, 20, param0);
    v5 = Pokemon_New(param0);

    Pokemon_InitWith(v5, sub_0206B08C(SaveData_GetVarsFlags(fieldSystem->saveData)), 5, 32, FALSE, 0, OTID_NOT_SHINY, 0);
    Party_AddPokemon(v4->parties[0], v5);
    Pokemon_InitWith(v5, SPECIES_BIDOOF, 2, 32, FALSE, 0, OTID_NOT_SHINY, 0);
    Party_AddPokemon(v4->parties[1], v5);
    Heap_FreeToHeap(v5);

    v4->pcBoxes = SaveData_PCBoxes(fieldSystem->saveData);
    v4->bagCursor = fieldSystem->unk_98;
    v4->unk_190 = NULL;
    v4->records = SaveData_GetGameRecordsPtr(fieldSystem->saveData);
    v4->journal = fieldSystem->journal;
    v4->mapHeaderID = fieldSystem->location->mapId;

    sub_02052894(v4);

    return v4;
}

void sub_020520A4(FieldBattleDTO *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        GF_ASSERT(param0->parties[v0] != NULL);
        Heap_FreeToHeap(param0->parties[v0]);
    }

    for (v0 = 0; v0 < 4; v0++) {
        GF_ASSERT(param0->trainerInfo[v0] != NULL);
        Heap_FreeToHeap(param0->trainerInfo[v0]);
    }

    for (v0 = 0; v0 < 4; v0++) {
        GF_ASSERT(param0->chatotCries[v0] != NULL);
        Heap_FreeToHeap(param0->chatotCries[v0]);
    }

    Heap_FreeToHeap(param0->bag);
    Heap_FreeToHeap(param0->pokedex);
    Heap_FreeToHeap(param0->options);
    sub_0206D158(param0->unk_10C);
    Heap_FreeToHeap(param0);
}

void sub_0205213C(FieldBattleDTO *param0, Pokemon *param1, int param2)
{
    int v0;

    GF_ASSERT(param2 < 4);
    v0 = Party_AddPokemon(param0->parties[param2], param1);
    GF_ASSERT(v0);
}

void sub_02052164(FieldBattleDTO *param0, const Party *param1, int param2)
{
    GF_ASSERT(param2 < 4);
    Party_cpy(param1, param0->parties[param2]);
}

void sub_02052184(FieldBattleDTO *param0, const TrainerInfo *param1, int param2)
{
    GF_ASSERT(param2 < 4);
    TrainerInfo_Copy(param1, param0->trainerInfo[param2]);
}

void sub_020521A4(FieldBattleDTO *param0, const ChatotCry *param1, int param2)
{
    CopyChatotCryData(param0->chatotCries[param2], param1);
}

void sub_020521B8(FieldBattleDTO *param0, const FieldSystem *fieldSystem, SaveData *param2, int param3, Journal *param4, BagCursor *param5, UnkStruct_0209C370 *param6)
{
    TrainerInfo *v0 = SaveData_GetTrainerInfo(param2);
    Party *v1 = Party_GetFromSavedata(param2);
    Bag *v2 = SaveData_GetBag(param2);
    PokedexData *v3 = SaveData_Pokedex(param2);
    ChatotCry *v4 = GetChatotCryDataFromSave(param2);
    Options *v5 = SaveData_Options(param2);
    FieldOverworldState *v6 = SaveData_GetFieldOverworldState(param2);

    if (fieldSystem != NULL) {
        sub_0205281C(param0, fieldSystem);
        param0->timeOfDay = sub_02055BA8(fieldSystem);
    } else {
        param0->background = MapHeader_GetBattleBG(param3);
        param0->terrain = TERRAIN_BUILDING;
        {
            GameTime *v7 = SaveData_GetGameTime(param2);

            param0->timeOfDay = TimeOfDayForHour(v7->time.hour);
        }
    }

    sub_02052184(param0, v0, 0);
    sub_02052164(param0, v1, 0);
    Bag_Copy(v2, param0->bag);
    sub_02026338(v3, param0->pokedex);
    Options_Copy(v5, param0->options);
    sub_020521A4(param0, v4, 0);

    param0->pcBoxes = SaveData_PCBoxes(param2);
    param0->mapLabelTextID = MapHeader_GetMapLabelTextID(param3);
    param0->mapEvolutionMethod = MapHeader_GetMapEvolutionMethod(param3);
    param0->visitedContestHall = PokemonSummaryScreen_ShowContestData(param2);
    param0->metBebe = SystemFlag_CheckMetBebe(SaveData_GetVarsFlags(param2));
    param0->fieldWeather = FieldOverworldState_GetWeather(v6);
    param0->bagCursor = param5;
    param0->unk_190 = param6;
    param0->poketchData = SaveData_PoketchData(param2);
    param0->unk_104 = sub_0202C878(param2);
    param0->records = SaveData_GetGameRecordsPtr(param2);
    param0->journal = param4;
    param0->unk_124 = sub_02027F8C(param2);
    param0->mapHeaderID = param3;
    param0->saveData = param2;
}

void sub_02052314(FieldBattleDTO *battleParams, const FieldSystem *fieldSystem)
{
    sub_020521B8(battleParams, fieldSystem, fieldSystem->saveData, fieldSystem->location->mapId, fieldSystem->journal, fieldSystem->unk_98, fieldSystem->unk_BC);
    sub_02052894(battleParams);
}

void sub_02052348(FieldBattleDTO *param0, const FieldSystem *fieldSystem, int param2)
{
    int v0;
    u32 v1;
    TrainerInfo *v2 = SaveData_GetTrainerInfo(fieldSystem->saveData);
    Party *v3 = Party_GetFromSavedata(fieldSystem->saveData);
    Bag *v4 = SaveData_GetBag(fieldSystem->saveData);
    PokedexData *v5 = SaveData_Pokedex(fieldSystem->saveData);
    ChatotCry *v6 = GetChatotCryDataFromSave(fieldSystem->saveData);
    Options *v7 = SaveData_Options(fieldSystem->saveData);
    Pokemon *v8;

    param0->background = 6;
    param0->terrain = TERRAIN_BUILDING;

    sub_02052184(param0, v2, 0);
    v8 = Pokemon_New(11);
    Party_InitWithCapacity(param0->parties[0], Party_GetCurrentCount(v3));

    for (v0 = 0; v0 < Party_GetCurrentCount(v3); v0++) {
        Pokemon_Copy(Party_GetPokemonBySlotIndex(v3, v0), v8);

        if ((Pokemon_GetValue(v8, MON_DATA_LEVEL, NULL) != param2) && (param2 != 0)) {
            v1 = Pokemon_GetSpeciesBaseExpAt(Pokemon_GetValue(v8, MON_DATA_SPECIES, NULL), param2);

            Pokemon_SetValue(v8, MON_DATA_EXP, &v1);
            Pokemon_CalcLevelAndStats(v8);
        }

        sub_0205213C(param0, v8, 0);
    }

    Heap_FreeToHeap(v8);
    Bag_Copy(v4, param0->bag);
    sub_02026338(v5, param0->pokedex);
    Options_Copy(v7, param0->options);
    sub_020521A4(param0, v6, 0);

    param0->pcBoxes = SaveData_PCBoxes(fieldSystem->saveData);
    param0->timeOfDay = sub_02055BA8(fieldSystem);
    param0->bagCursor = fieldSystem->unk_98;
    param0->unk_190 = fieldSystem->unk_BC;
    param0->poketchData = SaveData_PoketchData(fieldSystem->saveData);
    param0->unk_104 = sub_0202C878(fieldSystem->saveData);
    param0->records = SaveData_GetGameRecordsPtr(fieldSystem->saveData);
    param0->journal = fieldSystem->journal;
    param0->unk_124 = sub_02027F8C(fieldSystem->saveData);
    param0->mapHeaderID = fieldSystem->location->mapId;
    param0->saveData = fieldSystem->saveData;

    sub_02052894(param0);
}

void sub_020524E4(FieldBattleDTO *param0, const FieldSystem *fieldSystem, const Party *param2, const u8 *param3)
{
    TrainerInfo *v0 = SaveData_GetTrainerInfo(fieldSystem->saveData);
    Bag *v1 = SaveData_GetBag(fieldSystem->saveData);
    PokedexData *v2 = SaveData_Pokedex(fieldSystem->saveData);
    ChatotCry *v3 = GetChatotCryDataFromSave(fieldSystem->saveData);
    Options *v4 = SaveData_Options(fieldSystem->saveData);
    const BattleRegulation *v5 = fieldSystem->unk_B0;
    int v6, v7, v8;
    Pokemon *v9;

    param0->background = 6;
    param0->terrain = TERRAIN_BUILDING;

    sub_02052184(param0, v0, 0);

    if (param3 == NULL) {
        sub_02052164(param0, param2, 0);
    } else {
        int v10;

        v10 = 0;

        for (v8 = 0; v8 < 6; v8++) {
            if (param3[v8] != 0) {
                v10++;
            }
        }

        if (v10 == 0) {
            sub_02052164(param0, param2, 0);
        } else {
            v9 = Pokemon_New(11);
            Party_InitWithCapacity(param0->parties[0], v10);

            for (v8 = 0; v8 < v10; v8++) {
                Pokemon_Copy(Party_GetPokemonBySlotIndex(param2, param3[v8] - 1), v9);
                sub_0205213C(param0, v9, 0);
            }

            Heap_FreeToHeap(v9);
        }
    }

    if (v5) {
        if (sub_02026074(v5, 12)) {
            param0->rulesetMask = 1;
        }
    }

    Bag_Copy(v1, param0->bag);
    sub_02026338(v2, param0->pokedex);
    Options_Copy(v4, param0->options);
    sub_020521A4(param0, v3, 0);

    param0->pcBoxes = SaveData_PCBoxes(fieldSystem->saveData);
    param0->timeOfDay = sub_02055BA8(fieldSystem);
    param0->bagCursor = fieldSystem->unk_98;
    param0->unk_190 = fieldSystem->unk_BC;
    param0->unk_104 = sub_0202C878(fieldSystem->saveData);
    param0->records = SaveData_GetGameRecordsPtr(fieldSystem->saveData);
    param0->journal = fieldSystem->journal;
    param0->mapHeaderID = fieldSystem->location->mapId;
    param0->unk_124 = sub_02027F8C(fieldSystem->saveData);
    param0->saveData = fieldSystem->saveData;

    if (sub_020326C4(sub_0203895C())) {
        int v11 = TrainerInfo_Appearance(v0);
        int v12 = TrainerInfo_Gender(v0);

        param0->trainerData[0].class = sub_0205CA14(v12, v11, 1);
        CharCode_Copy(&param0->trainerData[0].name[0], TrainerInfo_Name(param0->trainerInfo[0]));
        param0->trainerData[2] = param0->trainerData[0];
    } else {
        sub_02052894(param0);
    }
}

void sub_020526CC(FieldBattleDTO *param0, const FieldSystem *fieldSystem, const u8 *param2)
{
    sub_020524E4(param0, fieldSystem, Party_GetFromSavedata(fieldSystem->saveData), param2);
}

void sub_020526E8(const FieldBattleDTO *param0, FieldSystem *fieldSystem)
{
    TrainerInfo *v0 = SaveData_GetTrainerInfo(fieldSystem->saveData);
    Party *v1 = Party_GetFromSavedata(fieldSystem->saveData);
    Bag *v2 = SaveData_GetBag(fieldSystem->saveData);
    PokedexData *v3 = SaveData_Pokedex(fieldSystem->saveData);
    u16 *v4 = sub_0203A784(SaveData_GetFieldOverworldState(fieldSystem->saveData));

    TrainerInfo_Copy(param0->trainerInfo[0], v0);
    Party_cpy(param0->parties[0], v1);
    Bag_Copy(param0->bag, v2);
    sub_02026338(param0->pokedex, v3);

    *v4 = param0->countSafariBalls;
}

void sub_02052754(const FieldBattleDTO *param0, FieldSystem *fieldSystem)
{
    TrainerInfo *v0 = SaveData_GetTrainerInfo(fieldSystem->saveData);
    Party *v1 = Party_GetFromSavedata(fieldSystem->saveData);
    Bag *v2 = SaveData_GetBag(fieldSystem->saveData);
    PokedexData *v3 = SaveData_Pokedex(fieldSystem->saveData);

    sub_02026338(param0->pokedex, v3);
}

static int sub_02052780(const FieldSystem *fieldSystem, int param1)
{
    u8 v0 = sub_02054F94(fieldSystem, fieldSystem->location->x, fieldSystem->location->z);
    static const v1[] = {
        0,
        7,
        9,
        2,
        4,
        6,
        9,
        9,
        9,
        5,
        5,
        5,
        12,
        13,
        14,
        15,
        16,
        17,
        18,
        19,
        20,
        21,
        22
    };

    if (sub_0205DC5C(v0)) {
        return 8;
    } else if (sub_0205DAC8(v0) || sub_0205DAD4(v0)) {
        return 2;
    } else if (sub_0205DB6C(v0)) {
        return 1;
    } else if (sub_0205DD18(v0)) {
        return 6;
    } else if (sub_0205DCE0(v0) || sub_0205DCFC(v0)) {
        return 10;
    } else if (sub_0205DDA8(v0)) {
        return 5;
    }

    if (sub_0205DB58(v0)) {
        return 7;
    }

    if (param1 < NELEMS(v1)) {
        return v1[param1];
    }

    GF_ASSERT(0);

    return 24;
}

static void sub_0205281C(FieldBattleDTO *param0, const FieldSystem *fieldSystem)
{
    PlayerData *v0 = FieldOverworldState_GetPlayerData(SaveData_GetFieldOverworldState(fieldSystem->saveData));

    param0->background = MapHeader_GetBattleBG(fieldSystem->location->mapId);

    if (v0->unk_04 == 0x2) {
        param0->background = 1;
    }

    param0->terrain = sub_02052780(fieldSystem, param0->background);
}

void sub_0205285C(FieldBattleDTO *param0)
{
    param0->terrain = TERRAIN_WATER;
}

BOOL FieldBattleDTO_PlayerWon(u32 battleResult)
{
    switch (battleResult) {
    case BATTLE_RESULT_LOSE:
    case BATTLE_RESULT_DRAW:
        return FALSE;
    default:
        return TRUE;
    }
}

BOOL FieldBattleDTO_PlayerLost(u32 battleResult)
{
    switch (battleResult) {
    case BATTLE_RESULT_WIN:
    case BATTLE_RESULT_CAPTURED_MON:
        return FALSE;
    default:
        return TRUE;
    }
}

BOOL FieldBattleDTO_PlayerDidNotCapture(u32 battleResult)
{
    switch (battleResult) {
    case BATTLE_RESULT_CAPTURED_MON:
        return FALSE;
    default:
        return TRUE;
    }
}

void sub_02052894(FieldBattleDTO *param0)
{
    param0->trainerData[0].class = TrainerInfo_Gender(param0->trainerInfo[0]);
    CharCode_Copy(&param0->trainerData[0].name[0], TrainerInfo_Name(param0->trainerInfo[0]));
    param0->trainerData[2] = param0->trainerData[0];
}
