#include "overlay104/ov104_0223BCBC.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle_frontier.h"
#include "generated/ai_flags.h"
#include "generated/frontier_trainers.h"

#include "struct_defs/battle_frontier_trainer_data.h"

#include "overlay104/ov104_0222DCE0.h"
#include "overlay104/struct_battle_arcade.h"
#include "overlay104/struct_ov104_02230BE4.h"

#include "communication_information.h"
#include "communication_system.h"
#include "field_battle_data_transfer.h"
#include "heap.h"
#include "item_use_pokemon.h"
#include "math_util.h"
#include "message.h"
#include "party.h"
#include "pokemon.h"
#include "save_player.h"
#include "string_gf.h"
#include "trainer_info.h"

FieldBattleDTO *FieldBattleDTO_NewBattleArcade(BattleArcade *battleArcade, UnkStruct_ov104_02230BE4 *param1);
static u32 BattleArcade_GetBattleType(u8 challengeType);
u8 BattleArcade_GetPokemonLevel(BattleArcade *battleArcade);
void ov104_0223C04C(BattleArcade *battleArcade);
void ov104_0223C010(BattleArcade *battleArcade, Pokemon *param1);
void ov104_0223C034(BattleArcade *battleArcade, Party *param1, Pokemon *param2);
u16 ov104_0223C0BC(BattleArcade *battleArcade, u8 param1);
static u16 BattleArcade_GetAIMask(BattleArcade *battleArcade);
u16 ov104_0223C124(BattleArcade *battleArcade);
void FieldBattleDTO_CopyPlayerInfoToTrainerData(FieldBattleDTO *param0);
static int ov104_0223BCBC(u8 param0, int param1, int param2);
void ov104_0223BD28(u8 param0, int param1, u16 param2[], u8 param3);

static const struct {
    u16 unk_00;
    u16 unk_02;
    u16 unk_04;
    u16 unk_06;
} Unk_ov104_02241298[] = {
    { 0x0, 0x63, 0x64, 0x77 },
    { 0x50, 0x77, 0x78, 0x8B },
    { 0x64, 0x8B, 0x8C, 0x9F },
    { 0x78, 0x9F, 0xA0, 0xB3 },
    { 0x8C, 0xB3, 0xB4, 0xC7 },
    { 0xA0, 0xC7, 0xC8, 0xDB },
    { 0xB4, 0xDB, 0xDC, 0xEF },
    { 0xC8, 0x12B, 0xC8, 0x12B }
};

static const u8 Unk_ov104_0223C0BC[] = {
    0x1,
    0x1,
    0x1
};

static const u8 Unk_ov104_0223C0BC_1[] = {
    0x3,
    0x3,
    0x3
};

static int ov104_0223BCBC(u8 param0, int param1, int param2)
{
    int v0, v1, v2, v3;

    if (param0 == 0) {
        v3 = (param1 * 7) + (param2 + 1);

        if (v3 == 21) {
            return FRONTIER_TRAINER_ARCADE_STAR_DAHLIA_SILVER;
        } else if (v3 == 49) {
            return FRONTIER_TRAINER_ARCADE_STAR_DAHLIA_GOLD;
        }
    }

    if (param1 >= NELEMS(Unk_ov104_02241298)) {
        param1 = NELEMS(Unk_ov104_02241298) - 1;
    }

    if ((param2 == 7 - 1) || (param2 == (7 * 2) - 1)) {
        v1 = Unk_ov104_02241298[param1].unk_06 - Unk_ov104_02241298[param1].unk_04;
        v2 = Unk_ov104_02241298[param1].unk_04;
    } else {
        v1 = Unk_ov104_02241298[param1].unk_02 - Unk_ov104_02241298[param1].unk_00;
        v2 = Unk_ov104_02241298[param1].unk_00;
    }

    v0 = v2 + (LCRNG_Next() % v1);
    return v0;
}

