#include "overlay104/ov104_0223A7F4.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle_frontier.h"
#include "generated/ai_flags.h"
#include "generated/frontier_trainers.h"

#include "struct_defs/battle_frontier_pokemon_data.h"
#include "struct_defs/battle_frontier_trainer_data.h"

#include "overlay104/ov104_0222DCE0.h"
#include "overlay104/struct_battle_factory.h"
#include "overlay104/struct_ov104_02230BE4.h"
#include "overlay104/struct_ov104_0224028C.h"

#include "communication_information.h"
#include "communication_system.h"
#include "field_battle_data_transfer.h"
#include "heap.h"
#include "item_use_pokemon.h"
#include "math_util.h"
#include "party.h"
#include "pokemon.h"
#include "trainer_info.h"

static const struct {
    u16 unk_00;
    u16 unk_02;
    u16 unk_04;
    u16 unk_06;
} Unk_ov104_022401FC[] = {
    { 0x0, 0x63, 0x64, 0x77 },
    { 0x50, 0x77, 0x78, 0x8B },
    { 0x64, 0x8B, 0x8C, 0x9F },
    { 0x78, 0x9F, 0xA0, 0xB3 },
    { 0x8C, 0xB3, 0xB4, 0xC7 },
    { 0xA0, 0xC7, 0xC8, 0xDB },
    { 0xB4, 0xDB, 0xDC, 0xEF },
    { 0xC8, 0x12B, 0xC8, 0x12B }
};

static const UnkStruct_ov104_0224028C Unk_ov104_0224028C[] = {
    { 0x64, 0x1, 0x96, 0x0, 0x1 },
    { 0x78, 0x97, 0xFA, 0x4, 0x1 },
    { 0x8C, 0xFB, 0x15E, 0x8, 0x1 },
    { 0xA0, 0x15F, 0x1E6, 0xC, 0x1 },
    { 0xB4, 0x1E7, 0x26E, 0x10, 0x1 },
    { 0xC8, 0x26F, 0x2F6, 0x14, 0x1 },
    { 0xDC, 0x2F7, 0x37E, 0x18, 0x1 },
    { 0x12C, 0x15F, 0x3B6, 0x1F, 0x0 },
    { 0x136, 0x15F, 0x1E6, 0xC, 0x0 },
    { 0x137, 0x15F, 0x1E6, 0x1F, 0x0 }
};

static const UnkStruct_ov104_0224028C Unk_ov104_022402DC[] = {
    { 0x64, 0x15F, 0x1E6, 0x0, 0x1 },
    { 0x78, 0x1E7, 0x26E, 0x4, 0x1 },
    { 0x8C, 0x26F, 0x2F6, 0x8, 0x1 },
    { 0xA0, 0x2F7, 0x37E, 0xC, 0x1 },
    { 0xB4, 0x15F, 0x3B6, 0x10, 0x1 },
    { 0xC8, 0x15F, 0x3B6, 0x14, 0x1 },
    { 0xDC, 0x15F, 0x3B6, 0x18, 0x1 },
    { 0x12C, 0x15F, 0x3B6, 0x1F, 0x0 },
    { 0x136, 0x2F7, 0x3B6, 0xC, 0x0 },
    { 0x137, 0x2F7, 0x3B6, 0x1F, 0x0 }
};

static const UnkStruct_ov104_0224028C Unk_ov104_0224023C[] = {
    { 0x64, 0x15F, 0x1E6, 0x0, 0x1 },
    { 0x78, 0x1E7, 0x26E, 0x4, 0x1 },
    { 0x8C, 0x26F, 0x2F6, 0x8, 0x1 },
    { 0xA0, 0x2F7, 0x37E, 0xC, 0x1 },
    { 0xB4, 0x26F, 0x3B6, 0x10, 0x1 },
    { 0xC8, 0x26F, 0x3B6, 0x14, 0x1 },
    { 0xDC, 0x26F, 0x3B6, 0x18, 0x1 },
    { 0x12C, 0x15F, 0x3B6, 0x1F, 0x0 },
    { 0x136, 0x2F7, 0x3B6, 0xC, 0x0 },
    { 0x137, 0x2F7, 0x3B6, 0x1F, 0x0 }
};

