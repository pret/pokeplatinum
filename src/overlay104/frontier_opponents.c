#include "overlay104/frontier_opponents.h"

#include <nitro.h>

#include "constants/heap.h"
#include "constants/narc.h"
#include "constants/string.h"
#include "generated/object_events_gfx.h"
#include "generated/species_data_params.h"
#include "generated/trainer_classes.h"

#include "struct_defs/wi_fi_history.h"

#include "charcode_util.h"
#include "communication_information.h"
#include "communication_system.h"
#include "easy_chat_sentence.h"
#include "field_battle_data_transfer.h"
#include "flags.h"
#include "map_header.h"
#include "math_util.h"
#include "message.h"
#include "narc.h"
#include "party.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "save_player.h"
#include "savedata.h"
#include "sprite.h"
#include "string_gf.h"
#include "string_template.h"
#include "trainer_info.h"
#include "unk_02038F8C.h"
#include "unk_0208C098.h"
#include "unk_02092494.h"
#include "wifi_history_save_data.h"

#include "res/text/bank/battle_factory_ot_name.h"

static const struct {
    u16 trainerType;
    u16 objectID;
} sTrainerClassToObjectID[] = {
    { TRAINER_CLASS_TRAINER_CHERYL, OBJ_EVENT_GFX_CHERYL },
    { TRAINER_CLASS_TRAINER_RILEY, OBJ_EVENT_GFX_RILEY },
    { TRAINER_CLASS_TRAINER_MARLEY, OBJ_EVENT_GFX_MARLEY },
    { TRAINER_CLASS_TRAINER_BUCK, OBJ_EVENT_GFX_BUCK },
    { TRAINER_CLASS_TRAINER_MIRA, OBJ_EVENT_GFX_MIRA },
    { TRAINER_CLASS_YOUNGSTER, OBJ_EVENT_GFX_YOUNGSTER },
    { TRAINER_CLASS_LASS, OBJ_EVENT_GFX_LASS },
    { TRAINER_CLASS_SCHOOL_KID_MALE, OBJ_EVENT_GFX_SCHOOL_KID_M },
    { TRAINER_CLASS_SCHOOL_KID_FEMALE, OBJ_EVENT_GFX_SCHOOL_KID_F },
    { TRAINER_CLASS_RICH_BOY, OBJ_EVENT_GFX_RICH_BOY },
    { TRAINER_CLASS_LADY, OBJ_EVENT_GFX_LADY },
    { TRAINER_CLASS_CAMPER, OBJ_EVENT_GFX_CAMPER },
    { TRAINER_CLASS_PICNICKER, OBJ_EVENT_GFX_PICNICKER },
    { TRAINER_CLASS_TUBER_MALE, OBJ_EVENT_GFX_NINJA_BOY },
    { TRAINER_CLASS_TUBER_FEMALE, OBJ_EVENT_GFX_TWIN },
    { TRAINER_CLASS_POKEFAN_MALE, OBJ_EVENT_GFX_POKEFAN_M },
    { TRAINER_CLASS_POKEFAN_FEMALE, OBJ_EVENT_GFX_POKEFAN_F },
    { TRAINER_CLASS_WAITER, OBJ_EVENT_GFX_WAITER },
    { TRAINER_CLASS_WAITRESS, OBJ_EVENT_GFX_WAITRESS },
    { TRAINER_CLASS_BREEDER_MALE, OBJ_EVENT_GFX_POKEMON_BREEDER_M },
    { TRAINER_CLASS_BREEDER_FEMALE, OBJ_EVENT_GFX_POKEMON_BREEDER_F },
    { TRAINER_CLASS_CAMERAMAN, OBJ_EVENT_GFX_CAMERAMAN },
    { TRAINER_CLASS_REPORTER, OBJ_EVENT_GFX_REPORTER },
    { TRAINER_CLASS_RANCHER, OBJ_EVENT_GFX_RANCHER },
    { TRAINER_CLASS_COWGIRL, OBJ_EVENT_GFX_COWGIRL },
    { TRAINER_CLASS_CYCLIST_MALE, OBJ_EVENT_GFX_CYCLIST_M },
    { TRAINER_CLASS_CYCLIST_FEMALE, OBJ_EVENT_GFX_CYCLIST_F },
    { TRAINER_CLASS_BLACK_BELT, OBJ_EVENT_GFX_BLACK_BELT },
    { TRAINER_CLASS_BATTLE_GIRL, OBJ_EVENT_GFX_BATTLE_GIRL },
    { TRAINER_CLASS_VETERAN, OBJ_EVENT_GFX_EXPERT_M },
    { TRAINER_CLASS_SOCIALITE, OBJ_EVENT_GFX_SOCIALITE },
    { TRAINER_CLASS_PSYCHIC_MALE, OBJ_EVENT_GFX_PSYCHIC },
    { TRAINER_CLASS_PSYCHIC_FEMALE, OBJ_EVENT_GFX_PSYCHIC },
    { TRAINER_CLASS_RANGER_MALE, OBJ_EVENT_GFX_ACE_TRAINER_M },
    { TRAINER_CLASS_RANGER_FEMALE, OBJ_EVENT_GFX_ACE_TRAINER_F },
    { TRAINER_CLASS_ACE_TRAINER_MALE, OBJ_EVENT_GFX_ACE_TRAINER_M },
    { TRAINER_CLASS_ACE_TRAINER_FEMALE, OBJ_EVENT_GFX_ACE_TRAINER_F },
    { TRAINER_CLASS_ACE_TRAINER_SNOW_MALE, OBJ_EVENT_GFX_ACE_TRAINER_SNOW_M },
    { TRAINER_CLASS_ACE_TRAINER_SNOW_FEMALE, OBJ_EVENT_GFX_ACE_TRAINER_SNOW_F },
    { TRAINER_CLASS_DRAGON_TAMER, OBJ_EVENT_GFX_ACE_TRAINER_M },
    { TRAINER_CLASS_BUG_CATCHER, OBJ_EVENT_GFX_BUG_CATCHER },
    { TRAINER_CLASS_NINJA_BOY, OBJ_EVENT_GFX_NINJA_BOY },
    { TRAINER_CLASS_JOGGER, OBJ_EVENT_GFX_JOGGER },
    { TRAINER_CLASS_FISHERMAN, OBJ_EVENT_GFX_FISHERMAN },
    { TRAINER_CLASS_SAILOR, OBJ_EVENT_GFX_SAILOR },
    { TRAINER_CLASS_HIKER, OBJ_EVENT_GFX_HIKER },
    { TRAINER_CLASS_RUIN_MANIAC, OBJ_EVENT_GFX_RUIN_MANIAC },
    { TRAINER_CLASS_GUITARIST, OBJ_EVENT_GFX_GUITARIST },
    { TRAINER_CLASS_COLLECTOR, OBJ_EVENT_GFX_COLLECTOR },
    { TRAINER_CLASS_ROUGHNECK, OBJ_EVENT_GFX_ROUGHNECK },
    { TRAINER_CLASS_SCIENTIST, OBJ_EVENT_GFX_SCIENTIST_M },
    { TRAINER_CLASS_GENTLEMAN, OBJ_EVENT_GFX_GENTLEMAN },
    { TRAINER_CLASS_WORKER, OBJ_EVENT_GFX_WORKER },
    { TRAINER_CLASS_CLOWN, OBJ_EVENT_GFX_CLOWN },
    { TRAINER_CLASS_POLICEMAN, OBJ_EVENT_GFX_POLICEMAN },
    { TRAINER_CLASS_PI, OBJ_EVENT_GFX_RICH_BOY },
    { TRAINER_CLASS_BIRD_KEEPER, OBJ_EVENT_GFX_ACE_TRAINER_F },
    { TRAINER_CLASS_PARASOL_LADY, OBJ_EVENT_GFX_PARASOL_LADY },
    { TRAINER_CLASS_BEAUTY, OBJ_EVENT_GFX_BEAUTY },
    { TRAINER_CLASS_AROMA_LADY, OBJ_EVENT_GFX_POKEMON_BREEDER_F },
    { TRAINER_CLASS_IDOL, OBJ_EVENT_GFX_IDOL },
    { TRAINER_CLASS_ARTIST, OBJ_EVENT_GFX_ARTIST },
    { TRAINER_CLASS_POKE_KID, OBJ_EVENT_GFX_PIKACHU }
};

