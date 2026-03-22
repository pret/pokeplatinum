#include "macros/scrcmd.inc"
#include "res/text/bank/eterna_forest.h"
#include "res/field/events/events_eterna_forest.h"

    ScriptEntry EternaForest_TriggerStartFollowingCheryl
    ScriptEntry EternaForest_TriggerPlayerLeaveCheryl
    ScriptEntry EternaForest_TriggerCherylLeavePlayer
    ScriptEntry EternaForest_Unused4
    ScriptEntry EternaForest_Unused5
    ScriptEntry EternaForest_BugCatcher
    ScriptEntry EternaForest_Gardenia
    ScriptEntry EternaForest_LandmarkSignEternaForest
    ScriptEntry EternaForest_TrainerTipsSignpost
    ScriptEntry EternaForest_MossRock
    ScriptEntry EternaForest_OnTransition
    ScriptEntry EternaForest_OnFrameCherylOldChateauCutscene
    ScriptEntryEnd

EternaForest_OnTransition:
    GoToIfUnset FLAG_TRAVELED_WITH_CHERYL, EternaForest_ResetFollowerCherylState
    End

EternaForest_ResetFollowerCherylState:
    SetVar VAR_ETERNA_FOREST_FOLLOWER_CHERYL_STATE, 0
    End

EternaForest_TriggerStartFollowingCheryl:
    LockAll
    SetPlayerBike FALSE
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8004, 28, EternaForest_CherylNoticeAndWalkToPlayerX28
    GoToIfEq VAR_0x8004, 29, EternaForest_CherylNoticeAndWalkToPlayerX29
    End

EternaForest_CherylNoticeAndWalkToPlayerX28:
    ApplyMovement LOCALID_CHERYL, EternaForest_Movement_CherylNoticeAndWalkToPlayerX28
    WaitMovement
    GoTo EternaForest_StartFollowingCheryl

EternaForest_CherylNoticeAndWalkToPlayerX29:
    ApplyMovement LOCALID_CHERYL, EternaForest_Movement_CherylNoticeAndWalkToPlayerX29
    WaitMovement
    GoTo EternaForest_StartFollowingCheryl

EternaForest_StartFollowingCheryl:
    CallIfUnset FLAG_TALKED_TO_ETERNA_FOREST_CHERYL, EternaForest_PleaseMayIGoThroughWithYou
    CallIfSet FLAG_TALKED_TO_ETERNA_FOREST_CHERYL, EternaForest_LetsGetThroughThisForestTogether
    BufferPlayerName 0
    PlaySound SEQ_GONIN
    Message EternaForest_Text_PlayerDecidedToGoWithCheryl
    WaitSound
    SetFlag FLAG_TALKED_TO_ETERNA_FOREST_CHERYL
    SetVar VAR_ETERNA_FOREST_FOLLOWER_CHERYL_STATE, 1
    Message EternaForest_Text_IllKeepYourPokemonInPerfectHealth
    WaitButton
    CloseMessage
    SetVar VAR_PARTNER_TRAINER_ID, TRAINER_CHERYL_ETERNA_FOREST
    SetHasPartner
    SetMovementType LOCALID_CHERYL, MOVEMENT_TYPE_FOLLOW_PLAYER
    SetObjectFlagIsPersistent LOCALID_CHERYL, TRUE
    ReleaseAll
    End

EternaForest_PleaseMayIGoThroughWithYou:
    BufferPlayerName 0
    Message EternaForest_Text_PleaseMayIGoThroughWithYou
    Return

EternaForest_LetsGetThroughThisForestTogether:
    BufferPlayerName 0
    Message EternaForest_Text_LetsGetThroughThisForestTogether
    Return

    .balign 4, 0
EternaForest_Movement_CherylNoticeAndWalkToPlayerX28:
    MoveAction_153
    WalkNormalSouth
    EndMovement

    .balign 4, 0
EternaForest_Movement_CherylNoticeAndWalkToPlayerX29:
    MoveAction_153
    WalkNormalSouth
    WalkNormalEast
    WalkOnSpotNormalSouth
    EndMovement

