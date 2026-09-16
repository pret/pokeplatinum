#include "battle_tower.h"

#include <nitro.h>

#include "constants/battle_tower.h"
#include "generated/battle_tower_modes.h"
#include "generated/frontier_trainers.h"
#include "generated/game_records.h"
#include "generated/trainer_score_events.h"

#include "struct_defs/battle_frontier.h"
#include "struct_defs/battle_tower.h"
#include "struct_defs/wifi_battle_tower_data.h"

#include "applications/party_menu/defs.h"
#include "field/field_system.h"
#include "savedata/save_table.h"

#include "battle_frontier_save.h"
#include "battle_frontier_stats.h"
#include "battle_tower_save.h"
#include "battle_tower_trainers.h"
#include "field_overworld_state.h"
#include "field_task.h"
#include "game_records.h"
#include "heap.h"
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
#include "tv_segment.h"
#include "unk_0206B9D8.h"
#include "vars_flags.h"

typedef struct {
    u16 species;
    u16 item;
} BattleFrontierEligibleMon;

static u16 GiveRibbonToPartyMembers(SaveData *saveData, enum PokemonDataParam param, BattleTower *battleTower);
static u16 CheckIfRibbonsEarned(BattleTower *battleTower);
static void SaveTeamToTowerRecord(BattleTower *battleTower, SaveData *saveData, int param2);

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

static BOOL CheckIfItemIsAlreadyUsed(BattleFrontierEligibleMon *param0, u16 species, u16 item, int count)
{
    for (int i = 0; i < count; i++) {
        if (param0[i].species == species) {
            if (item == ITEM_NONE) {
                continue;
            }

            if (param0[i].item == item) {
                return TRUE;
            }
        }
    }

    return FALSE;
}

static BOOL CheckThatMonsAreAllUnique(BattleFrontierEligibleMon *mons, int numNeeded)
{
    for (int i = 0; i < numNeeded - 1; i++) {
        for (int j = i + 1; j < numNeeded; j++) {
            if (mons[i].species == mons[j].species) {
                return FALSE;
            }

            if (mons[i].item == ITEM_NONE) {
                continue;
            }

            if (mons[i].item == mons[j].item) {
                return FALSE;
            }
        }
    }

    return TRUE;
}

static BOOL CheckForValidPartySubset(BattleFrontierEligibleMon *eligibleMons, int numNeeded, int numEligible, int firstCount)
{
    BattleFrontierEligibleMon subset[4];

    MI_CpuClear8(subset, sizeof(BattleFrontierEligibleMon) * 4);

    for (int i = 0; i < firstCount; i++) {
        subset[0] = eligibleMons[i];

        for (int j = i + 1; j < numEligible; j++) {
            subset[1] = eligibleMons[j];

            if (numNeeded == 2) {
                if (CheckThatMonsAreAllUnique(subset, numNeeded)) {
                    return TRUE;
                }

                continue;
            }

            for (int k = j + 1; k < numEligible; k++) {
                subset[2] = eligibleMons[k];

                if (numNeeded == 3) {
                    if (CheckThatMonsAreAllUnique(subset, numNeeded)) {
                        return TRUE;
                    }

                    continue;
                }

                for (int m = k + 1; m < numEligible; m++) {
                    subset[3] = eligibleMons[m];

                    if (CheckThatMonsAreAllUnique(subset, numNeeded)) {
                        return TRUE;
                    }
                }
            }
        }
    }

    return FALSE;
}

BOOL BattleTower_CheckIfPartyIsEligible(u16 numMonsNeeded, SaveData *saveData, u8 checkItems)
{
    u8 i, numVerified, partySize;
    BattleFrontierEligibleMon verifiedMons[MAX_PARTY_SIZE];

    Party *party = SaveData_GetParty(saveData);
    partySize = Party_GetCurrentCount(party);

    if (partySize < numMonsNeeded) {
        return 0;
    }

    for (i = 0, numVerified = 0; i < partySize; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(party, i);
        u16 species = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
        u16 item = Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL);

        if (!checkItems) {
            item = ITEM_NONE;
        }

        if (Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL) != FALSE) {
            continue;
        }

        if (Pokemon_IsOnBattleFrontierBanlist(species) == TRUE) {
            continue;
        }

        if (checkItems == TRUE) {
            if (CheckIfItemIsAlreadyUsed(verifiedMons, species, item, numVerified) == TRUE) {
                continue;
            }
        }

        verifiedMons[numVerified].species = species;
        verifiedMons[numVerified].item = item;
        numVerified++;
    }

    if (numVerified < numMonsNeeded) {
        return FALSE;
    }

    return CheckForValidPartySubset(verifiedMons, numMonsNeeded, numVerified, numVerified - numMonsNeeded + 1);
}

void BattleTower_ResetSystem(void)
{
    OS_ResetSystem(RESET_CLEAN);
}

void BattleTower_ClearSave(BattleTowerSave *save)
{
    BattleTowerSave_Init(save);
}