static FrontierTrainerBase *BattleFrontier_GetTrainerBase(u16 battleTowerTrainerID, enum HeapID heapID, enum NarcID narcID)
{
    return NARC_AllocAndReadWholeMemberByIndexPair(narcID, battleTowerTrainerID, heapID);
}

void BattleFrontier_GetPokemonBase(FrontierPokemonBase *monData, int narcIdx, enum NarcID narcID)
{
    NARC_ReadWholeMemberByIndexPair(monData, narcID, narcIdx);
}

FrontierTrainerBase *BattleFrontier_GetTrainer(FrontierTrainer *trainer, int trainerID, enum HeapID heapID, enum NarcID narcID)
{
    MessageLoader *msgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_FRONTIER_TRAINER_NAMES, heapID);

    MI_CpuClear8(trainer, sizeof(FrontierTrainer));

    FrontierTrainerBase *trainerBase = BattleFrontier_GetTrainerBase(trainerID, heapID, narcID);

    trainer->trainerID = trainerID;
    trainer->introMsg[0] = 0xFFFF;
    trainer->introMsg[1] = trainerID * 3;
    trainer->trainerType = trainerBase->trainerType;

    String *string = MessageLoader_GetNewString(msgLoader, trainerID);

    String_ToChars(string, &trainer->trainerName[0], TRAINER_NAME_LEN + 1);
    String_Free(string);
    MessageLoader_Free(msgLoader);

    return trainerBase;
}

