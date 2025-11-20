#include "field_battle_data_transfer.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle.h"
#include "constants/heap.h"
#include "constants/narc.h"
#include "constants/overworld_weather.h"
#include "constants/pokemon.h"
#include "constants/string.h"
#include "generated/items.h"
#include "generated/species.h"

#include "struct_decls/pokedexdata_decl.h"
#include "struct_decls/struct_0203A790_decl.h"
#include "struct_defs/chatot_cry.h"
#include "struct_defs/struct_0205EC34.h"
#include "struct_defs/trainer.h"

#include "applications/pokemon_summary_screen/main.h"
#include "field/field_system.h"
#include "savedata/save_table.h"

#include "bag.h"
#include "battle_regulation.h"
#include "charcode_util.h"
#include "communication_system.h"
#include "field_overworld_state.h"
#include "game_options.h"
#include "game_records.h"
#include "heap.h"
#include "journal.h"
#include "map_header.h"
#include "map_tile_behavior.h"
#include "message.h"
#include "pal_pad.h"
#include "party.h"
#include "player_avatar.h"
#include "pokedex.h"
#include "pokemon.h"
#include "poketch.h"
#include "rtc.h"
#include "save_player.h"
#include "savedata.h"
#include "strbuf.h"
#include "system.h"
#include "system_data.h"
#include "system_flags.h"
#include "system_vars.h"
#include "terrain_collision_manager.h"
#include "trainer_info.h"
#include "tv_episode_segment.h"
#include "unk_0202CC64.h"
#include "unk_0203266C.h"
#include "unk_020366A0.h"
#include "unk_020559DC.h"
#include "unk_0205C980.h"
#include "vars_flags.h"

#include "res/text/bank/location_names.h"

static int CalcTerrain(const FieldSystem *fieldSystem, enum BattleBackground background);
static void SetBackgroundAndTerrain(FieldBattleDTO *dto, const FieldSystem *fieldSystem);

FieldBattleDTO *FieldBattleDTO_New(enum HeapID heapID, u32 battleType)
{
    int i;
    FieldBattleDTO *dto = Heap_Alloc(heapID, sizeof(FieldBattleDTO));
    MI_CpuClear8(dto, sizeof(FieldBattleDTO));

    dto->battleType = battleType;
    dto->battleStatusMask = 0;
    dto->resultMask = 0;

    for (i = 0; i < MAX_BATTLERS; i++) {
        dto->trainerIDs[i] = 0;
        MI_CpuClear32(&dto->trainer[i], sizeof(Trainer));
    }

    dto->background = BACKGROUND_PLAIN;
    dto->terrain = TERRAIN_MAX;
    dto->mapLabelTextID = LocationNames_Text_MysteryZone;
    dto->timeOfDay = TIMEOFDAY_MORNING;
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
        dto->chatotCries[i] = ChatotCry_New(heapID);
    }

    dto->bag = Bag_New(heapID);
    dto->pokedex = Pokedex_New(heapID);
    dto->options = Options_New(heapID);
    dto->captureAttempt = CaptureAttempt_New(heapID);
    dto->bagCursor = NULL;
    dto->subscreenCursorOn = NULL;
    dto->countSafariBalls = 0;
    dto->wiFiHistory = NULL;
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
        + gSystem.vblankCounter;

    if (CommSys_IsInitialized() == TRUE) {
        for (i = 0; i < CommSys_ConnectedCount(); i++) {
            dto->unk_178[i] = sub_020362F4(i);
        }
        dto->networkID = CommSys_CurNetId();
    }

    MI_CpuClear8(&(dto->battleRecords), sizeof(BattleRecords));
    return dto;
}

FieldBattleDTO *FieldBattleDTO_NewSafari(enum HeapID heapID, int countSafariBalls)
{
    FieldBattleDTO *dto = FieldBattleDTO_New(heapID, BATTLE_TYPE_SAFARI);
    dto->countSafariBalls = countSafariBalls;
    return dto;
}

