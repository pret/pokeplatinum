#include "overlay104/ov104_0222DCE0.h"

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

static const u16 sTrainerClassToObjectID[][2] = {
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

BattleFrontierTrainerData *BattleFrontier_GetTrainerDataFromTrainerIDAndNarcID(u16 battleTowerTrainerID, enum HeapID heapID, enum NarcID narcID)
{
    return NARC_AllocAndReadWholeMemberByIndexPair(narcID, battleTowerTrainerID, heapID);
}

void BattleTower_GetMonDataFromSetIDAndNarcID(BattleFrontierPokemonData *monData, int narcIdx, enum NarcID narcID)
{
    NARC_ReadWholeMemberByIndexPair(monData, narcID, narcIdx);
}

BattleFrontierTrainerData *BattleFrontier_GetTrainerData(FrontierTrainerDataDTO *trDataDTO, int battleTowerTrainerID, enum HeapID heapID, enum NarcID narcID)
{
    MessageLoader *msgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_FRONTIER_TRAINER_NAMES, heapID);

    MI_CpuClear8(trDataDTO, sizeof(FrontierTrainerDataDTO));

    BattleFrontierTrainerData *trData = BattleFrontier_GetTrainerDataFromTrainerIDAndNarcID(battleTowerTrainerID, heapID, narcID);

    trDataDTO->trainerID = battleTowerTrainerID;
    trDataDTO->introMsg[0] = 0xFFFF;
    trDataDTO->introMsg[1] = battleTowerTrainerID * 3;
    trDataDTO->trainerType = trData->trainerType;

    String *string = MessageLoader_GetNewString(msgLoader, battleTowerTrainerID);

    String_ToChars(string, &trDataDTO->trainerName[0], TRAINER_NAME_LEN + 1);
    String_Free(string);
    MessageLoader_Free(msgLoader);

    return trData;
}

static const u16 Unk_ov104_0223F290[] = {
    ITEM_BRIGHTPOWDER,
    ITEM_LUM_BERRY,
    ITEM_LEFTOVERS,
    ITEM_QUICK_CLAW
};

