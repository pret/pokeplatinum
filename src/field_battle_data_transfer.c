#include "field_battle_data_transfer.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle.h"
#include "constants/heap.h"
#include "constants/narc.h"
#include "constants/overworld_weather.h"
#include "constants/pokemon.h"
#include "constants/string.h"
#include "consts/battle.h"
#include "consts/items.h"
#include "consts/species.h"

#include "struct_decls/pokedexdata_decl.h"
#include "struct_decls/struct_0203A790_decl.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_defs/chatot_cry.h"
#include "struct_defs/struct_0202610C.h"
#include "struct_defs/struct_0205EC34.h"
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
#include "map_tile_behavior.h"
#include "message.h"
#include "party.h"
#include "player_avatar.h"
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
#include "unk_0206AFE0.h"
#include "unk_0206CCB0.h"
#include "vars_flags.h"

#include "res/text/gmm/message_bank_location_names.h"
#include "res/text/pl_msg.naix"

static int CalcTerrain(const FieldSystem *fieldSystem, enum BattleBackground background);
static void SetBackgroundAndTerrain(FieldBattleDTO *dto, const FieldSystem *fieldSystem);

FieldBattleDTO *FieldBattleDTO_New(enum HeapId heapID, u32 battleType)
{
    int i;
    FieldBattleDTO *dto = Heap_AllocFromHeap(heapID, sizeof(FieldBattleDTO));
    MI_CpuClear8(dto, sizeof(FieldBattleDTO));

    dto->battleType = battleType;
    dto->battleStatusMask = 0;
    dto->resultMask = 0;

    for (i = 0; i < MAX_BATTLERS; i++) {
        dto->trainerIDs[i] = 0;
        MI_CpuClear32(&dto->trainerData[i], sizeof(TrainerData));
    }

    dto->background = BACKGROUND_PLAIN;
    dto->terrain = TERRAIN_MAX;
    dto->mapLabelTextID = pl_msg_00000433_00000;
    dto->timeOfDay = TOD_MORNING;
    dto->mapEvolutionMethod = 0;
    dto->visitedContestHall = TRUE;
    dto->metBebe = TRUE;
    dto->fieldWeather = OVERWORLD_WEATHER_CLEAR;

    for (i = 0; i < MAX_BATTLERS; i++) {
        dto->parties[i] = Party_New(heapID);
    }

    for (i = 0; i < MAX_BATTLERS; i++) {
        dto->trainerInfo[i] = TrainerInfo_New(heapID);
    }

    for (i = 0; i < MAX_BATTLERS; i++) {
        dto->chatotCries[i] = AllocateAndInitializeChatotCryData(heapID);
    }

    dto->bag = Bag_New(heapID);
    dto->pokedex = sub_02026324(heapID);
    dto->options = Options_New(heapID);
    dto->unk_10C = sub_0206D140(heapID);
    dto->bagCursor = NULL;
    dto->subscreenCursorOn = NULL;
    dto->countSafariBalls = 0;
    dto->unk_104 = NULL;
    dto->records = NULL;
    dto->journalEntry = NULL;
    dto->rulesetMask = 0;

    RTCDate date;
    RTCTime time;
    GetCurrentDateTime(&date, &time);
    dto->seed = date.year
        + date.month * 0x100 * date.day * 0x10000
        + time.hour * 0x10000
        + (time.minute + time.second) * 0x1000000
        + gCoreSys.vblankCounter;

    if (CommSys_IsInitialized() == TRUE) {
        for (i = 0; i < CommSys_ConnectedCount(); i++) {
            dto->unk_178[i] = sub_020362F4(i);
        }
        dto->networkID = CommSys_CurNetId();
    }

    MI_CpuClear8(&(dto->battleRecords), sizeof(BattleRecords));
    return dto;
}

FieldBattleDTO *FieldBattleDTO_NewSafari(enum HeapId heapID, int countSafariBalls)
{
    FieldBattleDTO *dto = FieldBattleDTO_New(heapID, BATTLE_TYPE_SAFARI);
    dto->countSafariBalls = countSafariBalls;
    return dto;
}

FieldBattleDTO *FieldBattleDTO_NewPalPark(enum HeapId heapID, int countParkBalls)
{
    FieldBattleDTO *dto = FieldBattleDTO_New(heapID, BATTLE_TYPE_PAL_PARK);
    dto->countSafariBalls = countParkBalls;
    return dto;
}

