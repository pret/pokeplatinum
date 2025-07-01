#include "unk_0204AEE8.h"

#include <nitro.h>
#include <string.h>

#include "constants/trainer.h"
#include "generated/object_events.h"
#include "generated/species_data_params.h"

#include "struct_decls/pokedexdata_decl.h"
#include "struct_defs/battle_frontier_pokemon_data.h"
#include "struct_defs/battle_frontier_trainer_data.h"
#include "struct_defs/struct_0204AFC4.h"
#include "struct_defs/struct_0204B404.h"

#include "field/field_system.h"

#include "assert.h"
#include "communication_system.h"
#include "flags.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "party.h"
#include "pokedex.h"
#include "pokemon.h"
#include "save_player.h"
#include "savedata.h"
#include "strbuf.h"
#include "string_template.h"
#include "trainer_info.h"
#include "unk_0202D05C.h"
#include "unk_02049D08.h"

static BOOL sub_0204B470(UnkStruct_0204AFC4 *param0, BattleFrontierTrainerData *param1, u16 param2, FrontierPokemonDataDTO *param3, u8 param4, u16 *param5, u16 *param6, UnkStruct_0204B404 *param7, int param8);
static void *sub_0204B630(u16 param0, int param1);
static void sub_0204B640(BattleFrontierPokemonData *param0, int param1);

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

StringTemplate *sub_0204AEE8(SaveData *saveData, u16 param1, u16 param2, u8 param3, u8 *param4)
{
    u8 v0;
    u16 v1;
    Strbuf *v2, *v3;
    Pokedex *pokedex;
    StringTemplate *v5;
    MessageLoader *v6;

    v2 = Strbuf_Init(12 + 2, HEAP_ID_FIELD);
    v3 = Strbuf_Init(2, HEAP_ID_FIELD);
    pokedex = SaveData_GetPokedex(saveData);
    v6 = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_SPECIES_NAME, HEAP_ID_FIELD);
    v5 = StringTemplate_New(18 + 1, 12 + 2, HEAP_ID_FIELD);

    StringTemplate_SetNumber(v5, 0, param1, 1, 0, 1);

    for (v0 = 0; v0 < 18; v0++) {
        v1 = sub_02078824(v0);

        if (Pokedex_HasSeenSpecies(pokedex, v1)) {
            MessageLoader_GetStrbuf(v6, v1, v2);
            StringTemplate_SetStrbuf(v5, (*param4) + 1, v2, param2, param3, GAME_LANGUAGE);
            (*param4)++;
        }
    }

    MessageLoader_Free(v6);
    Strbuf_Free(v3);
    Strbuf_Free(v2);

    return v5;
}

u16 sub_0204AF9C(u8 trainerClass)
{
    for (int v0 = 0; v0 < (NELEMS(sTrainerClassToObjectID)); v0++) {
        if (sTrainerClassToObjectID[v0][0] == trainerClass) {
            return sTrainerClassToObjectID[v0][1];
        }
    }

    return OBJ_EVENT_GFX_SCHOOL_KID_M;
}

u16 sub_0204AFC4(FieldSystem *fieldSystem, const u16 *param1)
{
    u16 v0 = 0;
    UnkStruct_0204AFC4 *v1 = fieldSystem->unk_AC;

    v1->unk_12 = (u8)param1[0];
    v1->unk_16[0] = param1[1];
    v1->unk_16[1] = param1[2];
    v1->unk_14 = param1[3];
    v1->unk_10_5 = 5 + v1->unk_12;

    if ((v1->unk_2E[0] == v1->unk_16[0]) || (v1->unk_2E[0] == v1->unk_16[1])) {
        v0 += 1;
    }

    if ((v1->unk_2E[1] == v1->unk_16[0]) || (v1->unk_2E[1] == v1->unk_16[1])) {
        v0 += 2;
    }

    return v0;
}

u16 sub_0204B020(FieldSystem *fieldSystem, const u16 *param1)
{
    int v0;
    UnkStruct_0204AFC4 *v1 = fieldSystem->unk_AC;

    if (CommSys_CurNetId() == 0) {
        return 0;
    }

    MI_CpuCopy8(param1, v1->unk_3E, 14 * 2);
    return 1;
}

u16 sub_0204B044(FieldSystem *fieldSystem, const u16 *param1)
{
    int v0;
    UnkStruct_0204AFC4 *v1 = fieldSystem->unk_AC;

    if (v1->unk_10_3 || param1[0]) {
        return 1;
    }

    return 0;
}

void sub_0204B060(UnkStruct_0204AFC4 *param0, SaveData *saveData)
{
    int v0;
    Party *v1;
    Pokemon *v2;
    TrainerInfo *v3 = SaveData_GetTrainerInfo(saveData);

    param0->unk_83E[0] = TrainerInfo_Gender(v3);
    v1 = SaveData_GetParty(saveData);

    for (v0 = 0; v0 < 2; v0++) {
        param0->unk_83E[1 + v0] = Pokemon_GetData(Party_GetPokemonBySlotIndex(v1, param0->unk_2A[v0]), MON_DATA_SPECIES, NULL);
    }

    param0->unk_83E[3] = sub_0202D3B4(param0->unk_74, 3, 0);
}

