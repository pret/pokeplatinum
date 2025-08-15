#ifndef POKEPLATINUM_CATCHING_SHOW_H
#define POKEPLATINUM_CATCHING_SHOW_H

#include "constants/pokemon.h"

#include "field/field_system_decl.h"

#include "field_battle_data_transfer.h"

// Initializes where your migrated Pokemon will spawn, and starts the timer.
// Called on entry into Pal Park.
void CatchingShow_Start(FieldSystem *fieldSystem);

// Calculates how long you've been in Pal Park.
// Called when returning to the gate from the park.
void CatchingShow_End(FieldSystem *fieldSystem);

// Your species score is the sum of point values ascribed to each species.
// See files/arc/ppark.json for the point values of each.
int CatchingShow_CalcCatchingPoints(FieldSystem *fieldSystem);

// There is a soft time limit of 1000 seconds.
// If you catch all 6 Pokemon within that time,
// you earn 2 points per second left on the clock.
int CatchingShow_GetTimePoints(FieldSystem *fieldSystem);

// This is computed in two phases.
// First, the types of each Pokemon you caught are compared
// to the types of the Pokemon caught immediately prior inside
// the park. You earn 200 points if none of them match.
// Second, you earn an extra 50 points for each unique type
// among the Pokemon caught.
int CatchingShow_GetTypePoints(FieldSystem *fieldSystem);

BOOL CatchingShow_CheckWildEncounter(FieldSystem *fieldSystem, int playerX, int playerY);

// Called if CatchingShow_CheckWildEncounter succeeds. Loads the
// migrated Pokemon as the opponent and sets the Pal Park
// state.
FieldBattleDTO *CatchingShow_GetBattleDataTransfer(FieldSystem *fieldSystem);

// Called on return from the battle. Action is based on
// whether the player caught the Pokemon or fled from it.
// Other outcomes are unexpected and trip an assert.
void FieldSystem_UpdateCatchingShowResult(FieldSystem *fieldSystem, FieldBattleDTO *dto);

// Determines how many of the Pokemon in Pal Park were not
// caught.
int FieldSystem_GetParkBallCount(FieldSystem *fieldSystem);

#endif // POKEPLATINUM_CATCHING_SHOW_H