static const u16 sFrontierPokemonDefaultItems[] = {
    ITEM_BRIGHTPOWDER,
    ITEM_LUM_BERRY,
    ITEM_LEFTOVERS,
    ITEM_QUICK_CLAW
};

static u32 FrontierPokemon_Init(FrontierPokemon *mon, u16 narcIdx, u32 otID, u32 personality, u8 ivs, u8 itemIdx, BOOL alwaysFalse, enum HeapID heapID, enum NarcID narcID)
{
    MI_CpuClear8(mon, sizeof(FrontierPokemon));
    FrontierPokemonBase baseMon;
    BattleFrontier_GetPokemonBase(&baseMon, narcIdx, narcID);

    mon->species = baseMon.species;
    mon->form = baseMon.form;

    if (alwaysFalse) {
        if (itemIdx >= NELEMS(sFrontierPokemonDefaultItems)) {
            itemIdx %= NELEMS(sFrontierPokemonDefaultItems);
        }

        mon->item = sFrontierPokemonDefaultItems[itemIdx];
    } else {
        mon->item = baseMon.item;
    }

    u8 friendship = MAX_FRIENDSHIP_VALUE;

    for (int i = 0; i < LEARNED_MOVES_MAX; i++) {
        mon->moves[i] = baseMon.moves[i];

        if (baseMon.moves[i] == MOVE_FRUSTRATION) {
            friendship = 0;
        }
    }

    mon->otID = otID;

    if (personality == 0) {
        do {
            personality = LCRNG_Next() | LCRNG_Next() << 16;
        } while (baseMon.nature != Pokemon_GetNatureOf(personality) || Pokemon_IsPersonalityShiny(otID, personality) == TRUE);

        mon->personality = personality;
    } else {
        mon->personality = personality;
    }

    mon->hpIV = ivs;
    mon->atkIV = ivs;
    mon->defIV = ivs;
    mon->speedIV = ivs;
    mon->spAtkIV = ivs;
    mon->spDefIV = ivs;

    int evs = 0;

    for (int i = 0; i < STAT_MAX; i++) {
        if (baseMon.evFlags & FlagIndex(i)) {
            evs++;
        }
    }

    if (MAX_EVS_ALL_STATS / evs > MAX_EVS_SINGLE_STAT) {
        evs = MAX_EVS_SINGLE_STAT;
    } else {
        evs = MAX_EVS_ALL_STATS / evs;
    }

    for (int i = 0; i < STAT_MAX; i++) {
        if (baseMon.evFlags & FlagIndex(i)) {
            mon->evList[i] = evs;
        }
    }

    mon->combinedPPUps = 0;
    mon->language = gGameLanguage;

    int ability2 = SpeciesData_GetSpeciesValue(mon->species, SPECIES_DATA_ABILITY_2);

    if (ability2) {
        if (mon->personality & 1) {
            mon->ability = ability2;
        } else {
            mon->ability = SpeciesData_GetSpeciesValue(mon->species, SPECIES_DATA_ABILITY_1);
        }
    } else {
        mon->ability = SpeciesData_GetSpeciesValue(mon->species, SPECIES_DATA_ABILITY_1);
    }

    mon->friendship = friendship;
    MessageLoader_GetSpeciesName(mon->species, heapID, &mon->nickname[0]);

    return personality;
}