FieldBattleDTO *FieldBattleDTO_NewPalPark(enum HeapID heapID, int countParkBalls)
{
    FieldBattleDTO *dto = FieldBattleDTO_New(heapID, BATTLE_TYPE_PAL_PARK);
    dto->countSafariBalls = countParkBalls;
    return dto;
}

FieldBattleDTO *FieldBattleDTO_NewCatchingTutorial(enum HeapID heapID, const FieldSystem *fieldSystem)
{
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(fieldSystem->saveData);
    Options *options = SaveData_GetOptions(fieldSystem->saveData);
    FieldBattleDTO *dto = FieldBattleDTO_New(heapID, BATTLE_TYPE_CATCH_TUTORIAL);
    MessageLoader *msgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_COUNTERPART_NAMES, heapID);
    Strbuf *strbuf = Strbuf_Init(TRAINER_NAME_LEN + 1, heapID);
    Pokemon *mon;

    MessageLoader_GetStrbuf(msgLoader, TrainerInfo_Gender(trainerInfo) ^ 1, strbuf);
    TrainerInfo_SetName(dto->trainerInfo[BATTLER_PLAYER_1], Strbuf_GetData(strbuf));
    Strbuf_Free(strbuf);
    MessageLoader_Free(msgLoader);

    TrainerInfo_SetGender(dto->trainerInfo[BATTLER_PLAYER_1], TrainerInfo_Gender(trainerInfo) ^ 1);
    SetBackgroundAndTerrain(dto, fieldSystem);
    Options_Copy(options, dto->options);
    dto->timeOfDay = FieldSystem_GetTimeOfDay(fieldSystem);
    Bag_TryAddItem(dto->bag, ITEM_POKE_BALL, 20, heapID);

    mon = Pokemon_New(heapID);
    Pokemon_InitWith(mon, SystemVars_GetPlayerCounterpartStarter(SaveData_GetVarsFlags(fieldSystem->saveData)), 5, INIT_IVS_RANDOM, FALSE, 0, OTID_NOT_SHINY, 0);
    Party_AddPokemon(dto->parties[BATTLER_PLAYER_1], mon);
    Pokemon_InitWith(mon, SPECIES_BIDOOF, 2, INIT_IVS_RANDOM, FALSE, 0, OTID_NOT_SHINY, 0);
    Party_AddPokemon(dto->parties[BATTLER_ENEMY_1], mon);
    Heap_Free(mon);

    dto->pcBoxes = SaveData_GetPCBoxes(fieldSystem->saveData);
    dto->bagCursor = fieldSystem->bagCursor;
    dto->subscreenCursorOn = NULL;
    dto->records = SaveData_GetGameRecords(fieldSystem->saveData);
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
        Heap_Free(dto->parties[i]);
    }

    for (i = 0; i < 4; i++) {
        GF_ASSERT(dto->trainerInfo[i] != NULL);
        Heap_Free(dto->trainerInfo[i]);
    }

    for (i = 0; i < 4; i++) {
        GF_ASSERT(dto->chatotCries[i] != NULL);
        Heap_Free(dto->chatotCries[i]);
    }

    Heap_Free(dto->bag);
    Heap_Free(dto->pokedex);
    Heap_Free(dto->options);
    CaptureAttempt_Free(dto->captureAttempt);
    Heap_Free(dto);
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
    Party_Copy(src, dto->parties[battler]);
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

