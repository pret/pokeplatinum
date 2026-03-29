#include "macros/scrcmd.inc"
#include "res/text/bank/route_221.h"


    ScriptEntry Route221_WorkerWest
    ScriptEntry Route221_WorkerEast
    ScriptEntry Route221_SignPalPark
    ScriptEntry Route221_OnTransition
    ScriptEntryEnd

Route221_OnTransition:
    GetNationalDexEnabled VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, Route221_OnTransitionEnd
    SetFlag FLAG_HIDE_ROUTE_221_WORKER_WEST
    SetFlag FLAG_HIDE_ROUTE_221_WORKER_EAST
Route221_OnTransitionEnd:
    End

Route221_WorkerWest:
    NPCMessage Route221_Text_PalParkIsntOpenYet
    End

Route221_WorkerEast:
    NPCMessage Route221_Text_GettingPalParkReady
    End

Route221_SignPalPark:
    ShowLandmarkSign Route221_Text_SignPalPark
    End

    .balign 4, 0
