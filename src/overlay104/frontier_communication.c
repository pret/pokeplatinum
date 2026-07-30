#include "overlay104/frontier_communication.h"

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

// This file includes the communications for the Battle Frontier (excluding the Battle Tower) relating largely to multi battles

void FrontierCommunication_Unreachable1(int dummy1, int unused1, void *dummy2, void *battleHall)
{
    BattleHall *battleHall_dupe = battleHall;
    const u16 *unused2 = dummy2;

    battleHall_dupe->msgsReceived++;

    if (CommSys_CurNetId() == dummy1) {
        return;
    }
}

BOOL FrontierCommunication_Unreachable2(BattleHall *battleHall)
{
    int dummy1;
    TrainerInfo *dummy2;
    u16 *data;
    int result, dataSize = SNELEMS(battleHall->commBuffer);
    data = battleHall->commBuffer;
    dummy1 = 0;
    dummy2 = SaveData_GetTrainerInfo(battleHall->saveData);

    dummy1 += 1;
    dummy1 += (7 + 1);

    if (CommSys_SendData(FRONTIER_COMMUNICATION_UNREACHABLE2, data, dataSize) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void FrontierCommunication_Unreachable3(int dummy1, int unused1, void *dummy2, void *battleHall)
{
    int dummy3;
    BattleHall *battleHall_dupe = battleHall;
    const u16 *unused2 = dummy2;

    dummy3 = 0;
    battleHall_dupe->msgsReceived++;

    if (CommSys_CurNetId() == dummy1) {
        return;
    }

    dummy3++;
    dummy3 += (7 + 1);
}

BOOL HallCommunication_SendTrainers(BattleHall *battleHall)
{
    Party *unused1;
    Pokemon *unused2;
    int i, dummy;
    u16 *data;
    int result, dataSize = SNELEMS(battleHall->commBuffer);
    data = battleHall->commBuffer;
    dummy = 0;

    for (i = 0; i < (HALL_BATTLES_PER_ROUND * 2); i++) {
        data[i + dummy] = battleHall->trainerIDs[i];
    }

    dummy += (HALL_BATTLES_PER_ROUND * 2);

    if (CommSys_SendData(HALL_COMMUNICATION_SEND_TRAINERS, data, dataSize) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void HallCommunication_ReceiveTrainers(int netID, int unused, void *trainerIDs, void *battleHall)
{
    int i, dummy;
    BattleHall *battleHall_dupe = battleHall;
    const u16 *trainerIDs_dupe = trainerIDs;

    dummy = 0;
    battleHall_dupe->msgsReceived++;

    if (CommSys_CurNetId() == netID || CommSys_CurNetId() == 0) {
        return;
    }

    for (i = 0; i < (HALL_BATTLES_PER_ROUND * 2); i++) {
        battleHall_dupe->trainerIDs[i] = trainerIDs_dupe[i + dummy];
    }

    dummy += (HALL_BATTLES_PER_ROUND * 2);
}

BOOL HallCommunication_SendOpponentMons(BattleHall *battleHall)
{
    int i, dummy;
    u16 *data;
    int result, dataSize = SNELEMS(battleHall->commBuffer);
    data = battleHall->commBuffer;
    dummy = 0;

    for (i = 0; i < (HALL_BATTLES_PER_ROUND * 2); i++) {
        data[i] = battleHall->monIndices[i];
    }

    dummy += (HALL_BATTLES_PER_ROUND * 2);

    if (CommSys_SendData(HALL_COMMUNICATION_SEND_OPPONENT_MONS, data, dataSize) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void HallCommunication_ReceiveOpponentMons(int netID, int unused, void *monIndices, void *battleHall)
{
    int i, dummy;
    BattleHall *battleHall_dupe = battleHall;
    const u16 *monIndices_dupe = monIndices;

    dummy = 0;
    battleHall_dupe->msgsReceived++;

    if (CommSys_CurNetId() == netID || CommSys_CurNetId() == 0) {
        return;
    }

    for (i = 0; i < (HALL_BATTLES_PER_ROUND * 2); i++) {
        battleHall_dupe->monIndices[i] = monIndices_dupe[i];
    }

    dummy += (HALL_BATTLES_PER_ROUND * 2);
}

BOOL ov104_0222EE14(BattleHall *battleHall, u8 param1)
{
    u16 *data;
    int result, dataSize = SNELEMS(battleHall->commBuffer);
    data = battleHall->commBuffer;

    *data = param1;

    if (CommSys_SendData(37, data, dataSize) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void ov104_0222EE38(int netID, int unused, void *param2, void *battleHall)
{
    BattleHall *battleHall_dupe = battleHall;
    const u16 *param2_dupe = param2;

    battleHall_dupe->msgsReceived++;

    if (CommSys_CurNetId() == netID) {
        return;
    }

    battleHall_dupe->unk_D88 = *param2_dupe;
}

BOOL HallCommunication_SendPlayersPokemon(BattleHall *battleHall)
{
    int dummy, result, dataSize, pokemonSize;
    Pokemon *pokemon;
    Party *party;

    dummy = 0;
    dataSize = SNELEMS(battleHall->commHugeBuffer);
    pokemonSize = Pokemon_StructSize();
    party = SaveData_GetParty(battleHall->saveData);
    pokemon = Party_GetPokemonBySlotIndex(party, battleHall->partySlots[0]);

    MI_CpuCopy8(pokemon, battleHall->commHugeBuffer, pokemonSize);

    if (CommSys_SendDataHuge(HALL_COMMUNICATION_SEND_PLAYERS_POKEMON, battleHall->commHugeBuffer, dataSize) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void HallCommunication_ReceivePartnersPokemon(int netID, int unused1, void *partnersMon, void *battleHall)
{
    int dummy, pokemonSize;
    BattleHall *battleHall_dupe = battleHall;
    const u8 *partnersMon_dupe = partnersMon;

    dummy = 0;
    battleHall_dupe->msgsReceived++;

    if (CommSys_CurNetId() == netID) {
        return;
    }

    pokemonSize = Pokemon_StructSize();
    MI_CpuCopy8(partnersMon_dupe, battleHall_dupe->partnersMon, pokemonSize);
}

u8 *HallCommunication_VerifyPacketSize(int index, void *battleHall, int size)
{
    BattleHall *battleHall_dupe = battleHall;

    GF_ASSERT(size <= SNELEMS(battleHall_dupe->commHugeBuffer));
    return battleHall_dupe->unk_984[index];
}

BOOL ov104_0222EEF8(BattleFactory *battleFactory)
{
    int dummy1;
    TrainerInfo *dummy2;
    u16 *data;
    int result, dataSize = SNELEMS(battleFactory->commBuffer);
    data = battleFactory->commBuffer;
    dummy1 = 0;
    dummy2 = SaveData_GetTrainerInfo(battleFactory->saveData);

    data[1] = battleFactory->unk_08;
    data[2] = battleFactory->currentStreak;
    data[3] = battleFactory->unk_0E;

    dummy1 += 4;
    dummy1 += (7 + 1);

    if (CommSys_SendData(22, data, dataSize) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void ov104_0222EF30(int netID, int unused1, void *param2, void *battleFactory)
{
    int dummy;
    BattleFactory *battleFactory_dupe = battleFactory;
    const u16 *param2_dupe = param2;

    dummy = 0;
    battleFactory_dupe->msgsReceived++;

    if (CommSys_CurNetId() == netID) {
        return;
    }

    battleFactory_dupe->unk_580 = param2_dupe[1];
    battleFactory_dupe->unk_582 = param2_dupe[2];
    battleFactory_dupe->unk_57E = param2_dupe[3];

    dummy += 4;
    dummy += (7 + 1);
}

BOOL FactoryCommunication_SendTrainers(BattleFactory *battleFactory)
{
    int i, dummy;
    u16 *data;
    int result, dataSize = SNELEMS(battleFactory->commBuffer);
    data = battleFactory->commBuffer;
    dummy = 0;

    for (i = 0; i < 7 * 2; i++) {
        data[i + dummy] = battleFactory->trainerIDs[i];
    }

    dummy += (7 * 2);

    if (CommSys_SendData(FACTORY_COMMUNICATION_SEND_TRAINERS, data, dataSize) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void FactoryCommunication_ReceiveTrainers(int netID, int unused, void *trainerIDs, void *battleFactory)
{
    int i, dummy;
    BattleFactory *battleFactory_dupe = battleFactory;
    const u16 *trainerIDs_dupe = trainerIDs;

    dummy = 0;
    battleFactory_dupe->msgsReceived++;

    if (CommSys_CurNetId() == netID || CommSys_CurNetId() == 0) {
        return;
    }

    for (i = 0; i < 7 * 2; i++) {
        battleFactory_dupe->trainerIDs[i] = trainerIDs_dupe[i + dummy];
    }

    dummy += (7 * 2);
}

BOOL ov104_0222EFCC(BattleFactory *battleFactory)
{
    int i, offset;
    u16 *data;
    int result, dataSize = SNELEMS(battleFactory->commBuffer);
    data = battleFactory->commBuffer;
    offset = 0;

    for (i = 0; i < 6; i++) {
        data[i] = battleFactory->unk_584[i];
    }

    offset += 6;

    for (i = 0; i < 6; i++) {
        data[i + offset] = battleFactory->unk_590[i];
    }

    offset += 6;

    for (i = 0; i < 6; i++) {
        data[i + offset] = (battleFactory->unk_598[i] & 0xFFFF);
        data[i + offset + 6] = ((battleFactory->unk_598[i] >> 16) & 0xFFFF);
    }

    offset += (6 * 2);

    if (CommSys_SendData(24, data, dataSize) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void ov104_0222F03C(int netID, int unused1, void *param2, void *battleFactory)
{
    int i, offset;
    Pokemon *unused2;
    BattleFactory *battleFactory_dupe = battleFactory;
    const u16 *param2_dupe = param2;

    offset = 0;
    battleFactory_dupe->msgsReceived++;

    if (CommSys_CurNetId() == netID || CommSys_CurNetId() == 0) {
        return;
    }

    for (i = 0; i < 6; i++) {
        battleFactory_dupe->unk_254[i] = param2_dupe[i];
    }

    offset += 6;

    for (i = 0; i < 6; i++) {
        battleFactory_dupe->unk_260[i] = param2_dupe[i + offset];
    }

    offset += 6;

    for (i = 0; i < 6; i++) {
        battleFactory_dupe->unk_268[i] = param2_dupe[i + offset];
        battleFactory_dupe->unk_268[i] |= (param2_dupe[i + offset + 6] << 16);
    }

    offset += (6 * 2);
}

BOOL ov104_0222F0B4(BattleFactory *battleFactory)
{
    int i, offset;
    u16 *data;
    int result, dataSize = SNELEMS(battleFactory->commBuffer);
    data = battleFactory->commBuffer;
    offset = 0;

    for (i = 0; i < 4; i++) {
        data[i] = battleFactory->unk_3D2[i];
    }

    offset += 4;

    for (i = 0; i < 4; i++) {
        data[i + offset] = battleFactory->unk_3DA[i];
    }

    offset += 4;

    for (i = 0; i < 4; i++) {
        data[i + offset] = (battleFactory->unk_3E0[i] & 0xFFFF);
        data[i + offset + 4] = ((battleFactory->unk_3E0[i] >> 16) & 0xFFFF);
    }

    offset += (4 * 2);

    if (CommSys_SendData(25, data, dataSize) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void ov104_0222F124(int netID, int unused, void *param2, void *battleFactory)
{
    int i, offset;
    BattleFactory *battleFactory_dupe = battleFactory;
    const u16 *param2_dupe = param2;

    offset = 0;
    battleFactory_dupe->msgsReceived++;

    if (CommSys_CurNetId() == netID || CommSys_CurNetId() == 0) {
        return;
    }

    for (i = 0; i < 4; i++) {
        battleFactory_dupe->unk_3D2[i] = param2_dupe[i];
    }

    offset += 4;

    for (i = 0; i < 4; i++) {
        battleFactory_dupe->unk_3DA[i] = param2_dupe[i + offset];
    }

    offset += 4;

    for (i = 0; i < 4; i++) {
        battleFactory_dupe->unk_3E0[i] = param2_dupe[i + offset];
        battleFactory_dupe->unk_3E0[i] |= (param2_dupe[i + offset + 4] << 16);
    }

    offset += (4 * 2);
}

BOOL ov104_0222F1A0(BattleFactory *battleFactory, u8 param1)
{
    u16 *data;
    int result, dataSize = SNELEMS(battleFactory->commBuffer);
    data = battleFactory->commBuffer;

    data[0] = param1;

    if (CommSys_SendData(26, data, dataSize) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void ov104_0222F1C4(int netID, int unused, void *param2, void *battleFactory)
{
    BattleFactory *battleFactory_dupe = battleFactory;
    const u16 *param2_dupe = param2;

    battleFactory_dupe->msgsReceived++;

    if (CommSys_CurNetId() == netID) {
        return;
    }

    battleFactory_dupe->unk_57C = *param2_dupe;
}

BOOL ov104_0222F1EC(BattleFactory *battleFactory, u8 param1)
{
    u16 *data;
    int result, dataSize = SNELEMS(battleFactory->commBuffer);
    data = battleFactory->commBuffer;

    data[0] = param1;

    if (CommSys_SendData(27, data, dataSize) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void ov104_0222F210(int netID, int unused, void *param2, void *battleFactory)
{
    BattleFactory *battleFactory_dupe = battleFactory;
    const u16 *param2_dupe = param2;

    battleFactory_dupe->msgsReceived++;

    if (CommSys_CurNetId() == netID) {
        return;
    }

    battleFactory_dupe->unk_57D = *param2_dupe;
}

BOOL ov104_0222F238(BattleFactory *battleFactory)
{
    u8 partySize;
    int i, offset;
    u16 *data;
    int result, dataSize;
    u32 personality[2];
    u8 ivs[2];
    Pokemon *pokemon;

    dataSize = SNELEMS(battleFactory->commBuffer);
    data = battleFactory->commBuffer;
    offset = 0;
    partySize = BattleFactory_GetPlayerPartySize(battleFactory->challengeType);

    for (i = 0; i < partySize; i++) {
        pokemon = Party_GetPokemonBySlotIndex(battleFactory->playersParty, i);
        ivs[i] = Pokemon_GetValue(pokemon, MON_DATA_ATK_IV, NULL);
        personality[i] = Pokemon_GetValue(pokemon, MON_DATA_PERSONALITY, NULL);
    }

    for (i = 0; i < partySize; i++) {
        data[i] = battleFactory->unk_4E8[i];
    }

    offset += partySize;

    for (i = 0; i < partySize; i++) {
        data[i + offset] = ivs[i];
    }

    offset += partySize;

    for (i = 0; i < partySize; i++) {
        data[i + offset] = (personality[i] & 0xFFFF);
        data[i + offset + partySize] = ((personality[i] >> 16) & 0xFFFF);
    }

    offset += (partySize * 2);

    if (CommSys_SendData(28, data, dataSize) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void ov104_0222F31C(int netID, int unused1, void *param2, void *battleFactory)
{
    int i, offset;
    u8 partySize;
    u32 unused2[2];
    u8 unused3[2];
    Pokemon *unused4;
    BattleFactory *battleFactory_dupe = battleFactory;
    const u16 *param2_dupe = param2;

    offset = 0;
    battleFactory_dupe->msgsReceived++;

    if (CommSys_CurNetId() == netID) {
        return;
    }

    partySize = BattleFactory_GetPlayerPartySize(battleFactory_dupe->challengeType);

    for (i = 0; i < partySize; i++) {
        battleFactory_dupe->unk_584[i] = param2_dupe[i];
    }

    offset += partySize;

    for (i = 0; i < partySize; i++) {
        battleFactory_dupe->unk_590[i] = param2_dupe[i + offset];
    }

    offset += partySize;

    for (i = 0; i < partySize; i++) {
        battleFactory_dupe->unk_598[i] = param2_dupe[i + offset];
        battleFactory_dupe->unk_598[i] |= (param2_dupe[i + offset + partySize] << 16);
    }

    offset += (partySize * 2);
}

BOOL CastleCommunication_SendPlayersCP(BattleCastle *battleCastle)
{
    int index, result, dataSize;
    BattleCastlePersistentSave *unused2 = BattleCastlePersistentSave_Get(battleCastle->saveData);
    dataSize = SNELEMS(battleCastle->commBuffer);
    index = 0;

    battleCastle->commBuffer[1] = battleCastle->currentStreak;
    battleCastle->commBuffer[2] = battleCastle->currentRound;

    index += 3;
    index += (7 + 1);

    battleCastle->commBuffer[index] = BattleFrontierSave_GetStatAutoHostIdx(SaveData_GetBattleFrontier(battleCastle->saveData), BattleFrontierStats_GetCastleLatestCPIndex(battleCastle->challengeType));
    index += 1;

    if (CommSys_SendData(CASTLE_COMMUNICATION_SEND_PLAYERS_CP, battleCastle->commBuffer, dataSize) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void CastleCommunication_ReceivePartnersCP(int netID, int unused1, void *partnersCP, void *battleCastle)
{
    int index;
    BattleCastle *battleCastle_dupe = battleCastle;
    const u16 *partnersCP_dupe = partnersCP;

    index = 0;
    battleCastle_dupe->msgsReceived++;

    if (CommSys_CurNetId() == netID) {
        return;
    }

    battleCastle_dupe->unk_A16 = partnersCP_dupe[1];
    battleCastle_dupe->unk_A12 = partnersCP_dupe[2];

    index += 3;
    index += (7 + 1);

    battleCastle_dupe->partnersCP = partnersCP_dupe[index];
    index += 1;
}

BOOL CastleCommunication_SendTrainers(BattleCastle *battleCastle)
{
    int i, dummy, result, dataSize;

    dummy = 0;
    dataSize = SNELEMS(battleCastle->commBuffer);

    for (i = 0; i < (7 * 2); i++) {
        battleCastle->commBuffer[i + dummy] = battleCastle->trainerIDs[i];
    }

    dummy += (7 * 2);

    if (CommSys_SendData(CASTLE_COMMUNICATION_SEND_TRAINERS, battleCastle->commBuffer, dataSize) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void CastleCommunications_ReceiveTrainers(int netID, int unused, void *trainerIDs, void *battleCastle)
{
    int i, dummy;
    BattleCastle *battleCastle_dupe = battleCastle;
    const u16 *trainerIDs_dupe = trainerIDs;

    dummy = 0;
    battleCastle_dupe->msgsReceived++;

    if (CommSys_CurNetId() == netID || CommSys_CurNetId() == 0) {
        return;
    }

    for (i = 0; i < (7 * 2); i++) {
        battleCastle_dupe->trainerIDs[i] = trainerIDs_dupe[i + dummy];
    }

    dummy += (7 * 2);
}

BOOL ov104_0222F4B8(BattleCastle *battleCastle)
{
    int dummy, result, dataSize;
    TrainerInfo *unused2;

    dummy = 0;
    dataSize = SNELEMS(battleCastle->commBuffer);

    battleCastle->commBuffer[0] = battleCastle->unk_A18;

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
    } else if (battleCastle->unk_A1B == 4) {
        if (battleCastle->unk_A18 != 4) {
            battleCastle->unk_A1B = battleCastle->unk_A18 + 6;
        }
    }

    battleCastle->commBuffer[1] = battleCastle->unk_A1B;

    if (CommSys_SendData(44, battleCastle->commBuffer, dataSize) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void ov104_0222F530(int netID, int unused, void *param2, void *battleCastle)
{
    Pokemon *unused1;
    int dummy;
    BattleCastle *battleCastle_dupe = battleCastle;
    const u16 *param2_dupe = param2;

    dummy = 0;
    battleCastle_dupe->msgsReceived++;

    if (CommSys_CurNetId() == netID) {
        return;
    }

    battleCastle_dupe->unk_A19 = param2_dupe[0];

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
        battleCastle_dupe->unk_A1B = param2_dupe[1];

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

BOOL CastleCommunication_SendOpponentMons(BattleCastle *battleCastle)
{
    int i, offset, result, dataSize;

    offset = 0;
    dataSize = SNELEMS(battleCastle->commBuffer);

    for (i = 0; i < 4; i++) {
        battleCastle->commBuffer[i] = battleCastle->monSetIDs[i];
    }

    offset += 4;

    for (i = 0; i < 4; i++) {
        battleCastle->commBuffer[i + offset] = battleCastle->opponentMonIVs[i];
    }

    offset += 4;

    for (i = 0; i < 4; i++) {
        battleCastle->commBuffer[i + offset] = (battleCastle->opponentMonPersonalities[i] & 0xFFFF);
        battleCastle->commBuffer[i + offset + 4] = ((battleCastle->opponentMonPersonalities[i] >> 16) & 0xFFFF);
    }

    offset += (4 * 2);

    if (CommSys_SendData(CASTLE_COMMUNICATION_SEND_OPPONENT_MONS, battleCastle->commBuffer, dataSize) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void ov104_0222F650(int netID, int unused, void *monData, void *battleCastle)
{
    int i, offset;
    BattleCastle *battleCastle_dupe = battleCastle;
    const u16 *monData_dupe = monData;

    offset = 0;
    battleCastle_dupe->msgsReceived++;

    if (CommSys_CurNetId() == netID || CommSys_CurNetId() == 0) {
        return;
    }

    for (i = 0; i < 4; i++) {
        battleCastle_dupe->monSetIDs[i] = monData_dupe[i];
    }

    offset += 4;

    for (i = 0; i < 4; i++) {
        battleCastle_dupe->opponentMonIVs[i] = monData_dupe[i + offset];
    }

    offset += 4;

    for (i = 0; i < 4; i++) {
        battleCastle_dupe->opponentMonPersonalities[i] = monData_dupe[i + offset];
        battleCastle_dupe->opponentMonPersonalities[i] |= (monData_dupe[i + offset + 4] << 16);
    }

    offset += (4 * 2);
}

BOOL ov104_0222F6C8(BattleCastle *battleCastle, u16 param1)
{
    int result, dataSize = SNELEMS(battleCastle->commBuffer);
    *battleCastle->commBuffer = param1;

    if (CommSys_SendData(46, battleCastle->commBuffer, dataSize) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void ov104_0222F6E8(int netID, int unused, void *param2, void *battleCastle)
{
    int dummy;
    BattleCastle *battleCastle_dupe = battleCastle;
    const u16 *param2_dupe = param2;

    dummy = 0;
    battleCastle_dupe->msgsReceived++;

    if (CommSys_CurNetId() == netID) {
        return;
    }

    battleCastle_dupe->unk_A10 = *param2_dupe;
}

BOOL FrontierCommunication_Unreachable4(BattleCastle *battleCastle, u16 param1)
{
    int result, dataSize = SNELEMS(battleCastle->commBuffer);
    battleCastle->commBuffer[0] = param1;

    if (CommSys_SendData(FRONTIER_COMMUNICATION_UNREACHABLE4, battleCastle->commBuffer, dataSize) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void FrontierCommunication_Unreachable5(int netID, int unused, void *param2, void *battleCastle)
{
    int dummy;
    BattleCastle *battleCastle_dupe = battleCastle;
    const u16 *param2_dupe = param2;

    dummy = 0;
    battleCastle_dupe->msgsReceived++;

    if (CommSys_CurNetId() == netID) {
        return;
    }

    battleCastle_dupe->unk_A11 = *param2_dupe;
}

BOOL CastleCommunication_SendPlayersParty(BattleCastle *battleCastle)
{
    int i, dummy, result, dataSize, pokemonSize;
    u8 partySize;
    Pokemon *pokemon;

    dummy = 0;
    dataSize = SNELEMS(battleCastle->commHugeBuffer);
    partySize = BattleCastle_GetPlayerPartySize(battleCastle->challengeType, 0);
    pokemonSize = Pokemon_StructSize();

    for (i = 0; i < partySize; i++) {
        pokemon = Party_GetPokemonBySlotIndex(battleCastle->playersParty, i);
        MI_CpuCopy8(pokemon, &battleCastle->commHugeBuffer[i * pokemonSize], pokemonSize);
    }

    if (CommSys_SendDataHuge(CASTLE_COMMUNICATION_SEND_PLAYERS_PARTY, battleCastle->commHugeBuffer, dataSize) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void CastleCommunication_ReceivePartnersParty(int netID, int unused, void *param2, void *battleCastle)
{
    u8 partySize;
    int i, v2, pokemonSize;
    Pokemon *pokemon;
    BattleCastle *battleCastle_dupe = battleCastle;
    const u8 *v6 = param2;

    v2 = 0;
    battleCastle_dupe->msgsReceived++;

    if (CommSys_CurNetId() == netID) {
        return;
    }

    partySize = BattleCastle_GetPlayerPartySize(battleCastle_dupe->challengeType, 0);
    pokemonSize = Pokemon_StructSize();
    pokemon = Pokemon_New(HEAP_ID_FIELD2);

    for (i = 0; i < partySize; i++) {
        MI_CpuCopy8(&v6[pokemonSize * i], pokemon, pokemonSize);
        Party_AddPokemon(battleCastle_dupe->playersParty, pokemon);
    }

    Heap_Free(pokemon);

    if (CommSys_CurNetId() != 0) {
        Party_SwapSlots(battleCastle_dupe->playersParty, 0, 2);
        Party_SwapSlots(battleCastle_dupe->playersParty, 1, 3);
    }
}

u8 *CastleCommunication_VerifyPacketSize(int index, void *battleCastle, int size)
{
    BattleCastle *battleCastle_dupe = battleCastle;

    GF_ASSERT(size <= SNELEMS(battleCastle_dupe->commHugeBuffer));
    return battleCastle_dupe->unk_610[index];
}

BOOL ov104_0222F86C(BattleArcade *battleArcade)
{
    int dummy, result, dataSize;
    UnkStruct_020305B8 *v4 = sub_020305B8(battleArcade->saveData);
    dataSize = SNELEMS(battleArcade->commBuffer);
    dummy = 0;

    battleArcade->commBuffer[1] = battleArcade->currentStreak;
    battleArcade->commBuffer[2] = battleArcade->unk_1A;

    dummy += 3;

    if (CommSys_SendData(65, battleArcade->commBuffer, dataSize) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void ov104_0222F8A0(int netID, int unused1, void *param2, void *battleArcade)
{
    int dummy;
    BattleArcade *battleArcade_dupe = battleArcade;
    const u16 *param2_dupe = param2;

    dummy = 0;
    battleArcade_dupe->msgsReceived++;

    if (CommSys_CurNetId() == netID) {
        return;
    }

    battleArcade_dupe->unk_A78 = param2_dupe[1];
    battleArcade_dupe->unk_A76 = param2_dupe[2];

    dummy += 3;
}

BOOL ArcadeCommunication_SendTrainers(BattleArcade *battleArcade)
{
    int i, dummy, result, dataSize;

    dummy = 0;
    dataSize = SNELEMS(battleArcade->commBuffer);

    for (i = 0; i < (7 * 2); i++) {
        battleArcade->commBuffer[i + dummy] = battleArcade->trainerIDs[i];
    }

    dummy += (7 * 2);

    if (CommSys_SendData(ARCADE_COMMUNICATION_SEND_TRAINERS, battleArcade->commBuffer, dataSize) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void ArcadeCommunication_ReceiveTrainers(int netID, int unused, void *trainerIDs, void *battleArcade)
{
    int i, dummy;
    BattleArcade *battleArcade_dupe = battleArcade;
    const u16 *trainerIDs_dupe = trainerIDs;

    dummy = 0;
    battleArcade_dupe->msgsReceived++;

    if (CommSys_CurNetId() == netID || CommSys_CurNetId() == 0) {
        return;
    }

    for (i = 0; i < (7 * 2); i++) {
        battleArcade_dupe->trainerIDs[i] = trainerIDs_dupe[i + dummy];
    }

    dummy += (7 * 2);
}

BOOL ov104_0222F944(BattleArcade *battleArcade)
{
    int i, offset, result, dataSize;

    offset = 0;
    dataSize = SNELEMS(battleArcade->commBuffer);

    for (i = 0; i < 4; i++) {
        battleArcade->commBuffer[i] = battleArcade->unk_314[i];
    }

    offset += 4;

    for (i = 0; i < 4; i++) {
        battleArcade->commBuffer[i + offset] = battleArcade->unk_31C[i];
    }

    offset += 4;

    for (i = 0; i < 4; i++) {
        battleArcade->commBuffer[i + offset] = (battleArcade->unk_320[i] & 0xFFFF);
        battleArcade->commBuffer[i + offset + 4] = ((battleArcade->unk_320[i] >> 16) & 0xFFFF);
    }

    offset += (4 * 2);

    if (CommSys_SendData(67, battleArcade->commBuffer, dataSize) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void ov104_0222F9C0(int netID, int unused, void *param2, void *battleArcade)
{
    int i, offset;
    BattleArcade *battleArcade_dupe = battleArcade;
    const u16 *param2_dupe = param2;

    offset = 0;
    battleArcade_dupe->msgsReceived++;

    if (CommSys_CurNetId() == netID || CommSys_CurNetId() == 0) {
        return;
    }

    for (i = 0; i < 4; i++) {
        battleArcade_dupe->unk_314[i] = param2_dupe[i];
    }

    offset += 4;

    for (i = 0; i < 4; i++) {
        battleArcade_dupe->unk_31C[i] = param2_dupe[i + offset];
    }

    offset += 4;

    for (i = 0; i < 4; i++) {
        battleArcade_dupe->unk_320[i] = param2_dupe[i + offset];
        battleArcade_dupe->unk_320[i] |= (param2_dupe[i + offset + 4] << 16);
    }

    offset += (4 * 2);
}

BOOL ov104_0222FA38(BattleArcade *battleArcade, u16 param1)
{
    int result, dataSize = SNELEMS(battleArcade->commBuffer);
    battleArcade->commBuffer[0] = param1;

    if (CommSys_SendData(68, battleArcade->commBuffer, dataSize) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void ov104_0222FA5C(int netID, int unused, void *param2, void *battleArcade)
{
    int dummy;
    BattleArcade *battleArcade_dupe = battleArcade;
    const u16 *param2_dupe = param2;

    dummy = 0;
    battleArcade_dupe->msgsReceived++;

    if (CommSys_CurNetId() == netID) {
        return;
    }

    battleArcade_dupe->unk_A74 = *param2_dupe;
}

BOOL ov104_0222FA84(BattleArcade *battleArcade, u16 param1)
{
    int result, dataSize = SNELEMS(battleArcade->commBuffer);
    battleArcade->commBuffer[0] = param1;

    if (CommSys_SendData(69, battleArcade->commBuffer, dataSize) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void ov104_0222FAA8(int netID, int unused, void *param2, void *battleArcade)
{
    int dummy;
    BattleArcade *battleArcade_dupe = battleArcade;
    const u16 *param2_dupe = param2;

    dummy = 0;
    battleArcade_dupe->msgsReceived++;

    if (CommSys_CurNetId() == netID) {
        return;
    }

    battleArcade_dupe->unk_A75 = *param2_dupe;
}

BOOL ArcadeCommunication_SendPlayersParty(BattleArcade *battleArcade)
{
    int i, dummy, result, dataSize, pokemonSize;
    u8 partySize;
    Pokemon *pokemon;

    dummy = 0;
    dataSize = SNELEMS(battleArcade->commHugeBuffer);
    partySize = BattleArcade_GetPlayerPartySize(battleArcade->challengeType, 0);
    pokemonSize = Pokemon_StructSize();

    for (i = 0; i < partySize; i++) {
        pokemon = Party_GetPokemonBySlotIndex(battleArcade->playersParty, i);
        MI_CpuCopy8(pokemon, &battleArcade->commHugeBuffer[i * pokemonSize], pokemonSize);
    }

    if (CommSys_SendDataHuge(ARCADE_COMMUNICATION_SEND_PLAYERS_PARTY, battleArcade->commHugeBuffer, dataSize) == 1) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void ArcadeCommunication_ReceivePartnersParty(int netID, int unused, void *partnersParty, void *battleArcade)
{
    u8 partySize;
    int i, dummy, pokemonSize;
    Pokemon *pokemon;
    BattleArcade *battleArcade_dupe = battleArcade;
    const u8 *partnersParty_dupe = partnersParty;

    dummy = 0;
    battleArcade_dupe->msgsReceived++;

    if (CommSys_CurNetId() == netID) {
        return;
    }

    partySize = BattleArcade_GetPlayerPartySize(battleArcade_dupe->challengeType, 0);
    pokemonSize = Pokemon_StructSize();
    pokemon = Pokemon_New(HEAP_ID_FIELD2);

    for (i = 0; i < partySize; i++) {
        MI_CpuCopy8(&partnersParty_dupe[pokemonSize * i], pokemon, pokemonSize);
        Party_AddPokemon(battleArcade_dupe->playersParty, pokemon);
    }

    Heap_Free(pokemon);

    if (CommSys_CurNetId() != 0) {
        Party_SwapSlots(battleArcade_dupe->playersParty, 0, 2);
        Party_SwapSlots(battleArcade_dupe->playersParty, 1, 3);
    }
}

u8 *ArcadeCommunication_VerifyPacketSize(int netID, void *battleArcade, int size)
{
    BattleArcade *battleArcade_dupe = battleArcade;

    GF_ASSERT(size <= SNELEMS(battleArcade_dupe->commHugeBuffer));
    return battleArcade_dupe->unk_674[netID];
}
