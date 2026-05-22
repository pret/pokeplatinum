#ifndef POKEPLATINUM_APPLICATIONS_BATTLE_FACTORY_MAIN_H
#define POKEPLATINUM_APPLICATIONS_BATTLE_FACTORY_MAIN_H

#include "overlay_manager.h"
#include "party.h"
#include "savedata.h"

typedef struct BattleFactoryAppArgs {
    SaveData *saveData;
    u8 challengeType;
    u8 unk_05;
    u8 isExchangeMode;
    u8 padding_07;
    Party *personalParty;
    Party *receivableParty;
    u16 selectedIndices[6];
    void *battleFactory;
    u8 padding_20[4];
} BattleFactoryAppArgs;

int BattleFactoryApp_Init(ApplicationManager *appMan, int *state);
int BattleFactoryApp_Main(ApplicationManager *appMan, int *state);
int BattleFactoryApp_Exit(ApplicationManager *appMan, int *state);
void CommCmd_BattleFactoryDummy(int netID, int unused, void *data, void *context);
void CommCmd_BattleFactoryHandleSelectionUpdate(int netID, int unused, void *data, void *context);
void CommCmd_BattleFactoryDummy2(int netID, int unused, void *data, void *context);
void CommCmd_BattleFactoryHandleTradeResult(int netID, int unused, void *data, void *context);

#endif // POKEPLATINUM_APPLICATIONS_BATTLE_FACTORY_MAIN_H
