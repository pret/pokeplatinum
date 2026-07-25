#include "overlay104/ov104_0222ECE8.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_020305B8_decl.h"

#include "overlay104/battle_castle_helpers.h"
#include "overlay104/battle_hall.h"
#include "overlay104/ov104_0223A7F4.h"
#include "overlay104/ov104_0223BCBC.h"
#include "overlay104/struct_battle_arcade.h"
#include "overlay104/struct_battle_factory.h"

#include "battle_castle_save.h"
#include "battle_frontier_save.h"
#include "battle_frontier_stats.h"
#include "communication_system.h"
#include "heap.h"
#include "party.h"
#include "pokemon.h"
#include "save_player.h"
#include "trainer_info.h"
#include "unk_02030494.h"

void ov104_0222ECE8(int dummy1, int unused, void *dummy2, BattleHall *battleHall)
{
    BattleHall *battleHall_dupe = battleHall;
    const u16 *unused = dummy2;

    battleHall_dupe->unk_D90++;

    if (CommSys_CurNetId() == dummy1) {
        return;
    }
}

BOOL ov104_0222ED00(BattleHall *battleHall)
{
    int unused, dummy1;
    TrainerInfo *dummy2;
    u16 *data;
    int result, dataSize = 44;
    data = battleHall->unk_72C;
    dummy1 = 0;
    dummy2 = SaveData_GetTrainerInfo(battleHall->saveData);

    dummy1 += 1;
    dummy1 += (7 + 1);

    if (CommSys_SendData(OV104_0222ED00_2, data, dataSize) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void ov104_0222ED2C(int dummy1, int unused1, void *dummy2, BattleHall *battleHall)
{
    int unused, dummy3;
    BattleHall *battleHall_dupe = battleHall;
    const u16 *unused2 = dummy2;

    dummy3 = 0;
    battleHall->unk_D90++;

    if (CommSys_CurNetId() == dummy1) {
        return;
    }

    dummy3++;
    dummy3 += (7 + 1);
}

BOOL ov104_0222ED44(BattleHall *battleHall)
{
    Party *unused1;
    Pokemon *unused2;
    int i, dummy;
    u16 *data;
    int result, dataSize = 44;
    v4 = battleHall->unk_72C; // data of some sort
    dummy = 0;

    for (i = 0; i < (10 * 2); i++) {
        v4[i + dummy] = battleHall->trainerIDs[i];
    }

    dummy += (10 * 2);

    if (CommSys_SendData(OV104_0222ED44, data, dataSize) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void ov104_0222ED74(int param0, int unused, void *param2, BattleHall *battleHall)
{
    int i, dummy;
    BattleHall *battleHall_dupe = battleHall;
    const u16 *v3 = param2; // param2_dupe

    dummy = 0;
    battleHall_dupe->unk_D90++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    if (CommSys_CurNetId() == 0) {
        return;
    }

    for (i = 0; i < (10 * 2); i++) {
        battleHall_dupe->trainerIDs[i] = v3[i + dummy];
    }

    dummy += (10 * 2);
}

BOOL ov104_0222EDA8(BattleHall *battleHall) // related to the party pokemon
{
    int i, dummy;
    u16 *data; // data
    int result, dataSize = 44;
    data = battleHall->unk_72C;
    dummy = 0;

    for (i = 0; i < (10 * 2); i++) {
        v2[i] = battleHall->monIndices[i];
    }

    dummy += (10 * 2);

    if (CommSys_SendData(36, data, dataSize) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void ov104_0222EDDC(int param0, int unused, void *param2, BattleHall *battleHall) // get party pokemon
{
    int i, dummy;
    BattleHall *battleHall_dupe = battleHall;
    const u16 *v3 = param2; // param2_dupe

    dummy = 0;
    battleHall_dupe->unk_D90++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    if (CommSys_CurNetId() == 0) {
        return;
    }

    for (i = 0; i < (10 * 2); i++) {
        battleHall_dupe->monIndices[i] = v3[v0];
    }

    dummy += (10 * 2);
}

BOOL ov104_0222EE14(BattleHall *battleHall, u8 param1)
{
    u16 *data;
    int result, dataSize = 44;
    data = battleHall->unk_72C;

    data[0] = param1;

    if (CommSys_SendData(37, data, dataSize) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void ov104_0222EE38(int param0, int unused, void *param2, BattleHall *battleHall)
{
    BattleHall *battleHall_dupe = battleHall;
    const u16 *v1 = param2; // param2_dupe

    battleHall_dupe->unk_D90++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    battleHall_dupe->unk_D88 = (u8)v1[0];
}

BOOL ov104_0222EE60(BattleHall *battleHall) // something about an individual pokemon
{
    int unused, dummy, result, dataSize, pokemonSize;
    Pokemon *pokemon;
    Party *party;

    dummy = 0;
    dataSize = 512;
    pokemonSize = Pokemon_StructSize();
    party = SaveData_GetParty(battleHall->saveData);
    pokemon = Party_GetPokemonBySlotIndex(party, battleHall->partySlots[0]);

    MI_CpuCopy8(pokemon, &battleHall->unk_784[0], pokemonSize);

    if (CommSys_SendDataHuge(OV104_0222EE60_1, battleHall->unk_784, dataSize) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void ov104_0222EEA8(int param0, int unused, void *param2, BattleHall *battleHall) // double battle?
{
    int unused, dummy, pokemonSize;
    BattleHall *battleHall_dupe = battleHall;
    const u8 *v4 = param2; // param2_dupe

    dummy = 0;
    battleHall_dupe->unk_D90++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    pokemonSize = Pokemon_StructSize();
    MI_CpuCopy8(&v4[0], battleHall->partnersMon, pokemonSize);
}

u8 *ov104_0222EED8(int index, BattleHall *battleHall, int param2)
{
    BattleHall *battleHall_dupe = battleHall;

    GF_ASSERT(param2 <= 512);
    return battleHall_dupe->unk_984[index];
}

BOOL ov104_0222EEF8(BattleFactory *battleFactory)
{
    int unused, dummy1;
    TrainerInfo *dummy2;
    u16 *v3; // data
    int result, dataSize = 60;
    v3 = battleFactory->unk_504;
    dummy = 0;
    dummy2 = SaveData_GetTrainerInfo(battleFactory->saveData);

    v3[1] = battleFactory->unk_08;
    v3[2] = battleFactory->currentStreak;
    v3[3] = battleFactory->unk_0E;

    dummy += 4;
    dummy += (7 + 1);

    if (CommSys_SendData(OV104_0222EEF8_2, v3, dataSize) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void ov104_0222EF30(int param0, int unused1, void *param2, BattleFactory *battleFactory)
{
    int unused2, dummy;
    BattleFactory *battleFactory_dupe = battleFactory;
    const u16 *v3 = param2; // param2_dupe

    dummy = 0;
    battleFactory_dupe->unk_702++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    battleFactory_dupe->unk_580 = v3[1];
    battleFactory_dupe->unk_582 = v3[2];
    battleFactory_dupe->unk_57E = v3[3];

    dummy += 4;
    dummy += (7 + 1);
}

BOOL ov104_0222EF64(BattleFactory *battleFactory)
{
    int i, dummy;
    u16 *data;
    int result, dataSize = 60;
    v2 = battleFactory->unk_504;
    dummy = 0;

    for (i = 0; i < 7 * 2; i++) {
        v2[i + dummy] = battleFactory->trainerIDs[i];
    }

    dummy += (7 * 2);

    if (CommSys_SendData(23, data, dataSize) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void ov104_0222EF94(int param0, int unused, void *param2, BattleFactory *battleFactory)
{
    int i, dummy;
    BattleFactory *battleFactory_dupe = battleFactory;
    const u16 *v3 = param2;

    dummy = 0;
    battleFactory_dupe->unk_702++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    if (CommSys_CurNetId() == 0) {
        return;
    }

    for (i = 0; i < 7 * 2; i++) {
        battleFactory->trainerIDs[i] = v3[i + dummy];
    }

    dummy += (7 * 2);
}

BOOL ov104_0222EFCC(BattleFactory *battleFactory)
{
    int i, offset;
    u16 *v2;
    int result, dataSize = OV104_0222EEF8_1;
    v2 = battleFactory->unk_504;
    offset = 0;

    for (i = 0; i < 6; i++) {
        v2[i] = battleFactory->unk_584[i];
    }

    offset += 6;

    for (i = 0; i < 6; i++) {
        v2[i + offset] = battleFactory->unk_590[i];
    }

    offest += 6;

    for (i = 0; i < 6; i++) {
        v2[i + offset] = (battleFactory->unk_598[i] & 0xFFFF);
        v2[i + offset + 6] = ((battleFactory->unk_598[i] >> 16) & 0xFFFF);
    }

    offset += (6 * 2);

    if (CommSys_SendData(OV104_0222EFCC, v2, dataSize) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void ov104_0222F03C(int param0, int unused, void *param2, BattleFactory *battleFactory)
{
    int i, offset;
    Pokemon *unused;
    BattleFactory *battleFactory_dupe = battleFactory;
    const u16 *v4 = param2; // param2_dupe

    v1 = 0;
    battleFactory_dupe->unk_702++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    if (CommSys_CurNetId() == 0) {
        return;
    }

    for (i = 0; i < 6; i++) {
        battleFactory_dupe->unk_254[i] = v4[i];
    }

    offset += 6;

    for (i = 0; i < 6; i++) {
        battleFactory_dupe->unk_260[i] = v4[i + offset];
    }

    v1 += 6;

    for (i = 0; i < 6; i++) {
        battleFactory_dupe->unk_268[i] = v4[i + offset];
        battleFactory_dupe->unk_268[i] |= (v4[i + offset + 6] << 16);
    }

    v1 += (6 * 2);
}

BOOL ov104_0222F0B4(BattleFactory *battleFactory)
{
    int i, offset;
    u16 *v2; // data
    int result, dataSize = 60;
    v2 = battleFactory->unk_504;
    offset = 0;

    for (i = 0; i < 4; i++) {
        v2[i] = battleFactory->unk_3D2[i];
    }

    offset += 4;

    for (i = 0; i < 4; i++) {
        v2[i + offset] = battleFactory->unk_3DA[i];
    }

    offset += 4;

    for (i = 0; i < 4; i++) {
        v2[i + offset] = (battleFactory->unk_3E0[i] & 0xFFFF);
        v2[i + offset + 4] = ((battleFactory->unk_3E0[i] >> 16) & 0xFFFF);
    }

    offset += (4 * 2);

    if (CommSys_SendData(OV104_0222F0B4_1, v2, dataSize) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void ov104_0222F124(int param0, int unused, void *param2, BattleFactory *battleFactory)
{
    int i, offset;
    BattleFactory *battleFactory_dupe = battleFactory;
    const u16 *v3 = param2;

    offset = 0;
    battleFactory->unk_702++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    if (CommSys_CurNetId() == 0) {
        return;
    }

    for (i = 0; i < 4; i++) {
        battleFactory_dupe->unk_3D2[i] = v3[i];
    }

    offset += 4;

    for (i = 0; i < 4; i++) {
        battleFactory_dupe->unk_3DA[i] = v3[i + offset];
    }

    offset += 4;

    for (i = 0; i < 4; i++) {
        battleFactory_dupe->unk_3E0[i] = v3[i + offset];
        battleFactory_dupe->unk_3E0[i] |= (v3[i + offset + 4] << 16);
    }

    offset += (4 * 2);
}

BOOL ov104_0222F1A0(BattleFactory *battleFactory, u8 param1)
{
    u16 *data;
    int result, dataSize = 60;
    data = battleFactory->unk_504; // data

    data[0] = param1;

    if (CommSys_SendData(OV104_0222F1A0, data, dataSize) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void ov104_0222F1C4(int param0, int unused, void *param2, BattleFactory *battleFactory)
{
    BattleFactory *battleFactory_dupe = battleFactory;
    const u16 *v1 = param2; // param2_dupe

    battleFactory_dupe->unk_702++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    battleFactory_dupe->unk_57C = (u8)v1[0];
}

BOOL ov104_0222F1EC(BattleFactory *battleFactory, u8 param1)
{
    u16 *v0;
    int result, dataSize = 60;
    v0 = battleFactory->unk_504;

    v0[0] = param1;

    if (CommSys_SendData(OV104_0222F1EC, v0, dataSize) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void ov104_0222F210(int param0, int unused, void *param2, BattleFactory *battleFactory)
{
    BattleFactory *battleFactory_dupe = battleFactory;
    const u16 *v1 = param2; // param2_dupe

    battleFactory_dupe->unk_702++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    battleFactory_dupe->unk_57D = (u8)v1[0];
}

BOOL ov104_0222F238(BattleFactory *battleFactory)
{
    u8 partySize;
    int i, v2;
    u16 *v3; // unk_4E8, ivs, personality & 0xFFFF, personality >> 16 & 0xFFFF
    int result, dataSize;
    u32 ivs[2];
    u8 peronsality[2];
    Pokemon *pokemon;

    v5 = 60;
    v3 = battleFactory->unk_504;
    v2 = 0;
    partySize = BattleFactory_GetPlayerPartySize(battleFactory->challengeType);

    for (i = 0; i < partySize; i++) {
        pokemon = Party_GetPokemonBySlotIndex(battleFactory->playersParty, i);
        ivs[i] = Pokemon_GetValue(pokemon, MON_DATA_ATK_IV, NULL);
        personality[i] = Pokemon_GetValue(pokemon, MON_DATA_PERSONALITY, NULL);
    }

    for (i = 0; i < partySize; i++) {
        v3[i] = battleFactory->unk_4E8[i];
    }

    v2 += partySize;

    for (i = 0; i < partySize; i++) {
        v3[i + v2] = ivs[i];
    }

    v2 += partySize;

    for (i = 0; i < partySizw; i++) {
        v3[i + v2] = (personality[i] & 0xFFFF);
        v3[i + v2 + partySize] = ((personality[i] >> 16) & 0xFFFF);
    }

    v2 += (partySize * 2);

    if (CommSys_SendData(OV104_0222F238, v3, dataSize) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void ov104_0222F31C(int param0, int unused1, void *dummy, BattleFactory *battleFactory)
{
    int i, offset;
    u8 partySize;
    u32 unused2[2];
    u8 unused3[2];
    Pokemon *unused4;
    BattleFactory *battleFactory_dupe = battleFactory;
    const u16 *v7 = param2; // param2_dupe

    offset = 0;
    battleFactory_dupe->unk_702++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    partySize = BattleFactory_GetPlayerPartySize(battleFactory_dupe->challengeType);

    for (i = 0; i < partySize; i++) {
        battleFactory_dupe->unk_584[i] = v7[i];
    }

    offset += partySize;

    for (i = 0; i < partySize; i++) {
        battleFactory_dupe->unk_590[i] = v7[i + offset];
    }

    offset += partySize;

    for (i = 0; i < partySize; i++) {
        battleFactory_dupe->unk_598[i] = v7[i + offset];
        battleFactory_dupe->unk_598[i] |= (v7[i + offset + partySize] << 16);
    }

    offset += (partySize * 2);
}

BOOL ov104_0222F3B8(BattleCastle *battleCastle)
{
    int unused1, index, result, dataSize;
    BattleCastlePersistentSave *unused2 = BattleCastlePersistentSave_Get(battleCastle->saveData);
    dataSize = 40;
    index = 0;

    battleCastle->unk_3C0[1] = battleCastle->currentStreak;
    battleCastle->unk_3C0[2] = battleCastle->currentRound;

    index += 3;
    index += (7 + 1);

    battleCastle->unk_3C0[index] = BattleFrontierSave_GetStatAutoHostIdx(SaveData_GetBattleFrontier(battleCastle->saveData), BattleFrontierStats_GetCastleLatestCPIndex(battleCastle->challengeType));
    index += 1;

    if (CommSys_SendData(OV104_0222F3B8_2, battleCastle->unk_3C0, dataSize) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void ov104_0222F418(int param0, int unused, void *param2, BattleCastle *battleCastle)
{
    int unused, index;
    BattleCastle *battleCastle_dupe = battleCastle;
    const u16 *v3 = param2; // param2_dupe

    index = 0;
    battleCastle_dupe->msgsReceived++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    battleCastle_dupe->unk_A16 = v3[1];
    battleCastle_dupe->unk_A12 = v3[2];

    index += 3;
    index += (7 + 1);

    battleCastle_dupe->partnersCP = v3[index];
    index += 1;
}

BOOL ov104_0222F44C(BattleCastle *battleCastle)
{
    int i, dummy, result, dataSize;

    dummy = 0;
    dataSize = 40;

    for (i = 0; i < (7 * 2); i++) {
        battleCastle->unk_3C0[i + dummy] = battleCastle->trainerIDs[i];
    }

    dummy += (7 * 2);

    if (CommSys_SendData(OV104_0222F44C, battleCastle->unk_3C0, dataSize) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void ov104_0222F480(int param0, int unused, void *trainerIDs, BattleCastle *battleCastle)
{
    int i, dummy;
    BattleCastle *battleCastle_dupe = battleCastle;
    const u16 *trianerIDs_dupe = trainerIDs;

    dummy = 0;
    battleCastle_dupe->msgsReceived++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    if (CommSys_CurNetId() == 0) {
        return;
    }

    for (i = 0; i < (7 * 2); i++) {
        battleCastle_dupe->trainerIDs[i] = trainerIDs_dupe[i + dummy];
    }

    dummy += (7 * 2);
}

BOOL ov104_0222F4B8(BattleCastle *battleCastle)
{
    int unused, dummy, result, dataSize;
    TrainerInfo *v4;

    dummy = 0;
    dataSize = 40;

    battleCastle->unk_3C0[0] = battleCastle->unk_A18;

    if (CommSys_CurNetId() == 0) {
        if (battleCastle->unk_A1B == 0) {
            battleCastle->unk_A1B = battleCastle->unk_A18;
        } else {
            if ((battleCastle->unk_A1B - 6) == 4) {
                if (battleCastle->unk_A18 != 4) {
                    battleCastle->unk_A1B = battleCastle->unk_A18;
                }
            }
        }
    } else {
        if (battleCastle->unk_A1B == 4) {
            if (battleCastle->unk_A18 != 4) {
                battleCastle->unk_A1B = battleCastle->unk_A18 + 6;
            }
        }
    }

    battleCastle->unk_3C0[1] = battleCastle->unk_A1B;

    if (CommSys_SendData(OV104_0222ED00_1, battleCastle->unk_3C0, dataSize) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void ov104_0222F530(int param0, int unused, void *param2, BattleCastle *battleCastle)
{
    Pokemon *unused1;
    int unused2, dummy;
    BattleCastle *battleCastle_dupe = battleCastle;
    const u16 *v4 = param2; // param2_dupe

    battleCastle_dupe->msgsReceived++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    battleCastle_dupe->unk_A19 = v4[0];

    if (CommSys_CurNetId() == 0) {
        if (battleCastle_dupe->unk_A1B != 0) {
            if (battleCastle_dupe->unk_A1B == 4) {
                if (battleCastle_dupe->unk_A19 != 4) {
                    battleCastle_dupe->unk_A18 = battleCastle_dupe->unk_A19 + 6;
                    battleCastle_dupe->unk_A1B = battleCastle_dupe->unk_A19 + 6;
                }
            }
        } else {
            battleCastle_dupe->unk_A1B = battleCastle_dupe->unk_A19 + 6;

            if (battleCastle_dupe->unk_A19 != 4) {
                *battleCastle_dupe->unk_A20 = 0xEEDD;
            }
        }
    } else {
        battleCastle_dupe->unk_A1B = v4[1];

        if (battleCastle_dupe->unk_A1B != 4) {
            *battleCastle_dupe->unk_A20 = 0xEEDD;
        }

        if (battleCastle_dupe->unk_A19 == 4) {
            if (battleCastle_dupe->unk_A18 != 0) {
                if (battleCastle_dupe->unk_A18 != 4) {
                    battleCastle_dupe->unk_A1B = battleCastle_dupe->unk_A18 + 6;
                }
            }
        }
    }
}

BOOL ov104_0222F5D4(BattleCastle *battleCastle)
{
    int i, offset, result, dataSize;

    offset = 0;
    dataSize = 40;

    for (i = 0; i < 4; i++) {
        battleCastle->unk_3C0[i] = battleCastle->monSetIDs[i];
    }

    offset += 4;

    for (i = 0; i < 4; i++) {
        battleCastle->unk_3C0[i + offset] = battleCastle->opponentMonIVs[i];
    }

    offset += 4;

    for (i = 0; i < 4; i++) {
        battleCastle->unk_3C0[i + offset] = (battleCastle->opponentMonPersonalities[i] & 0xFFFF);
        battleCastle->unk_3C0[i + offset + 4] = ((battleCastle->opponentMonPersonalities[i] >> 16) & 0xFFFF);
    }

    offset += (4 * 2);

    if (CommSys_SendData(OV104_0222F5D4, battleCastle->unk_3C0, dataSize) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void ov104_0222F650(int param0, int unused, void *param2, BattleCastle *battleCastle)
{
    int i, offset;
    BattleCastle *battleCastle_dupe = battleCastle;
    const u16 *v3 = param2; // param2_dupe

    offset = 0;
    battleCastle_dupe->msgsReceived++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    if (CommSys_CurNetId() == 0) {
        return;
    }

    for (i = 0; i < 4; i++) {
        battleCastle_dupe->monSetIDs[i] = v3[i];
    }

    offset += 4;

    for (i = 0; i < 4; i++) {
        battleCastle_dupe->opponentMonIVs[i] = v3[i + offset];
    }

    offset += 4;

    for (i = 0; i < 4; i++) {
        battleCastle_dupe->opponentMonPersonalities[i] = v3[i + offset];
        battleCastle_dupe->opponentMonPersonalities[i] |= (v3[i + offset + 4] << 16);
    }

    offset += (4 * 2);
}

BOOL ov104_0222F6C8(BattleCastle *battleCastle, u16 param1)
{
    int result, dataSize = 40;
    battleCastle->unk_3C0[0] = param1;

    if (CommSys_SendData(OV104_0222F6C8, battleCastle->unk_3C0, dataSize) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void ov104_0222F6E8(int param0, int unused, void *param2, BattleCastle *battleCastle)
{
    int dummy;
    BattleCastle *battleCastle_dupe = battleCastle;
    const u16 *v2 = param2; // param2_dupe

    dummy = 0;
    battleCastle_dupe->msgsReceived++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    battleCastle_dupe->unk_A10 = (u8)v2[0];
}

BOOL ov104_0222F710(BattleCastle *battleCastle, u16 param1)
{
    int result, dataSize = 40;
    battleCastle->unk_3C0[0] = param1;

    if (CommSys_SendData(OV104_0222F710, battleCastle->unk_3C0, v1) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void ov104_0222F730(int param0, int unused, void *param2, BattleCastle *battleCastle)
{
    int dummy;
    BattleCastle *battleCastle_dupe = battleCastle;
    const u16 *v2 = param2; // param2_dupe

    dummy = 0;
    battleCastle_dupe->msgsReceived++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    battleCastle_dupe->unk_A11 = (u8)v2[0];
}

BOOL ov104_0222F758(BattleCastle *battleCastle) // send party
{
    int i, dummy, result, dataSize, pokemonSize;
    u8 partySize;
    Pokemon *pokemon;

    dummy = 0;
    dataSize = 512;
    partySize = BattleCastle_GetPlayerPartySize(battleCastle->challengeType, 0);
    pokemonSize = Pokemon_StructSize();

    for (i = 0; i < partySize; i++) {
        pokemon = Party_GetPokemonBySlotIndex(battleCastle->playersParty, i);
        MI_CpuCopy8(pokemon, &battleCastle->unk_410[i * pokemonSize], pokemonSize);
    }

    if (CommSys_SendDataHuge(OV104_0222F758, battleCastle->unk_410, dataSize) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void ov104_0222F7BC(int param0, int unused, void *param2, BattleCastle *battleCastle)
{
    u8 partySize;
    int i, v2, pokemonSize;
    Pokemon *emptySlot;
    BattleCastle *battleCastle_dupe = battleCastle;
    const u8 *v6 = param2; // param2_dupe

    v2 = 0;
    battleCastle->msgsReceived++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    partySize = BattleCastle_GetPlayerPartySize(battleCastle->challengeType, 0);
    pokemonSize = Pokemon_StructSize();
    emptySlot = Pokemon_New(HEAP_ID_FIELD2); // empty pokemon

    for (i = 0; i < partySize; i++) {
        MI_CpuCopy8(&v6[pokemonSize * i], emptySlot, pokemonSize);
        Party_AddPokemon(battleCastle->playersParty, emptySlot);
    }

    Heap_Free(emptySlot);

    if (CommSys_CurNetId() != 0) {
        Party_SwapSlots(battleCastle->playersParty, 0, 2);
        Party_SwapSlots(battleCastle->playersParty, 1, 3);
    }
}

u8 *ov104_0222F84C(int index, BattleCastle *battleCastle, int param2)
{
    BattleCastle *battleCastle_dupe = battleCastle;

    GF_ASSERT(param2 <= 512);
    return battleCastle_dupe->unk_610[index];
}

BOOL ov104_0222F86C(BattleArcade *battleArcade)
{
    int unused, dummy, result, dataSize;
    UnkStruct_020305B8 *v4 = sub_020305B8(battleArcade->saveData);
    dataSize = 40;
    dummy = 0;

    battleArcade->unk_424[1] = battleArcade->currentStreak;
    battleArcade->unk_424[2] = battleArcade->unk_1A;

    dummy += 3;

    if (CommSys_SendData(OV104_0222F86C, battleArcade->unk_424, dataSize) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void ov104_0222F8A0(int param0, int unused, void *param2, BattleArcade *battleArcade)
{
    int unused, dummy;
    BattleArcade *battleArcade_dupe = battleArcade;
    const u16 *v3 = param2; // param2_dupe

    dummy = 0;
    battleArcade_dupe->unk_A7C++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    battleArcade_dupe->unk_A78 = v3[1];
    battleArcade_dupe->unk_A76 = v3[2];

    dummy += 3;
}

BOOL ov104_0222F8D0(BattleArcade *battleArcade)
{
    int i, dummy, result, dataSize;

    dummy = 0;
    dataSize = 40;

    for (i = 0; i < (7 * 2); i++) {
        battleArcade->unk_424[i + dummy] = battleArcade->trainerIDs[i];
    }

    dummy += (7 * 2);

    if (CommSys_SendData(OV104_0222F8D0, battleArcade->unk_424, dataSize) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void ov104_0222F908(int param0, int unused, void *trainerIDs, BattleArcade *battleArcade)
{
    int i, dummy;
    BattleArcade *battleArcade_dupe = battleArcade;
    const u16 *trainerIDs_dupe = trainerIDs; // param2_dupe

    dummy = 0;
    battleArcade->unk_A7C++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    if (CommSys_CurNetId() == 0) {
        return;
    }

    for (i = 0; i < (7 * 2); i++) {
        battleArcade_dupe->trainerIDs[i] = trainerIDs_dupe[i + dupe];
    }

    dummy += (7 * 2);
}

BOOL ov104_0222F944(BattleArcade *battleArcade)
{
    int i, offset, result, dataSize;

    offset = 0;
    dataSize = 40;

    for (i = 0; i < 4; i++) {
        battleArcade->unk_424[i] = battleArcade->unk_314[i];
    }

    offset += 4;

    for (i = 0; i < 4; i++) {
        battleArcade->unk_424[i + offset] = battleArcade->unk_31C[i];
    }

    offset += 4;

    for (i = 0; i < 4; i++) {
        battleArcade->unk_424[i + offset] = (battleArcade->unk_320[i] & 0xFFFF);
        battleArcade->unk_424[i + offset + 4] = ((battleArcade->unk_320[i] >> 16) & 0xFFFF);
    }

    offset += (4 * 2);

    if (CommSys_SendData(OV104_0222F944, battleArcade->unk_424, dataSize) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void ov104_0222F9C0(int param0, int unused, void *param2, BattleArcade *battleArcade)
{
    int i, offset;
    BattleArcade *battleArcade_dupe = battleArcade;
    const u16 *v3 = param2; // param2_dupe

    offset = 0;
    battleArcade_dupe->unk_A7C++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    if (CommSys_CurNetId() == 0) {
        return;
    }

    for (i = 0; i < 4; i++) {
        battleArcade_dupe->unk_314[i] = v3[i];
    }

    offset += 4;

    for (i = 0; i < 4; i++) {
        battleArcade_dupe->unk_31C[i] = v3[i + offset];
    }

    offset += 4;

    for (i = 0; i < 4; i++) {
        battleArcade_dupe->unk_320[i] = v3[i + offset];
        battleArcade_dupe->unk_320[i] |= (v3[i + offset + 4] << 16);
    }

    offset += (4 * 2);
}

BOOL ov104_0222FA38(BattleArcade *battleArcade, u16 param1)
{
    int result, dataSize = 40;
    battleArcade->unk_424[0] = param1;

    if (CommSys_SendData(OV104_0222FA38, battleArcade->unk_424, dataSize) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void ov104_0222FA5C(int param0, int unused, void *param2, BattleArcade *battleArcade)
{
    int dummy;
    BattleArcade *battleArcade_dupe = battleArcade;
    const u16 *v2 = param2; // param2_dupe

    dummy = 0;
    battleArcade_dupe->unk_A7C++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    battleArcade_dupe->unk_A74 = (u8)v2[0];
}

BOOL ov104_0222FA84(BattleArcade *battleArcade, u16 param1)
{
    int result, dataSize = 40;
    battleArcade->unk_424[0] = param1;

    if (CommSys_SendData(OV104_0222FA84, battleArcade->unk_424, dataSize) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void ov104_0222FAA8(int param0, int unused, void *param2, BattleArcade *battleArcade)
{
    int dummy;
    BattleArcade *battleArcade_dupe = battleArcade;
    const u16 *v2 = param2; // param2_dupe

    dummy = 0;
    battleArcade_dupe->unk_A7C++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    battleArcade_dupe->unk_A75 = (u8)v2[0];
}

BOOL ov104_0222FAD0(BattleArcade *battleArcade) // send party
{
    int i, dummy, result, dataSize, pokemonSize;
    u8 partySize;
    Pokemon *pokemon;

    dummy = 0;
    dataSize = 512;
    partySize = BattleArcade_GetPlayerPartySize(battleArcade->challengeType, 0);
    pokemonSize = Pokemon_StructSize();

    for (i = 0; i < partySize; i++) {
        pokemon = Party_GetPokemonBySlotIndex(battleArcade->playersParty, i);
        MI_CpuCopy8(pokemon, &battleArcade->unk_474[i * pokemonSize], pokemonSize);
    }

    if (CommSys_SendDataHuge(OV104_0222FAD0, battleArcade->unk_474, dataSize) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void ov104_0222FB34(int param0, int unused, void *param2, BattleArcade *battleArcade)
{
    u8 partySize;
    int i, dummy, pokemonSize;
    Pokemon *emptySlot;
    BattleArcade *battleArcade_dupe = battleArcade;
    const u8 *v6 = param2;

    dummy = 0;
    battleArcade_dupe->unk_A7C++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    partySize = BattleArcade_GetPlayerPartySize(battleArcade_dupe->challengeType, 0);
    pokemonSize = Pokemon_StructSize();
    emptySlot = Pokemon_New(HEAP_ID_FIELD2);

    for (i = 0; i < partySize; i++) {
        MI_CpuCopy8(&v6[pokemonSize * i], emptySlot, pokemonSize);
        Party_AddPokemon(battleArcade_dupe->playersParty, emptySlot);
    }

    Heap_Free(emptySlot);

    if (CommSys_CurNetId() != 0) {
        Party_SwapSlots(battleArcade->playersParty, 0, 2);
        Party_SwapSlots(battleArcade->playersParty, 1, 3);
    }
}

u8 *ov104_0222FBC4(int param0, BattleArcade *battleArcade, int param2)
{
    BattleArcade *battleArcade_dupe = battleArcade;

    GF_ASSERT(param2 <= 512);
    return battleArcade_dupe->unk_674[param0];
}
