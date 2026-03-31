#include "macros/scrcmd.inc"
#include "res/text/bank/route_212_south.h"


    ScriptEntry Route212South_SchoolKidM
    ScriptEntry Route212South_Lady
    ScriptEntry Route212South_Collector
    ScriptEntry Route212South_ArrowSignPastoriaCity
    ScriptEntry Route212South_SignShardsWanted
    ScriptEntry Route212South_PolicemanDanny
    ScriptEntry Route212South_OnTransition
    ScriptEntry Route212South_TrainerTips
    ScriptEntryEnd

Route212South_OnTransition:
    GetTimeOfDay VAR_MAP_LOCAL_0
    GoToIfInRange VAR_MAP_LOCAL_0, TIMEOFDAY_MORNING, TIMEOFDAY_TWILIGHT, Route212South_SetPolicemanNoBattle
    GoToIfInRange VAR_MAP_LOCAL_0, TIMEOFDAY_NIGHT, TIMEOFDAY_LATE_NIGHT, Route212South_SetPolicemanBattle
    End

Route212South_SetPolicemanNoBattle:
    ClearFlag FLAG_HIDE_ROUTE_212_SOUTH_POLICEMAN_DANNY_NO_BATTLE
    SetFlag FLAG_HIDE_ROUTE_212_SOUTH_POLICEMAN_DANNY
    End

Route212South_SetPolicemanBattle:
    ClearFlag FLAG_HIDE_ROUTE_212_SOUTH_POLICEMAN_DANNY
    SetFlag FLAG_HIDE_ROUTE_212_SOUTH_POLICEMAN_DANNY_NO_BATTLE
    End

Route212South_SchoolKidM:
    NPCMessage Route212South_Text_CrossLogsOnBike
    End

Route212South_Lady:
    NPCMessage Route212South_Text_ImNotStuck
    End

Route212South_Collector:
    NPCMessage Route212South_Text_HowAboutPokemonMansion
    End

Route212South_ArrowSignPastoriaCity:
    ShowArrowSign Route212South_Text_SignPastoriaCity
    End

Route212South_SignShardsWanted:
    ShowLandmarkSign Route212South_Text_SignShardsWanted
    End

Route212South_TrainerTips:
    ShowScrollingSign Route212South_Text_TrainerTipsBog
    End

Route212South_PolicemanDanny:
    NPCMessage Route212South_Text_ConstantPatrol
    End