void FieldBattleDTO_InitFromGameState(FieldBattleDTO *dto, const FieldSystem *fieldSystem, SaveData *saveData, enum MapHeader mapHeaderID, JournalEntry *journalEntry, BagCursor *bagCursor, u8 *subscreenCursorOn)
{
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(saveData);
    Party *party = SaveData_GetParty(saveData);
    Bag *bag = SaveData_GetBag(saveData);
    Pokedex *pokedex = SaveData_GetPokedex(saveData);
    ChatotCry *chatotCry = SaveData_GetChatotCry(saveData);
    Options *options = SaveData_GetOptions(saveData);
    FieldOverworldState *fieldOverworldState = SaveData_GetFieldOverworldState(saveData);

    if (fieldSystem != NULL) {
        SetBackgroundAndTerrain(dto, fieldSystem);
        dto->timeOfDay = FieldSystem_GetTimeOfDay(fieldSystem);
    } else {
        dto->background = MapHeader_GetBattleBG(mapHeaderID);
        dto->terrain = TERRAIN_BUILDING;

        GameTime *gameTime = SaveData_GetGameTime(saveData);
        dto->timeOfDay = TimeOfDayForHour(gameTime->time.hour);
    }

    FieldBattleDTO_CopyTrainerInfoToBattler(dto, trainerInfo, BATTLER_PLAYER_1);
    FieldBattleDTO_CopyPartyToBattler(dto, party, BATTLER_PLAYER_1);
    Bag_Copy(bag, dto->bag);
    Pokedex_Copy(pokedex, dto->pokedex);
    Options_Copy(options, dto->options);
    FieldBattleDTO_CopyChatotCryToBattler(dto, chatotCry, BATTLER_PLAYER_1);

    dto->pcBoxes = SaveData_GetPCBoxes(saveData);
    dto->mapLabelTextID = MapHeader_GetMapLabelTextID(mapHeaderID);
    dto->mapEvolutionMethod = MapHeader_GetMapEvolutionMethod(mapHeaderID);
    dto->visitedContestHall = PokemonSummaryScreen_ShowContestData(saveData);
    dto->metBebe = SystemFlag_CheckMetBebe(SaveData_GetVarsFlags(saveData));
    dto->fieldWeather = FieldOverworldState_GetWeather(fieldOverworldState);
    dto->bagCursor = bagCursor;
    dto->subscreenCursorOn = subscreenCursorOn;
    dto->poketch = SaveData_GetPoketch(saveData);
    dto->wiFiHistory = SaveData_WiFiHistory(saveData);
    dto->records = SaveData_GetGameRecords(saveData);
    dto->journalEntry = journalEntry;
    dto->palPad = SaveData_GetPalPad(saveData);
    dto->mapHeaderID = mapHeaderID;
    dto->saveData = saveData;
}

void FieldBattleDTO_Init(FieldBattleDTO *dto, const FieldSystem *fieldSystem)
{
    FieldBattleDTO_InitFromGameState(dto, fieldSystem, fieldSystem->saveData, fieldSystem->location->mapId, fieldSystem->journalEntry, fieldSystem->bagCursor, fieldSystem->battleSubscreenCursorOn);
    FieldBattleDTO_CopyPlayerInfoToTrainerData(dto);
}

