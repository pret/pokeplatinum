#include "macros/scrcmd.inc"


    ScriptEntry TurnbackCavePillar3Room6_OnTransition
    ScriptEntryEnd

TurnbackCavePillar3Room6_OnTransition:
    Call TurnbackCavePillar3Room6_IncrementRoomsVisited
    InitTurnbackCave VAR_TURNBACK_CAVE_PILLARS_SEEN, VAR_TURNBACK_CAVE_ROOMS_VISITED
    End

TurnbackCavePillar3Room6_IncrementRoomsVisited:
    AddVar VAR_TURNBACK_CAVE_ROOMS_VISITED, 1
    Return
