#include "macros/scrcmd.inc"
#include "res/text/bank/victory_road_1f_room_2.h"
#include "res/field/events/events_victory_road_1f_room_2.h"


    ScriptEntry VictoryRoad1FRoom2_TriggerStartFollowingMarley
    ScriptEntry VictoryRoad1FRoom2_TriggerPlayerLeaveMarley
    ScriptEntry VictoryRoad1FRoom2_TriggerMarleyLeavePlayer
    ScriptEntry VictoryRoad1FRoom2_OnTransition
    ScriptEntryEnd

VictoryRoad1FRoom2_OnTransition:
    GoToIfUnset FLAG_TRAVELED_WITH_MARLEY, VictoryRoad1FRoom2_ResetFollowerMarleyState
    End

VictoryRoad1FRoom2_ResetFollowerMarleyState:
    SetVar VAR_VICTORY_ROAD_1F_ROOM_2_FOLLOWER_MARLEY_STATE, 0
    End

VictoryRoad1FRoom2_TriggerStartFollowingMarley:
    LockAll
    SetPlayerBike FALSE
    ApplyMovement LOCALID_MARLEY, VictoryRoad1FRoom2_Movement_MarleyNoticePlayer
    WaitMovement
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 55, VictoryRoad1FRoom2_MarleyWalkToPlayerZ55
    GoToIfEq VAR_0x8005, 56, VictoryRoad1FRoom2_MarleyWalkToPlayerZ56
    GoToIfEq VAR_0x8005, 57, VictoryRoad1FRoom2_MarleyWalkToPlayerZ57
    GoToIfEq VAR_0x8005, 58, VictoryRoad1FRoom2_MarleyWalkToPlayerZ58
    GoToIfEq VAR_0x8005, 59, VictoryRoad1FRoom2_MarleyWalkToPlayerZ59
    GoToIfEq VAR_0x8005, 60, VictoryRoad1FRoom2_MarleyWalkToPlayerZ60
    End

VictoryRoad1FRoom2_MarleyWalkToPlayerZ55:
    ApplyMovement LOCALID_MARLEY, VictoryRoad1FRoom2_Movement_MarleyWalkToPlayerZ55
    WaitMovement
    GoTo VictoryRoad1FRoom2_StartFollowingMarley

VictoryRoad1FRoom2_MarleyWalkToPlayerZ56:
    ApplyMovement LOCALID_MARLEY, VictoryRoad1FRoom2_Movement_MarleyWalkToPlayerZ56
    WaitMovement
    GoTo VictoryRoad1FRoom2_StartFollowingMarley

VictoryRoad1FRoom2_MarleyWalkToPlayerZ57:
    ApplyMovement LOCALID_MARLEY, VictoryRoad1FRoom2_Movement_MarleyWalkToPlayerZ57
    WaitMovement
    GoTo VictoryRoad1FRoom2_StartFollowingMarley

VictoryRoad1FRoom2_MarleyWalkToPlayerZ58:
    ApplyMovement LOCALID_MARLEY, VictoryRoad1FRoom2_Movement_MarleyWalkToPlayerZ58
    WaitMovement
    GoTo VictoryRoad1FRoom2_StartFollowingMarley

VictoryRoad1FRoom2_MarleyWalkToPlayerZ59:
    ApplyMovement LOCALID_MARLEY, VictoryRoad1FRoom2_Movement_MarleyWalkToPlayerZ59
    WaitMovement
    GoTo VictoryRoad1FRoom2_StartFollowingMarley

VictoryRoad1FRoom2_MarleyWalkToPlayerZ60:
    ApplyMovement LOCALID_MARLEY, VictoryRoad1FRoom2_Movement_MarleyWalkToPlayerZ60
    WaitMovement
    GoTo VictoryRoad1FRoom2_StartFollowingMarley

VictoryRoad1FRoom2_StartFollowingMarley:
    BufferPlayerName 0
    CallIfUnset FLAG_TALKED_TO_VICTORY_ROAD_1F_ROOM_2_MARLEY, VictoryRoad1FRoom2_LetMeGoWithYou
    CallIfSet FLAG_TALKED_TO_VICTORY_ROAD_1F_ROOM_2_MARLEY, VictoryRoad1FRoom2_YouTookSoLong
    BufferPlayerName 0
    PlayFanfare SEQ_GONIN
    Message VictoryRoad1FRoom2_Text_DecidedToGoWithMarley
    WaitFanfare
    SetFlag FLAG_TALKED_TO_VICTORY_ROAD_1F_ROOM_2_MARLEY
    SetVar VAR_VICTORY_ROAD_1F_ROOM_2_FOLLOWER_MARLEY_STATE, 1
    Message VictoryRoad1FRoom2_Text_IllHealPokemon
    WaitButton
    CloseMessage
    SetVar VAR_PARTNER_TRAINER_ID, TRAINER_MARLEY_VICTORY_ROAD
    SetHasPartner
    SetMovementType LOCALID_MARLEY, MOVEMENT_TYPE_FOLLOW_PLAYER
    ReleaseAll
    End

VictoryRoad1FRoom2_LetMeGoWithYou:
    Message VictoryRoad1FRoom2_Text_LetMeGoWithYou
    Return

VictoryRoad1FRoom2_YouTookSoLong:
    Message VictoryRoad1FRoom2_Text_YouTookSoLong
    Return

    .balign 4, 0
VictoryRoad1FRoom2_Movement_MarleyNoticePlayer:
    WalkOnSpotNormalWest
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
VictoryRoad1FRoom2_Movement_MarleyWalkToPlayerZ55:
    WalkNormalNorth 3
    WalkNormalWest
    EndMovement

    .balign 4, 0
VictoryRoad1FRoom2_Movement_MarleyWalkToPlayerZ56:
    WalkNormalNorth 2
    WalkNormalWest
    EndMovement

    .balign 4, 0
VictoryRoad1FRoom2_Movement_MarleyWalkToPlayerZ57:
    WalkNormalNorth
    WalkNormalWest
    EndMovement

    .balign 4, 0
VictoryRoad1FRoom2_Movement_MarleyWalkToPlayerZ58:
    WalkNormalWest
    EndMovement

    .balign 4, 0
VictoryRoad1FRoom2_Movement_MarleyWalkToPlayerZ59:
    WalkNormalSouth
    WalkNormalWest
    EndMovement

    .balign 4, 0
VictoryRoad1FRoom2_Movement_MarleyWalkToPlayerZ60:
    WalkNormalSouth 2
    WalkNormalWest
    EndMovement

VictoryRoad1FRoom2_TriggerPlayerLeaveMarley:
    LockAll
    ApplyMovement LOCALID_PLAYER, VictoryRoad1FRoom2_Movement_PlayerWalkOnSpotEast
    ApplyMovement LOCALID_MARLEY, VictoryRoad1FRoom2_Movement_MarleyFaceWest
    WaitMovement
    Message VictoryRoad1FRoom2_Text_YoureGoingBack
    CloseMessage
    SetVar VAR_VICTORY_ROAD_1F_ROOM_2_FOLLOWER_MARLEY_STATE, 0
    ClearHasPartner
    SetMovementType LOCALID_MARLEY, MOVEMENT_TYPE_LOOK_NORTH
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 55, VictoryRoad1FRoom2_MarleyWalkBackZ55
    GoToIfEq VAR_0x8005, 56, VictoryRoad1FRoom2_MarleyWalkBackZ56
    GoToIfEq VAR_0x8005, 57, VictoryRoad1FRoom2_MarleyWalkBackZ57
    GoToIfEq VAR_0x8005, 58, VictoryRoad1FRoom2_MarleyWalkBackZ58
    GoToIfEq VAR_0x8005, 59, VictoryRoad1FRoom2_MarleyWalkBackZ59
    GoToIfEq VAR_0x8005, 60, VictoryRoad1FRoom2_MarleyWalkBackZ60
    End

