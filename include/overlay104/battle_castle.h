#ifndef POKEPLATINUM_BATTLE_CASTLE_H
#define POKEPLATINUM_BATTLE_CASTLE_H

#include "applications/frontier/battle_castle/args.h"
#include "overlay104/defs.h"
#include "overlay104/frontier_data_transfer.h"

#include "battle_castle_save.h"
#include "field_battle_data_transfer.h"
#include "party.h"
#include "savedata.h"

typedef struct BattleCastle {
    int unused;
    SaveData *saveData;
    BattleCastleSave *castleSave;
    FieldBattleDTO *dto;
    u8 challengeType;
    u8 currentBattle;
    u8 monFainted;
    u8 seenCastleValetIntro;
    u16 currentStreak;
    u16 currentRound;
    u32 unused2;
    int wonBattle;
    u16 initialCP;
    u16 newCP;
    u8 partySlots[3];
    u8 saveStreak;
    Party *playersParty;
    Party *opponentsParty;
    u16 trainerIDs[14];
    FrontierDataDTO opponents[2];
    u16 monSetIDs[4];
    u8 opponentMonIVs[4];
    u32 opponentMonPersonalities[4];
    FrontierPokemonDataDTO opponentMons[4];
    u16 unused3;
    u16 savedHeldItems[3];
    u8 appIdentityUnlocked[4];
    u8 levelAdjustments[4];
    u8 appStatsUnlocked[4];
    u8 appMovesUnlocked[4];
    u16 selectedAppSlots[6];
    u16 unused4[4];
    u16 startingPP[4][4];
    u16 unused5[6];
    u16 unk_3C0[40];
    u8 unk_410[512];
    u8 unk_610[2][512];
    u8 unk_A10;
    u8 unk_A11;
    u16 unk_A12;
    u16 unused6;
    u16 unk_A16;
    u8 unk_A18;
    u8 unk_A19;
    u8 msgsReceived;
    u8 unk_A1B;
    u16 partnersCP;
    u16 *unk_A20;
    u32 unused7;
} BattleCastle;

BattleCastle *BattleCastle_Init(SaveData *saveData, u16 resumingFromSave, u8 challengeType, u16 partySlot1, u16 partySlot2, u16 partySlot3, u16 *param6);
void BattleCastle_LoadTrainersForRound(BattleCastle *castle, u16 resumingFromSave);
void BattleCastle_Free(BattleCastle *castle);
void BattleCastle_StoreAppResults(BattleCastle *battleCastle, BattleCastleAppArgs *args);
void BattleCastle_Save(BattleCastle *castle, u8 saveType);
u16 BattleCastle_IncrementCurrentBattle(BattleCastle *castle);
u16 BattleCastle_GetCurrentBattle(BattleCastle *castle);
u16 BattleCastle_GetNextOpponentObjectID(BattleCastle *castle, u8 trainerSlot);
void BattleCastle_SaveOnLoss(BattleCastle *castle);
void BattleCastle_SaveOnCompletingRound(BattleCastle *castle);
void BattleCastle_SetupFirstOpponentsParty(BattleCastle *castle);
void BattleCastle_SetupNextOpponentsParty(BattleCastle *castle);
void BattleCastle_PrepForNextBattle(BattleCastle *castle);
int BattleCastle_CalcCPEarnedFromBattle(BattleCastle *castle);
void BattleCastle_ReceiveCastlePoints(SaveData *saveData, u8 challengeType, int newCP);
BOOL BattleCastle_SendCommMessage(BattleCastle *castle, u16 command, u16 arg);
void BattleCastle_ShowPlayerInfoWindows(FrontierScriptManager *scriptMan, BattleCastle *castle);
void BattleCastle_ClearPlayerInfoWindows(FrontierScriptManager *scriptMan, BattleCastle *castle);
void BattleCastle_PrintPlayersInfo(FrontierScriptManager *scriptMan, BattleCastle *castle);
u16 BattleCastle_GetEarnedBP(BattleCastle *castle);

#endif // POKEPLATINUM_BATTLE_CASTLE_H