void FieldBattleDTO_InitWithNormalizedMonLevels(FieldBattleDTO *dto, const FieldSystem *fieldSystem, int level)
{
    int i;
    u32 levelBaseExp;
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(fieldSystem->saveData);
    Party *party = SaveData_GetParty(fieldSystem->saveData);
    Bag *bag = SaveData_GetBag(fieldSystem->saveData);
    Pokedex *pokedex = SaveData_GetPokedex(fieldSystem->saveData);
    ChatotCry *chatotCry = SaveData_GetChatotCry(fieldSystem->saveData);
    Options *options = SaveData_GetOptions(fieldSystem->saveData);

    dto->background = BACKGROUND_INDOORS_1;
    dto->terrain = TERRAIN_BUILDING;

    FieldBattleDTO_CopyTrainerInfoToBattler(dto, trainerInfo, BATTLER_PLAYER_1);

    Pokemon *mon = Pokemon_New(HEAP_ID_FIELD2);
    Party_InitWithCapacity(dto->parties[BATTLER_PLAYER_1], Party_GetCurrentCount(party));
    for (i = 0; i < Party_GetCurrentCount(party); i++) {
        Pokemon_Copy(Party_GetPokemonBySlotIndex(party, i), mon);

        if (Pokemon_GetValue(mon, MON_DATA_LEVEL, NULL) != level && level != 0) {
            levelBaseExp = Pokemon_GetSpeciesBaseExpAt(Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL), level);
            Pokemon_SetValue(mon, MON_DATA_EXPERIENCE, &levelBaseExp);
            Pokemon_CalcLevelAndStats(mon);
        }

        FieldBattleDTO_AddPokemonToBattler(dto, mon, BATTLER_PLAYER_1);
    }
    Heap_Free(mon);

    Bag_Copy(bag, dto->bag);
    Pokedex_Copy(pokedex, dto->pokedex);
    Options_Copy(options, dto->options);
    FieldBattleDTO_CopyChatotCryToBattler(dto, chatotCry, BATTLER_PLAYER_1);

    dto->pcBoxes = SaveData_GetPCBoxes(fieldSystem->saveData);
    dto->timeOfDay = FieldSystem_GetTimeOfDay(fieldSystem);
    dto->bagCursor = fieldSystem->bagCursor;
    dto->subscreenCursorOn = fieldSystem->battleSubscreenCursorOn;
    dto->poketch = SaveData_GetPoketch(fieldSystem->saveData);
    dto->wiFiHistory = SaveData_WiFiHistory(fieldSystem->saveData);
    dto->records = SaveData_GetGameRecords(fieldSystem->saveData);
    dto->journalEntry = fieldSystem->journalEntry;
    dto->palPad = SaveData_GetPalPad(fieldSystem->saveData);
    dto->mapHeaderID = fieldSystem->location->mapId;
    dto->saveData = fieldSystem->saveData;

    FieldBattleDTO_CopyPlayerInfoToTrainerData(dto);
}

void FieldBattleDTO_InitWithPartyOrder(FieldBattleDTO *dto, const FieldSystem *fieldSystem, const Party *party, const u8 *partyOrder)
{
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(fieldSystem->saveData);
    Bag *bag = SaveData_GetBag(fieldSystem->saveData);
    Pokedex *pokedex = SaveData_GetPokedex(fieldSystem->saveData);
    ChatotCry *chatotCry = SaveData_GetChatotCry(fieldSystem->saveData);
    Options *options = SaveData_GetOptions(fieldSystem->saveData);
    const BattleRegulation *regulation = fieldSystem->unk_B0;
    int i;
    Pokemon *mon;

    dto->background = BACKGROUND_INDOORS_1;
    dto->terrain = TERRAIN_BUILDING;

    FieldBattleDTO_CopyTrainerInfoToBattler(dto, trainerInfo, BATTLER_PLAYER_1);

    if (partyOrder == NULL) {
        FieldBattleDTO_CopyPartyToBattler(dto, party, BATTLER_PLAYER_1);
    } else {
        int numToCopy = 0;
        for (i = 0; i < MAX_PARTY_SIZE; i++) {
            if (partyOrder[i] != 0) {
                numToCopy++;
            }
        }

        if (numToCopy == 0) {
            FieldBattleDTO_CopyPartyToBattler(dto, party, BATTLER_PLAYER_1);
        } else {
            mon = Pokemon_New(HEAP_ID_FIELD2);
            Party_InitWithCapacity(dto->parties[BATTLER_PLAYER_1], numToCopy);
            for (i = 0; i < numToCopy; i++) {
                Pokemon_Copy(Party_GetPokemonBySlotIndex(party, partyOrder[i] - 1), mon);
                FieldBattleDTO_AddPokemonToBattler(dto, mon, BATTLER_PLAYER_1);
            }

            Heap_Free(mon);
        }
    }

    if (regulation) {
        if (BattleRegulation_GetRuleValue(regulation, BATTLE_REGULATION_RULE_MOVE_RESTRICTIONS)) {
            dto->rulesetMask = 1;
        }
    }

    Bag_Copy(bag, dto->bag);
    Pokedex_Copy(pokedex, dto->pokedex);
    Options_Copy(options, dto->options);
    FieldBattleDTO_CopyChatotCryToBattler(dto, chatotCry, BATTLER_PLAYER_1);

    dto->pcBoxes = SaveData_GetPCBoxes(fieldSystem->saveData);
    dto->timeOfDay = FieldSystem_GetTimeOfDay(fieldSystem);
    dto->bagCursor = fieldSystem->bagCursor;
    dto->subscreenCursorOn = fieldSystem->battleSubscreenCursorOn;
    dto->wiFiHistory = SaveData_WiFiHistory(fieldSystem->saveData);
    dto->records = SaveData_GetGameRecords(fieldSystem->saveData);
    dto->journalEntry = fieldSystem->journalEntry;
    dto->mapHeaderID = fieldSystem->location->mapId;
    dto->palPad = SaveData_GetPalPad(fieldSystem->saveData);
    dto->saveData = fieldSystem->saveData;

    if (sub_020326C4(sub_0203895C())) {
        int unionAppearance = TrainerInfo_Appearance(trainerInfo);
        int unionGender = TrainerInfo_Gender(trainerInfo);

        dto->trainer[BATTLER_PLAYER_1].header.trainerType = sub_0205CA14(unionGender, unionAppearance, 1);
        CharCode_Copy(dto->trainer[BATTLER_PLAYER_1].name, TrainerInfo_Name(dto->trainerInfo[BATTLER_PLAYER_1]));
        dto->trainer[BATTLER_PLAYER_2] = dto->trainer[BATTLER_PLAYER_1];
    } else {
        FieldBattleDTO_CopyPlayerInfoToTrainerData(dto);
    }
}

