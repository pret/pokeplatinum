#include "unk_02049D08.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle_tower.h"
#include "generated/battle_tower_modes.h"
#include "generated/frontier_trainers.h"
#include "generated/game_records.h"
#include "generated/trainer_score_events.h"

#include "struct_decls/struct_0202D060_decl.h"
#include "struct_decls/struct_0202D750_decl.h"
#include "struct_decls/struct_0202D764_decl.h"
#include "struct_defs/battle_frontier.h"
#include "struct_defs/battle_tower.h"
#include "struct_defs/underground.h"

#include "applications/party_menu/defs.h"
#include "field/field_system.h"
#include "savedata/save_table.h"

#include "field_overworld_state.h"
#include "field_task.h"
#include "game_records.h"
#include "heap.h"
#include "inlines.h"
#include "journal.h"
#include "location.h"
#include "main.h"
#include "math_util.h"
#include "party.h"
#include "player_avatar.h"
#include "pokemon.h"
#include "save_player.h"
#include "savedata.h"
#include "system_flags.h"
#include "system_vars.h"
#include "trainer_info.h"
#include "tv_episode_segment.h"
#include "unk_0202D05C.h"
#include "unk_0203061C.h"
#include "unk_0204AEE8.h"
#include "unk_0205DFC4.h"
#include "unk_0206B9D8.h"
#include "vars_flags.h"

typedef struct {
    u16 unk_00;
    u16 unk_02;
} UnkStruct_02049D38;

static u16 sub_0204AC54(SaveData *saveData, enum PokemonDataParam param, BattleTower *battleTower);
static u16 sub_0204ACC8(BattleTower *battleTower);
static void sub_0204AE20(BattleTower *battleTower, SaveData *saveData, int param2);

u16 BattleTower_GetPartySizeForChallengeMode(u16 challengeMode)
{
    switch (challengeMode) {
    case BATTLE_TOWER_MODE_SINGLE:
    case BATTLE_TOWER_MODE_WIFI:
    case BATTLE_TOWER_MODE_5:
        return 3;
    case BATTLE_TOWER_MODE_DOUBLE:
        return 4;
    case BATTLE_TOWER_MODE_MULTI:
    case BATTLE_TOWER_MODE_LINK_MULTI:
    case BATTLE_TOWER_MODE_6:
        return 2;
    }

    return 0;
}

static BOOL sub_02049D38(UnkStruct_02049D38 *param0, u16 param1, u16 param2, int param3)
{
    int v0;

    for (v0 = 0; v0 < param3; v0++) {
        if (param0[v0].unk_00 == param1) {
            if (param2 == 0) {
                continue;
            }

            if (param0[v0].unk_02 == param2) {
                return 1;
            }
        }
    }

    return 0;
}

static BOOL sub_02049D64(UnkStruct_02049D38 *param0, int param1)
{
    int v0, v1;

    for (v0 = 0; v0 < param1 - 1; v0++) {
        for (v1 = v0 + 1; v1 < param1; v1++) {
            if (param0[v0].unk_00 == param0[v1].unk_00) {
                return 0;
            }

            if (param0[v0].unk_02 == 0) {
                continue;
            }

            if (param0[v0].unk_02 == param0[v1].unk_02) {
                return 0;
            }
        }
    }

    return 1;
}

static BOOL sub_02049DB4(UnkStruct_02049D38 *param0, int param1, int param2, int param3)
{
    int v0, v1, v2, v3;
    UnkStruct_02049D38 v4[4];

    MI_CpuClear8(v4, sizeof(UnkStruct_02049D38) * 4);

    for (v0 = 0; v0 < param3; v0++) {
        v4[0] = param0[v0];

        for (v1 = v0 + 1; v1 < param2; v1++) {
            v4[1] = param0[v1];

            if (param1 == 2) {
                if (sub_02049D64(v4, param1)) {
                    return 1;
                }

                continue;
            }

            for (v2 = v1 + 1; v2 < param2; v2++) {
                v4[2] = param0[v2];

                if (param1 == 3) {
                    if (sub_02049D64(v4, param1)) {
                        return 1;
                    }

                    continue;
                }

                for (v3 = v2 + 1; v3 < param2; v3++) {
                    v4[3] = param0[v3];

                    if (sub_02049D64(v4, param1)) {
                        return 1;
                    }
                }
            }
        }
    }

    return 0;
}