FieldBattleDTO *FieldBattleDTO_NewCatchingTutorial(enum HeapId heapID, const FieldSystem *fieldSystem)
{
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(fieldSystem->saveData);
    Options *options = SaveData_Options(fieldSystem->saveData);
    FieldBattleDTO *dto = FieldBattleDTO_New(heapID, BATTLE_TYPE_CATCH_TUTORIAL);
    MessageLoader *msgLoader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, message_bank_counterpart_names, heapID);
    Strbuf *strbuf = Strbuf_Init(TRAINER_NAME_LEN + 1, heapID);
    Pokemon *mon;

    MessageLoader_GetStrbuf(msgLoader, TrainerInfo_Gender(trainerInfo) ^ 1, strbuf);
    TrainerInfo_SetName(dto->trainerInfo[BATTLER_PLAYER_SLOT_1], Strbuf_GetData(strbuf));
    Strbuf_Free(strbuf);
    MessageLoader_Free(msgLoader);

    TrainerInfo_SetGender(dto->trainerInfo[BATTLER_PLAYER_SLOT_1], TrainerInfo_Gender(trainerInfo) ^ 1);
    SetBackgroundAndTerrain(dto, fieldSystem);
    Options_Copy(options, dto->options);
    dto->timeOfDay = FieldSystem_GetTimeOfDay(fieldSystem);
    Bag_TryAddItem(dto->bag, ITEM_POKE_BALL, 20, heapID);

    mon = Pokemon_New(heapID);
    Pokemon_InitWith(mon, sub_0206B08C(SaveData_GetVarsFlags(fieldSystem->saveData)), 5, 32, FALSE, 0, OTID_NOT_SHINY, 0);
    Party_AddPokemon(dto->parties[BATTLER_PLAYER_SLOT_1], mon);
    Pokemon_InitWith(mon, SPECIES_BIDOOF, 2, 32, FALSE, 0, OTID_NOT_SHINY, 0);
    Party_AddPokemon(dto->parties[BATTLER_ENEMY_SLOT_1], mon);
    Heap_FreeToHeap(mon);

    dto->pcBoxes = SaveData_PCBoxes(fieldSystem->saveData);
    dto->bagCursor = fieldSystem->unk_98;
    dto->subscreenCursorOn = NULL;
    dto->records = SaveData_GetGameRecordsPtr(fieldSystem->saveData);
    dto->journalEntry = fieldSystem->journalEntry;
    dto->mapHeaderID = fieldSystem->location->mapId;

    FieldBattleDTO_CopyPlayerInfoToTrainerData(dto);

    return dto;
}

void FieldBattleDTO_Free(FieldBattleDTO *dto)
{
    int i;
    for (i = 0; i < 4; i++) {
        GF_ASSERT(dto->parties[i] != NULL);
        Heap_FreeToHeap(dto->parties[i]);
    }

    for (i = 0; i < 4; i++) {
        GF_ASSERT(dto->trainerInfo[i] != NULL);
        Heap_FreeToHeap(dto->trainerInfo[i]);
    }

    for (i = 0; i < 4; i++) {
        GF_ASSERT(dto->chatotCries[i] != NULL);
        Heap_FreeToHeap(dto->chatotCries[i]);
    }

    Heap_FreeToHeap(dto->bag);
    Heap_FreeToHeap(dto->pokedex);
    Heap_FreeToHeap(dto->options);
    sub_0206D158(dto->unk_10C);
    Heap_FreeToHeap(dto);
}

void FieldBattleDTO_AddPokemonToBattler(FieldBattleDTO *dto, Pokemon *src, int battler)
{
    GF_ASSERT(battler < MAX_BATTLERS);
    BOOL success = Party_AddPokemon(dto->parties[battler], src);
    GF_ASSERT(success);
}

void FieldBattleDTO_CopyPartyToBattler(FieldBattleDTO *dto, const Party *src, int battler)
{
    GF_ASSERT(battler < MAX_BATTLERS);
    Party_cpy(src, dto->parties[battler]);
}

void FieldBattleDTO_CopyTrainerInfoToBattler(FieldBattleDTO *dto, const TrainerInfo *src, int battler)
{
    GF_ASSERT(battler < MAX_BATTLERS);
    TrainerInfo_Copy(src, dto->trainerInfo[battler]);
}