void ov104_0223BD28(u8 param0, int param1, u16 param2[], u8 param3)
{
    int v0 = 0;
    int v1;

    do {
        param2[v0] = ov104_0223BCBC(param0, param1, v0);

        for (v1 = 0; v1 < v0; v1++) {
            if (param2[v1] == param2[v0]) {
                break;
            }
        }

        if (v1 != v0) {
            continue;
        }

        v0++;
    } while (v0 < param3);
}

u8 BattleArcade_GetPlayerPartySize(u8 challengeType, BOOL includePartnerMons)
{
    switch (challengeType) {
    case FRONTIER_CHALLENGE_SINGLE:
    case FRONTIER_CHALLENGE_DOUBLE:
        return ARCADE_PARTY_SIZE_SOLO;
    case FRONTIER_CHALLENGE_MULTI:
    case FRONTIER_CHALLENGE_MULTI_WFC:
        if (includePartnerMons == FALSE) {
            return ARCADE_PARTY_SIZE_MULTI;
        } else {
            return ARCADE_PARTY_SIZE_MULTI * 2;
        }
    }

    GF_ASSERT(FALSE);
    return ARCADE_PARTY_SIZE_SOLO;
}

u8 BattleArcade_GetOpponentPartySize(u8 challengeType, BOOL includeBothOpponents)
{
    switch (challengeType) {
    case FRONTIER_CHALLENGE_SINGLE:
    case FRONTIER_CHALLENGE_DOUBLE:
        return ARCADE_PARTY_SIZE_SOLO;
    case FRONTIER_CHALLENGE_MULTI:
    case FRONTIER_CHALLENGE_MULTI_WFC:
        if (includeBothOpponents == FALSE) {
            return ARCADE_PARTY_SIZE_MULTI;
        } else {
            return ARCADE_PARTY_SIZE_MULTI * 2;
        }
    }

    GF_ASSERT(FALSE);
    return ARCADE_PARTY_SIZE_SOLO;
}