BOOL BattleTower_CheckRunInProgress(BattleTowerSave *save)
{
    return BattleTowerSave_HasSaved(save);
}

void BattleTower_SetCommunicationClubAccessible(FieldSystem *fieldSystem)
{
    Location *location = FieldOverworldState_GetSpecialLocation(SaveData_GetFieldOverworldState(fieldSystem->saveData));

    Location_Set(location, fieldSystem->location->mapHeaderID, -1, PlayerAvatar_GetXPos(fieldSystem->playerAvatar), PlayerAvatar_GetZPos(fieldSystem->playerAvatar), 0);
    SystemFlag_SetCommunicationClubAccessible(SaveData_GetVarsFlags(fieldSystem->saveData));
}

void BattleTower_ClearCommunicationClubAccessible(FieldSystem *fieldSystem)
{
    SystemFlag_ClearCommunicationClubAccessible(SaveData_GetVarsFlags(fieldSystem->saveData));
}

u16 BattleTower_GetLatestStreak(SaveData *saveData, u16 challengeMode)
{
    if (challengeMode == BATTLE_TOWER_MODE_5) {
        return 0;
    }

    if (challengeMode == BATTLE_TOWER_MODE_6) {
        return BattleFrontierSave_GetStatAutoHostIdx(SaveData_GetBattleFrontier(saveData), STAT_TOWER_LATEST_STREAK_MODE_6);
    }

    return BattleFrontierSave_GetStat(SaveData_GetBattleFrontier(saveData), 1 + challengeMode * 2, 0xff);
}

void sub_0204A030(SaveData *saveData, u8 set)
{
    WifiBattleTowerRecord *record = SaveData_GetWifiBattleTowerRecord(saveData);

    if (set == FALSE) {
        WifiBattleTowerRecord_UpdateBitFlag(record, 5, 2);
    } else {
        WifiBattleTowerRecord_UpdateBitFlag(record, 5, 1);
    }
}

u16 sub_0204A050(SaveData *saveData)
{
    WifiBattleTowerRecord *record = SaveData_GetWifiBattleTowerRecord(saveData);
    return WifiBattleTowerRecord_UpdateBitFlag(record, 5, 0);
}

u16 sub_0204A064(SaveData *saveData)
{
    BattleTowerSave *save = SaveData_GetBattleTowerSave(saveData);
    WifiBattleTowerRecord *record = SaveData_GetWifiBattleTowerRecord(saveData);
    u8 challengeMode = BattleTowerSave_GetField(save, BT_WIFI_SAVE_FIELD_CHALLENGE_MODE, NULL);

    if (challengeMode == BATTLE_TOWER_MODE_5) {
        return challengeMode;
    }

    if (challengeMode == BATTLE_TOWER_MODE_6) {
        BattleFrontierSave_SetStatAutoHostIdx(SaveData_GetBattleFrontier(saveData), STAT_TOWER_WFC_STREAK_ACTIVE, 0);
    } else {
        WifiBattleTowerRecord_UpdateBitFlag(record, 8 + challengeMode, 2);
    }

    WifiBattleTowerRecord_UpdateRoomNum(record, challengeMode, 2);
    BattleFrontierSave_SetStatAutoHostIdx(SaveData_GetBattleFrontier(saveData), BattleFrontierStats_GetTowerLatestStreakIndex(challengeMode), 0);

    if (challengeMode != BATTLE_TOWER_MODE_WIFI && challengeMode != BATTLE_TOWER_MODE_6) {
        sub_0206C02C(saveData);
    }

    return challengeMode;
}

u16 BattleTower_CheckHaveWifiDownloadData(SaveData *saveData)
{
    WifiBattleTowerDownloadData *data = SaveData_GetWifiBattleTowerDownloadData(saveData);
    return WifiBattleTowerDownloadData_HasOpponentData(data);
}

void BattleTower_SetNull(BattleTower **battleTower)
{
    GF_ASSERT(*battleTower == NULL);
    *battleTower = NULL;
}