void sub_0204B0BC(UnkStruct_0204AFC4 *param0)
{
    MI_CpuCopy8(param0->unk_3E, param0->unk_83E, 14 * 2);
}

void sub_0204B0D4(UnkStruct_0204AFC4 *param0, u16 param1)
{
    param0->unk_10_3 = param1;
    param0->unk_83E[0] = param1;
}

static const u16 Unk_020EBD58[][2] = {
    { 0x0, 0x63 },
    { 0x50, 0x77 },
    { 0x64, 0x8B },
    { 0x78, 0x9F },
    { 0x8C, 0xB3 },
    { 0xA0, 0xC7 },
    { 0xB4, 0xDB },
    { 0xC8, 0x12B }
};

static const u16 Unk_020EBD78[][2] = {
    { 0x64, 0x77 },
    { 0x78, 0x8B },
    { 0x8C, 0x9F },
    { 0xA0, 0xB3 },
    { 0xB4, 0xC7 },
    { 0xC8, 0xDB },
    { 0xDC, 0xEF },
    { 0xC8, 0x12B }
};

u16 sub_0204B0F0(UnkStruct_0204AFC4 *param0, u8 param1, u8 param2, int param3)
{
    u16 v0;

    if (param3 == 0) {
        if ((param1 == 2) && (param2 == 6)) {
            return 305;
        }

        if ((param1 == 6) && (param2 == 6)) {
            return 306;
        }
    }

    if (param1 < 7) {
        if (param2 == (7 - 1)) {
            v0 = (Unk_020EBD78[param1][1] - Unk_020EBD78[param1][0]) + 1;
            v0 = Unk_020EBD78[param1][0] + (sub_0204AEC0(param0) % v0);
        } else {
            v0 = (Unk_020EBD58[param1][1] - Unk_020EBD58[param1][0]) + 1;
            v0 = Unk_020EBD58[param1][0] + (sub_0204AEC0(param0) % v0);
        }
    } else {
        v0 = (Unk_020EBD58[7][1] - Unk_020EBD58[7][0]) + 1;
        v0 = Unk_020EBD58[7][0] + (sub_0204AEC0(param0) % v0);
    }

    return v0;
}

static BattleFrontierTrainerData *sub_0204B184(UnkStruct_ov104_0223A348 *param0, u16 param1, int heapID)
{
    MessageLoader *v1 = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_FRONTIER_TRAINER_NAMES, heapID);

    MI_CpuClear8(param0, sizeof(UnkStruct_ov104_0223A348));

    BattleFrontierTrainerData *v0 = sub_0204B630(param1, heapID);

    param0->unk_00.trainerID = param1;
    param0->unk_00.unk_18[0] = 0xFFFF;
    param0->unk_00.unk_18[1] = param1 * 3;
    param0->unk_00.trainerType = v0->trainerType;

    Strbuf *v2 = MessageLoader_GetNewStrbuf(v1, param1);

    Strbuf_ToChars(v2, &param0->unk_00.trainerName[0], 8); // Possibly TRAINER_NAME_LEN + 1
    Strbuf_Free(v2);
    MessageLoader_Free(v1);

    return v0;
}

static const u16 Unk_020EBD50[] = {
    ITEM_BRIGHTPOWDER,
    ITEM_LUM_BERRY,
    ITEM_LEFTOVERS,
    ITEM_QUICK_CLAW
};

static u32 sub_0204B1E8(UnkStruct_0204AFC4 *param0, FrontierPokemonDataDTO *param1, u16 param2, u32 param3, u32 param4, u8 param5, u8 param6, BOOL param7, int param8)
{
    int v0;
    u32 v2;
    BattleFrontierPokemonData v4;

    MI_CpuClear8(param1, sizeof(FrontierPokemonDataDTO));
    sub_0204B640(&v4, param2);

    param1->species = v4.species;
    param1->form = v4.form;

    if (param7) {
        param1->item = Unk_020EBD50[param6];
    } else {
        param1->item = v4.item;
    }

    u8 friendship = FRIENDSHIP_MAX;

    for (v0 = 0; v0 < LEARNED_MOVES_MAX; v0++) {
        param1->moves[v0] = v4.moves[v0];

        if (v4.moves[v0] == MOVE_FRUSTRATION) {
            friendship = 0;
        }
    }

    param1->otID = param3;

    if (param4 == 0) {
        do {
            v2 = (sub_0204AEC0(param0) | sub_0204AEC0(param0) << 16);
        } while ((v4.nature != Pokemon_GetNatureOf(v2)) || (Pokemon_IsPersonalityShiny(param3, v2) == 1));

        param1->personality = v2;
    } else {
        param1->personality = param4;
        v2 = param4;
    }

    param1->hpIV = param5;
    param1->atkIV = param5;
    param1->defIV = param5;
    param1->speedIV = param5;
    param1->spAtkIV = param5;
    param1->spDefIV = param5;

    int v1 = 0;

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
            param1->evList[v0] = v1;
        }
    }

    param1->combinedPPUps = 0;
    param1->language = gGameLanguage;

    v0 = SpeciesData_GetSpeciesValue(param1->species, SPECIES_DATA_ABILITY_2);

    if (v0) {
        if (param1->personality & 1) {
            param1->ability = v0;
        } else {
            param1->ability = SpeciesData_GetSpeciesValue(param1->species, SPECIES_DATA_ABILITY_1);
        }
    } else {
        param1->ability = SpeciesData_GetSpeciesValue(param1->species, SPECIES_DATA_ABILITY_1);
    }

    param1->friendship = friendship;
    MessageLoader_GetSpeciesName(param1->species, param8, &(param1->nickname[0]));

    return v2;
}

