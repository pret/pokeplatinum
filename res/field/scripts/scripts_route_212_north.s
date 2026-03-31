#include "macros/scrcmd.inc"
#include "res/text/bank/route_212_north.h"


    ScriptEntry Route212North_Youngster
    ScriptEntry Route212North_ArrowSignpostHearthomeCity
    ScriptEntry Route212North_SignPokemonMansion
    ScriptEntry Route212North_TrainerTips
    ScriptEntry Route212North_Collector
    ScriptEntry Route212North_PolicemanBobby
    ScriptEntry Route212North_PolicemanAlex
    ScriptEntry Route212North_PolicemanDylan
    ScriptEntry Route212North_PolicemanCaleb
    ScriptEntry Route212North_OnTransition
    ScriptEntryEnd

Route212North_OnTransition:
    GetTimeOfDay VAR_MAP_LOCAL_0
    GoToIfInRange VAR_MAP_LOCAL_0, TIMEOFDAY_MORNING, TIMEOFDAY_TWILIGHT, Route212North_SetPolicemenNoBattle
    GoToIfInRange VAR_MAP_LOCAL_0, TIMEOFDAY_NIGHT, TIMEOFDAY_LATE_NIGHT, Route212North_SetPolicemenBattle
    End

Route212North_SetPolicemenNoBattle:
    ClearFlag FLAG_HIDE_ROUTE_212_NORTH_POLICEMAN_BOBBY_NO_BATTLE
    ClearFlag FLAG_HIDE_ROUTE_212_NORTH_POLICEMAN_ALEX_NO_BATTLE
    ClearFlag FLAG_HIDE_ROUTE_212_NORTH_POLICEMAN_DYLAN_NO_BATTLE
    ClearFlag FLAG_HIDE_ROUTE_212_NORTH_POLICEMAN_CALEB_NO_BATTLE
    SetFlag FLAG_HIDE_ROUTE_212_NORTH_POLICEMAN_BOBBY
    SetFlag FLAG_HIDE_ROUTE_212_NORTH_POLICEMAN_ALEX
    SetFlag FLAG_HIDE_ROUTE_212_NORTH_POLICEMAN_DYLAN
    SetFlag FLAG_HIDE_ROUTE_212_NORTH_POLICEMAN_CALEB
    End

Route212North_SetPolicemenBattle:
    ClearFlag FLAG_HIDE_ROUTE_212_NORTH_POLICEMAN_BOBBY
    ClearFlag FLAG_HIDE_ROUTE_212_NORTH_POLICEMAN_ALEX
    ClearFlag FLAG_HIDE_ROUTE_212_NORTH_POLICEMAN_DYLAN
    ClearFlag FLAG_HIDE_ROUTE_212_NORTH_POLICEMAN_CALEB
    SetFlag FLAG_HIDE_ROUTE_212_NORTH_POLICEMAN_BOBBY_NO_BATTLE
    SetFlag FLAG_HIDE_ROUTE_212_NORTH_POLICEMAN_ALEX_NO_BATTLE
    SetFlag FLAG_HIDE_ROUTE_212_NORTH_POLICEMAN_DYLAN_NO_BATTLE
    SetFlag FLAG_HIDE_ROUTE_212_NORTH_POLICEMAN_CALEB_NO_BATTLE
    End

Route212North_Youngster:
    NPCMessage Route212North_Text_MrBacklotLikesVisitors
    End

Route212North_ArrowSignpostHearthomeCity:
    ShowArrowSign Route212North_Text_SignHearthomeCity
    End

Route212North_SignPokemonMansion:
    ShowLandmarkSign Route212North_Text_SignPokemonMansion
    End

Route212North_TrainerTips:
    ShowScrollingSign Route212North_Text_TrainerTipsReorganizeItems
    End

Route212North_Collector:
    NPCMessage Route212North_Text_FindAttractiveTree
    End

Route212North_PolicemanBobby:
    NPCMessage Route212North_Text_SayHiToPolicemen
    End

Route212North_PolicemanAlex:
    NPCMessage Route212North_Text_PatrolsDayAndNight
    End

Route212North_PolicemanDylan:
    NPCMessage Route212North_Text_WorkingHard
    End

Route212North_PolicemanCaleb:
    NPCMessage Route212North_Text_PatrolTooMuch
    End

    .balign 4, 0