static u32 ov104_0222DD6C(FrontierPokemonDataDTO *mon, u16 narcIdx, u32 otID, u32 personality, u8 ivs, u8 itemIdx, BOOL alwaysFalse, int heapID, enum NarcID narcID)
{
    MI_CpuClear8(mon, sizeof(FrontierPokemonDataDTO));
    BattleFrontierPokemonData v4;
    BattleTower_GetMonDataFromSetIDAndNarcID(&v4, narcIdx, narcID);

    mon->species = v4.species;
    mon->form = v4.form;

    if (alwaysFalse) {
        if (itemIdx >= NELEMS(Unk_ov104_0223F290)) {
            itemIdx %= NELEMS(Unk_ov104_0223F290);
        }

        mon->item = Unk_ov104_0223F290[itemIdx];
    } else {
        mon->item = v4.item;
    }

    u8 friendship = MAX_FRIENDSHIP_VALUE;

    for (int i = 0; i < LEARNED_MOVES_MAX; i++) {
        mon->moves[i] = v4.moves[i];

        if (v4.moves[i] == MOVE_FRUSTRATION) {
            friendship = 0;
        }
    }

    mon->otID = otID;

    if (personality == 0) {
        do {
            personality = LCRNG_Next() | LCRNG_Next() << 16;
        } while (v4.nature != Pokemon_GetNatureOf(personality) || Pokemon_IsPersonalityShiny(otID, personality) == TRUE);

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

    int v1 = 0;

    for (int i = 0; i < STAT_MAX; i++) {
        if (v4.evFlags & FlagIndex(i)) {
            v1++;
        }
    }

    if (510 / v1 > 255) {
        v1 = 255;
    } else {
        v1 = 510 / v1;
    }

    for (int v0 = 0; v0 < STAT_MAX; v0++) {
        if (v4.evFlags & FlagIndex(v0)) {
            mon->evList[v0] = v1;
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

void FrontierPokemonDataDTO_InitPokemon(const FrontierPokemonDataDTO *pokemonDTO, Pokemon *mon, u8 param2)
{
    int i;
    u32 combinedIVs;
    u8 val, maxPP, level;
    u16 move;
    u32 otID;

    Pokemon_Init(mon);

    if (param2 == 120) {
        level = 50;
    } else if (param2 == 121) {
        level = 100;
    } else {
        level = param2;
    }

    combinedIVs = (pokemonDTO->combinedIVs & 0x3FFFFFFF);

    Pokemon_InitWith(mon, pokemonDTO->species, level, combinedIVs, TRUE, pokemonDTO->personality, OTID_NOT_SHINY, 0);
    Pokemon_SetValue(mon, MON_DATA_COMBINED_IVS, &combinedIVs);
    Pokemon_CalcLevelAndStats(mon);

    val = pokemonDTO->form;

    Pokemon_SetValue(mon, MON_DATA_FORM, &val);
    Pokemon_SetValue(mon, MON_DATA_HELD_ITEM, &pokemonDTO->item);

    for (i = 0; i < LEARNED_MOVES_MAX; i++) {
        move = pokemonDTO->moves[i];
        Pokemon_SetValue(mon, MON_DATA_MOVE1 + i, &move);

        val = (pokemonDTO->combinedPPUps >> (i * 2)) & 0x3;
        Pokemon_SetValue(mon, MON_DATA_MOVE1_PP_UPS + i, &val);

        maxPP = (u8)Pokemon_GetValue(mon, MON_DATA_MOVE1_MAX_PP + i, NULL);
        Pokemon_SetValue(mon, MON_DATA_MOVE1_PP + i, &maxPP);
    }

    otID = pokemonDTO->otID;
    Pokemon_SetValue(mon, MON_DATA_OT_ID, &otID);

    val = pokemonDTO->hpEV;
    Pokemon_SetValue(mon, MON_DATA_HP_EV, &val);

    val = pokemonDTO->atkEV;
    Pokemon_SetValue(mon, MON_DATA_ATK_EV, &val);

    val = pokemonDTO->defEV;
    Pokemon_SetValue(mon, MON_DATA_DEF_EV, &val);

    val = pokemonDTO->speedEV;
    Pokemon_SetValue(mon, MON_DATA_SPEED_EV, &val);

    val = pokemonDTO->spAtkEV;
    Pokemon_SetValue(mon, MON_DATA_SPATK_EV, &val);

    val = pokemonDTO->spDefEV;
    Pokemon_SetValue(mon, MON_DATA_SPDEF_EV, &val);

    Pokemon_SetValue(mon, MON_DATA_ABILITY, &pokemonDTO->ability);
    Pokemon_SetValue(mon, MON_DATA_FRIENDSHIP, &pokemonDTO->friendship);

    if (pokemonDTO->unk_14_val1_30) {
        MessageLoader *msgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_SPECIES_NAME, HEAP_ID_FIELD1);
        String *speciesName = MessageLoader_GetNewString(msgLoader, pokemonDTO->species);

        Pokemon_SetValue(mon, MON_DATA_NICKNAME_STRING, speciesName);
        String_Free(speciesName);
        MessageLoader_Free(msgLoader);
    } else {
        Pokemon_SetValue(mon, MON_DATA_NICKNAME, pokemonDTO->nickname);
    }

    Pokemon_SetValue(mon, MON_DATA_LANGUAGE, &pokemonDTO->language);
    Pokemon_CalcLevelAndStats(mon);
}

u16 BattleTower_GetObjectIDFromTrainerClass(u8 trainerClass)
{
    for (int i = 0; i < (NELEMS(sTrainerClassToObjectID)); i++) {
        if (sTrainerClassToObjectID[i][0] == trainerClass) {
            return sTrainerClassToObjectID[i][1];
        }
    }

    return OBJ_EVENT_GFX_SCHOOL_KID_M;
}

void ov104_0222E134(SaveData *saveData, Pokemon *param1)
{
    u32 v0;
    String *v1;
    MessageLoader *v2;
    int v3;
    int v4 = 0;
    TrainerInfo *v5 = SaveData_GetTrainerInfo(saveData);

    v0 = Pokemon_GetValue(param1, MON_DATA_OT_ID, NULL);
    Pokemon_UpdateAfterCatch(param1, SaveData_GetTrainerInfo(saveData), 4, 0, 0, 11);

    v3 = MapHeader_GetMapLabelTextID(562);
    UpdateMonStatusAndTrainerInfo(param1, v5, v4, v3, HEAP_ID_FIELD2);

    v2 = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0363, HEAP_ID_FIELD2);
    v1 = MessageLoader_GetNewString(v2, 0);

    Pokemon_SetValue(param1, MON_DATA_OT_NAME_STRING, v1);
    Pokemon_SetValue(param1, MON_DATA_OT_ID, &v0);

    String_Free(v1);
    MessageLoader_Free(v2);

    return;
}

void ov104_0222E1C0(SaveData *saveData, Party *party, Pokemon *param2)
{
    ov104_0222E134(saveData, param2);
    Party_AddPokemon(party, param2);
    return;
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

void BattleFrontier_LoadTrainer(FrontierDataDTO *opponent, u16 trainerID, enum HeapID heapID, enum NarcID narcID)
{
    Heap_Free(BattleFrontier_GetTrainerData(&opponent->trDataDTO, trainerID, heapID, narcID));
}

void FieldBattleDTO_InitFrontierTrainer(FieldBattleDTO *battleDTO, FrontierTrainerDataDTO *trDataDTO, int unused, int battlerId, enum HeapID heapID)
{
    EasyChatSentence *sentence;

    battleDTO->trainerIDs[battlerId] = trDataDTO->trainerID;
    battleDTO->trainer[battlerId].header.trainerType = trDataDTO->trainerType;

    CharCode_Copy(&battleDTO->trainer[battlerId].name[0], &trDataDTO->trainerName[0]);

    sentence = (EasyChatSentence *)&trDataDTO->winMsg[0];
    battleDTO->trainer[battlerId].winMsg = *sentence;

    sentence = (EasyChatSentence *)&trDataDTO->loseMsg[0];
    battleDTO->trainer[battlerId].loseMsg = *sentence;

    return;
}

u32 BattleFrontier_LoadOpponentMonData(FrontierPokemonDataDTO *frontierMon, u16 narcIdx, int unused, u8 ivs, u32 personality, int heapID, int narcID)
{
    u32 otID = LCRNG_Next() | (LCRNG_Next() << 16);
    return ov104_0222DD6C(frontierMon, narcIdx, otID, personality, ivs, unused, FALSE, heapID, narcID);
}

void ov104_0222E330(FrontierPokemonDataDTO *mons, u16 narcIdx[], u8 ivList[], u32 personalities[], u32 resultPersonalities[], int numMons, int heapID, int narcID)
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

BOOL ov104_0222E3E4(BattleFrontierTrainerData *param0, const u16 param1[], const u16 param2[], int param3, int param4, u16 param5[], int param6)
{
    int v0, v1, v2;
    BattleFrontierPokemonData v3[6];
    int v4, v5;

    GF_ASSERT(param4 <= 6);

    v0 = 0;
    v2 = 0;

    while (v0 != param4) {
        v5 = (LCRNG_Next() % param0->numSets);
        v1 = param0->setIDs[v5];

        BattleTower_GetMonDataFromSetIDAndNarcID(&v3[v0], v1, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDPM);

        for (v4 = 0; v4 < v0; v4++) {
            if ((v3[v4].species == v3[v0].species) || (v3[v4].item == v3[v0].item)) {
                break;
            }
        }

        if (v4 != v0) {
            continue;
        }

        if (v2 < 50) {
            for (v4 = 0; v4 < param3; v4++) {
                if ((v3[v0].species == param1[v4]) || (v3[v0].item == param2[v4])) {
                    break;
                }
            }

            if (v4 != param3) {
                v2++;
                continue;
            }
        }

        param5[v0] = v1;
        v0++;
    }

    if (v2 >= 50) {
        return 1;
    }

    return 0;
}

void ov104_0222E4BC(u8 numMons, u16 trainerID, u16 trainerID2, u16 *monSetIDs, FrontierPokemonDataDTO *param4, u8 *ivs, u32 *personalities, u8 isMultiplayerChallenge)
{
    int i;
    u16 v2[4];
    u16 v3[4];

    FrontierTrainerDataDTO trainer;
    BattleFrontierTrainerData *trainerSpec = BattleFrontier_GetTrainerData(&trainer, trainerID, HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDTR);

    for (i = 0; i < numMons; i++) {
        ivs[i] = GetIVsForTrainer(trainerID);
    }

    if (!isMultiplayerChallenge) {
        ov104_0222E3E4(trainerSpec, v2, v3, 0, numMons, monSetIDs, 11);
    } else {
        ov104_0222E3E4(trainerSpec, v2, v3, 0, (numMons / 2), monSetIDs, 11);

        for (i = 0; i < (numMons / 2); i++) {
            BattleFrontierPokemonData v6;
            BattleTower_GetMonDataFromSetIDAndNarcID(&v6, monSetIDs[i], NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDPM);
            v2[i] = v6.species;
            v3[i] = v6.item;
        }

        Heap_Free(trainerSpec);
        trainerSpec = BattleFrontier_GetTrainerData(&trainer, trainerID2, HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDTR);
        ov104_0222E3E4(trainerSpec, v2, v3, (numMons / 2), (numMons / 2), &monSetIDs[numMons / 2], 11);

        for (i = 0; i < (numMons / 2); i++) {
            ivs[i + (numMons / 2)] = GetIVsForTrainer(trainerID2);
        }
    }

    Heap_Free(trainerSpec);
    ov104_0222E330(param4, monSetIDs, ivs, NULL, personalities, numMons, HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDPM);
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
