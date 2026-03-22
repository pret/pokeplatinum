#include "macros/scrcmd.inc"
#include "res/text/bank/valley_windworks_building.h"
#include "res/field/events/events_valley_windworks_building.h"


    ScriptEntry ValleyWindworksBuilding_OnTransition
    ScriptEntry ValleyWindworksBuilding_OnFrameFirstEntry
    ScriptEntry ValleyWindworksBuilding_GruntM
    ScriptEntry ValleyWindworksBuilding_TriggerMars
    ScriptEntry ValleyWindworksBuilding_ScientistPapa
    ScriptEntry ValleyWindworksBuilding_Twin
    ScriptEntry ValleyWindworksBuilding_PCWest
    ScriptEntry ValleyWindworksBuilding_PCEast
    ScriptEntryEnd

ValleyWindworksBuilding_OnTransition:
    SetFlag FLAG_FIRST_ARRIVAL_VALLEY_WINDWORKS
    GoToIfGe VAR_VALLEY_WINDWORKS_STATE, 2, ValleyWindworksBuilding_SetLittleGirlAndScientistPapaPositions
    End

ValleyWindworksBuilding_SetLittleGirlAndScientistPapaPositions:
    SetObjectEventPos LOCALID_LITTLE_GIRL, 21, 5
    SetObjectEventDir LOCALID_LITTLE_GIRL, DIR_WEST
    SetObjectEventMovementType LOCALID_LITTLE_GIRL, MOVEMENT_TYPE_LOOK_WEST
    SetObjectEventPos LOCALID_SCIENTIST_PAPA, 18, 4
    SetObjectEventDir LOCALID_SCIENTIST_PAPA, DIR_SOUTH
    SetObjectEventMovementType LOCALID_SCIENTIST_PAPA, MOVEMENT_TYPE_LOOK_SOUTH
    End

ValleyWindworksBuilding_OnFrameFirstEntry:
    LockAll
    ApplyMovement LOCALID_GALACTIC_GRUNT_1, ValleyWindworksBuilding_Movement_GalacticGrunt1NoticePlayer
    WaitMovement
    Message ValleyWindworksBuilding_Text_YouHaveTheKeyIveGotToAlertTheCommander
    CloseMessage
    ApplyMovement LOCALID_GALACTIC_GRUNT_1, ValleyWindworksBuilding_Movement_GalacticGrunt1Leave
    ApplyMovement LOCALID_PLAYER, ValleyWindworksBuilding_Movement_PlayerWatchGalacticGrunt1Leave
    WaitMovement
    RemoveObject LOCALID_GALACTIC_GRUNT_1
    SetVar VAR_VALLEY_WINDWORKS_TEAM_GALACTIC_STATE, 1
    ReleaseAll
    End

    .balign 4, 0
ValleyWindworksBuilding_Movement_GalacticGrunt1NoticePlayer:
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
ValleyWindworksBuilding_Movement_GalacticGrunt1Leave:
    WalkFastWest 9
    EndMovement

    .balign 4, 0
ValleyWindworksBuilding_Movement_PlayerWatchGalacticGrunt1Leave:
    Delay8
    WalkOnSpotNormalWest
    EndMovement

ValleyWindworksBuilding_GruntM:
    NPCMessage ValleyWindworksBuilding_Text_HumphJustYouWaitOurCommanderWillSmooshYou
    End

ValleyWindworksBuilding_TriggerMars:
    LockAll
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 6, ValleyWindworksBuilding_MarsNoticeAndWalkToPlayer
    GoToIfEq VAR_0x8005, 7, ValleyWindworksBuilding_MarsNoticePlayer
    End

ValleyWindworksBuilding_MarsNoticeAndWalkToPlayer:
    ApplyMovement LOCALID_MARS, ValleyWindworksBuilding_Movement_MarsNoticeAndWalkToPlayer
    WaitMovement
    GoTo ValleyWindworksBuilding_Mars
    End

