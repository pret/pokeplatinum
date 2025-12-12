#include "overlay104/ov104_0222DCE0.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"
#include "constants/narc.h"
#include "constants/string.h"
#include "generated/object_events.h"
#include "generated/species_data_params.h"
#include "generated/trainer_classes.h"

#include "struct_defs/sentence.h"
#include "struct_defs/wi_fi_history.h"

#include "charcode_util.h"
#include "communication_information.h"
#include "communication_system.h"
#include "field_battle_data_transfer.h"
#include "flags.h"
#include "map_header.h"
#include "math_util.h"
#include "message.h"
#include "narc.h"
#include "party.h"
#include "pokemon.h"
#include "save_player.h"
#include "savedata.h"
#include "sprite.h"
#include "strbuf.h"
#include "string_template.h"
#include "trainer_info.h"
#include "unk_0202C858.h"
#include "unk_02038F8C.h"
#include "unk_0208C098.h"
#include "unk_02092494.h"

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

BattleFrontierTrainerData *BattleTower_GetTrainerDataFromTrainerIDAndNarcID(u16 battleTowerTrainerID, enum HeapID heapID, enum NarcID narcID)
{
    return NARC_AllocAndReadWholeMemberByIndexPair(narcID, battleTowerTrainerID, heapID);
}

void BattleTower_GetMonDataFromSetIDAndNarcID(BattleFrontierPokemonData *monData, int setID, enum NarcID narcID)
{
    NARC_ReadWholeMemberByIndexPair(monData, narcID, setID);
}

BattleFrontierTrainerData *BattleTower_GetTrainerData(FrontierTrainerDataDTO *trDataDTO, int battleTowerTrainerID, enum HeapID heapID, enum NarcID narcID)
{
    MessageLoader *msgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_FRONTIER_TRAINER_NAMES, heapID);

    MI_CpuClear8(trDataDTO, sizeof(FrontierTrainerDataDTO));

    BattleFrontierTrainerData *trData = BattleTower_GetTrainerDataFromTrainerIDAndNarcID(battleTowerTrainerID, heapID, narcID);

    trDataDTO->trainerID = battleTowerTrainerID;
    trDataDTO->unk_18[0] = 0xFFFF;
    trDataDTO->unk_18[1] = battleTowerTrainerID * 3;
    trDataDTO->trainerType = trData->trainerType;

    Strbuf *strbuf = MessageLoader_GetNewStrbuf(msgLoader, battleTowerTrainerID);

    Strbuf_ToChars(strbuf, &trDataDTO->trainerName[0], TRAINER_NAME_LEN + 1);
    Strbuf_Free(strbuf);
    MessageLoader_Free(msgLoader);

    return trData;
}

static const u16 Unk_ov104_0223F290[] = {
    ITEM_BRIGHTPOWDER,
    ITEM_LUM_BERRY,
    ITEM_LEFTOVERS,
    ITEM_QUICK_CLAW
};