BOOL sub_02049EC4(u16 param0, SaveData *saveData, u8 param2)
{
    u8 v0, v1, v2, v3;
    u16 v4, v5;
    Party *v6;
    Pokemon *v7;
    UnkStruct_02049D38 v8[6];

    v6 = SaveData_GetParty(saveData);
    v3 = Party_GetCurrentCount(v6);

    if (v3 < param0) {
        return 0;
    }

    for (v0 = 0, v2 = 0; v0 < v3; v0++) {
        v7 = Party_GetPokemonBySlotIndex(v6, v0);
        v4 = Pokemon_GetValue(v7, MON_DATA_SPECIES, NULL);
        v5 = Pokemon_GetValue(v7, MON_DATA_HELD_ITEM, NULL);

        if (param2 == 0) {
            v5 = 0;
        }

        if (Pokemon_GetValue(v7, MON_DATA_IS_EGG, NULL) != 0) {
            continue;
        }

        if (Pokemon_IsOnBattleFrontierBanlist(v4) == 1) {
            continue;
        }

        if (param2 == 1) {
            if (sub_02049D38(v8, v4, v5, v2) == 1) {
                continue;
            }
        }

        v8[v2].unk_00 = v4;
        v8[v2].unk_02 = v5;
        v2++;
    }

    if (v2 < param0) {
        return 0;
    }

    return sub_02049DB4(v8, param0, v2, (v2 - param0) + 1);
}

void BattleTower_ResetSystem(void)
{
    OS_ResetSystem(RESET_CLEAN);
}

void sub_02049F98(UnkStruct_0202D060 *param0)
{
    sub_0202D060(param0);
}

BOOL sub_02049FA0(UnkStruct_0202D060 *param0)
{
    return sub_0202D214(param0);
}

void BattleTower_SetCommunicationClubAccessible(FieldSystem *fieldSystem)
{
    Location *v0 = FieldOverworldState_GetSpecialLocation(SaveData_GetFieldOverworldState(fieldSystem->saveData));

    Location_Set(v0, fieldSystem->location->mapId, -1, Player_GetXPos(fieldSystem->playerAvatar), Player_GetZPos(fieldSystem->playerAvatar), 0);
    SystemFlag_SetCommunicationClubAccessible(SaveData_GetVarsFlags(fieldSystem->saveData));

    return;
}

void BattleTower_ClearCommunicationClubAccessible(FieldSystem *fieldSystem)
{
    SystemFlag_ClearCommunicationClubAccessible(SaveData_GetVarsFlags(fieldSystem->saveData));
}

u16 sub_02049FF8(SaveData *saveData, u16 param1)
{
    u16 v0;

    if (param1 == 5) {
        return 0;
    }

    if (param1 == 6) {
        v0 = sub_02030698(SaveData_GetBattleFrontier(saveData), 113, sub_0205E6A8(113));
        return v0;
    }

    v0 = sub_02030698(SaveData_GetBattleFrontier(saveData), 1 + param1 * 2, 0xff);

    return v0;
}

void sub_0204A030(SaveData *saveData, u8 param1)
{
    UnkStruct_0202D750 *v0 = sub_0202D750(saveData);

    if (param1 == 0) {
        sub_0202D414(v0, 5, 2);
    } else {
        sub_0202D414(v0, 5, 1);
    }
}

u16 sub_0204A050(SaveData *saveData)
{
    UnkStruct_0202D750 *v0 = sub_0202D750(saveData);
    return (u16)sub_0202D414(v0, 5, 0);
}

u16 sub_0204A064(SaveData *saveData)
{
    u8 v0;
    int v1;
    UnkStruct_0202D060 *v2 = sub_0202D740(saveData);
    UnkStruct_0202D750 *v3 = sub_0202D750(saveData);
    v0 = (u8)sub_0202D0BC(v2, 0, NULL);

    if (v0 == 5) {
        return v0;
    }

    if (v0 == 6) {
        sub_020306E4(SaveData_GetBattleFrontier(saveData), 100, sub_0205E6A8(100), 0);
    } else {
        sub_0202D414(v3, 8 + v0, 2);
    }

    sub_0202D3B4(v3, v0, 2);
    sub_020306E4(SaveData_GetBattleFrontier(saveData), sub_0205E750(v0), sub_0205E6A8(sub_0205E750(v0)), 0);

    if ((v0 != 4) && (v0 != 6)) {
        sub_0206C02C(saveData);
    }

    return v0;
}

u16 sub_0204A100(SaveData *saveData)
{
    UnkStruct_0202D764 *v0 = sub_0202D764(saveData);
    return (u16)sub_0202D5E8(v0);
}

void BattleTower_SetNull(BattleTower **battleTower)
{
    GF_ASSERT(*battleTower == NULL);
    *battleTower = NULL;
}