void FrontierPokemon_InitPokemon(const FrontierPokemon *frontierMon, Pokemon *mon, u8 setLevel)
{
    u32 combinedIVs;
    u8 val, maxPP, level;
    u16 move;
    u32 otID;

    Pokemon_Init(mon);

    if (setLevel == 120) {
        level = 50;
    } else if (setLevel == 121) {
        level = 100;
    } else {
        level = setLevel;
    }

    combinedIVs = frontierMon->combinedIVs & 0x3FFFFFFF;

    Pokemon_InitWith(mon, frontierMon->species, level, combinedIVs, TRUE, frontierMon->personality, OTID_NOT_SHINY, 0);
    Pokemon_SetValue(mon, MON_DATA_COMBINED_IVS, &combinedIVs);
    Pokemon_CalcLevelAndStats(mon);

    val = frontierMon->form;

    Pokemon_SetValue(mon, MON_DATA_FORM, &val);
    Pokemon_SetValue(mon, MON_DATA_HELD_ITEM, &frontierMon->item);

    for (int i = 0; i < LEARNED_MOVES_MAX; i++) {
        move = frontierMon->moves[i];
        Pokemon_SetValue(mon, MON_DATA_MOVE1 + i, &move);

        val = (frontierMon->combinedPPUps >> (i * 2)) & 0x3;
        Pokemon_SetValue(mon, MON_DATA_MOVE1_PP_UPS + i, &val);

        maxPP = Pokemon_GetValue(mon, MON_DATA_MOVE1_MAX_PP + i, NULL);
        Pokemon_SetValue(mon, MON_DATA_MOVE1_PP + i, &maxPP);
    }

    otID = frontierMon->otID;
    Pokemon_SetValue(mon, MON_DATA_OT_ID, &otID);

    val = frontierMon->hpEV;
    Pokemon_SetValue(mon, MON_DATA_HP_EV, &val);

    val = frontierMon->atkEV;
    Pokemon_SetValue(mon, MON_DATA_ATK_EV, &val);

    val = frontierMon->defEV;
    Pokemon_SetValue(mon, MON_DATA_DEF_EV, &val);

    val = frontierMon->speedEV;
    Pokemon_SetValue(mon, MON_DATA_SPEED_EV, &val);

    val = frontierMon->spAtkEV;
    Pokemon_SetValue(mon, MON_DATA_SPATK_EV, &val);

    val = frontierMon->spDefEV;
    Pokemon_SetValue(mon, MON_DATA_SPDEF_EV, &val);

    Pokemon_SetValue(mon, MON_DATA_ABILITY, &frontierMon->ability);
    Pokemon_SetValue(mon, MON_DATA_FRIENDSHIP, &frontierMon->friendship);

    if (frontierMon->setSpeciesAsNickname) {
        MessageLoader *msgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_SPECIES_NAME, HEAP_ID_FIELD1);
        String *speciesName = MessageLoader_GetNewString(msgLoader, frontierMon->species);

        Pokemon_SetValue(mon, MON_DATA_NICKNAME_STRING, speciesName);
        String_Free(speciesName);
        MessageLoader_Free(msgLoader);
    } else {
        Pokemon_SetValue(mon, MON_DATA_NICKNAME, frontierMon->nickname);
    }

    Pokemon_SetValue(mon, MON_DATA_LANGUAGE, &frontierMon->language);
    Pokemon_CalcLevelAndStats(mon);
}

u16 BattleFrontier_GetObjectIDFromTrainerClass(u8 trainerClass)
{
    for (int i = 0; i < NELEMS(sTrainerClassToObjectID); i++) {
        if (sTrainerClassToObjectID[i].trainerType == trainerClass) {
            return sTrainerClassToObjectID[i].objectID;
        }
    }

    return OBJ_EVENT_GFX_SCHOOL_KID_M;
}

static void SetRentalPokemonSummaryInfo(SaveData *saveData, Pokemon *mon)
{
    TrainerInfo *playerInfo = SaveData_GetTrainerInfo(saveData);

    u32 otID = Pokemon_GetValue(mon, MON_DATA_OT_ID, NULL);
    Pokemon_UpdateAfterCatch(mon, SaveData_GetTrainerInfo(saveData), ITEM_POKE_BALL, 0, 0, HEAP_ID_FIELD2);

    int metLocation = MapHeader_GetMapLabelTextID(MAP_HEADER_BATTLE_FACTORY);
    UpdateMonStatusAndTrainerInfo(mon, playerInfo, 0, metLocation, HEAP_ID_FIELD2);

    MessageLoader *msgLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_BATTLE_FACTORY_OT_NAME, HEAP_ID_FIELD2);
    String *otName = MessageLoader_GetNewString(msgLoader, BattleFactoryOTName_Text_Unknown);

    Pokemon_SetValue(mon, MON_DATA_OT_NAME_STRING, otName);
    Pokemon_SetValue(mon, MON_DATA_OT_ID, &otID);

    String_Free(otName);
    MessageLoader_Free(msgLoader);
}

void BattleFactory_AddRentalPokemonToParty(SaveData *saveData, Party *party, Pokemon *mon)
{
    SetRentalPokemonSummaryInfo(saveData, mon);
    Party_AddPokemon(party, mon);
}

void BattleCastle_UpdateMonSpriteAnimID(Sprite *sprite, u8 animID)
{
    if (Sprite_GetActiveAnim(sprite) == animID) {
        return;
    }

    Sprite_SetAnimFrame(sprite, 0);
    Sprite_SetAnim(sprite, animID);
    Sprite_UpdateAnim(sprite, FX32_ONE);
}

void BattleCastle_UpdateMonSpritePosition(Sprite *sprite, s16 x, s16 y, u8 isSelected)
{
    VecFx32 position;

    position.x = x * FX32_ONE;
    position.y = y * FX32_ONE;
    position.z = 0;

    if (isSelected == 1) {
        if (Sprite_GetAnimFrame(sprite) == 0) {
            position.y = (y - 3) * FX32_ONE;
        } else {
            position.y = (y + 1) * FX32_ONE;
        }
    }

    Sprite_SetPosition(sprite, &position);
}

u8 BattleCastle_GetPokeIconAnimID(u16 hp, u16 maxHp)
{
    switch (HealthBar_Color(hp, maxHp, 48)) {
    case BARCOLOR_MAX:
        return POKEICON_ANIM_HP_MAX;
    case BARCOLOR_GREEN:
        return POKEICON_ANIM_HP_GREEN;
    case BARCOLOR_YELLOW:
        return POKEICON_ANIM_HP_YELLOW;
    case BARCOLOR_RED:
        return POKEICON_ANIM_HP_RED;
    }

    return POKEICON_ANIM_HP_MAX;
}

