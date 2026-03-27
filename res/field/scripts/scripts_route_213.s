#include "macros/scrcmd.inc"
#include "res/text/bank/route_213.h"
#include "res/field/events/events_route_213.h"


    ScriptEntry Route213_OnTransition
    ScriptEntry Route213_GruntM
    ScriptEntry Route213_Fisherman
    ScriptEntry Route213_Beauty
    ScriptEntry Route213_Collector
    ScriptEntry Route213_ArrowSignPastoriaCity
    ScriptEntry Route213_SignHotelGrandLake
    ScriptEntry Route213_SignDrFootstepsHouse
    ScriptEntryEnd

Route213_OnTransition:
    GoToIfUnset FLAG_ROUTE_213_GRUNT_M_LEFT, Route213_CheckBadge
    End

Route213_CheckBadge:
    CheckBadgeAcquired BADGE_ID_FEN, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, TRUE, Route213_CheckShowGruntM
    End

Route213_CheckShowGruntM:
    GoToIfSet FLAG_TALKED_TO_PASTORIA_CITY_GRUNT_M, Route213_ShowGruntM
    End

Route213_ShowGruntM:
    CallIfUnset FLAG_TALKED_TO_ROUTE_213_GRUNT_M, Route213_SetGruntMPositionNearPastoria
    ClearFlag FLAG_HIDE_ROUTE_213_GRUNT_M
    End

Route213_SetGruntMPositionNearPastoria:
    SetObjectEventPos LOCALID_GRUNT_M, 654, 812
    SetObjectEventDir LOCALID_GRUNT_M, DIR_EAST
    SetObjectEventMovementType LOCALID_GRUNT_M, MOVEMENT_TYPE_LOOK_EAST
    Return

Route213_GruntM:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    GoToIfSet FLAG_TALKED_TO_ROUTE_213_GRUNT_M, Route213_GruntMEast
    Message Route213_Text_WeNeededEnergy
    CloseMessage
    FacePlayer
    ApplyMovement LOCALID_GRUNT_M, Route213_Movement_GruntMExclamationMark
    WaitMovement
    Message Route213_Text_YouWereEavesdropping
    CloseMessage
    GetPlayerDir VAR_0x8004
    GoToIfEq VAR_0x8004, DIR_WEST, Route213_GruntMLeaveWest
    GoToIfEq VAR_0x8004, DIR_EAST, Route213_GruntMLeaveEast
    GoTo Route213_GruntMLeaveNorthSouth
    End

Route213_GruntMLeaveNorthSouth:
    ApplyMovement LOCALID_GRUNT_M, Route213_Movement_GruntMLeaveNorthSouthEast
    ApplyMovement LOCALID_PLAYER, Route213_Movement_WatchGruntMLeave
    WaitMovement
    GoTo Route213_MoveGruntMEast
    End

Route213_GruntMLeaveEast:
    ApplyMovement LOCALID_GRUNT_M, Route213_Movement_GruntMLeaveNorthSouthEast
    WaitMovement
    GoTo Route213_MoveGruntMEast
    End

Route213_GruntMLeaveWest:
    ApplyMovement LOCALID_GRUNT_M, Route213_Movement_GruntMLeaveWest
    ApplyMovement LOCALID_PLAYER, Route213_Movement_WatchGruntMLeave
    WaitMovement
    GoTo Route213_MoveGruntMEast
    End

Route213_MoveGruntMEast:
    SetFlag FLAG_TALKED_TO_ROUTE_213_GRUNT_M
    RemoveObject LOCALID_GRUNT_M
    SetObjectEventPos LOCALID_GRUNT_M, 683, 833
    SetObjectEventDir LOCALID_GRUNT_M, DIR_EAST
    SetObjectEventMovementType LOCALID_GRUNT_M, MOVEMENT_TYPE_LOOK_EAST
    ClearFlag FLAG_HIDE_ROUTE_213_GRUNT_M
    AddObject LOCALID_GRUNT_M
    ReleaseAll
    End

Route213_GruntMEast:
    GetPlayerDir VAR_0x8004
    Message Route213_Text_BombPacksAWallop
    CloseMessage
    FacePlayer
    ApplyMovement LOCALID_GRUNT_M, Route213_Movement_GruntMExclamationMark
    WaitMovement
    Message Route213_Text_YoureAPersistentPest
    CloseMessage
    GetPlayerDir VAR_0x8004
    GoToIfEq VAR_0x8004, DIR_WEST, Route213_GruntMEastLeaveWest
    GoTo Route213_GruntMEastLeaveNorthSouthEast
    End