EternaForest_TriggerPlayerLeaveCheryl:
    LockAll
    ClearHasPartner
    SetMovementType LOCALID_CHERYL, MOVEMENT_TYPE_LOOK_SOUTH
    SetObjectFlagIsPersistent LOCALID_CHERYL, FALSE
    ApplyMovement LOCALID_CHERYL, EternaForest_Movement_CherylWalkOnSpotSouth
    WaitMovement
    Message EternaForest_Text_IllWaitHereForYouThen
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8004, 28, EternaForest_CherylWalkBackToOriginalPositionX28
    GoToIfEq VAR_0x8004, 29, EternaForest_CherylWalkBackToOriginalPositionX29
    End

EternaForest_CherylWalkBackToOriginalPositionX28:
    ApplyMovement LOCALID_CHERYL, EternaForest_Movement_CherylWalkBackToOriginalPositionX28
    WaitMovement
    GoTo EternaForest_ResetFollowerCherylStateAndRelease

EternaForest_CherylWalkBackToOriginalPositionX29:
    ApplyMovement LOCALID_CHERYL, EternaForest_Movement_CherylWalkBackToOriginalPositionX29
    WaitMovement
    GoTo EternaForest_ResetFollowerCherylStateAndRelease

EternaForest_ResetFollowerCherylStateAndRelease:
    SetVar VAR_ETERNA_FOREST_FOLLOWER_CHERYL_STATE, 0
    ReleaseAll
    End

    .balign 4, 0
EternaForest_Movement_CherylWalkBackToOriginalPositionX28:
    WalkNormalNorth 2
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
EternaForest_Movement_CherylWalkBackToOriginalPositionX29:
    WalkNormalNorth 2
    WalkNormalWest
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
EternaForest_Movement_CherylWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

EternaForest_TriggerCherylLeavePlayer:
    LockAll
    ApplyMovement LOCALID_CHERYL, EternaForest_Movement_CherylExclamationMark
    ApplyMovement LOCALID_PLAYER, EternaForest_Movement_PlayerWalkOnSpotWest
    WaitMovement
    BufferPlayerName 0
    Message EternaForest_Text_OhTheresTheExitThankYouSoMuchPlayer
    SetVar VAR_0x8004, ITEM_SOOTHE_BELL
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, EternaForest_CherylWalkToExit
    GoTo EternaForest_GiveSootheBell
    End

EternaForest_GiveSootheBell:
    Message EternaForest_Text_ThisIsMyTokenOfAppreciation
    Common_GiveItemQuantityNoLineFeed
    GoTo EternaForest_CherylWalkToExit
    End

EternaForest_CherylWalkToExit:
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 34, EternaForest_CherylWalkToExitX34
    GoToIfEq VAR_0x8005, 35, EternaForest_CherylWalkToExitX35
    GoToIfEq VAR_0x8005, 36, EternaForest_CherylWalkToExitX36
    GoToIfEq VAR_0x8005, 37, EternaForest_CherylWalkToExitX37
    GoToIfEq VAR_0x8005, 38, EternaForest_CherylWalkToExitX38
    GoTo EternaForest_CherylWalkToExitX39
    End

EternaForest_CherylWalkToExitX34:
    ApplyMovement LOCALID_CHERYL, EternaForest_Movement_CherylWalkToExitX34
    ApplyMovement LOCALID_PLAYER, EternaForest_Movement_PlayerWatchCherylWalkToExitX34
    WaitMovement
    GoTo EternaForest_CherylLeave

EternaForest_CherylWalkToExitX35:
    ApplyMovement LOCALID_CHERYL, EternaForest_Movement_CherylWalkToExitX35
    ApplyMovement LOCALID_PLAYER, EternaForest_Movement_PlayerWatchCherylWalkToExitX35
    WaitMovement
    GoTo EternaForest_CherylLeave

EternaForest_CherylWalkToExitX36:
    ApplyMovement LOCALID_CHERYL, EternaForest_Movement_CherylWalkToExitX36
    ApplyMovement LOCALID_PLAYER, EternaForest_Movement_PlayerWatchCherylWalkToExitX36
    WaitMovement
    GoTo EternaForest_CherylLeave

