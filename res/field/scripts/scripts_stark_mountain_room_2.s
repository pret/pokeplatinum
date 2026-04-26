#include "macros/scrcmd.inc"
#include "res/text/bank/stark_mountain_room_2.h"
#include "res/field/events/events_stark_mountain_room_2.h"


    ScriptEntry StarkMountainRoom2_TriggerBuckStartFollowing
    ScriptEntry StarkMountainRoom2_TriggerPlayerLeaveBuck
    ScriptEntry StarkMountainRoom2_TriggerBuckLeavePlayer
    ScriptEntry StarkMountainRoom2_Unused4
    ScriptEntry StarkMountainRoom2_Unused5
    ScriptEntry StarkMountainRoom2_OnTransition
    ScriptEntryEnd

StarkMountainRoom2_OnTransition:
    GoToIfLt VAR_STARK_MOUNTAIN_ROOM_2_FOLLOWER_BUCK_STATE, 2, StarkMountainRoom2_ResetFollowerBuckState
    End

StarkMountainRoom2_ResetFollowerBuckState:
    SetVar VAR_STARK_MOUNTAIN_ROOM_2_FOLLOWER_BUCK_STATE, 0
    End

StarkMountainRoom2_TriggerBuckStartFollowing:
    LockAll
    SetPlayerBike FALSE
    CallIfUnset FLAG_TALKED_TO_STARK_MOUNTAIN_ROOM_2_BUCK, StarkMountainRoom2_BuckEnterStartFollowing
    CallIfSet FLAG_TALKED_TO_STARK_MOUNTAIN_ROOM_2_BUCK, StarkMountainRoom2_BuckStartFollowing
    BufferPlayerName 0
    PlayFanfare SEQ_GONIN
    Message StarkMountainRoom2_Text_DecidedToGoWithBuck
    WaitFanfare
    SetFlag FLAG_TALKED_TO_STARK_MOUNTAIN_ROOM_2_BUCK
    SetVar VAR_STARK_MOUNTAIN_ROOM_2_FOLLOWER_BUCK_STATE, 1
    Message StarkMountainRoom2_Text_IllKeepPokemonHealthy
    WaitButton
    CloseMessage
    SetVar VAR_PARTNER_TRAINER_ID, TRAINER_BUCK_STARK_MOUNTAIN
    SetHasPartner
    SetMovementType LOCALID_BUCK, MOVEMENT_TYPE_FOLLOW_PLAYER
    ReleaseAll
    End

StarkMountainRoom2_Unused:
    Return

StarkMountainRoom2_BuckEnterStartFollowing:
    SetObjectEventPos LOCALID_BUCK, 42, 78
    SetObjectEventDir LOCALID_BUCK, DIR_NORTH
    SetObjectEventMovementType LOCALID_BUCK, MOVEMENT_TYPE_LOOK_NORTH
    ClearFlag FLAG_HIDE_STARK_MOUNTAIN_ROOM_2_BUCK
    AddObject LOCALID_BUCK
    ApplyMovement LOCALID_BUCK, StarkMountainRoom2_Movement_BuckEnter
    WaitMovement
    ApplyMovement LOCALID_PLAYER, StarkMountainRoom2_Movement_PlayerWalkOnSpotSouth
    WaitMovement
    BufferPlayerName 0
    Message StarkMountainRoom2_Text_LetsTeamUp
    CloseMessage
    Return

StarkMountainRoom2_BuckStartFollowing:
    SetObjectEventPos LOCALID_BUCK, 42, 68
    SetObjectEventDir LOCALID_BUCK, DIR_NORTH
    SetObjectEventMovementType LOCALID_BUCK, MOVEMENT_TYPE_LOOK_NORTH
    ApplyMovement LOCALID_BUCK, StarkMountainRoom2_Movement_BuckWalkOnSpotSouth
    WaitMovement
    Message StarkMountainRoom2_Text_LetsGoTogether
    Return

    .balign 4, 0
StarkMountainRoom2_Movement_BuckEnter:
    WalkNormalNorth 8
    EndMovement

StarkMountainRoom2_UnusedMovement:
    WalkNormalNorth
    EndMovement

    .balign 4, 0
StarkMountainRoom2_Movement_PlayerWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

StarkMountainRoom2_UnusedMovement2:
    WalkNormalNorth
    EndMovement

StarkMountainRoom2_TriggerPlayerLeaveBuck:
    LockAll
    ApplyMovement LOCALID_BUCK, StarkMountainRoom2_Movement_BuckWalkOnSpotSouth2
    ApplyMovement LOCALID_PLAYER, StarkMountainRoom2_Movement_PlayerWalkOnSpotNorth
    WaitMovement
    Message StarkMountainRoom2_Text_IllStickAround
    CloseMessage
    SetVar VAR_STARK_MOUNTAIN_ROOM_2_FOLLOWER_BUCK_STATE, 0
    ClearHasPartner
    SetMovementType LOCALID_BUCK, MOVEMENT_TYPE_LOOK_SOUTH
    ApplyMovement LOCALID_BUCK, StarkMountainRoom2_Movement_BuckWalkNorth
    WaitMovement
    ReleaseAll
    End

    .balign 4, 0
StarkMountainRoom2_Movement_PlayerWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
StarkMountainRoom2_Movement_BuckWalkNorth:
    WalkNormalNorth
    EndMovement

    .balign 4, 0
StarkMountainRoom2_Movement_BuckWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
StarkMountainRoom2_Movement_BuckWalkOnSpotSouth2:
    WalkOnSpotNormalSouth
    EndMovement

StarkMountainRoom2_TriggerBuckLeavePlayer:
    LockAll
    ClearHasPartner
    SetMovementType LOCALID_BUCK, MOVEMENT_TYPE_LOOK_SOUTH
    GetPlayerDir VAR_RESULT
    GoToIfEq VAR_RESULT, DIR_NORTH, StarkMountainRoom2_BuckWalkToRoom3EntranceNorth
    GoTo StarkMountainRoom2_BuckWalkToRoom3Entrance
    End

StarkMountainRoom2_BuckWalkToRoom3EntranceNorth:
    ApplyMovement LOCALID_BUCK, StarkMountainRoom2_Movement_BuckWalkNorthOnSpotWest
    ApplyMovement LOCALID_PLAYER, StarkMountainRoom2_Movement_PlayerMoveAside
    WaitMovement
    GoTo StarkMountainRoom2_HereWeAre
    End

StarkMountainRoom2_BuckWalkToRoom3Entrance:
    ApplyMovement LOCALID_BUCK, StarkMountainRoom2_Movement_BuckWalkWest
    ApplyMovement LOCALID_PLAYER, StarkMountainRoom2_Movement_PlayerMoveAside
    WaitMovement
    GoTo StarkMountainRoom2_HereWeAre
    End

StarkMountainRoom2_HereWeAre:
    ApplyMovement LOCALID_BUCK, StarkMountainRoom2_Movement_BuckWalkOnSpotNorthWest
    WaitMovement
    BufferPlayerName 0
    Message StarkMountainRoom2_Text_HereWeAre
    CloseMessage
    ApplyMovement LOCALID_BUCK, StarkMountainRoom2_Movement_BuckEnterRoom3
    WaitMovement
    WaitSE SEQ_SE_CONFIRM
    PlaySE SEQ_SE_DP_KAIDAN2
    RemoveObject LOCALID_BUCK
    WaitSE SEQ_SE_DP_KAIDAN2
    SetVar VAR_STARK_MOUNTAIN_ROOM_2_FOLLOWER_BUCK_STATE, 2
    ReleaseAll
    End

    .balign 4, 0
StarkMountainRoom2_Movement_PlayerMoveAside:
    WalkNormalWest
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
StarkMountainRoom2_Movement_BuckWalkNorthOnSpotWest:
    WalkNormalNorth
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
StarkMountainRoom2_Movement_BuckWalkWest:
    WalkNormalWest
    EndMovement

    .balign 4, 0
StarkMountainRoom2_Movement_BuckWalkOnSpotNorthWest:
    WalkOnSpotNormalNorth
    Delay8 2
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
StarkMountainRoom2_Movement_BuckEnterRoom3:
    WalkNormalNorth
    EndMovement

StarkMountainRoom2_Unused4:
    NPCMessage StarkMountainRoom2_Text_Dummy6
    End

StarkMountainRoom2_Unused5:
    NPCMessage StarkMountainRoom2_Text_Dummy7
    End

    .balign 4, 0
