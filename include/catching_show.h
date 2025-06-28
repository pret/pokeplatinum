#ifndef POKEPLATINUM_CATCHING_SHOW_H
#define POKEPLATINUM_CATCHING_SHOW_H

#include "constants/pokemon.h"

#include "field/field_system_decl.h"

#include "field_battle_data_transfer.h"

typedef struct CatchingShowPokemon {
    u16 species;
    u8 area;
    u8 rarity;
    u16 catchingPoints;
    u8 type1;
    u8 type2;
} CatchingShowPokemon;

typedef struct CatchingShow {
    CatchingShowPokemon pokemon[CATCHING_SHOW_MONS];
    u8 caughtMonsOrder[CATCHING_SHOW_MONS];
    int steps;
    int currentEncounterIndex;
    s64 startTime;
    int timePoints;
} CatchingShow;

void CatchingShow_Start(FieldSystem *fieldSystem);
void CatchingShow_End(FieldSystem *fieldSystem);
BOOL CatchingShow_CheckWildEncounter(FieldSystem *fieldSystem, int playerX, int playerY);
FieldBattleDTO *CatchingShow_GetBattleDataTransfer(FieldSystem *fieldSystem);
void CatchingShow_UpdateBattleResult(FieldSystem *fieldSystem, FieldBattleDTO *dto);
int CatchingShow_GetParkBallCount(FieldSystem *fieldSystem);
int CatchingShow_CalcCatchingPoints(FieldSystem *fieldSystem);
int CatchingShow_GetTimePoints(FieldSystem *fieldSystem);
int CatchingShow_GetTypePoints(FieldSystem *fieldSystem);

#endif // POKEPLATINUM_CATCHING_SHOW_H