EternaForest_CherylWalkToExitX37:
    ApplyMovement LOCALID_CHERYL, EternaForest_Movement_CherylWalkToExitX37
    ApplyMovement LOCALID_PLAYER, EternaForest_Movement_PlayerWatchCherylWalkToExitX37
    WaitMovement
    GoTo EternaForest_CherylLeave

EternaForest_CherylWalkToExitX38:
    ApplyMovement LOCALID_CHERYL, EternaForest_Movement_CherylWalkToExitX38
    ApplyMovement LOCALID_PLAYER, EternaForest_Movement_PlayerWatchCherylWalkToExitX38
    WaitMovement
    GoTo EternaForest_CherylLeave

EternaForest_CherylWalkToExitX39:
    ApplyMovement LOCALID_CHERYL, EternaForest_Movement_CherylWalkToExitX39
    ApplyMovement LOCALID_PLAYER, EternaForest_Movement_PlayerWatchCherylWalkToExitX39
    WaitMovement
    GoTo EternaForest_CherylLeave

EternaForest_CherylLeave:
    ApplyMovement LOCALID_CHERYL, EternaForest_Movement_CherylWalkOnSpotWest
    WaitMovement
    Message EternaForest_Text_ImSureWellMeetAgainSomewhere
    CloseMessage
    ApplyMovement LOCALID_CHERYL, EternaForest_Movement_CherylLeave
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ClearHasPartner
    RemoveObject LOCALID_CHERYL
    WaitFanfare SEQ_SE_DP_KAIDAN2
    SetFlag FLAG_TRAVELED_WITH_CHERYL
    SetVar VAR_ETERNA_FOREST_FOLLOWER_CHERYL_STATE, 2
    ReleaseAll
    End

    .balign 4, 0
EternaForest_Movement_CherylExclamationMark:
    WalkOnSpotNormalEast
    MoveAction_153
    EndMovement

    .balign 4, 0
EternaForest_Movement_CherylWalkToExitX34:
    WalkNormalSouth 2
    WalkNormalEast 5
    EndMovement

    .balign 4, 0
EternaForest_Movement_CherylWalkToExitX35:
    WalkNormalSouth
    WalkNormalEast 5
    EndMovement

    .balign 4, 0
EternaForest_Movement_CherylWalkToExitX36:
    WalkNormalSouth
    WalkNormalEast 5
    EndMovement

    .balign 4, 0
EternaForest_Movement_CherylWalkToExitX37:
    WalkNormalNorth
    WalkNormalEast 5
    EndMovement

    .balign 4, 0
EternaForest_Movement_CherylWalkToExitX38:
    WalkNormalNorth
    WalkNormalEast 5
    EndMovement

    .balign 4, 0
EternaForest_Movement_CherylWalkToExitX39:
    WalkNormalNorth 2
    WalkNormalEast 5
    EndMovement

    .balign 4, 0
EternaForest_Movement_CherylWalkOnSpotWest:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
EternaForest_Movement_CherylLeave:
    Delay8
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
EternaForest_Movement_PlayerWalkOnSpotWest:
    Delay8 3
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
EternaForest_Movement_PlayerWatchCherylWalkToExitX34:
    Delay8 2
    WalkOnSpotNormalSouth
    Delay8
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
EternaForest_Movement_PlayerWatchCherylWalkToExitX35:
    Delay8
    WalkOnSpotNormalSouth
    Delay8
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
EternaForest_Movement_PlayerWatchCherylWalkToExitX36:
    Delay8
    WalkOnSpotNormalSouth
    Delay8
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
EternaForest_Movement_PlayerWatchCherylWalkToExitX37:
    Delay8
    WalkOnSpotNormalNorth
    Delay8
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
EternaForest_Movement_PlayerWatchCherylWalkToExitX38:
    Delay8
    WalkOnSpotNormalNorth
    Delay8
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
EternaForest_Movement_PlayerWatchCherylWalkToExitX39:
    Delay8 2
    WalkOnSpotNormalNorth
    Delay8
    WalkOnSpotNormalEast
    EndMovement

