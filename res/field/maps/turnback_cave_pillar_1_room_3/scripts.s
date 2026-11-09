#include "macros/scrcmd.inc"


    ScriptEntry TurnbackCavePillar1Room3_OnTransition
    ScriptEntryEnd

TurnbackCavePillar1Room3_OnTransition:
    Call TurnbackCavePillar1Room3_IncrementRoomsVisited
    InitTurnbackCave VAR_TURNBACK_CAVE_PILLARS_SEEN, VAR_TURNBACK_CAVE_ROOMS_VISITED
    End

TurnbackCavePillar1Room3_IncrementRoomsVisited:
    AddVar VAR_TURNBACK_CAVE_ROOMS_VISITED, 1
    Return