void BattleFrontier_LoadTrainer(FrontierOpponent *opponent, u16 trainerID, enum HeapID heapID, enum NarcID narcID)
{
    Heap_Free(BattleFrontier_GetTrainer(&opponent->trainer, trainerID, heapID, narcID));
}

void FieldBattleDTO_InitFrontierTrainer(FieldBattleDTO *battleDTO, FrontierTrainer *trainer, int unused, int battlerId, enum HeapID heapID)
{
    EasyChatSentence *sentence;

    battleDTO->trainerIDs[battlerId] = trainer->trainerID;
    battleDTO->trainer[battlerId].header.trainerType = trainer->trainerType;

    CharCode_Copy(&battleDTO->trainer[battlerId].name[0], &trainer->trainerName[0]);

    sentence = (EasyChatSentence *)&trainer->winMsg[0];
    battleDTO->trainer[battlerId].winMsg = *sentence;

    sentence = (EasyChatSentence *)&trainer->loseMsg[0];
    battleDTO->trainer[battlerId].loseMsg = *sentence;
}

u32 BattleFrontier_LoadOpponentMonData(FrontierPokemon *frontierMon, u16 narcIdx, int unused, u8 ivs, u32 personality, enum HeapID heapID, enum NarcID narcID)
{
    u32 otID = LCRNG_Next() | (LCRNG_Next() << 16);
    return FrontierPokemon_Init(frontierMon, narcIdx, otID, personality, ivs, unused, FALSE, heapID, narcID);
}

void BattleFrontier_LoadFrontierPokemon(FrontierPokemon *mons, u16 narcIdx[], u8 ivList[], u32 personalities[], u32 resultPersonalities[], int numMons, enum HeapID heapID, enum NarcID narcID)
{
    for (int i = 0; i < numMons; i++) {
        u8 ivs = ivList == NULL ? 0 : ivList[i];
        u32 personality = (personalities == NULL) ? 0 : personalities[i];
        personality = BattleFrontier_LoadOpponentMonData(&mons[i], narcIdx[i], i, ivs, personality, heapID, narcID);

        if (resultPersonalities != NULL) {
            resultPersonalities[i] = personality;
        }
    }
}

static u8 GetIVsForTrainer(u16 trainerID)
{
    u8 ivs;

    if (trainerID < 100) {
        ivs = (MAX_IVS_SINGLE_STAT / 8) * 1;
    } else if (trainerID < 120) {
        ivs = (MAX_IVS_SINGLE_STAT / 8) * 2;
    } else if (trainerID < 140) {
        ivs = (MAX_IVS_SINGLE_STAT / 8) * 3;
    } else if (trainerID < 160) {
        ivs = (MAX_IVS_SINGLE_STAT / 8) * 4;
    } else if (trainerID < 180) {
        ivs = (MAX_IVS_SINGLE_STAT / 8) * 5;
    } else if (trainerID < 200) {
        ivs = (MAX_IVS_SINGLE_STAT / 8) * 6;
    } else if (trainerID < 220) {
        ivs = (MAX_IVS_SINGLE_STAT / 8) * 7;
    } else {
        ivs = MAX_IVS_SINGLE_STAT;
    }

    return ivs;
}

static BOOL SelectPokemonForTrainer(FrontierTrainerBase *trainer, const u16 partnersSpecies[], const u16 partnersItems[], int partnersNumMons, int numMons, u16 selectedMons[], enum HeapID heapID)
{
    GF_ASSERT(numMons <= MAX_PARTY_SIZE);

    FrontierPokemonBase newMon[MAX_PARTY_SIZE];
    int narcIdx;
    int i = 0;
    int partnerConflictCounter = 0;

    while (i != numMons) {
        narcIdx = trainer->setIDs[LCRNG_Next() % trainer->numSets];
        BattleFrontier_GetPokemonBase(&newMon[i], narcIdx, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDPM);

        int j;
        for (j = 0; j < i; j++) {
            if (newMon[j].species == newMon[i].species || newMon[j].item == newMon[i].item) {
                break;
            }
        }

        if (j != i) {
            continue;
        }

        if (partnerConflictCounter < 50) {
            for (j = 0; j < partnersNumMons; j++) {
                if (newMon[i].species == partnersSpecies[j] || newMon[i].item == partnersItems[j]) {
                    break;
                }
            }

            if (j != partnersNumMons) {
                partnerConflictCounter++;
                continue;
            }
        }

        selectedMons[i] = narcIdx;
        i++;
    }

    if (partnerConflictCounter >= 50) {
        return TRUE;
    }

    return FALSE;
}