ValleyWindworksBuilding_MarsNoticePlayer:
    ApplyMovement LOCALID_MARS, ValleyWindworksBuilding_Movement_MarsNoticePlayer
    WaitMovement
    GoTo ValleyWindworksBuilding_Mars
    End

ValleyWindworksBuilding_Mars:
    Message ValleyWindworksBuilding_Text_MyNameIsMarsLetsHaveABattleToDecideWhatWeShouldDoNext
    CloseMessage
    StartTrainerBattle TRAINER_COMMANDER_MARS_VALLEY_WINDWORKS
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, ValleyWindworksBuilding_BlackOut
    Message ValleyWindworksBuilding_Text_OopsIMessedThatOneUp
    CloseMessage
    ApplyMovement LOCALID_CHARON, ValleyWindworksBuilding_Movement_CharonWalkOnSpotSouth
    WaitMovement
    WaitTime 15, VAR_RESULT
    Message ValleyWindworksBuilding_Text_LoseToAChildWillYouNowMarsWeShouldBeGoing
    ApplyMovement LOCALID_MARS, ValleyWindworksBuilding_Movement_MarsWalkOnSpotNorth
    WaitMovement
    Message ValleyWindworksBuilding_Text_WillYouShutIt
    ApplyMovement LOCALID_MARS, ValleyWindworksBuilding_Movement_MarsWalkOnSpotWest
    WaitMovement
    Message ValleyWindworksBuilding_Text_IGuessItsTimeToSayGoodbyeAndLeaveForTheTimeBeing
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    RemoveObject LOCALID_MARS
    RemoveObject LOCALID_CHARON
    RemoveObject LOCALID_GRUNT_M
    RemoveObject LOCALID_GALACTIC_GRUNT_2
    RemoveObject LOCALID_GALACTIC_GRUNT_3
    SetFlag FLAG_HIDE_ROUTE_205_SOUTH_GRUNTS
    ClearFlag FLAG_HIDE_ROUTE_205_SOUTH_YOUNGSTER
    SetVar VAR_VALLEY_WINDWORKS_STATE, 2
    SetFlag FLAG_WON_AGAINST_VALLEY_WINDWORKS_OUTSIDE_DRIFLOON
    FadeScreenIn
    WaitFadeScreen
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 6, ValleyWindworksBuilding_ScientistPapaWalkToPlayerZ6
    GoToIfEq VAR_0x8005, 7, ValleyWindworksBuilding_ScientistPapaWalkToPlayerZ7
    End

ValleyWindworksBuilding_ScientistPapaWalkToPlayerZ6:
    ApplyMovement LOCALID_SCIENTIST_PAPA, ValleyWindworksBuilding_Movement_ScientistPapaWalkToPlayerZ6
    WaitMovement
    GoTo ValleyWindworksBuilding_ICanFinallySeeMyLittleDaughterAgain
    End

ValleyWindworksBuilding_ScientistPapaWalkToPlayerZ7:
    ApplyMovement LOCALID_SCIENTIST_PAPA, ValleyWindworksBuilding_Movement_ScientistPapaWalkToPlayerZ7
    WaitMovement
    GoTo ValleyWindworksBuilding_ICanFinallySeeMyLittleDaughterAgain
    End

ValleyWindworksBuilding_ICanFinallySeeMyLittleDaughterAgain:
    Message ValleyWindworksBuilding_Text_ICanFinallySeeMyLittleDaughterAgain
    CloseMessage
    SetFlag FLAG_HIDE_ROUTE_205_SOUTH_LITTLE_GIRL
    ClearFlag FLAG_HIDE_VALLEY_WINDWORKS_BUILDING_LITTLE_GIRL
    SetObjectEventMovementType LOCALID_LITTLE_GIRL, MOVEMENT_TYPE_LOOK_WEST
    AddObject LOCALID_LITTLE_GIRL
    LockObject LOCALID_LITTLE_GIRL
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 6, ValleyWindworksBuilding_LittleGirlWalkToScientistPapaZ6
    GoToIfEq VAR_0x8005, 7, ValleyWindworksBuilding_LittleGirlWalkToScientistPapaZ7
    End