EternaForest_Unused4:
    LockAll
    BufferPlayerName 0
    ReleaseAll
    End

EternaForest_Unused5:
    LockAll
    BufferPlayerName 0
    ReleaseAll
    End

EternaForest_BugCatcher:
    NPCMessage EternaForest_Text_ImSearchingForBugPokemonSoICanWinAtTheEternaGym
    End

EternaForest_Gardenia:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message EternaForest_Text_HiyaWereYouIngriguedByTheRumorsGoingAroundToo
    CloseMessage
    ApplyMovement LOCALID_GARDENIA, EternaForest_Movement_GardeniaWalkOnSpotNorth
    WaitMovement
    Message EternaForest_Text_YouKnowPeopleveBeenTalkingAboutTheGhostPokemonOfTheOldChateau
    FacePlayer
    Message EternaForest_Text_IShouldCheckItOutMyselfButGoingInThereIs
    CloseMessage
    GetPlayerDir VAR_RESULT
    GoToIfEq VAR_RESULT, DIR_NORTH, EternaForest_GardeniaLeaveNorth
    GoToIfEq VAR_RESULT, DIR_SOUTH, EternaForest_GardeniaLeaveSouth
    GoToIfEq VAR_RESULT, DIR_WEST, EternaForest_GardeniaLeaveWest
    GoToIfEq VAR_RESULT, DIR_EAST, EternaForest_GardeniaLeaveEast
    End

EternaForest_GardeniaLeaveNorth:
    ApplyMovement LOCALID_GARDENIA, EternaForest_Movement_GardeniaLeaveNorth
    WaitMovement
    GoTo EternaForest_RemoveGardenia
    End

EternaForest_GardeniaLeaveSouth:
    ApplyMovement LOCALID_GARDENIA, EternaForest_Movement_GardeniaLeaveSouthWestEast
    WaitMovement
    GoTo EternaForest_RemoveGardenia
    End

EternaForest_GardeniaLeaveWest:
    ApplyMovement LOCALID_GARDENIA, EternaForest_Movement_GardeniaLeaveSouthWestEast
    WaitMovement
    GoTo EternaForest_RemoveGardenia
    End

EternaForest_GardeniaLeaveEast:
    ApplyMovement LOCALID_GARDENIA, EternaForest_Movement_GardeniaLeaveSouthWestEast
    WaitMovement
    GoTo EternaForest_RemoveGardenia
    End

EternaForest_RemoveGardenia:
    RemoveObject LOCALID_GARDENIA
    ReleaseAll
    End

    .balign 4, 0
EternaForest_Movement_GardeniaWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
EternaForest_Movement_GardeniaLeaveSouthWestEast:
    WalkNormalSouth 2
    WalkNormalEast 9
    EndMovement

    .balign 4, 0
EternaForest_Movement_GardeniaLeaveNorth:
    WalkNormalWest
    WalkNormalSouth 2
    WalkNormalEast 10
    EndMovement

EternaForest_LandmarkSignEternaForest:
    ShowLandmarkSign EternaForest_Text_TheEternaForestWhereTimeFlowsEternally
    End

EternaForest_TrainerTipsSignpost:
    ShowScrollingSign EternaForest_Text_TrainerTipsInForestsAndCavesThereAreManyItemsOnTheGround
    End

EternaForest_MossRock:
    EventMessage EternaForest_Text_TheRockIsCoveredInMoss
    End

EternaForest_OnFrameCherylOldChateauCutscene:
    LockAll
    SetVar VAR_ETERNA_FOREST_CHERYL_OLD_CHATEAU_CUTSCENE_STATE, 2
    ApplyMovement LOCALID_CHERYL, EternaForest_Movement_CherylWalkOnSpotNorth
    WaitMovement
    Message EternaForest_Text_ThereIsAnOldChateauAhead
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
EternaForest_Movement_CherylWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement
