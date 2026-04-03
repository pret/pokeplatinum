#include "macros/scrcmd.inc"
#include "res/text/bank/valley_windworks_outside.h"
#include "res/field/events/events_valley_windworks_outside.h"


    ScriptEntry ValleyWindworksOutside_OnTransition
    ScriptEntry ValleyWindworksOutside_OnLoad
    ScriptEntry ValleyWindworksOutside_GruntM
    ScriptEntry ValleyWindworksOutside_Door
    ScriptEntry ValleyWindworksOutside_LandmarkSignValleyWindworks
    ScriptEntry ValleyWindworksOutside_Drifloon
    ScriptEntry ValleyWindworksOutside_OnResume
    ScriptEntry ValleyWindworksOutside_OnFrameLooker
    ScriptEntryEnd

ValleyWindworksOutside_OnResume:
    End

ValleyWindworksOutside_OnTransition:
    CallIfEq VAR_VALLEY_WINDWORKS_TEAM_GALACTIC_STATE, 2, ValleyWindworksOutside_IncreaseTeamGalacticValleyWindworksState
    CallIfSet FLAG_UNLOCKED_VALLEY_WINDWORKS_DOOR, ValleyWindworksOutside_RemoveBgEventDoor
    CallIfUnset FLAG_UNLOCKED_VALLEY_WINDWORKS_DOOR, ValleyWindworksOutside_RemoveWarpValleyWindworksBuilding
    GoToIfLt VAR_VALLEY_WINDWORKS_STATE, 2, ValleyWindworksOutside_HideDrifloon
    GoToIfSet FLAG_WON_AGAINST_VALLEY_WINDWORKS_OUTSIDE_DRIFLOON, ValleyWindworksOutside_HideDrifloon
    GetDayOfWeek VAR_MAP_LOCAL_0
    GoToIfNe VAR_MAP_LOCAL_0, 5, ValleyWindworksOutside_HideDrifloon
    GoTo ValleyWindworksOutside_ShowDrifloon

ValleyWindworksOutside_ShowDrifloon:
    ClearFlag FLAG_HIDE_VALLEY_WINDWORKS_OUTSIDE_DRIFLOON
    End

ValleyWindworksOutside_HideDrifloon:
    SetFlag FLAG_HIDE_VALLEY_WINDWORKS_OUTSIDE_DRIFLOON
    End

ValleyWindworksOutside_IncreaseTeamGalacticValleyWindworksState:
    SetVar VAR_VALLEY_WINDWORKS_TEAM_GALACTIC_STATE, 3
    Return

ValleyWindworksOutside_OnLoad:
    CallIfSet FLAG_UNLOCKED_VALLEY_WINDWORKS_DOOR, ValleyWindworksOutside_RemoveBgEventDoor
    CallIfUnset FLAG_UNLOCKED_VALLEY_WINDWORKS_DOOR, ValleyWindworksOutside_RemoveWarpValleyWindworksBuilding
    GoToIfSet FLAG_MAP_LOCAL, ValleyWindworksOutside_RemoveDrifloon
    End

ValleyWindworksOutside_RemoveDrifloon:
    SetFlag FLAG_HIDE_VALLEY_WINDWORKS_OUTSIDE_DRIFLOON
    RemoveObject LOCALID_DRIFLOON
    ClearFlag FLAG_MAP_LOCAL
    End

ValleyWindworksOutside_RemoveBgEventDoor:
    SetBgEventPos 1, 243, 650
    Return

ValleyWindworksOutside_RemoveWarpValleyWindworksBuilding:
    SetWarpEventPos 0, 243, 650
    Return

ValleyWindworksOutside_GruntM:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message ValleyWindworksOutside_Text_DontYouDareGoIntoTheValleyWindworksYoullHaveToBattleMeForIt
    CloseMessage
    StartTrainerBattle TRAINER_GALACTIC_GRUNT_VALLEY_WINDWORKS_1
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, ValleyWindworksOutside_BlackOutGrunt
    Message ValleyWindworksOutside_Text_IsntThatJustGreatGettingOwnedBySomeKid
    CloseMessage
    ApplyMovement LOCALID_GRUNT_M, ValleyWindworksOutside_Movement_GruntMWalkOnSpotNorth
    WaitMovement
    LoadDoorAnimation 7, 20, 19, 14, ANIMATION_TAG_DOOR_1
    PlayDoorOpenAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    ApplyMovement LOCALID_GRUNT_M, ValleyWindworksOutside_Movement_GruntMEnterBuilding
    WaitMovement
    PlayDoorCloseAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    UnloadAnimation ANIMATION_TAG_DOOR_1
    Message ValleyWindworksOutside_Text_Kerchunk
    RemoveObject LOCALID_GRUNT_M
    CloseMessage
    ReleaseAll
    End

ValleyWindworksOutside_BlackOutGrunt:
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
ValleyWindworksOutside_Movement_GruntMWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
ValleyWindworksOutside_Movement_GruntMEnterBuilding:
    WalkNormalNorth
    SetInvisible
    EndMovement

ValleyWindworksOutside_Door:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    GoToIfSet FLAG_OBTAINED_FLOAROMA_MEADOW_WORKS_KEY, ValleyWindworksOutside_AskOpenDoor
    Message ValleyWindworksOutside_Text_ItsLockedFromInside
    WaitButton
    CloseMessage
    ReleaseAll
    End