void FieldBattleDTO_CopyChatotCryToBattler(FieldBattleDTO *dto, const ChatotCry *src, int battler)
{
    CopyChatotCryData(dto->chatotCries[battler], src);
}

void FieldBattleDTO_InitFromGameState(FieldBattleDTO *dto, const FieldSystem *fieldSystem, SaveData *save, enum MapHeader mapHeaderID, JournalEntry *journalEntry, BagCursor *bagCursor, u8 *subscreenCursorOn)
{
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(save);
    Party *party = Party_GetFromSavedata(save);
    Bag *bag = SaveData_GetBag(save);
    PokedexData *pokedex = SaveData_Pokedex(save);
    ChatotCry *chatotCry = GetChatotCryDataFromSave(save);
    Options *options = SaveData_Options(save);
    FieldOverworldState *fieldOverworldState = SaveData_GetFieldOverworldState(save);

    if (fieldSystem != NULL) {
        SetBackgroundAndTerrain(dto, fieldSystem);
        dto->timeOfDay = FieldSystem_GetTimeOfDay(fieldSystem);
    } else {
        dto->background = MapHeader_GetBattleBG(mapHeaderID);
        dto->terrain = TERRAIN_BUILDING;

        GameTime *gameTime = SaveData_GetGameTime(save);
        dto->timeOfDay = TimeOfDayForHour(gameTime->time.hour);
    }

    FieldBattleDTO_CopyTrainerInfoToBattler(dto, trainerInfo, BATTLER_PLAYER_SLOT_1);
    FieldBattleDTO_CopyPartyToBattler(dto, party, BATTLER_PLAYER_SLOT_1);
    Bag_Copy(bag, dto->bag);
    Pokedex_Copy(pokedex, dto->pokedex);
    Options_Copy(options, dto->options);
    FieldBattleDTO_CopyChatotCryToBattler(dto, chatotCry, BATTLER_PLAYER_SLOT_1);

    dto->pcBoxes = SaveData_PCBoxes(save);
    dto->mapLabelTextID = MapHeader_GetMapLabelTextID(mapHeaderID);
    dto->mapEvolutionMethod = MapHeader_GetMapEvolutionMethod(mapHeaderID);
    dto->visitedContestHall = PokemonSummaryScreen_ShowContestData(save);
    dto->metBebe = SystemFlag_CheckMetBebe(SaveData_GetVarsFlags(save));
    dto->fieldWeather = FieldOverworldState_GetWeather(fieldOverworldState);
    dto->bagCursor = bagCursor;
    dto->subscreenCursorOn = subscreenCursorOn;
    dto->poketchData = SaveData_PoketchData(save);
    dto->unk_104 = sub_0202C878(save);
    dto->records = SaveData_GetGameRecordsPtr(save);
    dto->journalEntry = journalEntry;
    dto->unk_124 = sub_02027F8C(save);
    dto->mapHeaderID = mapHeaderID;
    dto->saveData = save;
}

void FieldBattleDTO_Init(FieldBattleDTO *dto, const FieldSystem *fieldSystem)
{
    FieldBattleDTO_InitFromGameState(dto, fieldSystem, fieldSystem->saveData, fieldSystem->location->mapId, fieldSystem->journalEntry, fieldSystem->unk_98, fieldSystem->battleSubscreenCursorOn);
    FieldBattleDTO_CopyPlayerInfoToTrainerData(dto);
}

void FieldBattleDTO_InitWithNormalizedMonLevels(FieldBattleDTO *dto, const FieldSystem *fieldSystem, int level)
{
    int i;
    u32 levelBaseExp;
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(fieldSystem->saveData);
    Party *party = Party_GetFromSavedata(fieldSystem->saveData);
    Bag *bag = SaveData_GetBag(fieldSystem->saveData);
    PokedexData *pokedex = SaveData_Pokedex(fieldSystem->saveData);
    ChatotCry *chatotCry = GetChatotCryDataFromSave(fieldSystem->saveData);
    Options *options = SaveData_Options(fieldSystem->saveData);

    dto->background = BACKGROUND_INDOORS_1;
    dto->terrain = TERRAIN_BUILDING;

    FieldBattleDTO_CopyTrainerInfoToBattler(dto, trainerInfo, BATTLER_PLAYER_SLOT_1);

    Pokemon *mon = Pokemon_New(HEAP_ID_FIELDMAP);
    Party_InitWithCapacity(dto->parties[BATTLER_PLAYER_SLOT_1], Party_GetCurrentCount(party));
    for (i = 0; i < Party_GetCurrentCount(party); i++) {
        Pokemon_Copy(Party_GetPokemonBySlotIndex(party, i), mon);

        if (Pokemon_GetValue(mon, MON_DATA_LEVEL, NULL) != level && level != 0) {
            levelBaseExp = Pokemon_GetSpeciesBaseExpAt(Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL), level);
            Pokemon_SetValue(mon, MON_DATA_EXP, &levelBaseExp);
            Pokemon_CalcLevelAndStats(mon);
        }

        FieldBattleDTO_AddPokemonToBattler(dto, mon, BATTLER_PLAYER_SLOT_1);
    }
    Heap_FreeToHeap(mon);

    Bag_Copy(bag, dto->bag);
    Pokedex_Copy(pokedex, dto->pokedex);
    Options_Copy(options, dto->options);
    FieldBattleDTO_CopyChatotCryToBattler(dto, chatotCry, BATTLER_PLAYER_SLOT_1);

    dto->pcBoxes = SaveData_PCBoxes(fieldSystem->saveData);
    dto->timeOfDay = FieldSystem_GetTimeOfDay(fieldSystem);
    dto->bagCursor = fieldSystem->unk_98;
    dto->subscreenCursorOn = fieldSystem->battleSubscreenCursorOn;
    dto->poketchData = SaveData_PoketchData(fieldSystem->saveData);
    dto->unk_104 = sub_0202C878(fieldSystem->saveData);
    dto->records = SaveData_GetGameRecordsPtr(fieldSystem->saveData);
    dto->journalEntry = fieldSystem->journalEntry;
    dto->unk_124 = sub_02027F8C(fieldSystem->saveData);
    dto->mapHeaderID = fieldSystem->location->mapId;
    dto->saveData = fieldSystem->saveData;

    FieldBattleDTO_CopyPlayerInfoToTrainerData(dto);
}

void FieldBattleDTO_InitWithPartyOrder(FieldBattleDTO *dto, const FieldSystem *fieldSystem, const Party *party, const u8 *partyOrder)
{
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(fieldSystem->saveData);
    Bag *bag = SaveData_GetBag(fieldSystem->saveData);
    PokedexData *pokedex = SaveData_Pokedex(fieldSystem->saveData);
    ChatotCry *chatotCry = GetChatotCryDataFromSave(fieldSystem->saveData);
    Options *options = SaveData_Options(fieldSystem->saveData);
    const BattleRegulation *regulation = fieldSystem->unk_B0;
    int i;
    Pokemon *mon;

    dto->background = BACKGROUND_INDOORS_1;
    dto->terrain = TERRAIN_BUILDING;

    FieldBattleDTO_CopyTrainerInfoToBattler(dto, trainerInfo, BATTLER_PLAYER_SLOT_1);

    if (partyOrder == NULL) {
        FieldBattleDTO_CopyPartyToBattler(dto, party, BATTLER_PLAYER_SLOT_1);
    } else {
        int numToCopy = 0;
        for (i = 0; i < MAX_PARTY_SIZE; i++) {
            if (partyOrder[i] != 0) {
                numToCopy++;
            }
        }

        if (numToCopy == 0) {
            FieldBattleDTO_CopyPartyToBattler(dto, party, BATTLER_PLAYER_SLOT_1);
        } else {
            mon = Pokemon_New(HEAP_ID_FIELDMAP);
            Party_InitWithCapacity(dto->parties[BATTLER_PLAYER_SLOT_1], numToCopy);
            for (i = 0; i < numToCopy; i++) {
                Pokemon_Copy(Party_GetPokemonBySlotIndex(party, partyOrder[i] - 1), mon);
                FieldBattleDTO_AddPokemonToBattler(dto, mon, BATTLER_PLAYER_SLOT_1);
            }

            Heap_FreeToHeap(mon);
        }
    }

    if (regulation) {
        if (sub_02026074(regulation, 12)) {
            dto->rulesetMask = 1;
        }
    }

    Bag_Copy(bag, dto->bag);
    Pokedex_Copy(pokedex, dto->pokedex);
    Options_Copy(options, dto->options);
    FieldBattleDTO_CopyChatotCryToBattler(dto, chatotCry, BATTLER_PLAYER_SLOT_1);

    dto->pcBoxes = SaveData_PCBoxes(fieldSystem->saveData);
    dto->timeOfDay = FieldSystem_GetTimeOfDay(fieldSystem);
    dto->bagCursor = fieldSystem->unk_98;
    dto->subscreenCursorOn = fieldSystem->battleSubscreenCursorOn;
    dto->unk_104 = sub_0202C878(fieldSystem->saveData);
    dto->records = SaveData_GetGameRecordsPtr(fieldSystem->saveData);
    dto->journalEntry = fieldSystem->journalEntry;
    dto->mapHeaderID = fieldSystem->location->mapId;
    dto->unk_124 = sub_02027F8C(fieldSystem->saveData);
    dto->saveData = fieldSystem->saveData;

    if (sub_020326C4(sub_0203895C())) {
        int unionAppearance = TrainerInfo_Appearance(trainerInfo);
        int unionGender = TrainerInfo_Gender(trainerInfo);

        dto->trainerData[BATTLER_PLAYER_SLOT_1].class = sub_0205CA14(unionGender, unionAppearance, 1);
        CharCode_Copy(dto->trainerData[BATTLER_PLAYER_SLOT_1].name, TrainerInfo_Name(dto->trainerInfo[BATTLER_PLAYER_SLOT_1]));
        dto->trainerData[BATTLER_PLAYER_SLOT_2] = dto->trainerData[BATTLER_PLAYER_SLOT_1];
    } else {
        FieldBattleDTO_CopyPlayerInfoToTrainerData(dto);
    }
}