VictoryRoad1FRoom2_MarleyWalkBackZ55:
    ApplyMovement LOCALID_MARLEY, VictoryRoad1FRoom2_Movement_MarleyWalkBackZ55
    WaitMovement
    GoTo VictoryRoad1FRoom2_PlayerLeaveMarleyEnd

VictoryRoad1FRoom2_MarleyWalkBackZ56:
    ApplyMovement LOCALID_MARLEY, VictoryRoad1FRoom2_Movement_MarleyWalkBackZ56
    WaitMovement
    GoTo VictoryRoad1FRoom2_PlayerLeaveMarleyEnd

VictoryRoad1FRoom2_MarleyWalkBackZ57:
    ApplyMovement LOCALID_MARLEY, VictoryRoad1FRoom2_Movement_MarleyWalkBackZ57
    WaitMovement
    GoTo VictoryRoad1FRoom2_PlayerLeaveMarleyEnd

VictoryRoad1FRoom2_MarleyWalkBackZ58:
    ApplyMovement LOCALID_MARLEY, VictoryRoad1FRoom2_Movement_MarleyWalkBackZ58
    WaitMovement
    GoTo VictoryRoad1FRoom2_PlayerLeaveMarleyEnd

VictoryRoad1FRoom2_MarleyWalkBackZ59:
    ApplyMovement LOCALID_MARLEY, VictoryRoad1FRoom2_Movement_MarleyWalkBackZ59
    WaitMovement
    GoTo VictoryRoad1FRoom2_PlayerLeaveMarleyEnd

VictoryRoad1FRoom2_MarleyWalkBackZ60:
    ApplyMovement LOCALID_MARLEY, VictoryRoad1FRoom2_Movement_MarleyWalkBackZ60
    WaitMovement
    GoTo VictoryRoad1FRoom2_PlayerLeaveMarleyEnd

VictoryRoad1FRoom2_PlayerLeaveMarleyEnd:
    ReleaseAll
    End

    .balign 4, 0
VictoryRoad1FRoom2_Movement_PlayerWalkOnSpotEast:
    WalkOnSpotNormalEast
    EndMovement

VictoryRoad1FRoom2_UnusedMovement:
    WalkNormalNorth
    EndMovement

    .balign 4, 0
VictoryRoad1FRoom2_Movement_MarleyWalkBackZ55:
    WalkNormalEast 2
    WalkNormalSouth 3
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
VictoryRoad1FRoom2_Movement_MarleyWalkBackZ56:
    WalkNormalEast 2
    WalkNormalSouth 2
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
VictoryRoad1FRoom2_Movement_MarleyWalkBackZ57:
    WalkNormalEast 2
    WalkNormalSouth
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
VictoryRoad1FRoom2_Movement_MarleyWalkBackZ58:
    WalkNormalEast 2
    EndMovement

    .balign 4, 0
VictoryRoad1FRoom2_Movement_MarleyWalkBackZ59:
    WalkNormalEast 2
    WalkNormalNorth
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
VictoryRoad1FRoom2_Movement_MarleyWalkBackZ60:
    WalkNormalEast 2
    WalkNormalNorth 2
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
VictoryRoad1FRoom2_Movement_MarleyFaceWest:
    FaceWest
    EndMovement

