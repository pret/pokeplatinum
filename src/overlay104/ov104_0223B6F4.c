#include "overlay104/ov104_0223B6F4.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle_frontier.h"
#include "generated/ai_flags.h"
#include "generated/frontier_trainers.h"

#include "struct_defs/battle_frontier.h"

#include "overlay104/ov104_0222DCE0.h"
#include "overlay104/struct_battle_castle.h"
#include "overlay104/struct_ov104_02230BE4.h"

#include "battle_frontier_save.h"
#include "battle_frontier_stats.h"
#include "bg_window.h"
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

static int ov104_0223B6F4(u8 param0, int param1, int param2);
void ov104_0223B760(u8 param0, int param1, u16 param2[], u8 param3);
u8 BattleCastle_GetOpponentPartySize(u8 challengeType, BOOL param1);
FieldBattleDTO *FieldBattleDTO_NewBattleCastle(BattleCastle *battleCastle, UnkStruct_ov104_02230BE4 *param1);
static u32 BattleCastle_GetBattleType(u8 challengeType);
u8 BattleCastle_GetOpponentLevel(BattleCastle *battleCastle);
void ov104_0223BA24(Party *param0);
void ov104_0223BAB8(BattleCastle *battleCastle);
void ov104_0223BA7C(BattleCastle *battleCastle, Pokemon *param1);
void ov104_0223BAA0(BattleCastle *battleCastle, Party *param1, Pokemon *param2);
static u16 BattleCastle_GetAIMask(BattleCastle *battleCastle);
u16 ov104_0223BB60(BattleCastle *battleCastle);
u16 ov104_0223BC24(u16 param0);
void FieldBattleDTO_CopyPlayerInfoToTrainerData(FieldBattleDTO *param0);
void ov104_0223BB84(BgConfig *param0, BattleCastle *battleCastle, u32 param2);
static void ov104_0223BBC4(u16 *param0, u16 param1);

static const struct {
    u16 unk_00;
    u16 unk_02;
    u16 unk_04;
    u16 unk_06;
} Unk_ov104_02241258[] = {
    { 0x0, 0x63, 0x64, 0x77 },
    { 0x50, 0x77, 0x78, 0x8B },
    { 0x64, 0x8B, 0x8C, 0x9F },
    { 0x78, 0x9F, 0xA0, 0xB3 },
    { 0x8C, 0xB3, 0xB4, 0xC7 },
    { 0xA0, 0xC7, 0xC8, 0xDB },
    { 0xB4, 0xDB, 0xDC, 0xEF },
    { 0xC8, 0x12B, 0xC8, 0x12B }
};

static int ov104_0223B6F4(u8 param0, int param1, int param2)
{
    int v0, v1, v2, v3, v4;

    if (param0 == 0) {
        v3 = (param1 * 7) + (param2 + 1);

        if (v3 == 21) {
            return FRONTIER_TRAINER_CASTLE_VALET_DARACH_SILVER;
        } else if (v3 == 49) {
            return FRONTIER_TRAINER_CASTLE_VALET_DARACH_GOLD;
        }
    }

    v4 = param1;

    if (v4 >= NELEMS(Unk_ov104_02241258)) {
        v4 = NELEMS(Unk_ov104_02241258) - 1;
    }

    if ((param2 == 7 - 1) || (param2 == (7 * 2) - 1)) {
        v1 = Unk_ov104_02241258[v4].unk_06 - Unk_ov104_02241258[v4].unk_04;
        v2 = Unk_ov104_02241258[v4].unk_04;
    } else {
        v1 = Unk_ov104_02241258[v4].unk_02 - Unk_ov104_02241258[v4].unk_00;
        v2 = Unk_ov104_02241258[v4].unk_00;
    }

    v0 = v2 + (LCRNG_Next() % v1);
    return v0;
}