BattleTower *BattleTower_Init(SaveData *saveData, u16 param1, u16 challengeMode)
{
    u8 v0;
    u16 v1, v2;
    BattleTower *battleTower;
    BattleFrontier *frontier;
    GameRecords *v5;

    battleTower = Heap_Alloc(HEAP_ID_FIELD2, sizeof(BattleTower));
    MI_CpuClear8(battleTower, sizeof(BattleTower));

    battleTower->heapID = HEAP_ID_FIELD2;
    battleTower->unk_70 = sub_0202D740(saveData);
    battleTower->unk_74 = sub_0202D750(saveData);
    battleTower->unk_00 = 0x12345678;

    sub_0202D21C(battleTower->unk_70, 0);

    if (param1 == 0) {
        battleTower->challengeMode = challengeMode;
        battleTower->partySize = (u8)BattleTower_GetPartySizeForChallengeMode(battleTower->challengeMode);
        battleTower->nextOpponentNum = 1;
        battleTower->unk_0D = 0;

        for (v1 = 0; v1 < 4; v1++) {
            battleTower->unk_2A[v1] = 0xFF;
        }

        for (v1 = 0; v1 < BT_OPPONENTS_COUNT * 2; v1++) {
            battleTower->trainerIDs[v1] = 0xFFFF;
        }

        sub_0202D060(battleTower->unk_70);
        v0 = battleTower->challengeMode;
        sub_0202D140(battleTower->unk_70, 0, &v0);
    } else {
        battleTower->challengeMode = (u8)sub_0202D0BC(battleTower->unk_70, 0, NULL);
        battleTower->nextOpponentNum = (u8)sub_0202D0BC(battleTower->unk_70, 1, NULL);
        battleTower->unk_0D = battleTower->nextOpponentNum - 1;
        battleTower->partySize = (u8)BattleTower_GetPartySizeForChallengeMode(battleTower->challengeMode);

        sub_0202D0BC(battleTower->unk_70, 5, battleTower->unk_2A);
        sub_0202D0BC(battleTower->unk_70, 8, battleTower->trainerIDs);

        battleTower->unk_08 = sub_0202D0BC(battleTower->unk_70, 10, NULL);

        if (battleTower->challengeMode == BATTLE_TOWER_MODE_MULTI) {
            battleTower->partnerID = (u8)sub_0202D0BC(battleTower->unk_70, 9, NULL);

            sub_0202D0BC(battleTower->unk_70, 6, &(battleTower->unk_7E8[battleTower->partnerID]));
            sub_0204B404(battleTower, &battleTower->partnersDataDTO[battleTower->partnerID], FRONTIER_TRAINER_TRAINER_CHERYL_CHERYL + battleTower->partnerID, sub_0202D0BC(battleTower->unk_70, 7, NULL), &(battleTower->unk_7E8[battleTower->partnerID]), battleTower->heapID);
        }
    }

    battleTower->playerGender = TrainerInfo_Gender(SaveData_GetTrainerInfo(saveData));

    if (battleTower->challengeMode != BATTLE_TOWER_MODE_5) {
        frontier = SaveData_GetBattleFrontier(saveData);
        v5 = SaveData_GetGameRecords(saveData);

        if (battleTower->challengeMode == BATTLE_TOWER_MODE_6) {
            v2 = SystemVars_GetWiFiFrontierCleared(SaveData_GetVarsFlags(saveData));
        } else {
            v2 = sub_0202D414(battleTower->unk_74, 8 + battleTower->challengeMode, 0);
        }

        if (v2) {
            if (battleTower->challengeMode == BATTLE_TOWER_MODE_6) {
                battleTower->unk_1A = sub_02030698(
                    frontier, 113, sub_0205E6A8(113));
            } else {
                battleTower->unk_1A = sub_02030698(
                    frontier, 1 + battleTower->challengeMode * 2, 0xff);
            }

            battleTower->roomNum = sub_0202D3B4(battleTower->unk_74, battleTower->challengeMode, 0);
        }

        battleTower->unk_20 = GameRecords_GetRecordValue(v5, RECORD_UNK_029);
    }

    if (battleTower->challengeMode == BATTLE_TOWER_MODE_6) {
        battleTower->roomNum = sub_0202D3FC(battleTower->unk_74, BATTLE_TOWER_MODE_6, battleTower->unk_1A / 7);
    }

    return battleTower;
}

void BattleTower_Free(BattleTower *battleTower)
{
    if (battleTower == NULL) {
        return;
    }

    GF_ASSERT(battleTower->unk_00 == 0x12345678);

    MI_CpuClear8(battleTower, sizeof(BattleTower));
    Heap_Free(battleTower);

    battleTower = NULL;
}

void sub_0204A358(BattleTower *battleTower, FieldTask *param1, void **param2)
{
    sub_0206BBFC(param1, param2, 17, 0, battleTower->partySize, battleTower->partySize, 100, 0);
}