Route213_GruntMEastLeaveNorthSouthEast:
    ApplyMovement LOCALID_PLAYER, Route213_Movement_PlayerWatchGruntMEastLeave
    ApplyMovement LOCALID_GRUNT_M, Route213_Movement_GruntMEastLeaveNorthSouthEast
    WaitMovement
    GoTo Route213_Looker
    End

Route213_GruntMEastLeaveWest:
    ApplyMovement LOCALID_PLAYER, Route213_Movement_PlayerWatchGruntMEastLeave
    ApplyMovement LOCALID_GRUNT_M, Route213_Movement_GruntMEastLeaveWest
    WaitMovement
    GoTo Route213_Looker
    End

Route213_Looker:
    RemoveObject LOCALID_GRUNT_M
    SetFlag FLAG_ROUTE_213_GRUNT_M_LEFT
    ClearFlag FLAG_HIDE_ROUTE_213_LOOKER
    AddObject LOCALID_LOOKER
    Common_SetLookerBGM
    GetOverworldWeather VAR_RESULT
    CallIfEq VAR_RESULT, OVERWORLD_WEATHER_RAINING, _0261
    CallIfEq VAR_0x8004, DIR_WEST, Route213_LookerEnterWest
    CallIfEq VAR_0x8004, DIR_EAST, Route213_LookerEnterEast
    CallIfEq VAR_0x8004, DIR_NORTH, Route213_LookerEnterNorth
    CallIfEq VAR_0x8004, DIR_SOUTH, Route213_LookerEnterSouth
    Message Route213_Text_ThatIsTeamGalactic
    ApplyMovement LOCALID_LOOKER, Route213_Movement_LookerWalkOnSpotSouth
    WaitMovement
    Message Route213_Text_HowDidIMissIt
    Message Route213_Text_ThisWillNotDo
    CloseMessage
    CallIfEq VAR_0x8004, DIR_WEST, Route213_LookerLeaveWest
    CallIfEq VAR_0x8004, DIR_EAST, Route213_LookerLeaveEast
    CallIfEq VAR_0x8004, DIR_NORTH, Route213_LookerLeaveNorth
    CallIfEq VAR_0x8004, DIR_SOUTH, Route213_LookerLeaveSouth
    RemoveObject LOCALID_LOOKER
    Common_FadeToDefaultMusic4
    GetOverworldWeather VAR_RESULT
    CallIfEq VAR_RESULT, OVERWORLD_WEATHER_RAINING, _0261
    ClearFlag FLAG_HIDE_GRAND_LAKE_ROUTE_213_LOBBY_LOOKER
    ClearFlag FLAG_HIDE_VALOR_LAKEFRONT_GRUNT_M
    ReleaseAll
    End

_0261:
    PlaySE SEQ_SE_DP_T_AME
    Return

Route213_LookerEnterWest:
    ApplyMovement LOCALID_LOOKER, Route213_Movement_LookerEnterWest
    ApplyMovement LOCALID_PLAYER, Route213_Movement_PlayerWatchLookerEnterNorthWestEast
    WaitMovement
    Return

Route213_LookerEnterEast:
    ApplyMovement LOCALID_LOOKER, Route213_Movement_LookerEnterEast
    ApplyMovement LOCALID_PLAYER, Route213_Movement_PlayerWatchLookerEnterNorthWestEast
    WaitMovement
    Return

Route213_LookerEnterNorth:
    ApplyMovement LOCALID_LOOKER, Route213_Movement_LookerEnterNorth
    ApplyMovement LOCALID_PLAYER, Route213_Movement_PlayerWatchLookerEnterNorthWestEast
    WaitMovement
    Return

Route213_LookerEnterSouth:
    ApplyMovement LOCALID_LOOKER, Route213_Movement_LookerEnterSouth
    ApplyMovement LOCALID_PLAYER, Route213_Movement_PlayerWatchLookerEnterSouth
    WaitMovement
    Return

Route213_LookerLeaveWest:
    ApplyMovement LOCALID_LOOKER, Route213_Movement_LookerLeaveWest
    ApplyMovement LOCALID_PLAYER, Route213_Movement_PlayerWatchLookerLeave
    WaitMovement
    Return

