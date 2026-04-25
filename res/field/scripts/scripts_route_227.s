#include "macros/scrcmd.inc"
#include "res/text/bank/route_227.h"
#include "res/field/events/events_route_227.h"


    ScriptEntry Route227_TriggerWakeRival
    ScriptEntry Route227_ArrowSignpostStarkMountain
    ScriptEntry Route227_TriggerBuck
    ScriptEntry Route227_Buck
    ScriptEntryEnd

Route227_TriggerWakeRival:
    LockAll
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 739, Route227_PlayerWalkWestOnSpotNorth
    ApplyMovement LOCALID_CRASHER_WAKE, Route227_Movement_WakeNoticePlayer
    ApplyMovement LOCALID_RIVAL, Route227_Movement_RivalNoticePlayer
    ApplyMovement LOCALID_PLAYER, Route227_Movement_PlayerFaceNorth
    WaitMovement
    BufferPlayerName 0
    Message Route227_Text_IfItIsntPlayer
    CloseMessage
    ApplyMovement LOCALID_RIVAL, Route227_Movement_RivalWalkOnSpotWest
    WaitMovement
    WaitTime 15, VAR_RESULT
    BufferRivalName 1
    Message Route227_Text_ThatsMyMaster
    CloseMessage
    ApplyMovement LOCALID_CRASHER_WAKE, Route227_Movement_WakeWalkOnSpotEast
    WaitMovement
    Message Route227_Text_StillTroubleUnderstanding
    BufferRivalName 1
    Message Route227_Text_DontBeThatWay
    ApplyMovement LOCALID_CRASHER_WAKE, Route227_Movement_WakeWalkOnSpotSouth
    WaitMovement
    BufferPlayerName 0
    Message Route227_Text_BetterBeFullyPrepared
    CloseMessage
    ApplyMovement LOCALID_CRASHER_WAKE, Route227_Movement_WakeLeave
    ApplyMovement LOCALID_PLAYER, Route227_Movement_PlayerWalkWestWatchWakeLeave
    ApplyMovement LOCALID_RIVAL, Route227_Movement_RivalWatchWakeLeave
    WaitMovement
    RemoveObject LOCALID_CRASHER_WAKE
    ApplyMovement LOCALID_RIVAL, Route227_Movement_RivalWalkOnSpotSouth
    ApplyMovement LOCALID_PLAYER, Route227_Movement_PlayerWalkToRival
    WaitMovement
    WaitTime 5, VAR_RESULT
    BufferRivalName 1
    Message Route227_Text_OffToBattleFrontier
    Message Route227_Text_WaitForMe
    CloseMessage
    ApplyMovement LOCALID_RIVAL, Route227_Movement_RivalLeave
    ApplyMovement LOCALID_PLAYER, Route227_Movement_PlayerWatchRivalLeave
    WaitMovement
    RemoveObject LOCALID_RIVAL
    SetVar VAR_ROUTE_227_WAKE_RIVAL_STATE, 1
    ReleaseAll
    End

Route227_PlayerWalkWestOnSpotNorth:
    ApplyMovement LOCALID_PLAYER, Route227_Movement_PlayerWalkWestOnSpotNorth
    WaitMovement
    Return

    .balign 4, 0
Route227_Movement_PlayerWalkWestOnSpotNorth:
    WalkNormalWest
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
Route227_Movement_PlayerFaceNorth:
    FaceNorth
    EndMovement

    .balign 4, 0
Route227_Movement_PlayerWalkToRival:
    WalkNormalEast
    WalkNormalNorth
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
Route227_Movement_PlayerWatchRivalLeave:
    Delay8
    WalkOnSpotNormalSouth
    EndMovement

Route227_UnusedMovement:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
Route227_Movement_PlayerWalkWestWatchWakeLeave:
    WalkNormalWest
    WalkOnSpotNormalEast
    Delay4
    WalkOnSpotNormalSouth
    EndMovement

Route227_UnusedMovement2:
    Delay8
    WalkOnSpotNormalWest
    Delay4
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
Route227_Movement_RivalNoticePlayer:
    WalkOnSpotNormalSouth
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
Route227_Movement_RivalWalkOnSpotWest:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
Route227_Movement_RivalWatchWakeLeave:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
Route227_Movement_RivalWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
Route227_Movement_RivalLeave:
    WalkFastSouth 9
    EndMovement

Route227_UnusedMovement3:
    WalkFastSouth 9
    EndMovement

    .balign 4, 0
Route227_Movement_WakeNoticePlayer:
    WalkOnSpotNormalSouth
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
Route227_Movement_WakeWalkOnSpotEast:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
Route227_Movement_WakeWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

Route227_UnusedMovement4:
    Delay8
    WalkOnSpotNormalEast
    EndMovement

Route227_UnusedMovement5:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
Route227_Movement_WakeLeave:
    Delay8 2
    WalkNormalSouth 9
    EndMovement

Route227_UnusedMovement6:
    WalkNormalSouth 9
    EndMovement

Route227_ArrowSignpostStarkMountain:
    ShowArrowSign Route227_Text_SignRt227StarkMountain
    End

Route227_Buck:
    NPCMessage Route227_Text_YoureInCharge
    End

Route227_TriggerBuck:
    LockAll
    ApplyMovement LOCALID_BUCK, Route227_Movement_BuckNoticePlayer
    ApplyMovement LOCALID_PLAYER, Route227_Movement_PlayerFaceBuck
    WaitMovement
    GoTo Route227_AskPatrolStarkMountain
    End

Route227_AskPatrolStarkMountain:
    BufferPlayerName 0
    Message Route227_Text_PatrolStarkMountain
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Route227_GoonsCausingTrouble
    GoToIfEq VAR_RESULT, MENU_NO, Route227_IllKeepAsking
    End

Route227_IllKeepAsking:
    Message Route227_Text_IllKeepAsking
    GoTo Route227_AskPatrolStarkMountain
    End

Route227_GoonsCausingTrouble:
    ApplyMovement LOCALID_BUCK, Route227_Movement_BuckWalkOnSpotNorth
    WaitMovement
    Message Route227_Text_GoonsCausingTrouble
    ApplyMovement LOCALID_BUCK, Route227_Movement_BuckWalkOnSpotSouth
    WaitMovement
    Message Route227_Text_WhatMe
    CloseMessage
    SetVar VAR_ROUTE_227_BUCK_STATE, 1
    ReleaseAll
    End

    .balign 4, 0
Route227_Movement_PlayerFaceBuck:
    FaceNorth
    EndMovement

Route227_UnusedMovement7:
    Delay8
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
Route227_Movement_BuckNoticePlayer:
    WalkOnSpotNormalSouth
    EmoteExclamationMark
    WalkNormalSouth
    EndMovement

    .balign 4, 0
Route227_Movement_BuckWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
Route227_Movement_BuckWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement
