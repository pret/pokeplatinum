#ifndef POKEPLATINUM_OV104_02234DB4_H
#define POKEPLATINUM_OV104_02234DB4_H

#include "overlay104/struct_battle_hall.h"

#include "savedata.h"

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

#endif // POKEPLATINUM_OV104_02234DB4_H