BOOL sub_0204A378(BattleTower *battleTower, void **param1, SaveData *saveData)
{
    u16 v0 = 0;
    PartyMenu *partyMenu = *param1;
    Party *v2;
    Pokemon *v3;

    if ((partyMenu->menuSelectionResult != 0) || (partyMenu->selectedMonSlot == 7)) {
        Heap_Free(*param1);
        *param1 = NULL;
        return 0;
    }

    v2 = SaveData_GetParty(saveData);

    for (v0 = 0; v0 < battleTower->partySize; v0++) {
        battleTower->unk_2A[v0] = partyMenu->selectionOrder[v0] - 1;
        v3 = Party_GetPokemonBySlotIndex(v2, battleTower->unk_2A[v0]);
        battleTower->unk_2E[v0] = Pokemon_GetValue(v3, MON_DATA_SPECIES, NULL);
        battleTower->unk_36[v0] = Pokemon_GetValue(v3, MON_DATA_HELD_ITEM, NULL);
    }

    Heap_Free(*param1);
    *param1 = NULL;
    return 1;
}

int BattleTower_CheckDuplicateSpeciesAndHeldItems(BattleTower *battleTower, SaveData *saveData)
{
    u16 i = 0, j = 0;
    u16 species[4], heldItems[4];
    Party *party = SaveData_GetParty(saveData);

    for (i = 0; i < battleTower->partySize; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(party, battleTower->unk_2A[i]);
        species[i] = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
        heldItems[i] = Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL);

        if (i == 0) {
            continue;
        }

        for (j = 0; j < i; j++) {
            if (species[i] == species[j]) {
                return 1;
            }

            if (heldItems[i] != 0 && heldItems[i] == heldItems[j]) {
                return 2;
            }
        }
    }

    return 0;
}

static BOOL BattleTower_IsTrainerAlreadyUsed(u16 *trainerIDs, u16 trainerID, u16 currOpponentNum)
{
    u16 opponentNum;

    for (opponentNum = 0; opponentNum < currOpponentNum; opponentNum++) {
        if (trainerIDs[opponentNum] == trainerID) {
            return TRUE;
        }
    }

    return FALSE;
}

void sub_0204A4C8(BattleTower *battleTower, SaveData *saveData)
{
    int opponentNum;
    u16 trainerID, roomNum;

    if (battleTower->challengeMode == BATTLE_TOWER_MODE_MULTI || battleTower->challengeMode == BATTLE_TOWER_MODE_6 || battleTower->challengeMode == BATTLE_TOWER_MODE_LINK_MULTI) {
        if ((battleTower->challengeMode == BATTLE_TOWER_MODE_LINK_MULTI && battleTower->unk_14 > battleTower->roomNum) || (battleTower->challengeMode == BATTLE_TOWER_MODE_6 && battleTower->unk_14 > battleTower->roomNum)) {
            roomNum = battleTower->unk_14;
        } else {
            roomNum = battleTower->roomNum;
        }

        for (opponentNum = 0; opponentNum < BT_OPPONENTS_COUNT * 2; opponentNum++) {
            do {
                trainerID = BattleTower_GetTrainerIDForRoomAndOpponentNum(battleTower, roomNum, opponentNum / 2, battleTower->challengeMode);
            } while (BattleTower_IsTrainerAlreadyUsed(battleTower->trainerIDs, trainerID, opponentNum));

            battleTower->trainerIDs[opponentNum] = trainerID;
        }
    } else {
        for (opponentNum = 0; opponentNum < BT_OPPONENTS_COUNT; opponentNum++) {
            do {
                trainerID = BattleTower_GetTrainerIDForRoomAndOpponentNum(battleTower, battleTower->roomNum, opponentNum, battleTower->challengeMode);
            } while (BattleTower_IsTrainerAlreadyUsed(battleTower->trainerIDs, trainerID, opponentNum));

            battleTower->trainerIDs[opponentNum] = trainerID;
        }
    }
}

u16 BattleTower_GetNextOpponentNum(BattleTower *battleTower)
{
    return battleTower->nextOpponentNum;
}

BOOL BattleTower_HasDefeatedSevenTrainers(BattleTower *battleTower)
{
    if (battleTower->defeatedSevenTrainers) {
        return TRUE;
    }

    if (battleTower->nextOpponentNum > 7) {
        battleTower->defeatedSevenTrainers = TRUE;
        return TRUE;
    }

    return FALSE;
}

static void sub_0204A5A0(BattleTower *battleTower, SaveData *saveData, u16 param2)
{
    Party *v0;

    if (battleTower->challengeMode != BATTLE_TOWER_MODE_SINGLE && battleTower->challengeMode != BATTLE_TOWER_MODE_DOUBLE) {
        return;
    }

    v0 = SaveData_GetParty(saveData);

    if (battleTower->challengeMode == BATTLE_TOWER_MODE_SINGLE) {
        sub_0206DBB0(saveData, param2, Party_GetPokemonBySlotIndex(v0, battleTower->unk_2A[0]), 1);
    } else {
        sub_0206DBB0(saveData, param2, Party_GetPokemonBySlotIndex(v0, battleTower->unk_2A[0]), 0);
    }
}

