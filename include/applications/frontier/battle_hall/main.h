#ifndef POKEPLATINUM_APPLICATIONS_BATTLE_HALL_MAIN_H
#define POKEPLATINUM_APPLICATIONS_BATTLE_HALL_MAIN_H

#include "overlay104/struct_battle_hall.h"

#include "overlay_manager.h"
#include "party.h"
#include "savedata.h"

typedef struct BattleHallAppArgs {
    SaveData *saveData;
    u8 challengeType;
    u8 cursorPos;
    u16 selectedCell;
    u8 *typeRanks;
    Party *party;
    BattleHall *battleHall;
    u16 *partnersLevel;
    u16 currentStreak;
    u8 padding_1A[6];
} BattleHallAppArgs;

BOOL BattleHallApp_Init(ApplicationManager *appMan, int *state);
BOOL BattleHallApp_Main(ApplicationManager *appMan, int *state);
BOOL BattleHallApp_Exit(ApplicationManager *appMan, int *state);
void BattleHall_DummyCommCommand(int netID, int unused, void *unused2, void *unused3);
void BattleHall_HandleTypeSelectionMsg(int netID, int unused, void *data, void *context);
void BattleHall_HandlePartnerDecisionCmd(int netID, int unused, void *data, void *context);

#endif // POKEPLATINUM_APPLICATIONS_BATTLE_HALL_MAIN_H