BattleTower *BattleTower_Init(SaveData *saveData, u16 resumingFromSave, u16 challengeMode)
{
    BattleTower *battleTower = Heap_Alloc(HEAP_ID_FIELD2, sizeof(BattleTower));
    MI_CpuClear8(battleTower, sizeof(BattleTower));

    battleTower->heapID = HEAP_ID_FIELD2;
    battleTower->towerSave = SaveData_GetBattleTowerSave(saveData);
    battleTower->wifiRecord = SaveData_GetWifiBattleTowerRecord(saveData);
    battleTower->sentinel = 0x12345678;

    BattleTowerSave_RecordSave(battleTower->towerSave, FALSE);

    if (!resumingFromSave) {
        battleTower->challengeMode = challengeMode;
        battleTower->partySize = BattleTower_GetPartySizeForChallengeMode(battleTower->challengeMode);
        battleTower->nextOpponentNum = 1;
        battleTower->currentBattle = 0;

        for (u16 i = 0; i < 4; i++) {
            battleTower->partySlots[i] = 0xFF;
        }

        for (u16 i = 0; i < TOWER_BATTLES_PER_ROUND * 2; i++) {
            battleTower->trainerIDs[i] = 0xFFFF;
        }

        BattleTowerSave_Init(battleTower->towerSave);
        u8 challengeMode = battleTower->challengeMode;
        BattleTowerSave_SetField(battleTower->towerSave, BT_WIFI_SAVE_FIELD_CHALLENGE_MODE, &challengeMode);
    } else {
        battleTower->challengeMode = BattleTowerSave_GetField(battleTower->towerSave, BT_WIFI_SAVE_FIELD_CHALLENGE_MODE, NULL);
        battleTower->nextOpponentNum = BattleTowerSave_GetField(battleTower->towerSave, BT_WIFI_SAVE_FIELD_NEXT_OPPONENT_NUM, NULL);
        battleTower->currentBattle = battleTower->nextOpponentNum - 1;
        battleTower->partySize = BattleTower_GetPartySizeForChallengeMode(battleTower->challengeMode);

        BattleTowerSave_GetField(battleTower->towerSave, BT_WIFI_SAVE_FIELD_PARTY_SLOTS, battleTower->partySlots);
        BattleTowerSave_GetField(battleTower->towerSave, BT_WIFI_SAVE_FIELD_TRAINER_IDS, battleTower->trainerIDs);

        battleTower->rng = BattleTowerSave_GetField(battleTower->towerSave, BT_WIFI_SAVE_FIELD_RNG_SEED, NULL);

        if (battleTower->challengeMode == BATTLE_TOWER_MODE_MULTI) {
            battleTower->partnerID = BattleTowerSave_GetField(battleTower->towerSave, BT_WIFI_SAVE_FIELD_PARTNER_ID, NULL);

            BattleTowerSave_GetField(battleTower->towerSave, BT_WIFI_SAVE_FIELD_PARTNER_DATA, &battleTower->unk_7E8[battleTower->partnerID]);
            BattleTower_RestoreStatTrainer(battleTower, &battleTower->partners[battleTower->partnerID], FRONTIER_TRAINER_TRAINER_CHERYL_CHERYL + battleTower->partnerID, BattleTowerSave_GetField(battleTower->towerSave, BT_WIFI_SAVE_FIELD_UNK_00_0, NULL), &battleTower->unk_7E8[battleTower->partnerID], battleTower->heapID);
        }
    }

    battleTower->playerGender = TrainerInfo_Gender(SaveData_GetTrainerInfo(saveData));

    if (battleTower->challengeMode != BATTLE_TOWER_MODE_5) {
        BattleFrontierSave *frontier = SaveData_GetBattleFrontier(saveData);
        GameRecords *records = SaveData_GetGameRecords(saveData);

        u16 streakActive;
        if (battleTower->challengeMode == BATTLE_TOWER_MODE_6) {
            streakActive = SystemVars_GetWiFiFrontierCleared(SaveData_GetVarsFlags(saveData));
        } else {
            streakActive = WifiBattleTowerRecord_UpdateBitFlag(battleTower->wifiRecord, 8 + battleTower->challengeMode, 0);
        }

        if (streakActive) {
            if (battleTower->challengeMode == BATTLE_TOWER_MODE_6) {
                battleTower->startingStreak = BattleFrontierSave_GetStatAutoHostIdx(frontier, STAT_TOWER_LATEST_STREAK_MODE_6);
            } else {
                battleTower->startingStreak = BattleFrontierSave_GetStat(
                    frontier, 1 + battleTower->challengeMode * 2, 0xff);
            }

            battleTower->roomNum = WifiBattleTowerRecord_UpdateRoomNum(battleTower->wifiRecord, battleTower->challengeMode, 0);
        }

        battleTower->victoryRecord = GameRecords_GetRecordValue(records, RECORD_BATTLE_TOWER_VICTORIES);
    }

    if (battleTower->challengeMode == BATTLE_TOWER_MODE_6) {
        battleTower->roomNum = WifiBattleTowerRecord_SetRoomNum(battleTower->wifiRecord, BATTLE_TOWER_MODE_6, battleTower->startingStreak / TOWER_BATTLES_PER_ROUND);
    }

    return battleTower;
}

void BattleTower_Free(BattleTower *battleTower)
{
    if (battleTower == NULL) {
        return;
    }

    GF_ASSERT(battleTower->sentinel == 0x12345678);

    MI_CpuClear8(battleTower, sizeof(BattleTower));
    Heap_Free(battleTower);

    battleTower = NULL;
}

void BattleTower_SelectPokemonFromPartyMenu(BattleTower *battleTower, FieldTask *task, void **partyMenu)
{
    BattleTower_SelectPokemon(task, partyMenu, PARTY_MENU_MODE_BATTLE_TOWER, 0, battleTower->partySize, battleTower->partySize, 100, 0);
}