static void sub_0204A5EC(BattleTower *battleTower, SaveData *saveData, u8 param2, u16 param3)
{
    u8 v0;

    switch (battleTower->challengeMode) {
    case BATTLE_TOWER_MODE_SINGLE:
        sub_0204AE20(battleTower, saveData, 0);
    case BATTLE_TOWER_MODE_DOUBLE:
        if (param3 >= 7) {
            sub_0206CFE4(SaveData_GetTVBroadcast(saveData), param2, param3);
        }
        break;
    case BATTLE_TOWER_MODE_WIFI:
        sub_0204AE20(battleTower, saveData, 1);
        sub_0202D1E8(battleTower->unk_70, battleTower->unk_28, battleTower->unk_24, battleTower->unk_26);

        v0 = battleTower->challengeMode;
        sub_0202D140(battleTower->unk_70, 0, &v0);

        v0 = battleTower->nextOpponentNum;
        sub_0202D140(battleTower->unk_70, 1, &v0);
        sub_0202D334(battleTower->unk_74, battleTower->unk_70);
        break;
    default:
        break;
    }
}

void BattleTower_UpdateGameRecords(BattleTower *battleTower, SaveData *saveData)
{
    u32 v0 = 0;
    int v1;
    u16 v2, v3, v4;
    GameRecords *v5 = SaveData_GetGameRecords(saveData);
    BattleFrontier *frontier = SaveData_GetBattleFrontier(saveData);

    if (battleTower->challengeMode == BATTLE_TOWER_MODE_5) {
        return;
    }

    if (battleTower->challengeMode == BATTLE_TOWER_MODE_6) {
        v1 = 112;
    } else {
        v1 = battleTower->challengeMode * 2;
    }

    v2 = sub_02030698(frontier, v1, sub_0205E6A8(v1));
    v3 = sub_02030848(frontier, v1, sub_0205E6A8(v1), battleTower->unk_1A + battleTower->unk_0D);

    if (v3 > 1) {
        if (v2 < v3 || (v2 == v3 && v3 % 7 == 0)) {
            sub_0204A5A0(battleTower, saveData, v3);
        }
    }

    if (battleTower->challengeMode == BATTLE_TOWER_MODE_6) {
        v4 = sub_02030698(SaveData_GetBattleFrontier(saveData), 100, sub_0205E6A8(100));
    } else {
        v4 = sub_0202D414(battleTower->unk_74, 8 + battleTower->challengeMode, 0);
    }

    v0 = sub_020306E4(frontier, v1 + 1, sub_0205E6A8(v1 + 1), battleTower->unk_1A + battleTower->unk_0D);

    if (battleTower->challengeMode == BATTLE_TOWER_MODE_6) {
        sub_020306E4(SaveData_GetBattleFrontier(saveData), 100, sub_0205E6A8(100), 0);
    } else {
        sub_0202D414(battleTower->unk_74, 8 + battleTower->challengeMode, 2);
    }

    GameRecords_AddToRecordValue(v5, RECORD_UNK_029, battleTower->unk_0D);
    sub_0202D3B4(battleTower->unk_74, battleTower->challengeMode, 2);

    if (battleTower->challengeMode != BATTLE_TOWER_MODE_6) {
        GameRecords_AddToRecordValue(SaveData_GetGameRecords(saveData), RECORD_UNK_015, 1);
    }

    sub_0204ACC8(battleTower);

    v0 += 1;

    if (v0 > 9999) {
        v0 = 9999;
    }

    sub_0204A5EC(battleTower, saveData, 0, v0);
}

