#include "macros/scrcmd.inc"
#include "res/text/bank/route_217.h"
#include "res/field/events/events_route_217.h"


    ScriptEntry Route217_IceRock
    ScriptEntry Route217_ArrowSignpostLakeAcuity
    ScriptEntry Route217_SnowpointNPCF
    ScriptEntry Route217_TriggerMaylene
    ScriptEntryEnd

Route217_IceRock:
    EventMessage Route217_Text_BoulderEncrustedWithIce
    End

Route217_ArrowSignpostLakeAcuity:
    ShowArrowSign Route217_Text_SignRt217LakeAcuity
    End

Route217_SnowpointNPCF:
    NPCMessage Route217_Text_ImUsingDowsingMachine
    End

Route217_TriggerMaylene:
    LockAll
    ClearFlag FLAG_HIDE_ROUTE_217_MAYLENE
    AddObject LOCALID_MAYLENE
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 302, Route217_MayleneEnterX302
    CallIfEq VAR_0x8004, 303, Route217_MayleneEnterX303
    BufferPlayerName 0
    Message Route217_Text_OhPlayer
    CloseMessage
    ApplyMovement LOCALID_PLAYER, Route217_Movement_PlayerWalkOnSpotSouth
    WaitMovement
    ApplyMovement LOCALID_MAYLENE, Route217_Movement_MayleneWalkNorth
    WaitMovement
    Message Route217_Text_GoingToSnowpointCity
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 302, Route217_MayleneLeaveX302
    CallIfEq VAR_0x8004, 303, Route217_MayleneLeaveX303
    RemoveObject LOCALID_MAYLENE
    SetVar VAR_ROUTE_217_STATE, 1
    SetFlag FLAG_HIDE_VEILSTONE_CITY_GYM_MAYLENE
    ReleaseAll
    End

Route217_MayleneEnterX302:
    ApplyMovement LOCALID_MAYLENE, Route217_Movement_MayleneEnterX302
    WaitMovement
    Return

Route217_MayleneEnterX303:
    ApplyMovement LOCALID_MAYLENE, Route217_Movement_MayleneEnterX303
    WaitMovement
    Return

Route217_MayleneLeaveX302:
    ApplyMovement LOCALID_PLAYER, Route217_Movement_PlayerWatchMayleneLeave
    ApplyMovement LOCALID_MAYLENE, Route217_Movement_MayleneLeaveX302
    WaitMovement
    Return

Route217_MayleneLeaveX303:
    ApplyMovement LOCALID_PLAYER, Route217_Movement_PlayerWatchMayleneLeave
    ApplyMovement LOCALID_MAYLENE, Route217_Movement_MayleneLeaveX303
    WaitMovement
    Return

    .balign 4, 0
Route217_Movement_PlayerWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
Route217_Movement_PlayerWatchMayleneLeave:
    Delay8 2
    Delay4
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
Route217_Movement_MayleneEnterX302:
    WalkNormalNorth 4
    WalkNormalWest 3
    WalkNormalNorth
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
Route217_Movement_MayleneEnterX303:
    WalkNormalNorth 4
    WalkNormalWest 2
    WalkNormalNorth
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
Route217_Movement_MayleneWalkNorth:
    WalkNormalNorth
    EndMovement

    .balign 4, 0
Route217_Movement_MayleneLeaveX302:
    WalkNormalEast
    WalkNormalNorth 3
    WalkNormalEast 2
    WalkNormalNorth 9
    EndMovement

    .balign 4, 0
Route217_Movement_MayleneLeaveX303:
    WalkNormalWest
    WalkNormalNorth 3
    WalkNormalEast 3
    WalkNormalNorth 9
    EndMovement