static int ov104_0223A7F4(u8 param0, int param1, int param2);
const UnkStruct_ov104_0224028C *ov104_0223A8A8(int param0, int param1);
const UnkStruct_ov104_0224028C *ov104_0223A8F4(int param0, int param1);
void ov104_0223A860(u8 param0, int param1, u16 param2[], u8 param3);
u8 BattleFactory_GetPlayerPartySize(u8 challengeType);
u8 BattleFactory_GetOpponentPartySize(u8 challengeType, BOOL param1);
static u32 BattleFactory_GetBattleType(u8 challengeType);
u8 BattleFactory_GetPokemonLevel(BattleFactory *battleFactory);
void ov104_0223ADB0(BattleFactory *battleFactory);
void ov104_0223AE30(BattleFactory *battleFactory);
static u16 BattleFactory_GetAIMask(BattleFactory *battleFactory);
u16 ov104_0223AF34(BattleFactory *battleFactory);
void FieldBattleDTO_CopyPlayerInfoToTrainerData(FieldBattleDTO *dto);

static int ov104_0223A7F4(u8 param0, int param1, int param2)
{
    int v0, v1, v2, v3;

    if (param1 >= NELEMS(Unk_ov104_022401FC)) {
        param1 = NELEMS(Unk_ov104_022401FC) - 1;
    }

    if (param0 == 0) {
        v3 = (param1 * 7) + (param2 + 1);

        if (v3 == 21) {
            return FRONTIER_TRAINER_FACTORY_HEAD_THORTON_SILVER;
        } else if (v3 == 49) {
            return FRONTIER_TRAINER_FACTORY_HEAD_THORTON_GOLD;
        }
    }

    if ((param2 == 7 - 1) || (param2 == (7 * 2) - 1)) {
        v1 = Unk_ov104_022401FC[param1].unk_06 - Unk_ov104_022401FC[param1].unk_04;
        v2 = Unk_ov104_022401FC[param1].unk_04;
    } else {
        v1 = Unk_ov104_022401FC[param1].unk_02 - Unk_ov104_022401FC[param1].unk_00;
        v2 = Unk_ov104_022401FC[param1].unk_00;
    }

    v0 = v2 + (LCRNG_Next() % v1);
    return v0;
}