void BattleTower_UpdateGameRecordsAndJournal(BattleTower *battleTower, SaveData *saveData, JournalEntry *journalEntry)
{
    u32 v0 = 0;
    int v1;
    void *journalEntryOnlineEvent;
    u16 v3, v4, v5;
    GameRecords *v6;
    BattleFrontier *frontier;

    if (battleTower->challengeMode == BATTLE_TOWER_MODE_5) {
        return;
    }

    v6 = SaveData_GetGameRecords(saveData);
    frontier = SaveData_GetBattleFrontier(saveData);

    if (battleTower->challengeMode == BATTLE_TOWER_MODE_6) {
        v1 = 112;
    } else {
        v1 = battleTower->challengeMode * 2;
    }

    if (battleTower->challengeMode == BATTLE_TOWER_MODE_6) {
        v5 = sub_02030698(SaveData_GetBattleFrontier(saveData), 100, sub_0205E6A8(100));
    } else {
        v5 = sub_0202D414(battleTower->unk_74, 8 + battleTower->challengeMode, 0);
    }

    v0 = sub_020306E4(frontier, v1 + 1, sub_0205E6A8(v1 + 1), battleTower->unk_1A + battleTower->unk_0D);

    if (battleTower->challengeMode == BATTLE_TOWER_MODE_6) {
        sub_020306E4(SaveData_GetBattleFrontier(saveData), 100, sub_0205E6A8(100), 1);
    } else {
        sub_0202D414(battleTower->unk_74, 8 + battleTower->challengeMode, 1);
    }

    v3 = sub_02030698(frontier, v1, sub_0205E6A8(v1));
    v4 = sub_02030848(frontier, v1, sub_0205E6A8(v1), v0);

    GameRecords_AddToRecordValue(v6, RECORD_UNK_029, 7);
    sub_0202D3B4(battleTower->unk_74, battleTower->challengeMode, 3);

    if (battleTower->challengeMode != BATTLE_TOWER_MODE_6) {
        GameRecords_AddToRecordValue(v6, RECORD_UNK_015, 1);
    }

    GameRecords_IncrementTrainerScore(v6, TRAINER_SCORE_EVENT_UNK_14);
    sub_0204ACC8(battleTower);
    sub_0204A5EC(battleTower, saveData, 1, v0);

    if (battleTower->challengeMode == BATTLE_TOWER_MODE_WIFI) {
        journalEntryOnlineEvent = JournalEntry_CreateEventBattleRoom(battleTower->heapID);
        JournalEntry_SaveData(journalEntry, journalEntryOnlineEvent, JOURNAL_ONLINE_EVENT);
    }
}

void sub_0204A8C8(BattleTower *battleTower)
{
    u16 v0;
    u8 v1[4];

    v1[0] = battleTower->challengeMode;
    sub_0202D140(battleTower->unk_70, 0, v1);

    v1[0] = battleTower->nextOpponentNum;
    sub_0202D140(battleTower->unk_70, 1, v1);

    sub_0202D140(battleTower->unk_70, 5, battleTower->unk_2A);
    sub_0202D1E8(battleTower->unk_70, battleTower->unk_28, battleTower->unk_24, battleTower->unk_26);
    sub_0202D140(battleTower->unk_70, 8, battleTower->trainerIDs);
    sub_0202D140(battleTower->unk_70, 10, &(battleTower->unk_08));
    sub_0202D21C(battleTower->unk_70, 1);

    if (battleTower->challengeMode != BATTLE_TOWER_MODE_MULTI) {
        return;
    }

    v1[0] = battleTower->partnerID;
    sub_0202D140(battleTower->unk_70, 9, v1);

    sub_0202D140(battleTower->unk_70, 6, &(battleTower->unk_7E8[battleTower->partnerID]));
    sub_0202D140(battleTower->unk_70, 7, &(battleTower->unk_838[battleTower->partnerID]));
}

void sub_0204A97C(BattleTower *battleTower)
{
    for (int partnerID = 0; partnerID < BT_PARTNERS_COUNT; partnerID++) {
        battleTower->unk_838[partnerID] = (u8)sub_0204B3B8(battleTower, &(battleTower->partnersDataDTO[partnerID]), FRONTIER_TRAINER_TRAINER_CHERYL_CHERYL + partnerID, battleTower->partySize, battleTower->unk_2E, battleTower->unk_36, &(battleTower->unk_7E8[partnerID]), battleTower->heapID);
    }
}

u16 BattleTower_GetObjectIDFromOpponentID(BattleTower *battleTower, u16 opponentID)
{
    return BattleFrontier_GetObjectIDFromTrainerClass(battleTower->opponentsDataDTO[opponentID].trDataDTO.trainerType);
}

u16 BattleTower_GetChallengeMode(BattleTower *battleTower)
{
    return battleTower->challengeMode;
}

u16 sub_0204A9FC(BattleTower *battleTower)
{
    return (u16)battleTower->unk_10_1;
}

u16 sub_0204AA04(BattleTower *battleTower)
{
    u16 v0;
    u16 v1 = 0;
    static const u8 v2[] = { 0, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10 };
    static const u8 v3[] = { 0, 3, 3, 4, 4, 5, 5, 7 };
    static const u8 v4[] = { 0, 8, 9, 11, 12, 14, 15, 18 };

    if (battleTower->challengeMode == BATTLE_TOWER_MODE_5) {
        return 0;
    }

    if (battleTower->challengeMode == BATTLE_TOWER_MODE_WIFI) {
        v1 = v2[sub_0202D2C0(battleTower->unk_74, 0)];
    } else {
        if (battleTower->challengeMode == BATTLE_TOWER_MODE_LINK_MULTI || battleTower->challengeMode == BATTLE_TOWER_MODE_6) {
            v0 = sub_0202D3B4(battleTower->unk_74, battleTower->challengeMode, 0);

            if (v0 >= 7) {
                v1 = 18;
            } else {
                v1 = v4[v0];
            }
        } else {
            v0 = sub_0202D3B4(battleTower->unk_74, battleTower->challengeMode, 0);

            if (battleTower->unk_10_1) {
                v1 = 20;
            } else if (v0 >= 7) {
                v1 = 7;
            } else {
                v1 = v3[v0];
            }
        }
    }

    sub_0202D230(battleTower->unk_74, v1, 5);
    return v1;
}

