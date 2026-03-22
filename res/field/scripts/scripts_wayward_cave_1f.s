#include "macros/scrcmd.inc"
#include "res/text/bank/wayward_cave_1f.h"
#include "res/field/events/events_wayward_cave_1f.h"


    ScriptEntry WaywardCave1F_OnTransition
    ScriptEntry WaywardCave1F_Mira
    ScriptEntry WaywardCave1F_Unused
    ScriptEntry WaywardCave1F_TriggerExit
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
    CallIfUnset FLAG_TALKED_TO_WAYWARD_CAVE_1F_MIRA, WaywardCave1F_ImMiraPleaseTakeMeToTheExit
    CallIfSet FLAG_TALKED_TO_WAYWARD_CAVE_1F_MIRA, WaywardCave1F_MyNameIsMiraILikeYourName
    BufferPlayerName 0
    PlayFanfare SEQ_GONIN
    Message WaywardCave1F_Text_PlayerDecidedToGoWithMira
    WaitFanfare
    SetFlag FLAG_TALKED_TO_WAYWARD_CAVE_1F_MIRA
    SetVar VAR_WAYWARD_CAVE_1F_FOLLOWER_MIRA_STATE, 1
    Message WaywardCave1F_Text_IllKeepYourPokemonHealthyAllTheTime
    WaitButton
    CloseMessage
    SetVar VAR_PARTNER_TRAINER_ID, TRAINER_MIRA_WAYWARD_CAVE
    SetHasPartner
    SetMovementType LOCALID_MIRA, MOVEMENT_TYPE_FOLLOW_PLAYER
    ReleaseAll
    End

WaywardCave1F_ImMiraPleaseTakeMeToTheExit:
    Message WaywardCave1F_Text_ImMiraPleaseTakeMeToTheExit
    Return

WaywardCave1F_MyNameIsMiraILikeYourName:
    Message WaywardCave1F_Text_MyNameIsMiraILikeYourName
    Return

WaywardCave1F_MiraMessage:
    GoToIfGe VAR_FOLLOWER_MIRA_TIMES_TALKED, 2, WaywardCave1F_PlayerDidYouGetToBeSoGoodBecauseYoureAlwaysWithPokemon
    GoToIfEq VAR_FOLLOWER_MIRA_TIMES_TALKED, 1, WaywardCave1F_ThisCaveItsSoEasyToGetConfused
    BufferPlayerName 0
    Message WaywardCave1F_Text_ILikeHelpfulPokemonMovesLikeGrowlAndMinimize
    GoTo WaywardCave1F_IncreaseFollowerMiraTimesTalked

WaywardCave1F_ThisCaveItsSoEasyToGetConfused:
    Message WaywardCave1F_Text_ThisCaveItsSoEasyToGetConfused
    GoTo WaywardCave1F_IncreaseFollowerMiraTimesTalked

WaywardCave1F_PlayerDidYouGetToBeSoGoodBecauseYoureAlwaysWithPokemon:
    BufferPlayerName 0
    Message WaywardCave1F_Text_PlayerDidYouGetToBeSoGoodBecauseYoureAlwaysWithPokemon
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

WaywardCave1F_Unused:
    End

WaywardCave1F_TriggerExit:
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
    Message WaywardCave1F_Text_OhTheresTheExitThankYou
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

WaywardCave1F_UnusedMovement:
    Delay8 5
    WalkNormalWest
    EndMovement

WaywardCave1F_UnusedMovement2:
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