void FieldBattleDTO_InitWithPartyOrderFromSave(FieldBattleDTO *dto, const FieldSystem *fieldSystem, const u8 *partyOrder)
{
    FieldBattleDTO_InitWithPartyOrder(dto, fieldSystem, SaveData_GetParty(fieldSystem->saveData), partyOrder);
}

void FieldBattleDTO_UpdateFieldSystem(const FieldBattleDTO *dto, FieldSystem *fieldSystem)
{
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(fieldSystem->saveData);
    Party *party = SaveData_GetParty(fieldSystem->saveData);
    Bag *bag = SaveData_GetBag(fieldSystem->saveData);
    Pokedex *pokedex = SaveData_GetPokedex(fieldSystem->saveData);
    u16 *fieldSysSafariBalls = FieldOverworldState_GetSafariBallCount(SaveData_GetFieldOverworldState(fieldSystem->saveData));

    TrainerInfo_Copy(dto->trainerInfo[BATTLER_PLAYER_1], trainerInfo);
    Party_Copy(dto->parties[BATTLER_PLAYER_1], party);
    Bag_Copy(dto->bag, bag);
    Pokedex_Copy(dto->pokedex, pokedex);

    *fieldSysSafariBalls = dto->countSafariBalls;
}

void FieldBattleDTO_UpdatePokedex(const FieldBattleDTO *dto, FieldSystem *fieldSystem)
{
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(fieldSystem->saveData);
    Party *party = SaveData_GetParty(fieldSystem->saveData);
    Bag *bag = SaveData_GetBag(fieldSystem->saveData);
    Pokedex *pokedex = SaveData_GetPokedex(fieldSystem->saveData);

    Pokedex_Copy(dto->pokedex, pokedex);
}

static const enum BattleTerrain sTerrainForBackground[] = {
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
    u8 behavior = TerrainCollisionManager_GetTileBehavior(fieldSystem, fieldSystem->location->x, fieldSystem->location->z);
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
    dto->trainer[BATTLER_PLAYER_1].header.trainerType = TrainerInfo_Gender(dto->trainerInfo[BATTLER_PLAYER_1]);
    CharCode_Copy(dto->trainer[BATTLER_PLAYER_1].name, TrainerInfo_Name(dto->trainerInfo[BATTLER_PLAYER_1]));
    dto->trainer[BATTLER_PLAYER_2] = dto->trainer[BATTLER_PLAYER_1];
}
