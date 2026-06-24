#include "macros/scrcmd.inc"
#include "res/text/bank/route_206.h"


    ScriptEntry Route206_OnTransition
    ScriptEntry Route206_OnResume
    ScriptEntry Route206_Hiker
    ScriptEntry Route206_ArrowSignpostEternaCity
    ScriptEntry Route206_ArrowSignpostOreburghCity
    ScriptEntryEnd

Route206_OnTransition:
    SetFlag FLAG_FIRST_ARRIVAL_CYCLING_ROAD_UNUSED
    End

Route206_OnResume:
    CallIfSet FLAG_ON_CYCLING_ROAD, Route206_ForceBicycling
    GetPreviousMapID VAR_MAP_LOCAL_0x0
    GoToIfEq VAR_MAP_LOCAL_0x0, MAP_HEADER_ROUTE_206_CYCLING_ROAD_NORTH_GATE, Route206_TrySetFlagsCyclingRoad
    GoToIfEq VAR_MAP_LOCAL_0x0, MAP_HEADER_ROUTE_206_CYCLING_ROAD_SOUTH_GATE, Route206_TrySetFlagsCyclingRoad
    End

Route206_TrySetFlagsCyclingRoad:
    GoToIfSet FLAG_MAP_LOCAL_0x3, Route206_OnResumeEnd
    GetPlayerMapPos VAR_MAP_LOCAL_0x0, VAR_MAP_LOCAL_0x1
    GoToIfLt VAR_MAP_LOCAL_0x0, 299, Route206_OnResumeEnd
    GoToIfGt VAR_MAP_LOCAL_0x0, 306, Route206_OnResumeEnd
    GoToIfEq VAR_MAP_LOCAL_0x1, 576, Route206_SetFlagsCyclingRoad
    GoToIfEq VAR_MAP_LOCAL_0x1, 681, Route206_SetFlagsCyclingRoad
    End

Route206_SetFlagsCyclingRoad:
    SetFlag FLAG_MAP_LOCAL_0x3
    SetFlag FLAG_ON_CYCLING_ROAD
    SetCyclingBGM
    ForceBicycling TRUE
    End

Route206_OnResumeEnd:
    End

Route206_ForceBicycling:
    ForceBicycling TRUE
    Return

Route206_Hiker:
    NPCMessage Route206_Text_TwoCavesOnRoute206
    End

Route206_ArrowSignpostEternaCity:
    ShowArrowSign Route206_Text_SignEternaCity
    End

Route206_ArrowSignpostOreburghCity:
    ShowArrowSign Route206_Text_SignOreburghCity
    End

    .balign 4, 0