ValleyWindworksBuilding_LittleGirlWalkToScientistPapaZ6:
    ApplyMovement LOCALID_LITTLE_GIRL, ValleyWindworksBuilding_Movement_LittleGirlWalkToScientistPapaZ6
    ApplyMovement LOCALID_SCIENTIST_PAPA, ValleyWindworksBuilding_Movement_ScientistPapaWalkOnSpotSouth
    WaitMovement
    GoTo ValleyWindworksBuilding_YuckPapaYoureStinkyGoShowerNowStinky
    End

ValleyWindworksBuilding_LittleGirlWalkToScientistPapaZ7:
    ApplyMovement LOCALID_LITTLE_GIRL, ValleyWindworksBuilding_Movement_LittleGirlWalkToScientistPapaZ7
    ApplyMovement LOCALID_SCIENTIST_PAPA, ValleyWindworksBuilding_Movement_ScientistPapaWalkOnSpotNorth
    WaitMovement
    GoTo ValleyWindworksBuilding_YuckPapaYoureStinkyGoShowerNowStinky
    End

ValleyWindworksBuilding_YuckPapaYoureStinkyGoShowerNowStinky:
    Message ValleyWindworksBuilding_Text_YuckPapaYoureStinkyGoShowerNowStinky
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 6, ValleyWindworksBuilding_ScientistPapaTurnInSpotFaceSouth
    GoToIfEq VAR_0x8005, 7, ValleyWindworksBuilding_ScientistPapaTurnInSpotFaceNorth
    End

ValleyWindworksBuilding_ScientistPapaTurnInSpotFaceSouth:
    ApplyMovement LOCALID_SCIENTIST_PAPA, ValleyWindworksBuilding_Movement_ScientistPapaTurnInSpotFaceSouth
    WaitMovement
    GoTo ValleyWindworksBuilding_IThinkTheBalloonPokemonWillComeVisitingAgain
    End

ValleyWindworksBuilding_ScientistPapaTurnInSpotFaceNorth:
    ApplyMovement LOCALID_SCIENTIST_PAPA, ValleyWindworksBuilding_Movement_ScientistPapaTurnInSpotFaceNorth
    WaitMovement
    GoTo ValleyWindworksBuilding_IThinkTheBalloonPokemonWillComeVisitingAgain
    End

ValleyWindworksBuilding_IThinkTheBalloonPokemonWillComeVisitingAgain:
    Message ValleyWindworksBuilding_Text_OhSorryAhahaTheyHadMeWorkingNonstop
    Message ValleyWindworksBuilding_Text_IThinkTheBalloonPokemonWillComeVisitingAgain
    WaitButton
    CloseMessage
    SetVar VAR_VALLEY_WINDWORKS_LOOKER_STATE, 1
    ClearFlag FLAG_HIDE_VALLEY_WINDWORKS_OUTSIDE_LOOKER
    SetVar VAR_VALLEY_WINDWORKS_TEAM_GALACTIC_STATE, 2
    SetFlag FLAG_ALT_MUSIC_VALLEY_WINDWORKS_BUILDING
    ReleaseAll
    End

ValleyWindworksBuilding_BlackOut:
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
ValleyWindworksBuilding_Movement_LittleGirlWalkToScientistPapaZ6:
    WalkFastEast 4
    WalkFastNorth
    WalkFastEast 6
    WalkOnSpotFastNorth
    EndMovement

    .balign 4, 0
ValleyWindworksBuilding_Movement_LittleGirlWalkToScientistPapaZ7:
    WalkFastEast 4
    WalkFastNorth 2
    WalkFastEast 6
    WalkOnSpotFastSouth
    EndMovement

    .balign 4, 0
