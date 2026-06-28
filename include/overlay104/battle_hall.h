#ifndef POKEPLATINUM_BATTLE_HALL_H
#define POKEPLATINUM_BATTLE_HALL_H

#include "constants/battle_frontier.h"

#include "struct_defs/pokemon.h"

#include "overlay104/frontier_data_transfer.h"

#include "battle_hall_save.h"
#include "field_battle_data_transfer.h"
#include "party.h"
#include "savedata.h"

typedef struct BattleHall {
    int unused;
    u8 challengeType;
    u8 currentBattle;
    u8 saveStreak;
    u8 opponentsLevel;
    u16 currentStreak;
    u16 currentRound;
    fx32 playerLevelSqrt;
    u32 unk_10;
    int wonBattle;
    u16 trainerIDs[HALL_BATTLES_PER_ROUND * 2];
    FrontierDataDTO opponents[2];
    u8 partySlots[2];
    Party *party;
    u16 monIndices[HALL_BATTLES_PER_ROUND * 2];
    FrontierPokemonDataDTO opponentMons[HALL_BATTLES_PER_ROUND * 2];
    u16 unk_6F0;
    u16 selectedTypeIdx2;
    u8 selectedType;
    u8 selectedTypeIdx;
    BattleHallSave *hallSave;
    SaveData *saveData;
    FieldBattleDTO *dto;
    u8 typeRanks[4][9];
    u16 heldItems[2];
    u16 unk_72C[44];
    u8 unk_784[512];
    u8 unk_984[2][512];
    u16 unk_D84[2];
    u8 unk_D88;
    Pokemon *partnersMon;
    u8 unk_D90;
    u32 unk_D94;
} BattleHall;

BattleHall *BattleHall_Init(SaveData *saveData, u16 resumingFromSave, u8 challengeType, u8 partySlot1, u8 partySlot2);
void BattleHall_SetupNextOpponent(BattleHall *battleHall, u16 unused);
void BattleHall_Free(BattleHall *battleHall);
void BattleHall_GetTypeSelectionAppResult(BattleHall *battleHall, void *args);
void BattleHall_UpdateWinRecordForCurrentMon(BattleHall *battleHall, u16 *updated);
void BattleHall_Save(BattleHall *battleHall, u8 saveType);
u16 BattleHall_IncrementCurrentBattle(BattleHall *battleHall);
u16 BattleHall_GetCurrentBattle(BattleHall *battleHall);
u16 BattleHall_GetNextOpponentObjectID(BattleHall *battleHall, u8 trainerSlot);
void BattleHall_SaveOnLoss(BattleHall *battleHall);
void BattleHall_SaveOnCompletingRound(BattleHall *battleHall);
BOOL BattleHall_SendCommMessage(BattleHall *battleHall, u16 command, u16 arg);
u16 BattleHall_GetEarnedBP(BattleHall *battleHall);
void BattleHall_CapTypeRanks(BattleHall *battleHall);
void BattleHall_CalcPlayerLevelSqrt(BattleHall *battleHall);

#endif // POKEPLATINUM_BATTLE_HALL_H
