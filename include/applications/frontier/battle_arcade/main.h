#ifndef POKEPLATINUM_APPLICATIONS_BATTLE_ARCADE_MAIN_H
#define POKEPLATINUM_APPLICATIONS_BATTLE_ARCADE_MAIN_H

#include "overlay_manager.h"
#include "party.h"
#include "savedata.h"

typedef struct BattleArcadeAppArgs {
    SaveData *saveData;
    u8 challengeType;
    u8 padding_05[2];
    u8 fitnessScore;
    int *unk_08;
    u8 *rouletteSpeed;
    u8 *selectedEffect;
    u16 *unk_14;
    u16 partnersStreak;
    u8 padding_1A[2];
    u16 currentStreak;
    u16 round;
    u8 padding_20[16];
    Party *party;
    Party *opponentsParty;
    u16 cursorPos;
    u8 padding_3A[2];
    void *battleArcade;
    u8 padding_3E[2];
    u8 randomizeCursorMovement;
    u8 padding_41[3];
} BattleArcadeAppArgs;

BOOL BattleArcadeApp_Init(ApplicationManager *appMan, int *state);
BOOL BattleArcadeApp_Main(ApplicationManager *appMan, int *state);
BOOL BattleArcadeApp_Exit(ApplicationManager *appMan, int *state);
void BattleArcadeApp_HandleInitialLayoutCmd(int netID, int unused, void *data, void *context);
void BattleArcadeApp_HandleResultCmd(int netID, int unused, void *data, void *context);
void BattleArcadeApp_HandleUnusedCmd(int netID, int unused, void *data, void *context);

#endif // POKEPLATINUM_APPLICATIONS_BATTLE_ARCADE_MAIN_H