ValleyWindworksOutside_AskOpenDoor:
    BufferItemName 0, ITEM_WORKS_KEY
    Message ValleyWindworksOutside_Text_ItsLockedFromInsideUseTheWorksKey
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, ValleyWindworksOutside_AskOpenDoorEnd
    SetFlag FLAG_UNLOCKED_VALLEY_WINDWORKS_DOOR
    Call ValleyWindworksOutside_RemoveBgEventDoor
    SetWarpEventPos 0, 243, 654
    Message ValleyWindworksOutside_Text_KerchunkTheDoorToValleyWindworksOpened
    WaitButton
    CloseMessage
    ReleaseAll
    End

ValleyWindworksOutside_AskOpenDoorEnd:
    CloseMessage
    ReleaseAll
    End

ValleyWindworksOutside_LandmarkSignValleyWindworks:
    ShowLandmarkSign ValleyWindworksOutside_Text_ValleyWindworksEcologicalWindDrivenEnergy
    End

ValleyWindworksOutside_Drifloon:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    PlayCry SPECIES_DRIFLOON
    Message ValleyWindworksOutside_Text_Floooooon
    CloseMessage
    WaitCry
    SetFlag FLAG_MAP_LOCAL
    StartLegendaryBattle SPECIES_DRIFLOON, 15
    ClearFlag FLAG_MAP_LOCAL
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, ValleyWindworksOutside_BlackOutDrifloon
    SetFlag FLAG_WON_AGAINST_VALLEY_WINDWORKS_OUTSIDE_DRIFLOON
    ReleaseAll
    End

ValleyWindworksOutside_BlackOutDrifloon:
    BlackOutFromBattle
    ReleaseAll
    End

ValleyWindworksOutside_OnFrameLooker:
    LockAll
    ApplyMovement LOCALID_LOOKER, ValleyWindworksOutside_Movement_LookerNoticeAndWalkToPlayer
    ApplyMovement LOCALID_PLAYER, ValleyWindworksOutside_Movement_PlayerFaceLookerWest
    WaitMovement
    Message ValleyWindworksOutside_Text_IShallInvestigateInside
    CloseMessage
    ApplyMovement LOCALID_PLAYER, ValleyWindworksOutside_Movement_PlayerMoveAwayFromDoor
    ApplyMovement LOCALID_LOOKER, ValleyWindworksOutside_Movement_LookerWalkToDoor
    WaitMovement
    LoadDoorAnimation 7, 20, 19, 14, ANIMATION_TAG_DOOR_1
    PlayDoorOpenAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    ApplyMovement LOCALID_LOOKER, ValleyWindworksOutside_Movement_LookerEnterBuilding
    WaitMovement
    PlayDoorCloseAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    UnloadAnimation ANIMATION_TAG_DOOR_1
    WaitTime 120, VAR_RESULT
    LoadDoorAnimation 7, 20, 19, 14, ANIMATION_TAG_DOOR_1
    PlayDoorOpenAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    ApplyMovement LOCALID_LOOKER, ValleyWindworksOutside_Movement_LookerExitBuilding
    WaitMovement
    PlayDoorCloseAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    UnloadAnimation ANIMATION_TAG_DOOR_1
    ApplyMovement LOCALID_LOOKER, ValleyWindworksOutside_Movement_LookerWalkOnSpotSouth
    WaitMovement
    Message ValleyWindworksOutside_Text_IHaveReceivedTipsThatTheTeamGalacticHideoutIsInEternaCity
    CloseMessage
    ApplyMovement LOCALID_PLAYER, ValleyWindworksOutside_Movement_PlayerWatchLookerLeave
    ApplyMovement LOCALID_LOOKER, ValleyWindworksOutside_Movement_LookerLeave
    WaitMovement
    RemoveObject LOCALID_LOOKER
    SetVar VAR_VALLEY_WINDWORKS_LOOKER_STATE, 2
    ReleaseAll
    End

    .balign 4, 0
ValleyWindworksOutside_Movement_PlayerFaceLookerWest:
    Delay8 5
    Delay4
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
ValleyWindworksOutside_Movement_PlayerMoveAwayFromDoor:
    WalkNormalSouth
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
ValleyWindworksOutside_Movement_PlayerWatchLookerLeave:
    Delay8
    WalkOnSpotNormalWest
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
ValleyWindworksOutside_Movement_LookerNoticeAndWalkToPlayer:
    EmoteExclamationMark
    Delay8
    WalkFastNorth 4
    WalkOnSpotFastEast
    EndMovement

    .balign 4, 0
ValleyWindworksOutside_Movement_LookerWalkToDoor:
    Delay8
    Delay4
    WalkNormalEast
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
ValleyWindworksOutside_Movement_LookerEnterBuilding:
    WalkNormalNorth
    SetInvisible
    FaceSouth
    EndMovement

    .balign 4, 0
ValleyWindworksOutside_Movement_LookerExitBuilding:
    SetVisible
    WalkFastSouth
    EndMovement

    .balign 4, 0
ValleyWindworksOutside_Movement_LookerWalkOnSpotSouth:
    WalkOnSpotFastSouth
    EndMovement

    .balign 4, 0
ValleyWindworksOutside_Movement_LookerLeave:
    WalkFastWest
    WalkFastSouth
    WalkFastSouth 6
    WalkFastWest 9
    EndMovement
