#ifndef POKEPLATINUM_BATTLE_FACTORY_H
#define POKEPLATINUM_BATTLE_FACTORY_H

#include "constants/battle_frontier.h"

#include "applications/frontier/battle_factory/main.h"
#include "overlay104/frontier_opponents.h"

#include "battle_factory_save.h"
#include "field_battle_data_transfer.h"
#include "party.h"
#include "savedata.h"
#include "sys_task_manager.h"

typedef struct BattleFactory {
    int unused;
    u8 challengeType;
    u8 isOpenLevel;
    u8 currentBattle;
    u8 unused2;
    u16 tradeCount;
    u8 saveStreak;
    u8 seenFactoryHeadIntro;
    u16 currentStreak;
    u16 currentRound;
    u32 unused3;
    int wonBattle;
    u16 trainerIDs[FACTORY_BATTLES_PER_ROUND * 2];
    FrontierOpponent opponents[2];
    u16 initialRentalSetIDs[FACTORY_INITIAL_RENTAL_OPTIONS];
    u8 initialRentalIVs[FACTORY_INITIAL_RENTAL_OPTIONS];
    u32 initialRentalPersonalities[FACTORY_INITIAL_RENTAL_OPTIONS];
    FrontierPokemon initialRentalMons[FACTORY_INITIAL_RENTAL_OPTIONS];
    u16 unusd4;
    u16 opponentMonSetIDs[FACTORY_MAX_PARTY_SIZE];
    u8 opponentMonIVs[FACTORY_MAX_PARTY_SIZE];
    u32 opponentMonPersonalities[FACTORY_MAX_PARTY_SIZE];
    FrontierPokemon opponentMons[FACTORY_MAX_PARTY_SIZE];
    u16 unused5;
    Party *playersParty;
    Party *opponentsParty;
    u16 selectedAppSlots[6];
    u16 playerMonSetIDs[FACTORY_INITIAL_RENTAL_OPTIONS];
    BattleFactorySave *factorySave;
    SaveData *saveData;
    FieldBattleDTO *dto;
    SysTask *corridorAnimation;
    u16 commBuffer[60];
    u8 unk_57C;
    u8 unk_57D;
    u16 unk_57E;
    u16 unk_580;
    u16 unk_582;
    u16 partnerRentalSetIDs[FACTORY_INITIAL_RENTAL_OPTIONS];
    u8 partnerRentalIVs[FACTORY_INITIAL_RENTAL_OPTIONS];
    u32 partnerRentalPersonalities[FACTORY_INITIAL_RENTAL_OPTIONS];
    FrontierPokemon partnerRentalMons[FACTORY_INITIAL_RENTAL_OPTIONS];
    u16 unk_700;
    u8 msgsReceived;
    u32 unk_704;
} BattleFactory;

BattleFactory *BattleFactory_Init(SaveData *saveData, u16 resumingFromSave, u8 challengeType, u8 isOpenLevel);
void BattleFactory_LoadTrainersAndRentalsForRound(BattleFactory *factory, u16 resumingFromSave);
void BattleFactory_Free(BattleFactory *factory);
void BattleFactory_GetMonSelectionAppResult(BattleFactory *battleFactory, BattleFactoryAppArgs *args);
void BattleFactory_Save(BattleFactory *factory, u8 saveType);
u16 BattleFactory_IncrementCurrentBattle(BattleFactory *factory);
u16 BattleFactory_GetCurrentBattle(BattleFactory *factory);
u16 BattleFactory_GetNextOpponentObjectID(BattleFactory *factory, u8 trainerSlot);
void BattleFactory_SaveOnLoss(BattleFactory *factory);
void BattleFactory_SaveOnCompletingRound(BattleFactory *factory);
void BattleFactory_AddSelectedRentalsToParty(BattleFactory *factory);
void BattleFactory_SetupNextOpponent(BattleFactory *factory);
void BattleFactory_ApplyTrade(BattleFactory *factory);
void BattleFactory_SetupNextOpponentsParty(BattleFactory *factory);
void BattleFactory_IncrementTradeCount(BattleFactory *factory);
BOOL BattleFactory_SendCommMessage(BattleFactory *factory, u16 command, u16 arg);
u16 BattleFactory_GetEarnedBP(BattleFactory *factory);

#endif // POKEPLATINUM_BATTLE_FACTORY_H