u32 ov104_0222DD6C(FrontierPokemonDataDTO *param0, u16 param1, u32 param2, u32 param3, u8 param4, u8 param5, BOOL param6, int param7, enum NarcID narcID)
{
    int v0;
    int v1;
    u32 v2;
    BattleFrontierPokemonData v4;

    MI_CpuClear8(param0, sizeof(FrontierPokemonDataDTO));
    BattleTower_GetMonDataFromSetIDAndNarcID(&v4, param1, narcID);

    param0->species = v4.species;
    param0->form = v4.form;

    if (param6) {
        if (param5 >= NELEMS(Unk_ov104_0223F290)) {
            param5 %= NELEMS(Unk_ov104_0223F290);
        }

        param0->item = Unk_ov104_0223F290[param5];
    } else {
        param0->item = v4.item;
    }

    u8 friendship = MAX_FRIENDSHIP_VALUE;

    for (v0 = 0; v0 < LEARNED_MOVES_MAX; v0++) {
        param0->moves[v0] = v4.moves[v0];

        if (v4.moves[v0] == MOVE_FRUSTRATION) {
            friendship = 0;
        }
    }

    param0->otID = param2;

    if (param3 == 0) {
        do {
            v2 = (LCRNG_Next() | LCRNG_Next() << 16);
        } while ((v4.nature != Pokemon_GetNatureOf(v2)) || (Pokemon_IsPersonalityShiny(param2, v2) == TRUE));

        param0->personality = v2;
    } else {
        param0->personality = param3;
        v2 = param3;
    }

    param0->hpIV = param4;
    param0->atkIV = param4;
    param0->defIV = param4;
    param0->speedIV = param4;
    param0->spAtkIV = param4;
    param0->spDefIV = param4;

    v1 = 0;

    for (v0 = 0; v0 < 6; v0++) {
        if (v4.evFlags & FlagIndex(v0)) {
            v1++;
        }
    }

    if ((510 / v1) > 255) {
        v1 = 255;
    } else {
        v1 = 510 / v1;
    }

    for (v0 = 0; v0 < 6; v0++) {
        if (v4.evFlags & FlagIndex(v0)) {
            param0->evList[v0] = v1;
        }
    }

    param0->combinedPPUps = 0;
    param0->language = gGameLanguage;

    v0 = SpeciesData_GetSpeciesValue(param0->species, SPECIES_DATA_ABILITY_2);

    if (v0) {
        if (param0->personality & 1) {
            param0->ability = v0;
        } else {
            param0->ability = SpeciesData_GetSpeciesValue(param0->species, SPECIES_DATA_ABILITY_1);
        }
    } else {
        param0->ability = SpeciesData_GetSpeciesValue(param0->species, SPECIES_DATA_ABILITY_1);
    }

    param0->friendship = friendship;
    MessageLoader_GetSpeciesName(param0->species, param7, &(param0->nickname[0]));

    return v2;
}

void ov104_0222DF40(const FrontierPokemonDataDTO *param0, Pokemon *param1, u8 param2)
{
    int v0;
    u32 v1;
    u8 v2, v3, v4;
    u16 v5;
    u32 v6;

    Pokemon_Init(param1);

    if (param2 == 120) {
        v4 = 50;
    } else if (param2 == 121) {
        v4 = 100;
    } else {
        v4 = param2;
    }

    v1 = (param0->combinedIVs & 0x3FFFFFFF);

    Pokemon_InitWith(param1, param0->species, v4, v1, TRUE, param0->personality, OTID_NOT_SHINY, 0);
    Pokemon_SetValue(param1, MON_DATA_COMBINED_IVS, &v1);
    Pokemon_CalcLevelAndStats(param1);

    v2 = param0->form;

    Pokemon_SetValue(param1, MON_DATA_FORM, &v2);
    Pokemon_SetValue(param1, MON_DATA_HELD_ITEM, &param0->item);

    for (v0 = 0; v0 < LEARNED_MOVES_MAX; v0++) {
        v5 = param0->moves[v0];
        Pokemon_SetValue(param1, MON_DATA_MOVE1 + v0, &v5);

        v2 = (param0->combinedPPUps >> (v0 * 2)) & 0x3;
        Pokemon_SetValue(param1, MON_DATA_MOVE1_PP_UPS + v0, &v2);

        v3 = (u8)Pokemon_GetValue(param1, MON_DATA_MOVE1_MAX_PP + v0, NULL);
        Pokemon_SetValue(param1, MON_DATA_MOVE1_PP + v0, &v3);
    }

    v6 = param0->otID;
    Pokemon_SetValue(param1, MON_DATA_OT_ID, &v6);

    v2 = param0->hpEV;
    Pokemon_SetValue(param1, MON_DATA_HP_EV, &v2);

    v2 = param0->atkEV;
    Pokemon_SetValue(param1, MON_DATA_ATK_EV, &v2);

    v2 = param0->defEV;
    Pokemon_SetValue(param1, MON_DATA_DEF_EV, &v2);

    v2 = param0->speedEV;
    Pokemon_SetValue(param1, MON_DATA_SPEED_EV, &v2);

    v2 = param0->spAtkEV;
    Pokemon_SetValue(param1, MON_DATA_SPATK_EV, &v2);

    v2 = param0->spDefEV;
    Pokemon_SetValue(param1, MON_DATA_SPDEF_EV, &v2);

    Pokemon_SetValue(param1, MON_DATA_ABILITY, &param0->ability);
    Pokemon_SetValue(param1, MON_DATA_FRIENDSHIP, &param0->friendship);

    if (param0->unk_14_val1_30) {
        MessageLoader *v7 = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_SPECIES_NAME, HEAP_ID_FIELD1);
        Strbuf *v8 = MessageLoader_GetNewStrbuf(v7, param0->species);

        Pokemon_SetValue(param1, MON_DATA_NICKNAME_STRING, v8);
        Strbuf_Free(v8);
        MessageLoader_Free(v7);
    } else {
        Pokemon_SetValue(param1, MON_DATA_NICKNAME, param0->nickname);
    }

    Pokemon_SetValue(param1, MON_DATA_LANGUAGE, &param0->language);
    Pokemon_CalcLevelAndStats(param1);
}