Route213_LookerLeaveEast:
    ApplyMovement LOCALID_LOOKER, Route213_Movement_LookerLeaveEast
    ApplyMovement LOCALID_PLAYER, Route213_Movement_PlayerWatchLookerLeave
    WaitMovement
    Return

Route213_LookerLeaveNorth:
    ApplyMovement LOCALID_LOOKER, Route213_Movement_LookerLeaveNorth
    ApplyMovement LOCALID_PLAYER, Route213_Movement_PlayerWatchLookerLeave
    WaitMovement
    Return

Route213_LookerLeaveSouth:
    ApplyMovement LOCALID_LOOKER, Route213_Movement_LookerLeaveSouth
    ApplyMovement LOCALID_PLAYER, Route213_Movement_PlayerWatchLookerLeave
    WaitMovement
    Return

    .balign 4, 0
Route213_Movement_LookerEnterEast:
    WalkFastEast 10
    WalkFastNorth 2
    WalkOnSpotFastEast
    EndMovement

    .balign 4, 0
Route213_Movement_LookerEnterWest:
    WalkFastEast 10
    WalkFastNorth 2
    WalkFastEast 2
    EndMovement

    .balign 4, 0
Route213_Movement_LookerEnterSouth:
    WalkFastEast 10
    WalkFastNorth 3
    WalkFastEast
    EndMovement

    .balign 4, 0
Route213_Movement_LookerEnterNorth:
    WalkFastEast 10
    WalkFastNorth
    WalkFastEast
    EndMovement

    .balign 4, 0
Route213_Movement_LookerWalkOnSpotSouth:
    WalkOnSpotFastSouth
    EndMovement

    .balign 4, 0
Route213_Movement_LookerLeaveEast:
    WalkFastNorth
    WalkFastEast 10
    EndMovement

    .balign 4, 0
Route213_Movement_LookerLeaveWest:
    WalkFastNorth
    WalkFastEast 10
    EndMovement

    .balign 4, 0
Route213_Movement_LookerLeaveSouth:
    WalkFastSouth
    WalkFastEast 4
    WalkFastNorth
    WalkFastEast 6
    EndMovement

    .balign 4, 0
Route213_Movement_LookerLeaveNorth:
    WalkFastNorth 2
    WalkFastEast 10
    EndMovement

    .balign 4, 0
Route213_Movement_GruntMExclamationMark:
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
Route213_Movement_GruntMLeaveNorthSouthEast:
    WalkFastEast 10
    EndMovement

    .balign 4, 0
Route213_Movement_GruntMLeaveWest:
    WalkFastSouth 2
    WalkFastEast 9
    EndMovement

    .balign 4, 0
Route213_Movement_GruntMEastLeaveNorthSouthEast:
    WalkFastEast 4
    WalkFastNorth
    WalkFastEast 6
    EndMovement

    .balign 4, 0
Route213_Movement_GruntMEastLeaveWest:
    WalkFastNorth
    WalkFastEast 10
    EndMovement

    .balign 4, 0
Route213_Movement_PlayerWatchGruntMEastLeave:
    Delay8
    FaceEast
    EndMovement

    .balign 4, 0
Route213_Movement_PlayerWatchLookerEnterNorthWestEast:
    Delay4 10
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
Route213_Movement_PlayerWatchLookerEnterSouth:
    Delay4 11
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
Route213_Movement_PlayerWatchLookerLeave:
    Delay4 3
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
Route213_Movement_WatchGruntMLeave:
    Delay8
    WalkOnSpotNormalEast
    EndMovement

Route213_Beauty:
    NPCMessage Route213_Text_RatherPoolThanSea
    End

Route213_Collector:
    NPCMessage Route213_Text_SomethingOnBigCliff
    End

Route213_Fisherman:
    NPCMessage Route213_Text_TheresAFancyHotel
    End

Route213_ArrowSignPastoriaCity:
    ShowArrowSign Route213_Text_SignRt213PastoriaCity
    End

Route213_SignHotelGrandLake:
    ShowLandmarkSign Route213_Text_SignHotelGrandLake
    End

Route213_SignDrFootstepsHouse:
    ShowLandmarkSign Route213_Text_SignDrFootstepsHouse
    End

    .balign 4, 0