BOOL sub_0204B3B8(UnkStruct_0204AFC4 *param0, UnkStruct_ov104_0223A348 *param1, u16 param2, int param3, u16 *param4, u16 *param5, UnkStruct_0204B404 *param6, int heapID)
{
    BOOL v0 = 0;
    BattleFrontierTrainerData *v1 = sub_0204B184(param1, param2, heapID);
    v0 = sub_0204B470(param0, v1, param2, &param1->unk_30[0], param3, param4, param5, param6, heapID);

    Heap_FreeToHeap(v1);

    return v0;
}

void sub_0204B404(UnkStruct_0204AFC4 *param0, UnkStruct_ov104_0223A348 *param1, u16 param2, BOOL param3, const UnkStruct_0204B404 *param4, int heapID)
{
    u8 v1 = 0;
    BattleFrontierTrainerData *v2 = sub_0204B184(param1, param2, heapID);
    v1 = sub_0204AE84(param2);

    for (int v0 = 0; v0 < 2; v0++) {
        sub_0204B1E8(param0, &(param1->unk_30[v0]), param4->unk_04[v0], param4->unk_00, param4->unk_08[v0], v1, v0, param3, heapID);
    }

    Heap_FreeToHeap(v2);
}

static BOOL sub_0204B470(UnkStruct_0204AFC4 *param0, BattleFrontierTrainerData *param1, u16 param2, FrontierPokemonDataDTO *param3, u8 param4, u16 *param5, u16 *param6, UnkStruct_0204B404 *param7, int param8)
{
    int v0, v1;
    u8 v2;
    u8 v3;
    u32 v4;
    int v5;
    int v6[4];
    u32 v7[4];
    int v8;
    int v9;
    BOOL v10 = 0;
    BattleFrontierPokemonData v11;
    BattleFrontierPokemonData v12;

    GF_ASSERT(param4 <= 4);

    v8 = 0;
    v9 = 0;

    while (v8 != param4) {
        v3 = sub_0204AEC0(param0) % param1->numSets;
        v5 = param1->setIDs[v3];

        sub_0204B640(&v12, v5);

        for (v0 = 0; v0 < v8; v0++) {
            sub_0204B640(&v11, v6[v0]);

            if (v11.species == v12.species) {
                break;
            }
        }

        if (v0 != v8) {
            continue;
        }

        if (param5 != NULL) {
            for (v0 = 0; v0 < param4; v0++) {
                if (param5[v0] == v12.species) {
                    break;
                }
            }

            if (v0 != param4) {
                continue;
            }
        }

        if (v9 < 50) {
            for (v0 = 0; v0 < v8; v0++) {
                sub_0204B640(&v11, v6[v0]);

                if ((v11.item) && (v11.item == v12.item)) {
                    break;
                }
            }

            if (v0 != v8) {
                v9++;
                continue;
            }

            if (param6 != NULL) {
                for (v0 = 0; v0 < param4; v0++) {
                    if ((param6[v0] == v12.item) && (param6[v0] != 0)) {
                        break;
                    }
                }

                if (v0 != param4) {
                    v9++;
                    continue;
                }
            }
        }

        v6[v8] = v5;
        v8++;
    }

    v2 = sub_0204AE84(param2);
    v4 = (sub_0204AEC0(param0) | (sub_0204AEC0(param0) << 16));

    if (v9 >= 50) {
        v10 = 1;
    }

    for (v0 = 0; v0 < v8; v0++) {
        v7[v0] = sub_0204B1E8(param0, &(param3[v0]), v6[v0], v4, 0, v2, v0, v10, param8);
    }

    if (param7 == NULL) {
        return v10;
    }

    param7->unk_00 = v4;

    for (v0 = 0; v0 < 2; v0++) {
        param7->unk_04[v0] = v6[v0];
        param7->unk_08[v0] = v7[v0];
    }

    return v10;
}

static void *sub_0204B630(u16 param0, int param1)
{
    return NARC_AllocAndReadWholeMemberByIndexPair(NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDTR, param0, param1);
}

static void sub_0204B640(BattleFrontierPokemonData *param0, int param1)
{
    NARC_ReadWholeMemberByIndexPair(param0, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDPM, param1);
}