u16 ov104_0222E10C(u8 trainerClass)
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
    Strbuf *v1;
    MessageLoader *v2;
    int v3;
    int v4 = 0;
    TrainerInfo *v5 = SaveData_GetTrainerInfo(saveData);

    v0 = Pokemon_GetValue(param1, MON_DATA_OT_ID, NULL);
    Pokemon_UpdateAfterCatch(param1, SaveData_GetTrainerInfo(saveData), 4, 0, 0, 11);

    v3 = MapHeader_GetMapLabelTextID(562);
    UpdateMonStatusAndTrainerInfo(param1, v5, v4, v3, HEAP_ID_FIELD2);

    v2 = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0363, HEAP_ID_FIELD2);
    v1 = MessageLoader_GetNewStrbuf(v2, 0);

    Pokemon_SetValue(param1, MON_DATA_OT_NAME_STRING, v1);
    Pokemon_SetValue(param1, MON_DATA_OT_ID, &v0);

    Strbuf_Free(v1);
    MessageLoader_Free(v2);

    return;
}

void ov104_0222E1C0(SaveData *saveData, Party *party, Pokemon *param2)
{
    ov104_0222E134(saveData, param2);
    Party_AddPokemon(party, param2);
    return;
}

void ov104_0222E1D8(Sprite *param0, u8 param1)
{
    if (Sprite_GetActiveAnim(param0) == param1) {
        return;
    }

    Sprite_SetAnimFrame(param0, 0);
    Sprite_SetAnim(param0, param1);
    Sprite_UpdateAnim(param0, FX32_ONE);
    return;
}

void ov104_0222E204(Sprite *param0, s16 param1, s16 param2, u8 param3)
{
    VecFx32 v0;

    v0.x = param1 * FX32_ONE;
    v0.y = param2 * FX32_ONE;
    v0.z = 0;

    if (param3 == 1) {
        if (Sprite_GetAnimFrame(param0) == 0) {
            v0.y = (param2 - 3) * FX32_ONE;
        } else {
            v0.y = (param2 + 1) * FX32_ONE;
        }
    }

    Sprite_SetPosition(param0, &v0);
    return;
}

u8 ov104_0222E240(u16 param0, u16 param1)
{
    switch (HealthBar_Color(param0, param1, 48)) {
    case 4:
        return 1;
    case 3:
        return 2;
    case 2:
        return 3;
    case 1:
        return 4;
    }

    return 1;
}

void ov104_0222E278(FrontierDataDTO *param0, u16 param1, int heapID, int param3)
{
    Heap_Free(BattleTower_GetTrainerData(&param0->trDataDTO, param1, heapID, param3));

    return;
}

void ov104_0222E284(FieldBattleDTO *param0, FrontierTrainerDataDTO *param1, int param2, int battlerId, int heapID)
{
    Sentence *v0;

    param0->trainerIDs[battlerId] = param1->trainerID;
    param0->trainer[battlerId].header.trainerType = param1->trainerType;

    CharCode_Copy(&param0->trainer[battlerId].name[0], &param1->trainerName[0]);

    v0 = (Sentence *)&param1->unk_20[0];
    param0->trainer[battlerId].winMsg = *v0;

    v0 = (Sentence *)&param1->unk_28[0];
    param0->trainer[battlerId].loseMsg = *v0;

    return;
}

