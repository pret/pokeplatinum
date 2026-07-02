#ifndef POKEPLATINUM_OV104_02237DD8_H
#define POKEPLATINUM_OV104_02237DD8_H

#include "applications/frontier/battle_arcade/main.h"
#include "overlay104/frontier_graphics.h"
#include "overlay104/struct_battle_arcade.h"

#include "party.h"
#include "savedata.h"

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

#endif // POKEPLATINUM_OV104_02237DD8_H