VictoryRoad1FRoom2_TriggerMarleyLeavePlayer:
    LockAll
    ClearHasPartner
    SetMovementType LOCALID_MARLEY, MOVEMENT_TYPE_LOOK_NORTH
    ApplyMovement LOCALID_PLAYER, VictoryRoad1FRoom2_Movement_PlayerFaceMarley
    ApplyMovement LOCALID_MARLEY, VictoryRoad1FRoom2_Movement_MarleyFacePlayer
    WaitMovement
    Message VictoryRoad1FRoom2_Text_IAppreciateEscorting
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8004, 51, VictoryRoad1FRoom2_MarleyLeaveX51
    GoToIfEq VAR_0x8004, 52, VictoryRoad1FRoom2_MarleyLeaveX52
    GoToIfEq VAR_0x8004, 53, VictoryRoad1FRoom2_MarleyLeaveX53
    GoToIfEq VAR_0x8004, 54, VictoryRoad1FRoom2_MarleyLeaveX54
    End

VictoryRoad1FRoom2_MarleyLeaveX51:
    ApplyMovement LOCALID_PLAYER, VictoryRoad1FRoom2_Movement_PlayerWatchMarleyLeaveWest
    ApplyMovement LOCALID_MARLEY, VictoryRoad1FRoom2_Movement_MarleyLeaveX51
    WaitMovement
    GoTo VictoryRoad1FRoom2_RemoveMarley

VictoryRoad1FRoom2_MarleyLeaveX52:
    ApplyMovement LOCALID_PLAYER, VictoryRoad1FRoom2_Movement_PlayerWatchMarleyLeaveWest
    ApplyMovement LOCALID_MARLEY, VictoryRoad1FRoom2_Movement_MarleyLeaveX52
    WaitMovement
    GoTo VictoryRoad1FRoom2_RemoveMarley

VictoryRoad1FRoom2_MarleyLeaveX53:
    ApplyMovement LOCALID_PLAYER, VictoryRoad1FRoom2_Movement_PlayerWatchMarleyLeaveWest
    ApplyMovement LOCALID_MARLEY, VictoryRoad1FRoom2_Movement_MarleyLeaveX53
    WaitMovement
    GoTo VictoryRoad1FRoom2_RemoveMarley

VictoryRoad1FRoom2_MarleyLeaveX54:
    ApplyMovement LOCALID_PLAYER, VictoryRoad1FRoom2_Movement_PlayerWatchMarleyLeaveEast
    ApplyMovement LOCALID_MARLEY, VictoryRoad1FRoom2_Movement_MarleyLeaveX54
    WaitMovement
    GoTo VictoryRoad1FRoom2_RemoveMarley

VictoryRoad1FRoom2_RemoveMarley:
    RemoveObject LOCALID_MARLEY
    SetFlag FLAG_TRAVELED_WITH_MARLEY
    SetVar VAR_VICTORY_ROAD_1F_ROOM_2_FOLLOWER_MARLEY_STATE, 2
    ReleaseAll
    End

    .balign 4, 0
VictoryRoad1FRoom2_Movement_PlayerFaceMarley:
    Delay8
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
VictoryRoad1FRoom2_Movement_PlayerWatchMarleyLeaveWest:
    Delay8
    WalkOnSpotNormalEast
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
VictoryRoad1FRoom2_Movement_PlayerWatchMarleyLeaveEast:
    Delay8
    WalkOnSpotNormalWest
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
VictoryRoad1FRoom2_Movement_MarleyFacePlayer:
    WalkOnSpotNormalNorth
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
VictoryRoad1FRoom2_Movement_MarleyLeaveX51:
    WalkNormalEast
    WalkNormalNorth 7
    WalkNormalEast 4
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
VictoryRoad1FRoom2_Movement_MarleyLeaveX52:
    WalkNormalEast
    WalkNormalNorth 7
    WalkNormalEast 3
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
VictoryRoad1FRoom2_Movement_MarleyLeaveX53:
    WalkNormalEast
    WalkNormalNorth 7
    WalkNormalEast 2
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
VictoryRoad1FRoom2_Movement_MarleyLeaveX54:
    WalkNormalWest
    WalkNormalNorth 7
    WalkNormalEast 3
    WalkOnSpotNormalEast
    EndMovement