u32 ov104_0222E2F0(FrontierPokemonDataDTO *param0, u16 param1, int param2, u8 param3, u32 param4, int param5, int param6)
{
    u32 v0, v1, v2;

    v0 = LCRNG_Next() | (LCRNG_Next() << 16);
    v2 = ov104_0222DD6C(param0, param1, v0, param4, param3, param2, 0, param5, param6);

    return v2;
}

void ov104_0222E330(FrontierPokemonDataDTO *param0, u16 param1[], u8 param2[], u32 param3[], u32 param4[], int param5, int param6, int param7)
{
    int v0;
    u32 v1;
    u8 v2;

    if (param3 == NULL) {
        v1 = 0;
    }

    for (v0 = 0; v0 < param5; v0++) {
        v2 = (param2 == NULL) ? 0 : param2[v0];
        v1 = (param3 == NULL) ? 0 : param3[v0];
        v1 = ov104_0222E2F0(&param0[v0], param1[v0], v0, v2, v1, param6, param7);

        if (param4 != NULL) {
            param4[v0] = v1;
        }
    }

    return;
}

u8 ov104_0222E3A8(u16 param0)
{
    u8 v0;

    if (param0 < 100) {
        v0 = (0x1f / 8) * 1;
    } else if (param0 < 120) {
        v0 = (0x1f / 8) * 2;
    } else if (param0 < 140) {
        v0 = (0x1f / 8) * 3;
    } else if (param0 < 160) {
        v0 = (0x1f / 8) * 4;
    } else if (param0 < 180) {
        v0 = (0x1f / 8) * 5;
    } else if (param0 < 200) {
        v0 = (0x1f / 8) * 6;
    } else if (param0 < 220) {
        v0 = (0x1f / 8) * 7;
    } else {
        v0 = 0x1f;
    }

    return v0;
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

void ov104_0222E4BC(u8 param0, u16 param1, u16 param2, u16 *param3, FrontierPokemonDataDTO *param4, u8 *param5, u32 *param6, u8 param7)
{
    int v0;
    u16 v2[4];
    u16 v3[4];
    FrontierTrainerDataDTO v4;
    BattleFrontierPokemonData v6;

    BattleFrontierTrainerData *v5 = BattleTower_GetTrainerData(&v4, param1, HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDTR);

    for (v0 = 0; v0 < param0; v0++) {
        param5[v0] = ov104_0222E3A8(param1);
    }

    if (param7 == 0) {
        ov104_0222E3E4(v5, v2, v3, 0, param0, param3, 11);
    } else {
        ov104_0222E3E4(v5, v2, v3, 0, (param0 / 2), param3, 11);

        for (v0 = 0; v0 < (param0 / 2); v0++) {
            BattleTower_GetMonDataFromSetIDAndNarcID(&v6, param3[v0], NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDPM);
            v2[v0] = v6.species;
            v3[v0] = v6.item;
        }

        Heap_Free(v5);
        v5 = BattleTower_GetTrainerData(&v4, param2, HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDTR);
        ov104_0222E3E4(v5, v2, v3, (param0 / 2), (param0 / 2), &param3[param0 / 2], 11);

        for (v0 = 0; v0 < (param0 / 2); v0++) {
            param5[v0 + (param0 / 2)] = ov104_0222E3A8(param2);
        }
    }

    Heap_Free(v5);
    ov104_0222E330(param4, param3, param5, NULL, param6, param0, 11, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDPM);

    return;
}

void ov104_0222E5D0(StringTemplate *param0, u32 param1)
{
    StringTemplate_SetPlayerName(param0, param1, CommInfo_TrainerInfo(CommSys_CurNetId() ^ 1));
    return;
}

int ov104_0222E5F0(const TrainerInfo *param0)
{
    u32 v0;
    int v1, v2;

    v0 = TrainerInfo_Gender(param0);
    v2 = TrainerInfo_GameCode(param0);

    switch (v2) {
    case 12:
    case 7:
    case 8:
    default:
        v1 = (v0 == 0) ? 0x0 : 0x61;
        break;
    case 0:
        v1 = (v0 == 0) ? 0xfc : 0xfd;
        break;
    }

    return v1;
}

void ov104_0222E630(SaveData *saveData)
{
    WiFiHistory *wiFiHistory = SaveData_WiFiHistory(saveData);

    WiFiHistory_FlagGeonetLinkInfo(wiFiHistory);
    return;
}