void BattleFrontier_GetPokemonForTrainers(u8 numMons, u16 trainerID, u16 trainerID2, u16 *monSetIDs, FrontierPokemon *resultMons, u8 *ivs, u32 *personalities, u8 isMultiplayerChallenge)
{
    int i;
    u16 alreadySelectedSpecies[4];
    u16 alreadySelectedItems[4];

    FrontierTrainer trainer;
    FrontierTrainerBase *trainerSpec = BattleFrontier_GetTrainer(&trainer, trainerID, HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDTR);

    for (i = 0; i < numMons; i++) {
        ivs[i] = GetIVsForTrainer(trainerID);
    }

    if (!isMultiplayerChallenge) {
        SelectPokemonForTrainer(trainerSpec, alreadySelectedSpecies, alreadySelectedItems, 0, numMons, monSetIDs, HEAP_ID_FIELD2);
    } else {
        SelectPokemonForTrainer(trainerSpec, alreadySelectedSpecies, alreadySelectedItems, 0, numMons / 2, monSetIDs, HEAP_ID_FIELD2);

        for (i = 0; i < (numMons / 2); i++) {
            FrontierPokemonBase mon;
            BattleFrontier_GetPokemonBase(&mon, monSetIDs[i], NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDPM);
            alreadySelectedSpecies[i] = mon.species;
            alreadySelectedItems[i] = mon.item;
        }

        Heap_Free(trainerSpec);
        trainerSpec = BattleFrontier_GetTrainer(&trainer, trainerID2, HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDTR);
        SelectPokemonForTrainer(trainerSpec, alreadySelectedSpecies, alreadySelectedItems, numMons / 2, numMons / 2, &monSetIDs[numMons / 2], HEAP_ID_FIELD2);

        for (i = 0; i < numMons / 2; i++) {
            ivs[i + (numMons / 2)] = GetIVsForTrainer(trainerID2);
        }
    }

    Heap_Free(trainerSpec);
    BattleFrontier_LoadFrontierPokemon(resultMons, monSetIDs, ivs, NULL, personalities, numMons, HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDPM);
}

void BattleFrontier_SetPartnerInStrTemplate(StringTemplate *template, u32 idx)
{
    StringTemplate_SetPlayerName(template, idx, CommInfo_TrainerInfo(CommSys_CurNetId() ^ 1));
}

enum ObjectEventGfx BattleFrontier_GetPlayerObjEventGfx(const TrainerInfo *playerInfo)
{
    u32 gender = TrainerInfo_Gender(playerInfo);

    switch (TrainerInfo_GameCode(playerInfo)) {
    case VERSION_PLATINUM:
    case VERSION_HEARTGOLD:
    case VERSION_SOULSILVER:
    default:
        return gender == GENDER_MALE ? OBJ_EVENT_GFX_PLAYER_M : OBJ_EVENT_GFX_PLAYER_F;
    case VERSION_NONE:
        return gender == GENDER_MALE ? OBJ_EVENT_GFX_DP_PLAYER_M : OBJ_EVENT_GFX_DP_PLAYER_F;
    }
}

void BattleFrontier_FlagGeonetLinkInfo(SaveData *saveData)
{
    WiFiHistory *wiFiHistory = SaveData_WiFiHistory(saveData);
    WiFiHistory_FlagGeonetLinkInfo(wiFiHistory);
}