void FieldBattleDTO_InitWithPartyOrderFromSave(FieldBattleDTO *dto, const FieldSystem *fieldSystem, const u8 *partyOrder)
{
    FieldBattleDTO_InitWithPartyOrder(dto, fieldSystem, Party_GetFromSavedata(fieldSystem->saveData), partyOrder);
}

void FieldBattleDTO_UpdateFieldSystem(const FieldBattleDTO *dto, FieldSystem *fieldSystem)
{
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(fieldSystem->saveData);
    Party *party = Party_GetFromSavedata(fieldSystem->saveData);
    Bag *bag = SaveData_GetBag(fieldSystem->saveData);
    PokedexData *pokedex = SaveData_Pokedex(fieldSystem->saveData);
    u16 *fieldSysSafariBalls = FieldOverworldState_GetSafariBallCount(SaveData_GetFieldOverworldState(fieldSystem->saveData));

    TrainerInfo_Copy(dto->trainerInfo[BATTLER_PLAYER_SLOT_1], trainerInfo);
    Party_cpy(dto->parties[BATTLER_PLAYER_SLOT_1], party);
    Bag_Copy(dto->bag, bag);
    Pokedex_Copy(dto->pokedex, pokedex);

    *fieldSysSafariBalls = dto->countSafariBalls;
}

void FieldBattleDTO_UpdatePokedex(const FieldBattleDTO *dto, FieldSystem *fieldSystem)
{
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(fieldSystem->saveData);
    Party *party = Party_GetFromSavedata(fieldSystem->saveData);
    Bag *bag = SaveData_GetBag(fieldSystem->saveData);
    PokedexData *pokedex = SaveData_Pokedex(fieldSystem->saveData);

    Pokedex_Copy(dto->pokedex, pokedex);
}

static const enum Terrain sTerrainForBackground[] = {
    [BACKGROUND_PLAIN] = TERRAIN_PLAIN,
    [BACKGROUND_WATER] = TERRAIN_WATER,
    [BACKGROUND_CITY] = TERRAIN_BUILDING,
    [BACKGROUND_FOREST] = TERRAIN_GRASS,
    [BACKGROUND_MOUNTAIN] = TERRAIN_MOUNTAIN,
    [BACKGROUND_SNOW] = TERRAIN_SNOW,
    [BACKGROUND_INDOORS_1] = TERRAIN_BUILDING,
    [BACKGROUND_INDOORS_2] = TERRAIN_BUILDING,
    [BACKGROUND_INDOORS_3] = TERRAIN_BUILDING,
    [BACKGROUND_CAVE_1] = TERRAIN_CAVE,
    [BACKGROUND_CAVE_2] = TERRAIN_CAVE,
    [BACKGROUND_CAVE_3] = TERRAIN_CAVE,
    [BACKGROUND_AARON] = TERRAIN_AARON,
    [BACKGROUND_BERTHA] = TERRAIN_BERTHA,
    [BACKGROUND_FLINT] = TERRAIN_FLINT,
    [BACKGROUND_LUCIAN] = TERRAIN_LUCIAN,
    [BACKGROUND_CYNTHIA] = TERRAIN_CYNTHIA,
    [BACKGROUND_DISTORTION_WORLD] = TERRAIN_DISTORTION_WORLD,
    [BACKGROUND_BATTLE_TOWER] = TERRAIN_BATTLE_TOWER,
    [BACKGROUND_BATTLE_FACTORY] = TERRAIN_BATTLE_FACTORY,
    [BACKGROUND_BATTLE_ARCADE] = TERRAIN_BATTLE_ARCADE,
    [BACKGROUND_BATTLE_CASTLE] = TERRAIN_BATTLE_CASTLE,
    [BACKGROUND_BATTLE_HALL] = TERRAIN_BATTLE_HALL,
};