u16 sub_0204AA7C(BattleTower *battleTower, SaveData *saveData)
{
    u8 v0, v1;
    u16 v2, v3, v4;

    v2 = sub_02049FF8(saveData, battleTower->challengeMode);

    if (v2 < 50) {
        return 0;
    }

    if (v2 >= 100) {
        if (sub_0202D414(battleTower->unk_74, 1, 0)) {
            return 0;
        }
    } else {
        if (sub_0202D414(battleTower->unk_74, 0, 0)) {
            return 0;
        }
    }

    return 1;
}

u16 sub_0204AABC(BattleTower *battleTower, SaveData *saveData, u8 param2)
{
    u8 v0, v1;
    UnkStruct_0202D750 *v2 = sub_0202D750(saveData);
    static const u8 v3[] = {
        0,
        5,
        4,
        4,
        3,
        3,
        2,
        2,
        1,
        1,
    };

    switch (param2) {
    case 0:
        return (u16)sub_0202D2C0(v2, 0);
    case 1:
        sub_0202D414(v2, 4, 2);
        v1 = sub_0202D2C0(v2, 0);

        if (v1 == 10) {
            battleTower->unk_10_4 = 1;
            return 0;
        }

        sub_0202D2C0(v2, 3);

        if (v1 + 1 >= 5) {
            battleTower->unk_10_4 = 1;
        }

        return 1;
    case 2:
        v0 = sub_0202D288(v2, 3);
        v1 = sub_0202D2C0(v2, 0);

        if (v1 == 1) {
            return 0;
        }

        if (v0 >= v3[v1 - 1]) {
            sub_0202D2C0(v2, 4);
            sub_0202D288(v2, 2);
            sub_0202D414(v2, 4, 2);

            return 1;
        }

        return 0;
    }

    return 0;
}

u16 sub_0204AB68(BattleTower *battleTower, SaveData *saveData)
{
    if (battleTower->challengeMode != BATTLE_TOWER_MODE_SINGLE) {
        return 0;
    }

    switch (battleTower->unk_10_1) {
    case 1:
        return sub_0204AC54(saveData, MON_DATA_ABILITY_RIBBON, battleTower);
    case 2:
        return sub_0204AC54(saveData, MON_DATA_GREAT_ABILITY_RIBBON, battleTower);
    }

    return 0;
}

u16 sub_0204ABA0(BattleTower *battleTower, SaveData *saveData)
{
    enum PokemonDataParam param;

    if (battleTower->challengeMode == BATTLE_TOWER_MODE_5) {
        return 0;
    }

    if (battleTower->challengeMode == BATTLE_TOWER_MODE_6) {
        return 0;
    }

    if (!battleTower->unk_10_4) {
        return 0;
    }

    switch (battleTower->challengeMode) {
    case BATTLE_TOWER_MODE_DOUBLE:
        param = MON_DATA_DOUBLE_ABILITY_RIBBON;
        break;
    case BATTLE_TOWER_MODE_MULTI:
        param = MON_DATA_MULTI_ABILITY_RIBBON;
        break;
    case BATTLE_TOWER_MODE_LINK_MULTI:
        param = MON_DATA_PAIR_ABILITY_RIBBON;
        break;
    case BATTLE_TOWER_MODE_WIFI:
        param = MON_DATA_WORLD_ABILITY_RIBBON;
        break;
    }

    return sub_0204AC54(saveData, param, battleTower);
}

u16 sub_0204ABF4(BattleTower *battleTower, SaveData *saveData)
{
    u8 v0;

    if (battleTower->challengeMode == BATTLE_TOWER_MODE_6) {
        v0 = sub_02030698(SaveData_GetBattleFrontier(saveData), 100, sub_0205E6A8(100));
    } else {
        v0 = sub_0202D414(battleTower->unk_74, 8 + battleTower->challengeMode, 0);
    }

    if (!v0) {
        battleTower->unk_08 = sub_0206C02C(saveData);
    } else {
        battleTower->unk_08 = sub_0206C068(saveData);
    }

    return battleTower->unk_08 / 65535;
}