FieldBattleDTO *FieldBattleDTO_NewBattleArcade(BattleArcade *battleArcade, UnkStruct_ov104_02230BE4 *param1)
{
    int i;
    u8 baseSlotID;
    FrontierTrainerDataDTO trDataDTO;

    u8 playerPartySize = BattleArcade_GetPlayerPartySize(battleArcade->challengeType, 0);
    u8 opponentPartySize = BattleArcade_GetOpponentPartySize(battleArcade->challengeType, 0);
    FieldBattleDTO *battleDTO = FieldBattleDTO_New(HEAP_ID_FIELD2, BattleArcade_GetBattleType(battleArcade->challengeType));

    FieldBattleDTO_InitFromGameState(battleDTO, NULL, param1->saveData, param1->mapHeaderID, param1->journalEntry, param1->bagCursor, param1->subscreenCursorOn);

    battleDTO->background = BACKGROUND_BATTLE_ARCADE;
    battleDTO->terrain = TERRAIN_BATTLE_ARCADE;
    battleDTO->fieldWeather = battleArcade->weather;

    Party *playersParty = battleArcade->playersParty;
    Party *opponentsParty = battleArcade->opponentsParty;

    if (battleArcade->activeEffect == ARCADE_EFFECT_SWAP_MONS) {
        playersParty = battleArcade->opponentsParty;
        opponentsParty = battleArcade->playersParty;
    }

    Party_InitWithCapacity(battleDTO->parties[BATTLER_PLAYER_1], playerPartySize);

    if (CommSys_CurNetId() == 0) {
        baseSlotID = 0;
    } else {
        baseSlotID = 2;
    }

    Pokemon *mon = Pokemon_New(HEAP_ID_FIELD2);

    for (i = 0; i < playerPartySize; i++) {
        Pokemon_Copy(Party_GetPokemonBySlotIndex(playersParty, baseSlotID + i), mon);
        FieldBattleDTO_AddPokemonToBattler(battleDTO, mon, BATTLER_PLAYER_1);
    }

    Heap_Free(mon);
    FieldBattleDTO_CopyPlayerInfoToTrainerData(battleDTO);

    BattleFrontierTrainerData *trData = BattleFrontier_GetTrainerData(&trDataDTO, battleArcade->trainerIDs[battleArcade->unk_11], HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDTR);

    Heap_Free(trData);
    FieldBattleDTO_InitFrontierTrainer(battleDTO, &trDataDTO, opponentPartySize, BATTLER_ENEMY_1, HEAP_ID_FIELD2);
    Party_InitWithCapacity(battleDTO->parties[BATTLER_ENEMY_1], BattleArcade_GetOpponentPartySize(battleArcade->challengeType, 0));

    for (i = 0; i < MAX_BATTLERS; i++) {
        battleDTO->trainer[i].header.aiMask = BattleArcade_GetAIMask(battleArcade);
    }

    mon = Pokemon_New(HEAP_ID_FIELD2);

    for (i = 0; i < opponentPartySize; i++) {
        Pokemon_Copy(Party_GetPokemonBySlotIndex(opponentsParty, i), mon);
        FieldBattleDTO_AddPokemonToBattler(battleDTO, mon, BATTLER_ENEMY_1);
    }

    Heap_Free(mon);

    switch (battleArcade->challengeType) {
    case FRONTIER_CHALLENGE_MULTI:
    case FRONTIER_CHALLENGE_MULTI_WFC:
        FieldBattleDTO_CopyPlayerInfoToTrainerData(battleDTO);

        TrainerInfo_Copy(CommInfo_TrainerInfo(1 - CommSys_CurNetId()), battleDTO->trainerInfo[BATTLER_PLAYER_2]);

        trData = BattleFrontier_GetTrainerData(&trDataDTO, battleArcade->trainerIDs[battleArcade->unk_11 + 7], HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDTR);
        Heap_Free(trData);

        FieldBattleDTO_InitFrontierTrainer(battleDTO, &trDataDTO, opponentPartySize, BATTLER_ENEMY_2, HEAP_ID_FIELD2);
        Party_InitWithCapacity(battleDTO->parties[BATTLER_ENEMY_2], BattleArcade_GetOpponentPartySize(battleArcade->challengeType, 0));

        mon = Pokemon_New(HEAP_ID_FIELD2);

        for (i = 0; i < opponentPartySize; i++) {
            Pokemon_Copy(Party_GetPokemonBySlotIndex(opponentsParty, opponentPartySize + i), mon);
            FieldBattleDTO_AddPokemonToBattler(battleDTO, mon, BATTLER_ENEMY_2);
        }

        Heap_Free(mon);
        break;
    }

    Party_HealAllMembers(battleArcade->playersParty);
    Party_HealAllMembers(battleArcade->opponentsParty);

    return battleDTO;
}

static u32 BattleArcade_GetBattleType(u8 challengeType)
{
    switch (challengeType) {
    case FRONTIER_CHALLENGE_SINGLE:
        return BATTLE_TYPE_FRONTIER_SINGLES;
    case FRONTIER_CHALLENGE_DOUBLE:
        return BATTLE_TYPE_FRONTIER_DOUBLES;
    case FRONTIER_CHALLENGE_MULTI:
        return BATTLE_TYPE_FRONTIER_LINK | BATTLE_TYPE_TRAINER_DOUBLES | BATTLE_TYPE_2vs2;
    case FRONTIER_CHALLENGE_MULTI_WFC:
        return BATTLE_TYPE_FRONTIER_LINK | BATTLE_TYPE_TRAINER_DOUBLES | BATTLE_TYPE_2vs2;
    }

    return BATTLE_TYPE_FRONTIER_SINGLES;
}

u8 BattleArcade_GetPokemonLevel(BattleArcade *battleArcade)
{
    return 50;
}

BOOL BattleArcade_IsMultiPlayerChallenge(u8 challengeType)
{
    return challengeType == FRONTIER_CHALLENGE_MULTI || challengeType == FRONTIER_CHALLENGE_MULTI_WFC;
}

void ov104_0223C010(BattleArcade *battleArcade, Pokemon *param1)
{
    Pokemon_UpdateAfterCatch(param1, SaveData_GetTrainerInfo(battleArcade->saveData), 4, 0, 0, 11);
    return;
}