static int CalcTerrain(const FieldSystem *fieldSystem, enum BattleBackground background)
{
    u8 behavior = FieldSystem_GetTileBehavior(fieldSystem, fieldSystem->location->x, fieldSystem->location->z);
    if (TileBehavior_IsIce(behavior)) {
        return TERRAIN_ICE;
    } else if (TileBehavior_IsTallGrass(behavior) || TileBehavior_IsVeryTallGrass(behavior)) {
        return TERRAIN_GRASS;
    } else if (TileBehavior_IsSand(behavior)) {
        return TERRAIN_SAND;
    } else if (TileBehavior_IsSnow(behavior)) {
        return TERRAIN_SNOW;
    } else if (TileBehavior_IsMud(behavior) || TileBehavior_IsMudWithGrass(behavior)) {
        return TERRAIN_GREAT_MARSH;
    } else if (TileBehavior_IsCaveFloor(behavior)) {
        return TERRAIN_CAVE;
    }

    if (TileBehavior_IsSurfable(behavior)) {
        return TERRAIN_WATER;
    }

    if (background < NELEMS(sTerrainForBackground)) {
        return sTerrainForBackground[background];
    }

    GF_ASSERT(FALSE);
    return TERRAIN_MAX;
}

static void SetBackgroundAndTerrain(FieldBattleDTO *dto, const FieldSystem *fieldSystem)
{
    PlayerData *player = FieldOverworldState_GetPlayerData(SaveData_GetFieldOverworldState(fieldSystem->saveData));
    dto->background = MapHeader_GetBattleBG(fieldSystem->location->mapId);
    if (player->form == PLAYER_AVATAR_SURFING) {
        dto->background = BACKGROUND_WATER;
    }

    dto->terrain = CalcTerrain(fieldSystem, dto->background);
}

void FieldBattleDTO_SetWaterTerrain(FieldBattleDTO *dto)
{
    dto->terrain = TERRAIN_WATER;
}

BOOL CheckPlayerWonBattle(u32 battleResult)
{
    switch (battleResult) {
    case BATTLE_RESULT_LOSE:
    case BATTLE_RESULT_DRAW:
        return FALSE;
    default:
        return TRUE;
    }
}

BOOL CheckPlayerLostBattle(u32 battleResult)
{
    switch (battleResult) {
    case BATTLE_RESULT_WIN:
    case BATTLE_RESULT_CAPTURED_MON:
        return FALSE;
    default:
        return TRUE;
    }
}

BOOL CheckPlayerDidNotCaptureWildMon(u32 battleResult)
{
    switch (battleResult) {
    case BATTLE_RESULT_CAPTURED_MON:
        return FALSE;
    default:
        return TRUE;
    }
}

void FieldBattleDTO_CopyPlayerInfoToTrainerData(FieldBattleDTO *dto)
{
    dto->trainerData[BATTLER_PLAYER_SLOT_1].class = TrainerInfo_Gender(dto->trainerInfo[BATTLER_PLAYER_SLOT_1]);
    CharCode_Copy(dto->trainerData[BATTLER_PLAYER_SLOT_1].name, TrainerInfo_Name(dto->trainerInfo[BATTLER_PLAYER_SLOT_1]));
    dto->trainerData[BATTLER_PLAYER_SLOT_2] = dto->trainerData[BATTLER_PLAYER_SLOT_1];
}