void ov104_0223B760(u8 param0, int param1, u16 param2[], u8 param3)
{
    int v0 = 0;
    int v1;

    do {
        param2[v0] = ov104_0223B6F4(param0, param1, v0);

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

u8 BattleCastle_GetPlayerPartySize(u8 challengeType, BOOL includePartnersMons)
{
    switch (challengeType) {
    case FRONTIER_CHALLENGE_SINGLE:
    case FRONTIER_CHALLENGE_DOUBLE:
        return 3;
    case FRONTIER_CHALLENGE_MULTI:
    case FRONTIER_CHALLENGE_MULTI_WFC:
        if (includePartnersMons == FALSE) {
            return 2;
        } else {
            return 4;
        }
    }

    GF_ASSERT(FALSE);
    return 3;
}

u8 BattleCastle_GetOpponentPartySize(u8 challengeType, BOOL param1)
{
    switch (challengeType) {
    case FRONTIER_CHALLENGE_SINGLE:
    case FRONTIER_CHALLENGE_DOUBLE:
        return 3;
    case FRONTIER_CHALLENGE_MULTI:
    case FRONTIER_CHALLENGE_MULTI_WFC:
        if (param1 == 0) {
            return 2;
        } else {
            return 4;
        }
    }

    GF_ASSERT(FALSE);
    return 3;
}

FieldBattleDTO *FieldBattleDTO_NewBattleCastle(BattleCastle *battleCastle, UnkStruct_ov104_02230BE4 *param1)
{
    int i;
    u8 baseSlotID;
    Pokemon *mon;
    FrontierTrainerDataDTO trDataDTO;

    u8 playerPartySize = BattleCastle_GetPlayerPartySize(battleCastle->challengeType, 0);
    u8 opponentPartySize = BattleCastle_GetOpponentPartySize(battleCastle->challengeType, 0);

    Party_HealAllMembers(battleCastle->opponentsParty);
    FieldBattleDTO *battleDTO = FieldBattleDTO_New(HEAP_ID_FIELD2, BattleCastle_GetBattleType(battleCastle->challengeType));
    FieldBattleDTO_InitFromGameState(battleDTO, NULL, param1->saveData, param1->mapHeaderID, param1->journalEntry, param1->bagCursor, param1->subscreenCursorOn);

    battleDTO->background = BACKGROUND_BATTLE_CASTLE;
    battleDTO->terrain = TERRAIN_BATTLE_CASTLE;

    Party_InitWithCapacity(battleDTO->parties[BATTLER_PLAYER_1], playerPartySize);

    if (CommSys_CurNetId() == 0) {
        baseSlotID = 0;
    } else {
        baseSlotID = 2;
    }

    mon = Pokemon_New(HEAP_ID_FIELD2);

    for (i = 0; i < playerPartySize; i++) {
        Pokemon_Copy(Party_GetPokemonBySlotIndex(battleCastle->playersParty, baseSlotID + i), mon);

        FieldBattleDTO_AddPokemonToBattler(battleDTO, mon, BATTLER_PLAYER_1);
    }

    Heap_Free(mon);
    FieldBattleDTO_CopyPlayerInfoToTrainerData(battleDTO);

    Heap_Free(BattleFrontier_GetTrainerData(&trDataDTO, battleCastle->trainerIDs[battleCastle->unk_11], HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDTR));
    FieldBattleDTO_InitFrontierTrainer(battleDTO, &trDataDTO, opponentPartySize, BATTLER_ENEMY_1, HEAP_ID_FIELD2);
    Party_InitWithCapacity(battleDTO->parties[BATTLER_ENEMY_1], BattleCastle_GetOpponentPartySize(battleCastle->challengeType, 0));

    for (i = 0; i < MAX_BATTLERS; i++) {
        battleDTO->trainer[i].header.aiMask = BattleCastle_GetAIMask(battleCastle);
    }

    mon = Pokemon_New(HEAP_ID_FIELD2);

    for (i = 0; i < opponentPartySize; i++) {
        Pokemon_Copy(Party_GetPokemonBySlotIndex(battleCastle->opponentsParty, i), mon);
        FieldBattleDTO_AddPokemonToBattler(battleDTO, mon, BATTLER_ENEMY_1);
    }

    Heap_Free(mon);

    switch (battleCastle->challengeType) {
    case FRONTIER_CHALLENGE_MULTI:
    case FRONTIER_CHALLENGE_MULTI_WFC:
        FieldBattleDTO_CopyPlayerInfoToTrainerData(battleDTO);

        TrainerInfo_Copy(CommInfo_TrainerInfo(1 - CommSys_CurNetId()), battleDTO->trainerInfo[BATTLER_PLAYER_2]);

        Heap_Free(BattleFrontier_GetTrainerData(&trDataDTO, battleCastle->trainerIDs[battleCastle->unk_11 + 7], HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDTR));

        FieldBattleDTO_InitFrontierTrainer(battleDTO, &trDataDTO, opponentPartySize, BATTLER_ENEMY_2, HEAP_ID_FIELD2);
        Party_InitWithCapacity(battleDTO->parties[BATTLER_ENEMY_2], BattleCastle_GetOpponentPartySize(battleCastle->challengeType, 0));

        mon = Pokemon_New(HEAP_ID_FIELD2);

        for (i = 0; i < opponentPartySize; i++) {
            Pokemon_Copy(Party_GetPokemonBySlotIndex(battleCastle->opponentsParty, opponentPartySize + i), mon);
            FieldBattleDTO_AddPokemonToBattler(battleDTO, mon, BATTLER_ENEMY_2);
        }

        Heap_Free(mon);
        break;
    }

    return battleDTO;
}

static u32 BattleCastle_GetBattleType(u8 challengeType)
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

u8 BattleCastle_GetOpponentLevel(BattleCastle *battleCastle)
{
    return 50;
}

BOOL BattleCastle_IsMultiPlayerChallenge(u8 challengeType)
{
    return challengeType == FRONTIER_CHALLENGE_MULTI || challengeType == FRONTIER_CHALLENGE_MULTI_WFC;
}

void ov104_0223BA24(Party *param0)
{
    int v0, v1, v2;
    u32 v3;
    Pokemon *mon;

    v2 = Party_GetCurrentCount(param0);

    for (v0 = 0; v0 < v2; v0++) {
        mon = Party_GetPokemonBySlotIndex(param0, v0);

        if (Pokemon_GetValue(mon, MON_DATA_SPECIES_EXISTS, NULL) == 0) {
            continue;
        }

        if (Pokemon_GetValue(mon, MON_DATA_HP, NULL) == 0) {
            v3 = 1;
            Pokemon_SetValue(mon, MON_DATA_HP, &v3);
        }

        v3 = 0;
        Pokemon_SetValue(mon, MON_DATA_STATUS, &v3);
    }

    return;
}

void ov104_0223BA7C(BattleCastle *battleCastle, Pokemon *param1)
{
    Pokemon_UpdateAfterCatch(param1, SaveData_GetTrainerInfo(battleCastle->saveData), 4, 0, 0, 11);
    return;
}

void ov104_0223BAA0(BattleCastle *battleCastle, Party *param1, Pokemon *param2)
{
    ov104_0223BA7C(battleCastle, param2);
    Party_AddPokemon(param1, param2);
    return;
}

void ov104_0223BAB8(BattleCastle *battleCastle)
{
    int v0, v1;
    u8 v2;
    Pokemon *v3;

    Party_Init(battleCastle->opponentsParty);

    v2 = BattleCastle_GetOpponentPartySize(battleCastle->challengeType, 1);
    v3 = Pokemon_New(HEAP_ID_FIELD2);

    for (v0 = 0; v0 < v2; v0++) {
        FrontierPokemonDataDTO_InitPokemon(&battleCastle->unk_288[v0], v3, BattleCastle_GetOpponentLevel(battleCastle));
        ov104_0223BAA0(battleCastle, battleCastle->opponentsParty, v3);
    }

    Heap_Free(v3);

    return;
}

static u16 BattleCastle_GetAIMask(BattleCastle *battleCastle)
{
    u16 aiMask, v1;

    if (battleCastle->challengeType == FRONTIER_CHALLENGE_SINGLE) {
        if (battleCastle->trainerIDs[battleCastle->unk_11] == FRONTIER_TRAINER_CASTLE_VALET_DARACH_SILVER
            || battleCastle->trainerIDs[battleCastle->unk_11] == FRONTIER_TRAINER_CASTLE_VALET_DARACH_GOLD) {
            return AI_FLAG_BASIC | AI_FLAG_EVAL_ATTACK | AI_FLAG_EXPERT;
        }
    }

    v1 = ov104_0223BB60(battleCastle);
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

u16 ov104_0223BB60(BattleCastle *battleCastle)
{
    u16 v0 = battleCastle->unk_16;

    if (BattleCastle_IsMultiPlayerChallenge(battleCastle->challengeType) == 1) {
        if (battleCastle->unk_A12 > battleCastle->unk_16) {
            v0 = battleCastle->unk_A12;
        }
    }

    return v0;
}

void ov104_0223BB84(BgConfig *param0, BattleCastle *battleCastle, u32 param2)
{
    int v0;
    u16 v1[30];

    ov104_0223BBC4(v1, ov104_0223BB60(battleCastle));

    Bg_LoadToTilemapRect(param0, param2, v1, 11, 6, 10, 3);
    Bg_ScheduleTilemapTransfer(param0, param2);

    return;
}

static void ov104_0223BBC4(u16 *param0, u16 param1)
{
    u8 v0[10];
    u16 v1;
    u32 v2, v3, v4, v5;

    v1 = ov104_0223BC24(param1);

    for (v3 = 0; v3 < (10 / 2); v3++) {
        v0[v3] = v3;
        v0[(10 / 2) + v3] = (((10 / 2) - 1) - v3);
    }

    v2 = (0x60 * v1) + 0x10;

    for (v3 = 0; v3 < 3; v3++) {
        for (v4 = 0; v4 < 10; v4++) {
            v5 = v2 + (v3 * 0x20) + v0[v4];
            param0[v4 + (v3 * 10)] = v5;

            if (v4 >= (10 / 2)) {
                param0[v4 + (v3 * 10)] |= (1 << 10);
            }
        }
    }

    return;
}

u16 ov104_0223BC24(u16 param0)
{
    if (param0 >= 8) {
        return 8 - 1;
    }

    return param0;
}

void ov104_0223BC2C(BattleFrontierSave *frontier, u8 challengeType, int castlePoints)
{
    u16 v0;

    BattleFrontierSave_SubtractFromStat(frontier, BattleFrontierStats_GetCastleLatestCPIndex(challengeType), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetCastleLatestCPIndex(challengeType)), castlePoints);
    v0 = BattleFrontierSave_GetStatAutoHostIdx(frontier, BattleFrontierStats_GetCastleSpentCPIndex(challengeType));

    if (v0 + castlePoints > 9999) {
        BattleFrontierSave_SetStatAutoHostIdx(frontier, BattleFrontierStats_GetCastleSpentCPIndex(challengeType), 9999);
    } else {
        BattleFrontierSave_AddToStat(frontier, BattleFrontierStats_GetCastleSpentCPIndex(challengeType), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetCastleSpentCPIndex(challengeType)), castlePoints);
    }

    return;
}
