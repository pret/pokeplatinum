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
    GetPreviousMapID VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, MAP_HEADER_ROUTE_206_CYCLING_ROAD_NORTH_GATE, Route206_TrySetFlagsCyclingRoad
    GoToIfEq VAR_MAP_LOCAL_0, MAP_HEADER_ROUTE_206_CYCLING_ROAD_SOUTH_GATE, Route206_TrySetFlagsCyclingRoad
    End

Route206_TrySetFlagsCyclingRoad:
    GoToIfSet FLAG_UNK_0x0003, Route206_OnResumeEnd
    GetPlayerMapPos VAR_MAP_LOCAL_0, VAR_MAP_LOCAL_1
    GoToIfLt VAR_MAP_LOCAL_0, 299, Route206_OnResumeEnd
    GoToIfGt VAR_MAP_LOCAL_0, 306, Route206_OnResumeEnd
    GoToIfEq VAR_MAP_LOCAL_1, 576, Route206_SetFlagsCyclingRoad
    GoToIfEq VAR_MAP_LOCAL_1, 681, Route206_SetFlagsCyclingRoad
    End

Route206_SetFlagsCyclingRoad:
    SetFlag FLAG_UNK_0x0003
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
    NPCMessage Route206_Text_IHeardThereWereTwoCavesOnRoute206
    End

Route206_ArrowSignpostEternaCity:
    ShowArrowSign Route206_Text_Rt206EternaCity
    End

Route206_ArrowSignpostOreburghCity:
    ShowArrowSign Route206_Text_Rt206OreburghCity
    End

    .balign 4, 0