void ov104_0223A860(u8 param0, int param1, u16 param2[], u8 param3)
{
    int v0 = 0;
    int v1;

    do {
        param2[v0] = ov104_0223A7F4(param0, param1, v0);

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

const UnkStruct_ov104_0224028C *ov104_0223A8A8(int param0, int param1)
{
    int v0;
    static const UnkStruct_ov104_0224028C *v1;
    int v2;

    if (param1 == 0) {
        v1 = Unk_ov104_0224028C;
        v2 = NELEMS(Unk_ov104_0224028C);
    } else {
        v1 = Unk_ov104_022402DC;
        v2 = NELEMS(Unk_ov104_022402DC);
    }

    for (v0 = 0; v0 < v2; v0++) {
        if (param0 < v1[v0].unk_00) {
            break;
        }
    }

    if (v0 >= v2) {
        GF_ASSERT(FALSE);
        v0 = v2 - 1;
    }

    return &v1[v0];
}

const UnkStruct_ov104_0224028C *ov104_0223A8F4(int param0, int param1)
{
    if (param0 >= 8) {
        param0 = 8 - 1;
    }

    if (param1 == 0) {
        return &Unk_ov104_0224028C[param0];
    } else {
        return &Unk_ov104_0224023C[param0];
    }
}

static const int Unk_ov104_022401E8[] = {
    0x6,
    0xD,
    0x14,
    0x1B,
    0x22
};

BOOL ov104_0223A918(const u16 param0[], const u16 param1[], int param2, int param3, u16 param4[], int param5, const UnkStruct_ov104_0224028C *param6, u16 param7, u8 param8[])
{
    u8 v0;
    int v1, v2, v3;
    BattleFrontierPokemonData v4[6];
    int v5, v6;
    const UnkStruct_ov104_0224028C *v7 = param6;

    GF_ASSERT(param3 <= 6);

    v2 = v7->unk_04 - v7->unk_02;
    v1 = 0;
    v6 = 0;

    if (param7 != 0) {
        v6 = (NELEMS(Unk_ov104_022401E8));

        for (v5 = 0; v5 < (NELEMS(Unk_ov104_022401E8)); v5++) {
            if (param7 <= Unk_ov104_022401E8[v5]) {
                v6 = v5;
                break;
            }
        }
    }

    while (v1 != param3) {
        if ((v1 >= param3 - v6) && (v7->unk_07 == 1)) {
            v2 = (v7 + 1)->unk_04 - (v7 + 1)->unk_02;
            v3 = (v7 + 1)->unk_04 - (LCRNG_Next() % (v2 + 1));
            v0 = (v7 + 1)->unk_06;
        } else {
            v3 = v7->unk_04 - (LCRNG_Next() % (v2 + 1));
            v0 = v7->unk_06;
        }

        BattleTower_GetMonDataFromSetIDAndNarcID(&v4[v1], v3, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDPM);

        for (v5 = 0; v5 < v1; v5++) {
            if ((v4[v5].species == v4[v1].species) || (v4[v5].item == v4[v1].item)) {
                break;
            }
        }

        if (v5 != v1) {
            continue;
        }

        for (v5 = 0; v5 < param2; v5++) {
            if ((v4[v1].species == param0[v5]) || (v4[v1].item == param1[v5])) {
                break;
            }
        }

        if (v5 != param2) {
            continue;
        }

        param4[v1] = v3;
        param8[v1] = v0;

        v1++;
    }

    return 0;
}

u8 BattleFactory_GetPlayerPartySize(u8 challengeType)
{
    switch (challengeType) {
    case FRONTIER_CHALLENGE_SINGLE:
    case FRONTIER_CHALLENGE_DOUBLE:
        return 3;
    case FRONTIER_CHALLENGE_MULTI:
    case FRONTIER_CHALLENGE_MULTI_WFC:
        return 2;
    }

    return 0;
}

u8 BattleFactory_GetOpponentPartySize(u8 challengeType, BOOL param1)
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

    return 0;
}

void ov104_0223AAA0(u16 param0, u8 param1, u16 *param2, FrontierPokemonDataDTO *param3, u8 *param4, u32 *param5, u16 param6, u16 *param7, u16 *param8)
{
    const UnkStruct_ov104_0224028C *v0;
    int v1;

    v0 = ov104_0223A8F4(param0, param1);

    if (param7 == NULL) {
        ov104_0223A918(NULL, NULL, 0, 6, param2, 11, v0, param6, param4);
    } else {
        ov104_0223A918(param7, param7, 6, 6, param2, 11, v0, param6, param4);
    }

    ov104_0222E330(param3, param2, param4, NULL, param5, 6, 11, 179);
    return;
}

void ov104_0223AB0C(u8 param0, u16 param1, u8 param2, FrontierPokemonDataDTO *param3, u16 *param4, FrontierPokemonDataDTO *param5, u8 *param6, u32 *param7, int param8)
{
    int v0;
    FrontierPokemonDataDTO v1;
    u16 v3[6 * 2];
    u16 v4[6 * 2];

    const UnkStruct_ov104_0224028C *v2 = ov104_0223A8A8(param1, param2);

    for (v0 = 0; v0 < param8; v0++) {
        v1 = param3[v0];
        v3[v0] = v1.species;
        v4[v0] = v1.item;
    }

    ov104_0223A918(v3, v4, param8, param0, param4, 11, v2, 0, param6);
    ov104_0222E330(param5, param4, param6, NULL, param7, param0, HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDPM);

    return;
}

FieldBattleDTO *FieldBattleDTO_NewBattleFactory(BattleFactory *battleFactory, UnkStruct_ov104_02230BE4 *param1)
{
    int i;
    FrontierTrainerDataDTO trDataDTO;

    u8 playerPartySize = BattleFactory_GetPlayerPartySize(battleFactory->challengeType);
    u8 opponentPartySize = BattleFactory_GetOpponentPartySize(battleFactory->challengeType, 0);

    Party_HealAllMembers(battleFactory->playersParty);
    Party_HealAllMembers(battleFactory->opponentsParty);

    FieldBattleDTO *battleDTO = FieldBattleDTO_New(HEAP_ID_FIELD2, BattleFactory_GetBattleType(battleFactory->challengeType));
    FieldBattleDTO_InitFromGameState(battleDTO, NULL, param1->saveData, param1->mapHeaderID, param1->journalEntry, param1->bagCursor, param1->subscreenCursorOn);

    battleDTO->background = BACKGROUND_BATTLE_FACTORY;
    battleDTO->terrain = TERRAIN_BATTLE_FACTORY;

    Party_InitWithCapacity(battleDTO->parties[BATTLER_PLAYER_1], playerPartySize);
    Pokemon *mon = Pokemon_New(HEAP_ID_FIELD2);

    for (i = 0; i < playerPartySize; i++) {
        Pokemon_Copy(Party_GetPokemonBySlotIndex(battleFactory->playersParty, i), mon);
        FieldBattleDTO_AddPokemonToBattler(battleDTO, mon, BATTLER_PLAYER_1);
    }

    Heap_Free(mon);
    FieldBattleDTO_CopyPlayerInfoToTrainerData(battleDTO);

    Heap_Free(BattleFrontier_GetTrainerData(&trDataDTO, battleFactory->trainerIDs[battleFactory->unk_06], HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDTR));

    FieldBattleDTO_InitFrontierTrainer(battleDTO, &trDataDTO, opponentPartySize, BATTLER_ENEMY_1, HEAP_ID_FIELD2);
    Party_InitWithCapacity(battleDTO->parties[BATTLER_ENEMY_1], BattleFactory_GetOpponentPartySize(battleFactory->challengeType, 0));

    for (i = 0; i < MAX_BATTLERS; i++) {
        battleDTO->trainer[i].header.aiMask = BattleFactory_GetAIMask(battleFactory);
    }

    mon = Pokemon_New(HEAP_ID_FIELD2);

    for (i = 0; i < opponentPartySize; i++) {
        Pokemon_Copy(Party_GetPokemonBySlotIndex(battleFactory->opponentsParty, i), mon);
        FieldBattleDTO_AddPokemonToBattler(battleDTO, mon, BATTLER_ENEMY_1);
    }

    Heap_Free(mon);

    switch (battleFactory->challengeType) {
    case FRONTIER_CHALLENGE_MULTI:
    case FRONTIER_CHALLENGE_MULTI_WFC:
        FieldBattleDTO_CopyPlayerInfoToTrainerData(battleDTO);

        TrainerInfo_Copy(CommInfo_TrainerInfo(1 - CommSys_CurNetId()), battleDTO->trainerInfo[BATTLER_PLAYER_2]);

        Heap_Free(BattleFrontier_GetTrainerData(&trDataDTO, battleFactory->trainerIDs[battleFactory->unk_06 + 7], HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDTR));

        FieldBattleDTO_InitFrontierTrainer(battleDTO, &trDataDTO, opponentPartySize, BATTLER_ENEMY_2, HEAP_ID_FIELD2);
        Party_InitWithCapacity(battleDTO->parties[BATTLER_ENEMY_2], BattleFactory_GetOpponentPartySize(battleFactory->challengeType, 0));

        mon = Pokemon_New(HEAP_ID_FIELD2);

        for (i = 0; i < opponentPartySize; i++) {
            Pokemon_Copy(Party_GetPokemonBySlotIndex(battleFactory->opponentsParty, opponentPartySize + i), mon);
            FieldBattleDTO_AddPokemonToBattler(battleDTO, mon, BATTLER_ENEMY_2);
        }

        Heap_Free(mon);
        break;
    }

    return battleDTO;
}

static u32 BattleFactory_GetBattleType(u8 challengeType)
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

u8 BattleFactory_GetPokemonLevel(BattleFactory *battleFactory)
{
    if (battleFactory->unk_05 == 0) {
        return 50;
    }

    return 100;
}

void ov104_0223ADB0(BattleFactory *battleFactory)
{
    int v0;
    Pokemon *v1;

    ov104_0222E330(battleFactory->unk_280, battleFactory->unk_254, battleFactory->unk_260, battleFactory->unk_268, NULL, 6, 11, 179);
    Party_Init(battleFactory->playersParty);

    v1 = Pokemon_New(HEAP_ID_FIELD2);

    for (v0 = 0; v0 < 6; v0++) {
        FrontierPokemonDataDTO_InitPokemon(&battleFactory->unk_280[v0], v1, BattleFactory_GetPokemonLevel(battleFactory));
        ov104_0222E1C0(battleFactory->saveData, battleFactory->playersParty, v1);
    }

    Heap_Free(v1);

    return;
}

void ov104_0223AE30(BattleFactory *battleFactory)
{
    int v0, v1;
    Pokemon *v2;
    FrontierPokemonDataDTO v3[2];

    v1 = Party_GetCurrentCount(battleFactory->playersParty);

    for (v0 = v1; v0 > 2; v0--) {
        Party_RemovePokemonBySlotIndex(battleFactory->playersParty, v0 - 1);
    }

    ov104_0222E330(v3, battleFactory->unk_584, battleFactory->unk_590, battleFactory->unk_598, NULL, 2, 11, 179);

    v2 = Pokemon_New(HEAP_ID_FIELD2);

    for (v0 = 0; v0 < 2; v0++) {
        FrontierPokemonDataDTO_InitPokemon(&v3[v0], v2, BattleFactory_GetPokemonLevel(battleFactory));
        ov104_0222E1C0(battleFactory->saveData, battleFactory->playersParty, v2);
        battleFactory->unk_4E8[v0 + 2] = battleFactory->unk_584[v0];
    }

    Heap_Free(v2);
    return;
}

BOOL BattleFactory_IsMultiplayerChallenge(u8 challengeType)
{
    return challengeType == FRONTIER_CHALLENGE_MULTI || challengeType == FRONTIER_CHALLENGE_MULTI_WFC;
}

static u16 BattleFactory_GetAIMask(BattleFactory *battleFactory)
{
    u16 aiMask, v1;

    if (battleFactory->challengeType == FRONTIER_CHALLENGE_SINGLE) {
        if (battleFactory->trainerIDs[battleFactory->unk_06] == FRONTIER_TRAINER_FACTORY_HEAD_THORTON_SILVER
            || battleFactory->trainerIDs[battleFactory->unk_06] == FRONTIER_TRAINER_FACTORY_HEAD_THORTON_GOLD) {
            return AI_FLAG_BASIC | AI_FLAG_EVAL_ATTACK | AI_FLAG_EXPERT;
        }
    }

    v1 = ov104_0223AF34(battleFactory);
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

u16 ov104_0223AF34(BattleFactory *battleFactory)
{
    u16 v0 = battleFactory->unk_0E;

    if (BattleFactory_IsMultiplayerChallenge(battleFactory->challengeType) == TRUE) {
        if (battleFactory->unk_57E > battleFactory->unk_0E) {
            v0 = battleFactory->unk_57E;
        }
    }

    return v0;
}
