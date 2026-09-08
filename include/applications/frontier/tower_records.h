#ifndef POKEPLATINUM_APPLICATIONS_BATTLE_TOWER_RECORDS_MAIN_H
#define POKEPLATINUM_APPLICATIONS_BATTLE_TOWER_RECORDS_MAIN_H

#include "overlay_manager.h"
#include "savedata.h"

typedef struct {
    SaveData *saveData;
    u16 isRankingsScreen;
    u16 resultsType;
} BattleTowerRecordsAppArgs;

int BattleTowerRecordsApp_Init(ApplicationManager *appMan, int *state);
int BattleTowerRecordsApp_Free(ApplicationManager *appMan, int *state);
int BattleTowerRecordsApp_Main(ApplicationManager *appMan, int *state);

#endif // POKEPLATINUM_APPLICATIONS_BATTLE_TOWER_RECORDS_MAIN_H
