#ifndef POKEPLATINUM_BATTLE_ARCADE_H
#define POKEPLATINUM_BATTLE_ARCADE_H

#include "constants/battle_frontier.h"

#include "applications/frontier/battle_arcade/main.h"
#include "overlay104/frontier_graphics.h"
#include "overlay104/frontier_opponents.h"

#include "battle_arcade_save.h"
#include "field_battle_data_transfer.h"
#include "party.h"
#include "savedata.h"

typedef struct BattleArcade {
    int unused;
    SaveData *saveData;
    BattleArcadeSave *arcadeSave;
    FieldBattleDTO *dto;
    u8 challengeType;
    u8 currentBattle;
    u8 cursorRandomized;
    u8 activeEffect;
    int weather;
    u16 currentStreak;
    u16 currentRound;
    u8 rouletteSpeed;
    u8 performance;
    u8 seenArcadeStarIntro;
    u8 immuneToEffect;
    u16 randomIndex;
    u32 unused2;
    int wonBattle;
    u8 partySlots[MATH_MAX(ARCADE_PARTY_SIZE_SOLO, ARCADE_PARTY_SIZE_MULTI)];
    u8 saveStreak;
    ManagedSprite *playerMonSprites[ARCADE_MAX_PARTY_SIZE];
    ManagedSprite *opponentMonSprites[ARCADE_MAX_PARTY_SIZE];
    ManagedSprite *playerItemSprites[ARCADE_MAX_PARTY_SIZE];
    ManagedSprite *opponentItemSprites[ARCADE_MAX_PARTY_SIZE];
    Party *playersParty;
    Party *opponentsParty;
    u16 trainerIDs[ARCADE_BATTLES_PER_ROUND * 2];
    u32 monHP[ARCADE_MAX_PARTY_SIZE];
    u32 monAtk[ARCADE_MAX_PARTY_SIZE];
    u32 monDef[ARCADE_MAX_PARTY_SIZE];
    u32 monSpeed[ARCADE_MAX_PARTY_SIZE];
    u32 monSpAtk[ARCADE_MAX_PARTY_SIZE];
    u32 monSpDef[ARCADE_MAX_PARTY_SIZE];
    FrontierOpponent opponents[2];
    u16 monSetIDs[ARCADE_MAX_PARTY_SIZE];
    u8 opponentMonIVs[ARCADE_MAX_PARTY_SIZE];
    u32 opponentMonPersonalities[ARCADE_MAX_PARTY_SIZE];
    FrontierPokemon opponentMons[ARCADE_MAX_PARTY_SIZE];
    u16 unused3;
    u16 savedHeldItems[MATH_MAX(ARCADE_PARTY_SIZE_SOLO, ARCADE_PARTY_SIZE_MULTI)];
    u16 appCursorPos[6];
    u16 commBuffer[40];
    u8 commHugeBuffer[512];
    u8 unk_674[2][512];
    u8 unk_A74;
    u8 unk_A75;
    u16 unk_A76;
    u16 unk_A78;
    u8 unk_A7A;
    u8 unk_A7B;
    u8 msgsReceived;
    u8 unk_A7D;
    u16 *unk_A80;
    u32 unk_A84;
} BattleArcade;

BattleArcade *BattleArcade_Init(SaveData *saveData, u16 resumingFromSave, u8 challengeType, u16 partySlot1, u16 partySlot2, u16 partySlot3, u16 *param6);
void BattleArcade_LoadTrainersForRound(BattleArcade *arcade, u16 resumingFromSave);
void BattleArcade_Free(BattleArcade *arcade);
void BattleArcade_StoreAppResults(BattleArcade *battleArcade, BattleArcadeAppArgs *args);
void BattleArcade_Save(BattleArcade *arcade, u8 saveType);
u16 BattleArcade_IncrementCurrentBattle(BattleArcade *arcade);
u16 BattleArcade_GetCurrentBattle(BattleArcade *arcade);
u16 BattleArcade_GetNextOpponentObjectID(BattleArcade *arcade, u8 trainerSlot);
u16 BattleArcade_GetTrainerOffset(BattleArcade *arcade, u8 trainerSlot);
void BattleArcade_SaveOnLoss(BattleArcade *arcade);
void BattleArcade_SaveOnCompletingRound(BattleArcade *arcade);
void BattleArcade_SetupFirstOpponentsParty(BattleArcade *arcade);
void BattleArcade_SetupNextOpponentsParty(BattleArcade *arcade);
int BattleArcade_GetPerformance(BattleArcade *battleArcade, Party *playersParty, Party *partnersParty, int totalTurnsElapsed);
void BattleArcade_UpdateBackgroundForEffect(BattleArcade *arcade, FrontierGraphics *graphics);
void BattleArcade_LoadNormalBackground(void *arcade, FrontierGraphics *graphics);
void BattleArcade_CreateMonSprites(BattleArcade *arcade, FrontierGraphics *graphics, u16 isOpponent);
void BattleArcade_DeleteMonSprites(BattleArcade *arcade, FrontierGraphics *graphics, u16 isOpponent);
void BattleArcade_SetPlayerMonSpriteDrawFlag(BattleArcade *arcade, FrontierGraphics *graphics, u16 draw, u16 index);
void BattleArcade_SetOpponentMonSpriteDrawFlag(BattleArcade *arcade, FrontierGraphics *graphics, u16 draw, u16 index);
void BattleArcade_CreateItemSprites(BattleArcade *arcade, FrontierGraphics *graphics, u16 isOpponent);
void BattleArcade_DeleteItemSprites(BattleArcade *arcade, FrontierGraphics *graphics, u16 isOpponent);
void BattleArcade_SetItemDrawFlag(BattleArcade *arcade, FrontierGraphics *graphics, u16 isOpponent, u16 slot, u16 drawItem);
void BattleArcade_SetPalette(u8 fraction, u8 source);
BOOL BattleArcade_SendCommMessage(BattleArcade *arcade, u16 command, u16 arg);
void BattleArcade_ApplyEffect(BattleArcade *arcade, u8 effect);
u16 BattleArcade_GetEarnedBP(BattleArcade *arcade);
void BattleArcade_SaveItemsAfterBattle(Party *battleParty, Party *arcadeParty, int battleSlot, int arcadeSlot);

#endif // POKEPLATINUM_BATTLE_ARCADE_H
