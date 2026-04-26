#include "macros/scrcmd.inc"
#include "res/text/bank/route_228.h"


    ScriptEntry Route228_ArrowSignpostRt226
    ScriptEntry Route228_ArrowSignpostRt229
    ScriptEntry Route228_OnTransition
    ScriptEntry Route228_OnLoad
    ScriptEntryEnd

Route228_OnTransition:
    CallIfNe VAR_ROCK_PEAK_RUINS_STATE, RUINS_STATE_CAUGHT_REGI, Route228_ResetRockPeakRuinsState
    CheckPartyHasFatefulEncounterRegigigas VAR_MAP_LOCAL_1
    GoToIfEq VAR_MAP_LOCAL_1, FALSE, Route228_RemoveWarpRockPeakRuinsWithRegirock
    GoToIfEq VAR_MAP_LOCAL_1, TRUE, Route228_RemoveWarpRockPeakRuinsWithoutRegirock
    End

Route228_ResetRockPeakRuinsState:
    SetVar VAR_ROCK_PEAK_RUINS_STATE, 0
    Return

Route228_OnLoad:
    CheckPartyHasFatefulEncounterRegigigas VAR_MAP_LOCAL_1
    GoToIfEq VAR_MAP_LOCAL_1, FALSE, Route228_RemoveWarpRockPeakRuinsWithRegirock
    GoToIfEq VAR_MAP_LOCAL_1, TRUE, Route228_RemoveWarpRockPeakRuinsWithoutRegirock
    End

Route228_RemoveWarpRockPeakRuinsWithRegirock:
    SetWarpEventPos 5, 783, 339
    End

Route228_RemoveWarpRockPeakRuinsWithoutRegirock:
    SetWarpEventPos 4, 783, 339
    End

Route228_ArrowSignpostRt226:
    ShowArrowSign Route228_Text_SignRt228Rt226
    End

Route228_ArrowSignpostRt229:
    ShowArrowSign Route228_Text_SignRt228Rt229
    End

    .balign 4, 0