BOOL BattleTower_StorePartySelectionResults(BattleTower *battleTower, void **data, SaveData *saveData)
{
    PartyMenu *partyMenu = *data;

    if (partyMenu->menuSelectionResult != 0 || partyMenu->selectedMonSlot == PARTY_MENU_SLOT_CANCEL) {
        Heap_Free(*data);
        *data = NULL;
        return FALSE;
    }

    Party *pary = SaveData_GetParty(saveData);

    for (u16 i = 0; i < battleTower->partySize; i++) {
        battleTower->partySlots[i] = partyMenu->selectionOrder[i] - 1;
        Pokemon *mon = Party_GetPokemonBySlotIndex(pary, battleTower->partySlots[i]);
        battleTower->selectedSpecies[i] = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
        battleTower->selectedItems[i] = Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL);
    }

    Heap_Free(*data);
    *data = NULL;
    return TRUE;
}

int BattleTower_CheckDuplicateSpeciesAndHeldItems(BattleTower *battleTower, SaveData *saveData)
{
    u16 species[4], heldItems[4];
    Party *party = SaveData_GetParty(saveData);

    for (u16 i = 0; i < battleTower->partySize; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(party, battleTower->partySlots[i]);
        species[i] = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
        heldItems[i] = Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL);

        if (i == 0) {
            continue;
        }

        for (u16 j = 0; j < i; j++) {
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
    for (u16 opponentNum = 0; opponentNum < currOpponentNum; opponentNum++) {
        if (trainerIDs[opponentNum] == trainerID) {
            return TRUE;
        }
    }

    return FALSE;
}

void BattleTower_PickOpponentTrainers(BattleTower *battleTower, SaveData *saveData)
{
    u16 trainerID, currentRound;

    if (battleTower->challengeMode == BATTLE_TOWER_MODE_MULTI || battleTower->challengeMode == BATTLE_TOWER_MODE_6 || battleTower->challengeMode == BATTLE_TOWER_MODE_LINK_MULTI) {
        if ((battleTower->challengeMode == BATTLE_TOWER_MODE_LINK_MULTI && battleTower->unk_14 > battleTower->roomNum) || (battleTower->challengeMode == BATTLE_TOWER_MODE_6 && battleTower->unk_14 > battleTower->roomNum)) {
            currentRound = battleTower->unk_14;
        } else {
            currentRound = battleTower->roomNum;
        }

        for (int opponentNum = 0; opponentNum < TOWER_BATTLES_PER_ROUND * 2; opponentNum++) {
            do {
                trainerID = BattleTower_GetOpponentTrainerID(battleTower, currentRound, opponentNum / 2, battleTower->challengeMode);
            } while (BattleTower_IsTrainerAlreadyUsed(battleTower->trainerIDs, trainerID, opponentNum));

            battleTower->trainerIDs[opponentNum] = trainerID;
        }
    } else {
        for (int opponentNum = 0; opponentNum < TOWER_BATTLES_PER_ROUND; opponentNum++) {
            do {
                trainerID = BattleTower_GetOpponentTrainerID(battleTower, battleTower->roomNum, opponentNum, battleTower->challengeMode);
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

    if (battleTower->nextOpponentNum > TOWER_BATTLES_PER_ROUND) {
        battleTower->defeatedSevenTrainers = TRUE;
        return TRUE;
    }

    return FALSE;
}

static void sub_0204A5A0(BattleTower *battleTower, SaveData *saveData, u16 streak)
{
    if (battleTower->challengeMode != BATTLE_TOWER_MODE_SINGLE && battleTower->challengeMode != BATTLE_TOWER_MODE_DOUBLE) {
        return;
    }

    Party *party = SaveData_GetParty(saveData);

    if (battleTower->challengeMode == BATTLE_TOWER_MODE_SINGLE) {
        sub_0206DBB0(saveData, streak, Party_GetPokemonBySlotIndex(party, battleTower->partySlots[0]), 1);
    } else {
        sub_0206DBB0(saveData, streak, Party_GetPokemonBySlotIndex(party, battleTower->partySlots[0]), 0);
    }
}

static void sub_0204A5EC(BattleTower *battleTower, SaveData *saveData, u8 didWin, u16 streak)
{

    switch (battleTower->challengeMode) {
    case BATTLE_TOWER_MODE_SINGLE:
        SaveTeamToTowerRecord(battleTower, saveData, 0);
    case BATTLE_TOWER_MODE_DOUBLE:
        if (streak >= TOWER_BATTLES_PER_ROUND) {
            sub_0206CFE4(SaveData_GetTVBroadcast(saveData), didWin, streak);
        }
        break;
    case BATTLE_TOWER_MODE_WIFI:
        SaveTeamToTowerRecord(battleTower, saveData, 1);
        BattleTowerSave_AddCounters(battleTower->towerSave, battleTower->unk_28, battleTower->unk_24, battleTower->unk_26);

        u8 ptr = battleTower->challengeMode;
        BattleTowerSave_SetField(battleTower->towerSave, BT_WIFI_SAVE_FIELD_CHALLENGE_MODE, &ptr);

        ptr = battleTower->nextOpponentNum;
        BattleTowerSave_SetField(battleTower->towerSave, BT_WIFI_SAVE_FIELD_NEXT_OPPONENT_NUM, &ptr);
        WifiBattleTowerRecord_CalcRatingScore(battleTower->wifiRecord, battleTower->towerSave);
        break;
    default:
        break;
    }
}

void BattleTower_UpdateGameRecords(BattleTower *battleTower, SaveData *saveData)
{
    GameRecords *records = SaveData_GetGameRecords(saveData);
    BattleFrontierSave *frontier = SaveData_GetBattleFrontier(saveData);

    if (battleTower->challengeMode == BATTLE_TOWER_MODE_5) {
        return;
    }

    int recordIndex;
    if (battleTower->challengeMode == BATTLE_TOWER_MODE_6) {
        recordIndex = STAT_TOWER_RECORD_STREAK_MODE_6;
    } else {
        recordIndex = battleTower->challengeMode * 2;
    }

    u16 recordStreak = BattleFrontierSave_GetStatAutoHostIdx(frontier, recordIndex);
    u16 newStreak = BattleFrontierSave_SetIfBetterAutoHostIdx(frontier, recordIndex, battleTower->startingStreak + battleTower->currentBattle);

    if (newStreak > 1) {
        if (recordStreak < newStreak || (recordStreak == newStreak && newStreak % TOWER_BATTLES_PER_ROUND == 0)) {
            sub_0204A5A0(battleTower, saveData, newStreak);
        }
    }

    if (battleTower->challengeMode == BATTLE_TOWER_MODE_6) {
        BattleFrontierSave_GetStatAutoHostIdx(SaveData_GetBattleFrontier(saveData), STAT_TOWER_WFC_STREAK_ACTIVE);
    } else {
        WifiBattleTowerRecord_UpdateBitFlag(battleTower->wifiRecord, 8 + battleTower->challengeMode, 0);
    }

    u32 streak = BattleFrontierSave_SetStatAutoHostIdx(frontier, recordIndex + 1, battleTower->startingStreak + battleTower->currentBattle);

    if (battleTower->challengeMode == BATTLE_TOWER_MODE_6) {
        BattleFrontierSave_SetStatAutoHostIdx(SaveData_GetBattleFrontier(saveData), STAT_TOWER_WFC_STREAK_ACTIVE, FALSE);
    } else {
        WifiBattleTowerRecord_UpdateBitFlag(battleTower->wifiRecord, 8 + battleTower->challengeMode, 2);
    }

    GameRecords_AddToRecordValue(records, RECORD_BATTLE_TOWER_VICTORIES, battleTower->currentBattle);
    WifiBattleTowerRecord_UpdateRoomNum(battleTower->wifiRecord, battleTower->challengeMode, 2);

    if (battleTower->challengeMode != BATTLE_TOWER_MODE_6) {
        GameRecords_AddToRecordValue(SaveData_GetGameRecords(saveData), RECORD_BATTLE_TOWER_CHALLENGES, 1);
    }

    CheckIfRibbonsEarned(battleTower);

    streak += 1;

    if (streak > 9999) {
        streak = 9999;
    }

    sub_0204A5EC(battleTower, saveData, FALSE, streak);
}

void BattleTower_UpdateGameRecordsAndJournal(BattleTower *battleTower, SaveData *saveData, JournalEntry *journalEntry)
{
    if (battleTower->challengeMode == BATTLE_TOWER_MODE_5) {
        return;
    }

    GameRecords *records = SaveData_GetGameRecords(saveData);
    BattleFrontierSave *frontier = SaveData_GetBattleFrontier(saveData);

    int recordIndex;
    if (battleTower->challengeMode == BATTLE_TOWER_MODE_6) {
        recordIndex = STAT_TOWER_RECORD_STREAK_MODE_6;
    } else {
        recordIndex = battleTower->challengeMode * 2;
    }

    if (battleTower->challengeMode == BATTLE_TOWER_MODE_6) {
        BattleFrontierSave_GetStatAutoHostIdx(SaveData_GetBattleFrontier(saveData), STAT_TOWER_WFC_STREAK_ACTIVE);
    } else {
        WifiBattleTowerRecord_UpdateBitFlag(battleTower->wifiRecord, 8 + battleTower->challengeMode, 0);
    }

    u32 newStreak = BattleFrontierSave_SetStatAutoHostIdx(frontier, recordIndex + 1, battleTower->startingStreak + battleTower->currentBattle);

    if (battleTower->challengeMode == BATTLE_TOWER_MODE_6) {
        BattleFrontierSave_SetStatAutoHostIdx(SaveData_GetBattleFrontier(saveData), STAT_TOWER_WFC_STREAK_ACTIVE, 1);
    } else {
        WifiBattleTowerRecord_UpdateBitFlag(battleTower->wifiRecord, 8 + battleTower->challengeMode, 1);
    }

    BattleFrontierSave_GetStatAutoHostIdx(frontier, recordIndex);
    BattleFrontierSave_SetIfBetterAutoHostIdx(frontier, recordIndex, newStreak);

    GameRecords_AddToRecordValue(records, RECORD_BATTLE_TOWER_VICTORIES, 7);
    WifiBattleTowerRecord_UpdateRoomNum(battleTower->wifiRecord, battleTower->challengeMode, 3);

    if (battleTower->challengeMode != BATTLE_TOWER_MODE_6) {
        GameRecords_AddToRecordValue(records, RECORD_BATTLE_TOWER_CHALLENGES, 1);
    }

    GameRecords_IncrementTrainerScore(records, TRAINER_SCORE_EVENT_UNK_14);
    CheckIfRibbonsEarned(battleTower);
    sub_0204A5EC(battleTower, saveData, TRUE, newStreak);

    if (battleTower->challengeMode == BATTLE_TOWER_MODE_WIFI) {
        void *journalEntryOnlineEvent = JournalEntry_CreateEventBattleRoom(battleTower->heapID);
        JournalEntry_SaveData(journalEntry, journalEntryOnlineEvent, JOURNAL_ONLINE_EVENT);
    }
}

void BattleTower_Save(BattleTower *battleTower)
{
    u8 u8Ptr[4];

    u8Ptr[0] = battleTower->challengeMode;
    BattleTowerSave_SetField(battleTower->towerSave, BT_WIFI_SAVE_FIELD_CHALLENGE_MODE, u8Ptr);

    u8Ptr[0] = battleTower->nextOpponentNum;
    BattleTowerSave_SetField(battleTower->towerSave, BT_WIFI_SAVE_FIELD_NEXT_OPPONENT_NUM, u8Ptr);

    BattleTowerSave_SetField(battleTower->towerSave, BT_WIFI_SAVE_FIELD_PARTY_SLOTS, battleTower->partySlots);
    BattleTowerSave_AddCounters(battleTower->towerSave, battleTower->unk_28, battleTower->unk_24, battleTower->unk_26);
    BattleTowerSave_SetField(battleTower->towerSave, BT_WIFI_SAVE_FIELD_TRAINER_IDS, battleTower->trainerIDs);
    BattleTowerSave_SetField(battleTower->towerSave, BT_WIFI_SAVE_FIELD_RNG_SEED, &(battleTower->rng));
    BattleTowerSave_RecordSave(battleTower->towerSave, TRUE);

    if (battleTower->challengeMode != BATTLE_TOWER_MODE_MULTI) {
        return;
    }

    u8Ptr[0] = battleTower->partnerID;
    BattleTowerSave_SetField(battleTower->towerSave, BT_WIFI_SAVE_FIELD_PARTNER_ID, u8Ptr);

    BattleTowerSave_SetField(battleTower->towerSave, BT_WIFI_SAVE_FIELD_PARTNER_DATA, &battleTower->unk_7E8[battleTower->partnerID]);
    BattleTowerSave_SetField(battleTower->towerSave, BT_WIFI_SAVE_FIELD_UNK_00_0, &battleTower->partnerConflicts[battleTower->partnerID]);
}

void BattleTower_InitAllStatTrainers(BattleTower *battleTower)
{
    for (int partnerID = 0; partnerID < BT_PARTNERS_COUNT; partnerID++) {
        battleTower->partnerConflicts[partnerID] = BattleTower_InitStatTrainer(battleTower, &battleTower->partners[partnerID], FRONTIER_TRAINER_TRAINER_CHERYL_CHERYL + partnerID, battleTower->partySize, battleTower->selectedSpecies, battleTower->selectedItems, &battleTower->unk_7E8[partnerID], battleTower->heapID);
    }
}

u16 BattleTower_GetObjectIDFromOpponentID(BattleTower *battleTower, u16 opponentID)
{
    return BattleTower_GetObjectIDFromTrainerClass(battleTower->opponents[opponentID].trainer.trainerType);
}

u16 BattleTower_GetChallengeMode(BattleTower *battleTower)
{
    return battleTower->challengeMode;
}

u16 BattleTower_GetBeatPalmer(BattleTower *battleTower)
{
    return battleTower->beatPalmer;
}

u16 BattleTower_GiveBattlePointsReward(BattleTower *battleTower)
{
    u16 battlePoints = 0;
    static const u8 wifiBattlePoints[] = { 0, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10 };
    static const u8 soloBattlePoints[] = { 0, 3, 3, 4, 4, 5, 5, 7 };
    static const u8 linkMultiBattlePoints[] = { 0, 8, 9, 11, 12, 14, 15, 18 };

    if (battleTower->challengeMode == BATTLE_TOWER_MODE_5) {
        return 0;
    }

    if (battleTower->challengeMode == BATTLE_TOWER_MODE_WIFI) {
        battlePoints = wifiBattlePoints[WifiBattleTowerRecord_UpdateRank(battleTower->wifiRecord, 0)];
    } else {
        if (battleTower->challengeMode == BATTLE_TOWER_MODE_LINK_MULTI || battleTower->challengeMode == BATTLE_TOWER_MODE_6) {
            u16 roomNum = WifiBattleTowerRecord_UpdateRoomNum(battleTower->wifiRecord, battleTower->challengeMode, 0);

            if (roomNum >= 7) {
                battlePoints = 18;
            } else {
                battlePoints = linkMultiBattlePoints[roomNum];
            }
        } else {
            u16 roomNum = WifiBattleTowerRecord_UpdateRoomNum(battleTower->wifiRecord, battleTower->challengeMode, 0);

            if (battleTower->beatPalmer) {
                battlePoints = 20;
            } else if (roomNum >= 7) {
                battlePoints = 7;
            } else {
                battlePoints = soloBattlePoints[roomNum];
            }
        }
    }

    WifiBattleTowerRecord_UpdateBattlePoints(battleTower->wifiRecord, battlePoints, BATTLE_POINTS_FUNC_ADD);
    return battlePoints;
}

u16 sub_0204AA7C(BattleTower *battleTower, SaveData *saveData)
{
    u16 v2 = BattleTower_GetLatestStreak(saveData, battleTower->challengeMode);

    if (v2 < 50) {
        return 0;
    }

    if (v2 >= 100) {
        if (WifiBattleTowerRecord_UpdateBitFlag(battleTower->wifiRecord, 1, 0)) {
            return 0;
        }
    } else {
        if (WifiBattleTowerRecord_UpdateBitFlag(battleTower->wifiRecord, 0, 0)) {
            return 0;
        }
    }

    return 1;
}

u16 BattleTower_WifiRankOperation(BattleTower *battleTower, SaveData *saveData, u8 param2)
{
    WifiBattleTowerRecord *record = SaveData_GetWifiBattleTowerRecord(saveData);
    static const u8 lossesForDemotion[] = { 0, 5, 4, 4, 3, 3, 2, 2, 1, 1 };

    switch (param2) {
    case 0:
        return WifiBattleTowerRecord_UpdateRank(record, 0);
    case 1: {
        WifiBattleTowerRecord_UpdateBitFlag(record, 4, 2);
        u8 rank = WifiBattleTowerRecord_UpdateRank(record, 0);

        if (rank == 10) {
            battleTower->ribbonsEarned = TRUE;
            return 0;
        }

        WifiBattleTowerRecord_UpdateRank(record, 3);

        if (rank + 1 >= 5) {
            battleTower->ribbonsEarned = TRUE;
        }
        return 1;
    }
    case 2: {
        u8 lossStreak = WifiBattleTowerRecord_UpdateLossStreak(record, 3);
        u8 rank = WifiBattleTowerRecord_UpdateRank(record, 0);

        if (rank == 1) {
            return 0;
        }

        if (lossStreak >= lossesForDemotion[rank - 1]) {
            WifiBattleTowerRecord_UpdateRank(record, 4);
            WifiBattleTowerRecord_UpdateLossStreak(record, 2);
            WifiBattleTowerRecord_UpdateBitFlag(record, 4, 2);

            return 1;
        }

        return 0;
    }
    }

    return 0;
}

u16 BattleTower_GiveBeatTycoonRibbon(BattleTower *battleTower, SaveData *saveData)
{
    if (battleTower->challengeMode != BATTLE_TOWER_MODE_SINGLE) {
        return 0;
    }

    switch (battleTower->beatPalmer) {
    case 1:
        return GiveRibbonToPartyMembers(saveData, MON_DATA_ABILITY_RIBBON, battleTower);
    case 2:
        return GiveRibbonToPartyMembers(saveData, MON_DATA_GREAT_ABILITY_RIBBON, battleTower);
    }

    return 0;
}

u16 BattleTower_TryGive50WinsRibbons(BattleTower *battleTower, SaveData *saveData)
{
    enum PokemonDataParam ribbon;

    if (battleTower->challengeMode == BATTLE_TOWER_MODE_5) {
        return 0;
    }

    if (battleTower->challengeMode == BATTLE_TOWER_MODE_6) {
        return 0;
    }

    if (!battleTower->ribbonsEarned) {
        return 0;
    }

    switch (battleTower->challengeMode) {
    case BATTLE_TOWER_MODE_DOUBLE:
        ribbon = MON_DATA_DOUBLE_ABILITY_RIBBON;
        break;
    case BATTLE_TOWER_MODE_MULTI:
        ribbon = MON_DATA_MULTI_ABILITY_RIBBON;
        break;
    case BATTLE_TOWER_MODE_LINK_MULTI:
        ribbon = MON_DATA_PAIR_ABILITY_RIBBON;
        break;
    case BATTLE_TOWER_MODE_WIFI:
        ribbon = MON_DATA_WORLD_ABILITY_RIBBON;
        break;
    }

    return GiveRibbonToPartyMembers(saveData, ribbon, battleTower);
}

u16 BattleTower_SetRngSeeds(BattleTower *battleTower, SaveData *saveData)
{
    u8 streakActive;

    if (battleTower->challengeMode == BATTLE_TOWER_MODE_6) {
        streakActive = BattleFrontierSave_GetStatAutoHostIdx(SaveData_GetBattleFrontier(saveData), STAT_TOWER_WFC_STREAK_ACTIVE);
    } else {
        streakActive = WifiBattleTowerRecord_UpdateBitFlag(battleTower->wifiRecord, 8 + battleTower->challengeMode, 0);
    }

    if (!streakActive) {
        battleTower->rng = sub_0206C02C(saveData);
    } else {
        battleTower->rng = sub_0206C068(saveData);
    }

    return battleTower->rng / 65535;
}

static u16 GiveRibbonToPartyMembers(SaveData *saveData, enum PokemonDataParam ribbon, BattleTower *battleTower)
{
    u8 hasRibbon = TRUE;
    u8 ribbonsGiven;
    Party *party = SaveData_GetParty(saveData);

    ribbonsGiven = 0;

    for (int i = 0; i < battleTower->partySize; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(party, battleTower->partySlots[i]);

        if (Pokemon_GetValue(mon, ribbon, NULL)) {
            continue;
        }

        Pokemon_SetValue(mon, ribbon, &hasRibbon);
        sub_0206DDB8(saveData, mon, ribbon);
        ++ribbonsGiven;
    }

    if (ribbonsGiven == 0) {
        return 0;
    }

    return 1;
}

static u16 CheckIfRibbonsEarned(BattleTower *battleTower)
{
    if (battleTower->challengeMode == BATTLE_TOWER_MODE_5 || battleTower->challengeMode == BATTLE_TOWER_MODE_SINGLE || battleTower->challengeMode == BATTLE_TOWER_MODE_6 || battleTower->challengeMode == BATTLE_TOWER_MODE_WIFI) {
        return 0;
    }

    u16 streak = battleTower->startingStreak + battleTower->currentBattle;

    if (streak < 50) {
        return 0;
    }

    battleTower->ribbonsEarned = TRUE;
    return 1;
}

static void CopyPokemonToFrontierMon(FrontierPokemon *frontierMon, Pokemon *mon)
{
    frontierMon->species = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
    frontierMon->form = Pokemon_GetValue(mon, MON_DATA_FORM, NULL);
    frontierMon->item = Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL);

    for (int i = 0; i < LEARNED_MOVES_MAX; i++) {
        frontierMon->moves[i] = Pokemon_GetValue(mon, MON_DATA_MOVE1 + i, NULL);
        frontierMon->combinedPPUps |= Pokemon_GetValue(mon, MON_DATA_MOVE1_PP_UPS + i, NULL) << (i * 2);
    }

    frontierMon->language = Pokemon_GetValue(mon, MON_DATA_LANGUAGE, NULL);
    frontierMon->otID = Pokemon_GetValue(mon, MON_DATA_OT_ID, NULL);
    frontierMon->personality = Pokemon_GetValue(mon, MON_DATA_PERSONALITY, NULL);
    frontierMon->combinedIVs = Pokemon_GetValue(mon, MON_DATA_COMBINED_IVS, NULL);

    for (int i = 0; i < STAT_MAX; i++) {
        frontierMon->evList[i] = Pokemon_GetValue(mon, MON_DATA_HP_EV + i, NULL);
    }

    frontierMon->ability = Pokemon_GetValue(mon, MON_DATA_ABILITY, NULL);
    frontierMon->friendship = Pokemon_GetValue(mon, MON_DATA_FRIENDSHIP, NULL);

    Pokemon_GetValue(mon, MON_DATA_NICKNAME, frontierMon->nickname);
}

static void SaveTeamToTowerRecord(BattleTower *battleTower, SaveData *saveData, int teamIdx)
{
    FrontierPokemon *mon = Heap_AllocAtEnd(battleTower->heapID, sizeof(FrontierPokemon) * 3);
    MI_CpuClear8(mon, sizeof(FrontierPokemon) * 3);
    Party *party = SaveData_GetParty(saveData);

    for (int i = 0; i < 3; i++) {
        CopyPokemonToFrontierMon(&mon[i], Party_GetPokemonBySlotIndex(party, battleTower->partySlots[i]));
    }

    WifiBattleTowerRecord_SetTeam(battleTower->wifiRecord, teamIdx, mon);
    MI_CpuClear8(mon, sizeof(FrontierPokemon) * 3);
    Heap_Free(mon);
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

    battleTower->rng = BattleTower_RngNext(battleTower->rng);
    return battleTower->rng / 65535;
}
