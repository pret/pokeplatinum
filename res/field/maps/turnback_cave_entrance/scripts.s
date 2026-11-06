#include "macros/scrcmd.inc"
#include "res/text/bank/turnback_cave_entrance.h"


    ScriptEntry TurnbackCaveEntrance_OnTransition
    ScriptEntry TurnbackCaveEntrance_Inscription
    ScriptEntryEnd

TurnbackCaveEntrance_OnTransition:
    SetFlag FLAG_FIRST_ARRIVAL_TURNBACK_CAVE
    Call TurnbackCaveEntrance_ResetVars
    InitTurnbackCave VAR_TURNBACK_CAVE_PILLARS_SEEN, VAR_TURNBACK_CAVE_ROOMS_VISITED
    End

TurnbackCaveEntrance_ResetVars:
    SetVar VAR_TURNBACK_CAVE_PILLARS_SEEN, 0
    SetVar VAR_TURNBACK_CAVE_ROOMS_VISITED, 0
    Return

TurnbackCaveEntrance_Inscription:
    GoToIfSet FLAG_CAUGHT_GIRATINA, TurnbackCaveEntrance_PastThreePillarsOfferUp
    EventMessage TurnbackCaveEntrance_Text_PastThreePillars
    End

TurnbackCaveEntrance_PastThreePillarsOfferUp:
    EventMessage TurnbackCaveEntrance_Text_PastThreePillarsOfferUp
    End

    .balign 4, 0
