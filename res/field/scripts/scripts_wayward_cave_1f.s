#include "macros/scrcmd.inc"
#include "res/text/bank/wayward_cave_1f.h"
#include "res/field/events/events_wayward_cave_1f.h"


    ScriptEntry WaywardCave1F_OnTransition
    ScriptEntry WaywardCave1F_Mira
    ScriptEntry WaywardCave1F_Dummy3
    ScriptEntry WaywardCave1F_CoordEvent_Exit
    ScriptEntryEnd

WaywardCave1F_OnTransition:
    SetFlag FLAG_FIRST_ARRIVAL_WAYWARD_CAVE
    GoToIfUnset FLAG_TRAVELED_WITH_MIRA, WaywardCave1F_ResetFollowerMiraState
    End

WaywardCave1F_ResetFollowerMiraState:
    SetVar VAR_WAYWARD_CAVE_1F_FOLLOWER_MIRA_STATE, 0
    End

WaywardCave1F_Mira:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetPlayerBike FALSE
    GoToIfGe VAR_WAYWARD_CAVE_1F_FOLLOWER_MIRA_STATE, 1, WaywardCave1F_MiraMessage
    BufferPlayerName 0
    CallIfUnset FLAG_TALKED_TO_WAYWARD_CAVE_1F_MIRA, WaywardCave1F_PleaseTakeMeToTheExit
    CallIfSet FLAG_TALKED_TO_WAYWARD_CAVE_1F_MIRA, WaywardCave1F_ILikeYourName
    BufferPlayerName 0
    PlayFanfare SEQ_GONIN
    Message WaywardCave1F_Text_PlayerDecidedToGoWithMira
    WaitFanfare
    SetFlag FLAG_TALKED_TO_WAYWARD_CAVE_1F_MIRA
    SetVar VAR_WAYWARD_CAVE_1F_FOLLOWER_MIRA_STATE, 1
    Message WaywardCave1F_Text_IllKeepYourPokemonHealthy
    WaitButton
    CloseMessage
    SetVar VAR_PARTNER_TRAINER_ID, TRAINER_MIRA_WAYWARD_CAVE
    SetHasPartner
    SetMovementType LOCALID_MIRA, MOVEMENT_TYPE_FOLLOW_PLAYER
    ReleaseAll
    End

WaywardCave1F_PleaseTakeMeToTheExit:
    Message WaywardCave1F_Text_PleaseTakeMeToTheExit
    Return

WaywardCave1F_ILikeYourName:
    Message WaywardCave1F_Text_ILikeYourName
    Return

WaywardCave1F_MiraMessage:
    GoToIfGe VAR_FOLLOWER_MIRA_TIMES_TALKED, 2, WaywardCave1F_MiraWillTryLikeYou
    GoToIfEq VAR_FOLLOWER_MIRA_TIMES_TALKED, 1, WaywardCave1F_EasyToGetConfused
    BufferPlayerName 0
    Message WaywardCave1F_Text_ILikeHelpfulMoves
    GoTo WaywardCave1F_IncreaseFollowerMiraTimesTalked

WaywardCave1F_EasyToGetConfused:
    Message WaywardCave1F_Text_EasyToGetConfused
    GoTo WaywardCave1F_IncreaseFollowerMiraTimesTalked

WaywardCave1F_MiraWillTryLikeYou:
    BufferPlayerName 0
    Message WaywardCave1F_Text_MiraWillTryLikeYou
    WaitButton
    CloseMessage
    ReleaseAll
    End

WaywardCave1F_IncreaseFollowerMiraTimesTalked:
    AddVar VAR_FOLLOWER_MIRA_TIMES_TALKED, 1
    WaitButton
    CloseMessage
    ReleaseAll
    End

WaywardCave1F_Dummy3:
    End

WaywardCave1F_CoordEvent_Exit:
    LockAll
    ClearHasPartner
    SetMovementType LOCALID_MIRA, MOVEMENT_TYPE_LOOK_WEST
    GetPlayerDir VAR_RESULT
    GoToIfEq VAR_RESULT, DIR_WEST, WaywardCave1F_NoticeExitWest
    GoTo WaywardCave1F_NoticeExitSouth

WaywardCave1F_NoticeExitWest:
    ApplyMovement LOCALID_PLAYER, WaywardCave1F_Movement_PlayerWalkOnSpotEast
    ApplyMovement LOCALID_MIRA, WaywardCave1F_Movement_MiraWalkOnSpotWestExclamationMark
    WaitMovement
    GoTo WaywardCave1F_OhTheresTheExitThankYou

WaywardCave1F_NoticeExitSouth:
    ApplyMovement LOCALID_PLAYER, WaywardCave1F_Movement_PlayerWalkOnSpotNorth
    ApplyMovement LOCALID_MIRA, WaywardCave1F_Movement_MiraWalkOnSpotSouthExclamationMark
    WaitMovement
    GoTo WaywardCave1F_OhTheresTheExitThankYou

WaywardCave1F_OhTheresTheExitThankYou:
    BufferPlayerName 0
    Message WaywardCave1F_Text_TheresTheExit
    CloseMessage
    GetPlayerDir VAR_RESULT
    GoToIfEq VAR_RESULT, DIR_EAST, WaywardCave1F_MiraWalkWestLeave
    GoTo WaywardCave1F_MiraWalkSouthLeave

WaywardCave1F_MiraWalkWestLeave:
    ApplyMovement LOCALID_PLAYER, WaywardCave1F_Movement_PlayerWalkNorthOnSpotSouth
    ApplyMovement LOCALID_MIRA, WaywardCave1F_Movement_MiraWalkWestLeave
    WaitMovement
    GoTo WaywardCave1F_RemoveMira

WaywardCave1F_MiraWalkSouthLeave:
    ApplyMovement LOCALID_PLAYER, WaywardCave1F_Movement_PlayerWalkEastOnSpotWest
    ApplyMovement LOCALID_MIRA, WaywardCave1F_Movement_MiraWalkSouthLeave
    WaitMovement
    GoTo WaywardCave1F_RemoveMira

WaywardCave1F_RemoveMira:
    RemoveObject LOCALID_MIRA
    SetFlag FLAG_TRAVELED_WITH_MIRA
    SetVar VAR_WAYWARD_CAVE_1F_FOLLOWER_MIRA_STATE, 2
    ReleaseAll
    End

    .balign 4, 0
WaywardCave1F_Movement_PlayerWalkOnSpotEast:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
WaywardCave1F_Movement_PlayerWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
WaywardCave1F_Movement_PlayerWalkNorthOnSpotSouth:
    WalkNormalNorth
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
WaywardCave1F_Movement_PlayerWalkEastOnSpotWest:
    WalkNormalEast
    WalkOnSpotNormalWest
    EndMovement

WaywardCave1F_Movement_Unused:
    Delay8 5
    WalkNormalWest
    EndMovement

WaywardCave1F_Movement_Unused2:
    Delay8 5
    WalkNormalNorth
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
WaywardCave1F_Movement_MiraWalkOnSpotWestExclamationMark:
    WalkOnSpotNormalWest
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
WaywardCave1F_Movement_MiraWalkOnSpotSouthExclamationMark:
    WalkOnSpotNormalSouth
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
WaywardCave1F_Movement_MiraWalkWestLeave:
    Delay8 3
    WalkNormalWest
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
WaywardCave1F_Movement_MiraWalkSouthLeave:
    Delay8 3
    WalkNormalSouth
    WalkOnSpotNormalSouth
    EndMovement