void ov104_0223C034(BattleArcade *battleArcade, Party *param1, Pokemon *param2)
{
    ov104_0223C010(battleArcade, param2);
    Party_AddPokemon(param1, param2);
    return;
}

void ov104_0223C04C(BattleArcade *battleArcade)
{
    u32 v0;
    int v1, v2;
    u8 v3;
    Pokemon *v5;
    Pokemon *v6;

    Party_Init(battleArcade->opponentsParty);

    v3 = BattleArcade_GetOpponentPartySize(battleArcade->challengeType, 1);
    v5 = Pokemon_New(HEAP_ID_FIELD2);

    for (v1 = 0; v1 < v3; v1++) {
        FrontierPokemonDataDTO_InitPokemon(&battleArcade->unk_330[v1], v5, BattleArcade_GetPokemonLevel(battleArcade));
        ov104_0223C034(battleArcade, battleArcade->opponentsParty, v5);

        v6 = Party_GetPokemonBySlotIndex(battleArcade->opponentsParty, v1);
        v0 = 0;

        Pokemon_SetValue(v6, MON_DATA_HELD_ITEM, &v0);
    }

    Heap_Free(v5);
    return;
}

u16 ov104_0223C0BC(BattleArcade *battleArcade, u8 param1)
{
    u16 v0, v1;

    v1 = ov104_0223C124(battleArcade);

    if (param1 == 28) {
        if (v1 < 3) {
            v0 = Unk_ov104_0223C0BC[0];
        } else if (v1 < 6) {
            v0 = Unk_ov104_0223C0BC[1];
        } else {
            v0 = Unk_ov104_0223C0BC[2];
        }
    } else {
        if (v1 < 3) {
            v0 = Unk_ov104_0223C0BC_1[0];
        } else if (v1 < 6) {
            v0 = Unk_ov104_0223C0BC_1[1];
        } else {
            v0 = Unk_ov104_0223C0BC_1[2];
        }
    }

    return v0;
}

static u16 BattleArcade_GetAIMask(BattleArcade *battleArcade)
{
    u16 aiMask, v1;

    if (battleArcade->challengeType == FRONTIER_CHALLENGE_SINGLE) {
        if (battleArcade->trainerIDs[battleArcade->unk_11] == FRONTIER_TRAINER_ARCADE_STAR_DAHLIA_SILVER
            || battleArcade->trainerIDs[battleArcade->unk_11] == FRONTIER_TRAINER_ARCADE_STAR_DAHLIA_GOLD) {
            return AI_FLAG_BASIC | AI_FLAG_EVAL_ATTACK | AI_FLAG_EXPERT;
        }
    }

    v1 = ov104_0223C124(battleArcade);
    aiMask = AI_FLAG_BASIC | AI_FLAG_EVAL_ATTACK | AI_FLAG_EXPERT;

    switch (v1 + 1) {
    case 1:
    case 2:
        aiMask = AI_FLAG_NONE;
        break;
    case 3:
    case 4:
        aiMask = AI_FLAG_BASIC;
        break;
    }

    return aiMask;
}

u16 ov104_0223C124(BattleArcade *battleArcade)
{
    u16 v0 = battleArcade->unk_1A;

    if (BattleArcade_IsMultiPlayerChallenge(battleArcade->challengeType) == 1) {
        if (battleArcade->unk_A76 > battleArcade->unk_1A) {
            v0 = battleArcade->unk_A76;
        }
    }

    return v0;
}

u8 BattleArcade_GetCategoryFromEffect(u8 effect)
{
    if (effect < ARCADE_EFFECT_LOWER_ALLY_HP) {
        return ARCADE_EFFECT_CATEGORY_FOE;
    } else if (effect < ARCADE_EFFECT_SUNNY_BATTLE) {
        return ARCADE_EFFECT_CATEGORY_ALLY;
    } else if (effect < ARCADE_EFFECT_SWAP_MONS) {
        return ARCADE_EFFECT_CATEGORY_ENV;
    }

    return ARCADE_EFFECT_CATEGORY_BONUS;
}