ValleyWindworksBuilding_Movement_ScientistPapaWalkToPlayerZ6:
    WalkNormalSouth 3
    WalkNormalWest
    EndMovement

    .balign 4, 0
ValleyWindworksBuilding_Movement_ScientistPapaWalkToPlayerZ7:
    WalkNormalSouth 4
    WalkNormalWest
    EndMovement

    .balign 4, 0
ValleyWindworksBuilding_Movement_ScientistPapaWalkOnSpotSouth:
    Delay8 6
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
ValleyWindworksBuilding_Movement_ScientistPapaWalkOnSpotNorth:
    Delay8 6
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
ValleyWindworksBuilding_Movement_ScientistPapaTurnInSpotFaceSouth:
    FaceEast
    Delay8 2
    FaceWest
    Delay8 2
    FaceSouth
    EndMovement

    .balign 4, 0
ValleyWindworksBuilding_Movement_ScientistPapaTurnInSpotFaceNorth:
    FaceEast
    Delay8 2
    FaceWest
    Delay8 2
    FaceNorth
    EndMovement

    .balign 4, 0
ValleyWindworksBuilding_Movement_MarsNoticeAndWalkToPlayer:
    EmoteExclamationMark
    WalkNormalNorth
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
ValleyWindworksBuilding_Movement_MarsNoticePlayer:
    EmoteExclamationMark
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
ValleyWindworksBuilding_Movement_MarsWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
ValleyWindworksBuilding_Movement_MarsWalkOnSpotWest:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
ValleyWindworksBuilding_Movement_CharonWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

ValleyWindworksBuilding_ScientistPapa:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe VAR_VALLEY_WINDWORKS_TEAM_GALACTIC_STATE, 3, ValleyWindworksBuilding_TheValleyWindworksUsesTurbinesToCaptureEnergy
    Message ValleyWindworksBuilding_Text_ABalloonPokemonAppearsInFrontOfTheWindworksItsAlwaysACertainDayOfTheWeek
    WaitButton
    CloseMessage
    ReleaseAll
    End

ValleyWindworksBuilding_TheValleyWindworksUsesTurbinesToCaptureEnergy:
    Message ValleyWindworksBuilding_Text_TheValleyWindworksUsesTurbinesToCaptureEnergy
    WaitButton
    CloseMessage
    ReleaseAll
    End

ValleyWindworksBuilding_Twin:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe VAR_VALLEY_WINDWORKS_TEAM_GALACTIC_STATE, 3, ValleyWindworksBuilding_IfTheBalloonPokemonCameTheWindWouldBlowItAway
    Message ValleyWindworksBuilding_Text_IThinkTheBalloonPokemonWillComeVisitingAgain
    WaitButton
    CloseMessage
    ReleaseAll
    End

ValleyWindworksBuilding_IfTheBalloonPokemonCameTheWindWouldBlowItAway:
    Message ValleyWindworksBuilding_Text_IfTheBalloonPokemonCameTheWindWouldBlowItAway
    WaitButton
    CloseMessage
    ReleaseAll
    End

ValleyWindworksBuilding_PCWest:
    GoTo ValleyWindworksBuilding_PC
    End

ValleyWindworksBuilding_PCEast:
    GoTo ValleyWindworksBuilding_PC
    End

ValleyWindworksBuilding_PC:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    GoToIfGe VAR_EXITED_DISTORTION_WORLD_STATE, 2, ValleyWindworksBuilding_ThePCScreenIsFilledWithNumbersUponNumbers
    Message ValleyWindworksBuilding_Text_BringersAndTargetsTeamGalactic
    GoTo ValleyWindworksBuilding_PCEnd
    End

ValleyWindworksBuilding_ThePCScreenIsFilledWithNumbersUponNumbers:
    Message ValleyWindworksBuilding_Text_ThePCScreenIsFilledWithNumbersUponNumbers
    GoTo ValleyWindworksBuilding_PCEnd
    End

ValleyWindworksBuilding_PCEnd:
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