static u16 sub_0204AC54(SaveData *saveData, enum PokemonDataParam param, BattleTower *battleTower)
{
    u8 v0 = 1;
    u8 v1;
    int v2;
    Party *v3;
    Pokemon *v4;

    v3 = SaveData_GetParty(saveData);
    v1 = 0;

    for (v2 = 0; v2 < battleTower->partySize; v2++) {
        v4 = Party_GetPokemonBySlotIndex(v3, battleTower->unk_2A[v2]);

        if (Pokemon_GetValue(v4, param, NULL)) {
            continue;
        }

        Pokemon_SetValue(v4, param, &v0);
        sub_0206DDB8(saveData, v4, param);
        ++v1;
    }

    if (v1 == 0) {
        return 0;
    }

    return 1;
}

static u16 sub_0204ACC8(BattleTower *battleTower)
{
    u16 v0;

    if (battleTower->challengeMode == BATTLE_TOWER_MODE_5 || battleTower->challengeMode == BATTLE_TOWER_MODE_SINGLE || battleTower->challengeMode == BATTLE_TOWER_MODE_6 || battleTower->challengeMode == BATTLE_TOWER_MODE_WIFI) {
        return 0;
    }

    v0 = battleTower->unk_1A + battleTower->unk_0D;

    if (v0 < 50) {
        return 0;
    }

    battleTower->unk_10_4 = 1;
    return 1;
}

static void sub_0204ACFC(FrontierPokemonDataDTO *param0, Pokemon *mon)
{
    int v0;

    param0->species = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
    param0->form = Pokemon_GetValue(mon, MON_DATA_FORM, NULL);
    param0->item = Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL);

    for (v0 = 0; v0 < LEARNED_MOVES_MAX; v0++) {
        param0->moves[v0] = Pokemon_GetValue(mon, MON_DATA_MOVE1 + v0, NULL);
        param0->combinedPPUps |= ((Pokemon_GetValue(mon, MON_DATA_MOVE1_PP_UPS + v0, NULL)) << (v0 * 2));
    }

    param0->language = Pokemon_GetValue(mon, MON_DATA_LANGUAGE, NULL);
    param0->otID = Pokemon_GetValue(mon, MON_DATA_OT_ID, NULL);
    param0->personality = Pokemon_GetValue(mon, MON_DATA_PERSONALITY, NULL);
    param0->combinedIVs = Pokemon_GetValue(mon, MON_DATA_COMBINED_IVS, NULL);

    for (v0 = 0; v0 < 6; v0++) {
        param0->evList[v0] = Pokemon_GetValue(mon, MON_DATA_HP_EV + v0, NULL);
    }

    param0->ability = Pokemon_GetValue(mon, MON_DATA_ABILITY, NULL);
    param0->friendship = Pokemon_GetValue(mon, MON_DATA_FRIENDSHIP, NULL);

    Pokemon_GetValue(mon, MON_DATA_NICKNAME, param0->nickname);
}

static void sub_0204AE20(BattleTower *battleTower, SaveData *saveData, int param2)
{
    FrontierPokemonDataDTO *v1 = Heap_AllocAtEnd(battleTower->heapID, sizeof(FrontierPokemonDataDTO) * 3);
    MI_CpuClear8(v1, sizeof(FrontierPokemonDataDTO) * 3);
    Party *party = SaveData_GetParty(saveData);

    for (int i = 0; i < 3; i++) {
        sub_0204ACFC(&(v1[i]), Party_GetPokemonBySlotIndex(party, battleTower->unk_2A[i]));
    }

    sub_0202D2F0(battleTower->unk_74, param2, v1);
    MI_CpuClear8(v1, sizeof(FrontierPokemonDataDTO) * 3);
    Heap_Free(v1);
}

u8 BattleTower_GetIVsFromTrainerID(u16 battleTowerID)
{
    u8 ivs;

    if (battleTowerID < 100) {
        ivs = MAX_IVS_SINGLE_STAT / 8 * 1;
    } else if (battleTowerID < 120) {
        ivs = MAX_IVS_SINGLE_STAT / 8 * 2;
    } else if (battleTowerID < 140) {
        ivs = MAX_IVS_SINGLE_STAT / 8 * 3;
    } else if (battleTowerID < 160) {
        ivs = MAX_IVS_SINGLE_STAT / 8 * 4;
    } else if (battleTowerID < 180) {
        ivs = MAX_IVS_SINGLE_STAT / 8 * 5;
    } else if (battleTowerID < 200) {
        ivs = MAX_IVS_SINGLE_STAT / 8 * 6;
    } else if (battleTowerID < 220) {
        ivs = MAX_IVS_SINGLE_STAT / 8 * 7;
    } else {
        ivs = MAX_IVS_SINGLE_STAT;
    }

    return ivs;
}

u16 BattleTower_GetRandom(BattleTower *battleTower)
{
    if (battleTower->challengeMode == BATTLE_TOWER_MODE_6) {
        return LCRNG_Next();
    }

    battleTower->unk_08 = sub_0206BFF0(battleTower->unk_08);
    return battleTower->unk_08 / 65535;
}
