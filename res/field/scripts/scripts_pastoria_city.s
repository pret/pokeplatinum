#include "macros/scrcmd.inc"
#include "res/text/bank/pastoria_city.h"
#include "res/field/events/events_pastoria_city.h"


    ScriptEntry PastoriaCity_OnTransition
    ScriptEntry PastoriaCity_Collector1
    ScriptEntry PastoriaCity_ScientistM
    ScriptEntry PastoriaCity_Picnicker
    ScriptEntry PastoriaCity_Beauty
    ScriptEntry PastoriaCity_BlackBelt
    ScriptEntry PastoriaCity_AceTrainerM1
    ScriptEntry PastoriaCity_Clefairy
    ScriptEntry PastoriaCity_GruntM
    ScriptEntry PastoriaCity_ParasolLady
    ScriptEntry PastoriaCity_Collector2
    ScriptEntry PastoriaCity_AceTrainerM2
    ScriptEntry PastoriaCity_MapSign
    ScriptEntry PastoriaCity_GymSign
    ScriptEntry PastoriaCity_SignGreatMarsh
    ScriptEntry PastoriaCity_SignSafariGame
    ScriptEntry PastoriaCity_Rival
    ScriptEntry PastoriaCity_TriggerRivalBattle
    ScriptEntry PastoriaCity_OnFrameExitGym
    ScriptEntry PastoriaCity_CrasherWake
    ScriptEntry PastoriaCity_TriggerBomb
    ScriptEntry PastoriaCity_TriggerBlockGreatMarsh
    ScriptEntry PastoriaCity_TriggerFaceBoard
    ScriptEntryEnd

PastoriaCity_OnTransition:
    SetVar VAR_PASTORIA_CITY_TRY_CROAGUNK_SCENE_STATE, 0
    SetFlag FLAG_HIDE_ROUTE_212_BLOCKADE
    CallIfEq VAR_PASTORIA_STATE, 5, PastoriaCity_SetRivalPositionAfterExplosion
    CallIfEq VAR_PASTORIA_STATE, 4, PastoriaCity_SetRivalPositionAfterGym
    CallIfEq VAR_PASTORIA_STATE, 4, PastoriaCity_SetCrasherWakePositionAfterGym
    GoToIfSet FLAG_PASTORIA_CITY_GRUNT_M_MOVED_EAST, PastoriaCity_SetGruntMEastPosition
    End

PastoriaCity_SetGruntMEastPosition:
    SetObjectEventPos LOCALID_GRUNT_M, 637, 812
    SetObjectEventDir LOCALID_GRUNT_M, DIR_EAST
    SetObjectEventMovementType LOCALID_GRUNT_M, MOVEMENT_TYPE_LOOK_EAST
    End

PastoriaCity_Collector1:
    NPCMessage PastoriaCity_Text_ImInTheMiddle
    End

PastoriaCity_ScientistM:
    NPCMessage PastoriaCity_Text_IStudyRarePokemon
    End

PastoriaCity_Picnicker:
    NPCMessage PastoriaCity_Text_SomeTrainersPreventEvolution
    End

PastoriaCity_Beauty:
    NPCMessage PastoriaCity_Text_ImVisitingTheGreatMarsh
    End

PastoriaCity_BlackBelt:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfBadgeAcquired BADGE_ID_FEN, PastoriaCity_GymLeaderWrestles
    Message PastoriaCity_Text_GymLeaderIsAwesome
    WaitButton
    CloseMessage
    ReleaseAll
    End

PastoriaCity_GymLeaderWrestles:
    Message PastoriaCity_Text_GymLeaderWrestles
    WaitButton
    CloseMessage
    ReleaseAll
    End

PastoriaCity_ParasolLady:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_PASTORIA_CITY_ACCESSORY_STARTER_MASK, PastoriaCity_ICookedPoffins
    GetPlayerStarterSpecies VAR_RESULT
    CallIfEq VAR_RESULT, SPECIES_TURTWIG, PastoriaCity_SetAccessoryChimcharMask
    CallIfEq VAR_RESULT, SPECIES_CHIMCHAR, PastoriaCity_SetAccessoryPiplupMask
    CallIfEq VAR_RESULT, SPECIES_PIPLUP, PastoriaCity_SetAccessoryTurtwigMask
    BufferAccessoryName 0, VAR_0x8004
    Message PastoriaCity_Text_TryDressingUpPokemon
    SetVar VAR_0x8005, 1
    Common_GiveAccessoryWaitForConfirm
    SetFlag FLAG_RECEIVED_PASTORIA_CITY_ACCESSORY_STARTER_MASK
    CloseMessage
    ReleaseAll
    End

PastoriaCity_ICookedPoffins:
    Message PastoriaCity_Text_ICookedPoffins
    WaitButton
    CloseMessage
    ReleaseAll
    End

PastoriaCity_SetAccessoryChimcharMask:
    SetVar VAR_0x8004, ACCESSORY_CHIMCHAR_MASK
    Return

PastoriaCity_SetAccessoryPiplupMask:
    SetVar VAR_0x8004, ACCESSORY_PIPLUP_MASK
    Return

PastoriaCity_SetAccessoryTurtwigMask:
    SetVar VAR_0x8004, ACCESSORY_TURTWIG_MASK
    Return

PastoriaCity_Collector2:
    NPCMessage PastoriaCity_Text_ICantUseSurf
    End

PastoriaCity_AceTrainerM2:
    NPCMessage PastoriaCity_Text_HaveYouBeenToPokemonMansion
    End

PastoriaCity_AceTrainerM1:
    NPCMessage PastoriaCity_Text_GreatMarshKeepsWeatherCool
    End

PastoriaCity_Clefairy:
    PokemonCryAndMessage SPECIES_CLEFAIRY, PastoriaCity_Text_ClefairyCry
    End

PastoriaCity_GruntM:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    GoToIfSet FLAG_PASTORIA_CITY_GRUNT_M_MOVED_EAST, PastoriaCity_StopChasingMe
    Message PastoriaCity_Text_PackageHasntArrived
    WaitButton
    CloseMessage
    ReleaseAll
    End

PastoriaCity_StopChasingMe:
    FacePlayer
    Message PastoriaCity_Text_StopChasingMe
    CloseMessage
    GetPlayerDir VAR_RESULT
    GoToIfEq VAR_RESULT, DIR_WEST, PastoriaCity_GruntMLeaveWest
    GoToIfEq VAR_RESULT, DIR_EAST, PastoriaCity_GruntMLeaveEast
    GoToIfEq VAR_RESULT, DIR_NORTH, PastoriaCity_GruntMLeaveNorth
    GoTo PastoriaCity_GruntMLeaveSouth
    End

PastoriaCity_GruntMLeaveWest:
    SetVar VAR_0x8007, 2
    ApplyMovement LOCALID_GRUNT_M, PastoriaCity_Movement_GruntMLeaveWest
    ApplyMovement LOCALID_PLAYER, PastoriaCity_Movement_PlayerWatchGruntMLeaveWest
    WaitMovement
    GoTo PastoriaCity_RemoveGruntM
    End

PastoriaCity_GruntMLeaveEast:
    SetVar VAR_0x8007, 3
    ApplyMovement LOCALID_GRUNT_M, PastoriaCity_Movement_GruntMLeaveNorthSouthEast
    WaitMovement
    GoTo PastoriaCity_RemoveGruntM
    End

PastoriaCity_GruntMLeaveNorth:
    SetVar VAR_0x8007, 0
    ApplyMovement LOCALID_GRUNT_M, PastoriaCity_Movement_GruntMLeaveNorthSouthEast
    ApplyMovement LOCALID_PLAYER, PastoriaCity_Movement_PlayerWatchGruntMLeaveNorth
    WaitMovement
    GoTo PastoriaCity_RemoveGruntM
    End

PastoriaCity_GruntMLeaveSouth:
    SetVar VAR_0x8007, 1
    ApplyMovement LOCALID_GRUNT_M, PastoriaCity_Movement_GruntMLeaveNorthSouthEast
    ApplyMovement LOCALID_PLAYER, PastoriaCity_Movement_PlayerWatchGruntMLeaveSouth
    WaitMovement
    GoTo PastoriaCity_RemoveGruntM
    End

PastoriaCity_RemoveGruntM:
    PlaySE SEQ_SE_DP_KAIDAN2
    RemoveObject LOCALID_GRUNT_M
    SetFlag FLAG_TALKED_TO_PASTORIA_CITY_GRUNT_M
    ReleaseAll
    End

    .balign 4, 0
PastoriaCity_UnusedMovement:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
PastoriaCity_Movement_PlayerWatchGruntMLeaveWest:
    WalkOnSpotNormalSouth
    WalkOnSpotNormalEast
    EndMovement

PastoriaCity_UnusedMovement2:
    WalkOnSpotNormalNorth
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
PastoriaCity_Movement_PlayerWatchGruntMLeaveSouth:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
PastoriaCity_Movement_PlayerWatchGruntMLeaveNorth:
    WalkOnSpotNormalEast
    EndMovement

PastoriaCity_UnusedMovement3:
    WalkOnSpotNormalSouth
    WalkOnSpotNormalEast
    EndMovement

PastoriaCity_UnusedMovement4:
    WalkOnSpotNormalSouth
    WalkOnSpotNormalEast
    EndMovement

PastoriaCity_UnusedMovement5:
    WalkOnSpotNormalNorth
    WalkOnSpotNormalEast
    EndMovement

PastoriaCity_UnusedMovement6:
    WalkOnSpotNormalSouth
    WalkOnSpotNormalEast
    EndMovement

PastoriaCity_UnusedMovement7:
    WalkFastEast 9
    EndMovement

PastoriaCity_UnusedMovement8:
    WalkFastEast 7
    EndMovement

PastoriaCity_UnusedMovement9:
    WalkFastSouth
    WalkFastEast 8
    EndMovement

PastoriaCity_UnusedMovement10:
    WalkFastNorth
    WalkFastEast 8
    EndMovement

PastoriaCity_UnusedMovement11:
    EmoteExclamationMark
    EndMovement

PastoriaCity_UnusedMovement12:
    WalkFastSouth
    WalkFastEast 10
    EndMovement

PastoriaCity_UnusedMovement13:
    WalkFastEast 10
    EndMovement

    .balign 4, 0
PastoriaCity_Movement_GruntMLeaveWest:
    WalkFastSouth
    WalkFastEast 2
    WalkOnSpotFastEast
    EndMovement

    .balign 4, 0
PastoriaCity_Movement_GruntMLeaveNorthSouthEast:
    WalkFastEast 2
    WalkOnSpotFastEast
    EndMovement

PastoriaCity_UnusedMovement14:
    WalkFastSouth
    WalkFastEast 2
    WalkOnSpotFastEast
    EndMovement

PastoriaCity_UnusedMovement15:
    WalkFastSouth
    WalkFastEast 4
    WalkOnSpotFastEast
    EndMovement

PastoriaCity_UnusedMovement16:
    WalkFastNorth
    WalkFastEast 3
    WalkOnSpotFastEast
    EndMovement

PastoriaCity_UnusedMovement17:
    WalkFastSouth
    WalkFastEast 3
    WalkOnSpotFastEast
    EndMovement

PastoriaCity_MapSign:
    ShowMapSign PastoriaCity_Text_MapSign
    End

PastoriaCity_GymSign:
    ShowScrollingSign PastoriaCity_Text_SignPokemonGym
    End

PastoriaCity_SignGreatMarsh:
    ShowLandmarkSign PastoriaCity_Text_SignGreatMarsh
    End

PastoriaCity_SignSafariGame:
    ShowLandmarkSign PastoriaCity_Text_SignSafariGame
    End

PastoriaCity_Rival:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe VAR_PASTORIA_STATE, 5, PastoriaCity_WhyArentYouGone
    GoToIfGe VAR_PASTORIA_STATE, 4, PastoriaCity_RivalCroagunk
    BufferRivalName 0
    BufferPlayerName 1
    Message PastoriaCity_Text_MrWakeWentToVeilstone
    GoTo PastoriaCity_RivalEnd
    End

PastoriaCity_RivalCroagunk:
    GetPlayerDir VAR_RESULT
    GoToIfEq VAR_RESULT, DIR_NORTH, PastoriaCity_CroagunksWhereItsAt
    BufferRivalName 0
    Message PastoriaCity_Text_WhyAreYouTalkingFromThere
    CloseMessage
    ApplyMovement LOCALID_RIVAL, PastoriaCity_Movement_RivalWalkOnSpotSouth
    WaitMovement
    ReleaseAll
    End

PastoriaCity_CroagunksWhereItsAt:
    BufferRivalName 0
    Message PastoriaCity_Text_CroagunksWhereItsAt
    GoTo PastoriaCity_RivalEnd
    End

PastoriaCity_RivalEnd:
    WaitButton
    CloseMessage
    ReleaseAll
    End

PastoriaCity_WhyArentYouGone:
    BufferRivalName 0
    BufferPlayerName 1
    Message PastoriaCity_Text_WhyArentYouGone2
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
PastoriaCity_Movement_RivalWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

PastoriaCity_TriggerRivalBattle:
    LockAll
    ClearFlag FLAG_HIDE_PASTORIA_CITY_RIVAL
    SetObjectEventPos LOCALID_RIVAL, 595, 819
    SetObjectEventMovementType LOCALID_RIVAL, MOVEMENT_TYPE_LOOK_WEST
    SetObjectEventDir LOCALID_RIVAL, DIR_WEST
    AddObject LOCALID_RIVAL
    ApplyMovement LOCALID_RIVAL, PastoriaCity_Movement_RivalEnterForBattle
    WaitMovement
    Common_SetRivalBGM
    ApplyMovement LOCALID_RIVAL, PastoriaCity_Movement_RivalWalkToPlayerForBattle
    ApplyMovement LOCALID_PLAYER, PastoriaCity_Movement_PlayerFaceRivalForBattle
    WaitMovement
    BufferRivalName 0
    BufferPlayerName 1
    Message PastoriaCity_Text_IllTestYou
    CloseMessage
    ApplyMovement LOCALID_RIVAL, PastoriaCity_Movement_RivalWalkWest
    WaitMovement
    GetPlayerStarterSpecies VAR_RESULT
    GoToIfEq VAR_RESULT, SPECIES_TURTWIG, PastoriaCity_StartRivalBattleTurtwig
    GoToIfEq VAR_RESULT, SPECIES_CHIMCHAR, PastoriaCity_StartRivalBattleChimchar
    GoTo PastoriaCity_StartRivalBattlePiplup

PastoriaCity_StartRivalBattlePiplup:
    StartTrainerBattle TRAINER_RIVAL_PASTORIA_CITY_PIPLUP
    GoTo PastoriaCity_RivalPostBattle

PastoriaCity_StartRivalBattleTurtwig:
    StartTrainerBattle TRAINER_RIVAL_PASTORIA_CITY_TURTWIG
    GoTo PastoriaCity_RivalPostBattle

PastoriaCity_StartRivalBattleChimchar:
    StartTrainerBattle TRAINER_RIVAL_PASTORIA_CITY_CHIMCHAR
    GoTo PastoriaCity_RivalPostBattle

PastoriaCity_RivalPostBattle:
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PastoriaCity_BlackOut
    BufferRivalName 0
    BufferPlayerName 1
    Message PastoriaCity_Text_YouDidGetTougher
    CloseMessage
    ApplyMovement LOCALID_RIVAL, PastoriaCity_Movement_RivalLeaveAfterBattle
    WaitMovement
    RemoveObject LOCALID_RIVAL
    SetVar VAR_PASTORIA_STATE, 2
    ReleaseAll
    End

PastoriaCity_BlackOut:
    SetFlag FLAG_HIDE_PASTORIA_CITY_RIVAL
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
PastoriaCity_Movement_PlayerFaceRivalForBattle:
    Delay4 13
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
PastoriaCity_Movement_RivalEnterForBattle:
    WalkFastSouth 9
    WalkOnSpotFastWest
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
PastoriaCity_Movement_RivalWalkToPlayerForBattle:
    WalkFastWest 4
    WalkOnSpotFastWest
    EndMovement

    .balign 4, 0
PastoriaCity_Movement_RivalWalkWest:
    WalkNormalWest
    EndMovement

    .balign 4, 0
PastoriaCity_Movement_RivalLeaveAfterBattle:
    WalkFastEast 5
    WalkFastNorth 9
    EndMovement

PastoriaCity_OnFrameExitGym:
    LockAll
    ClearFlag FLAG_HIDE_PASTORIA_CITY_RIVAL
    SetObjectEventPos LOCALID_RIVAL, 595, 819
    SetObjectEventMovementType LOCALID_RIVAL, MOVEMENT_TYPE_LOOK_SOUTH
    SetObjectEventDir LOCALID_RIVAL, DIR_SOUTH
    AddObject LOCALID_RIVAL
    LockObject LOCALID_RIVAL
    ApplyMovement LOCALID_RIVAL, PastoriaCity_Movement_RivalEnterAfterGym
    ApplyMovement LOCALID_PLAYER, PastoriaCity_Movement_PlayerFaceRivalAfterGym
    WaitMovement
    BufferRivalName 0
    BufferPlayerName 1
    Message PastoriaCity_Text_YouGotTheGymBadge
    CloseMessage
    LoadDoorAnimation 18, 25, 13, 27, ANIMATION_TAG_DOOR_1
    PlayDoorOpenAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    ApplyMovement LOCALID_PLAYER, PastoriaCity_Movement_PlayerMoveAwayForCrasherWake
    WaitMovement
    ClearFlag FLAG_HIDE_PASTORIA_CITY_CRASHER_WAKE
    SetObjectEventPos LOCALID_CRASHER_WAKE, 589, 827
    SetObjectEventDir LOCALID_CRASHER_WAKE, DIR_NORTH
    SetObjectEventMovementType LOCALID_CRASHER_WAKE, MOVEMENT_TYPE_LOOK_NORTH
    AddObject LOCALID_CRASHER_WAKE
    LockObject LOCALID_CRASHER_WAKE
    ApplyMovement LOCALID_CRASHER_WAKE, PastoriaCity_Movement_CrasherWakeExitGym
    WaitMovement
    PlayDoorCloseAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    UnloadAnimation ANIMATION_TAG_DOOR_1
    SetFlag FLAG_HIDE_PASTORIA_CITY_GYM_CRASHER_WAKE
    ApplyMovement LOCALID_CRASHER_WAKE, PastoriaCity_Movement_CrasherWakeTurnToRivalAndPlayer
    WaitMovement
    Message PastoriaCity_Text_WhatsThisRacket
    CloseMessage
    ApplyMovement LOCALID_RIVAL, PastoriaCity_Movement_RivalExclamationMark
    WaitMovement
    BufferRivalName 0
    Message PastoriaCity_Text_OhMaster
    ApplyMovement LOCALID_CRASHER_WAKE, PastoriaCity_Movement_CrasherWakeWalkOnSpotEast
    WaitMovement
    Message PastoriaCity_Text_ListenKid
    ApplyMovement LOCALID_CRASHER_WAKE, PastoriaCity_Movement_CrasherWakeWalkOnSpotSouth
    WaitMovement
    Message PastoriaCity_Text_YouDontNeedMe
    BufferRivalName 0
    Message PastoriaCity_Text_TheresTroubleBrewing
    ApplyMovement LOCALID_CRASHER_WAKE, PastoriaCity_Movement_CrasherWakeWalkOnSpotEast
    WaitMovement
    Message PastoriaCity_Text_NoOneMessesWithPastoria
    CloseMessage
    ApplyMovement LOCALID_PLAYER, PastoriaCity_Movement_PlayerWatchCrasherWakeLeave
    ApplyMovement LOCALID_RIVAL, PastoriaCity_Movement_RivalMoveAwayForCrasherWake
    ApplyMovement LOCALID_CRASHER_WAKE, PastoriaCity_Movement_CrasherWakeLeave
    WaitMovement
    BufferRivalName 0
    Message PastoriaCity_Text_HeyMasterWait
    CloseMessage
    ApplyMovement LOCALID_RIVAL, PastoriaCity_Movement_RivalLeaveAfterGym
    WaitMovement
    Call PastoriaCity_SetCrasherWakePositionAfterGym
    ClearFlag FLAG_HIDE_PASTORIA_CITY_CRASHER_WAKE
    SetPosition LOCALID_CRASHER_WAKE, 611, 0, 810, DIR_NORTH
    Call PastoriaCity_SetRivalPositionAfterGym
    ClearFlag FLAG_HIDE_PASTORIA_CITY_RIVAL
    SetPosition LOCALID_RIVAL, 608, 0, 814, DIR_SOUTH
    SetVar VAR_PASTORIA_STATE, 4
    ReleaseAll
    End

PastoriaCity_SetRivalPositionAfterGym:
    SetObjectEventPos LOCALID_RIVAL, 608, 814
    SetObjectEventDir LOCALID_RIVAL, DIR_SOUTH
    SetObjectEventMovementType LOCALID_RIVAL, MOVEMENT_TYPE_LOOK_SOUTH
    Return

PastoriaCity_SetCrasherWakePositionAfterGym:
    SetObjectEventPos LOCALID_CRASHER_WAKE, 611, 810
    SetObjectEventDir LOCALID_CRASHER_WAKE, DIR_NORTH
    SetObjectEventMovementType LOCALID_CRASHER_WAKE, MOVEMENT_TYPE_LOOK_NORTH
    Return

PastoriaCity_SetRivalPositionAfterExplosion:
    SetObjectEventPos LOCALID_RIVAL, 611, 810
    SetObjectEventDir LOCALID_RIVAL, DIR_NORTH
    SetObjectEventMovementType LOCALID_RIVAL, MOVEMENT_TYPE_LOOK_NORTH
    Return

    .balign 4, 0
PastoriaCity_Movement_CrasherWakeExitGym:
    WalkNormalSouth
    EndMovement

    .balign 4, 0
PastoriaCity_Movement_CrasherWakeTurnToRivalAndPlayer:
    WalkOnSpotNormalEast
    Delay8 2
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
PastoriaCity_Movement_CrasherWakeWalkOnSpotEast:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
PastoriaCity_Movement_CrasherWakeWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
PastoriaCity_Movement_CrasherWakeLeave:
    WalkFastEast 6
    WalkFastNorth 8
    EndMovement

    .balign 4, 0
PastoriaCity_Movement_RivalEnterAfterGym:
    WalkFastSouth 9
    WalkFastWest 5
    EndMovement

    .balign 4, 0
PastoriaCity_Movement_RivalExclamationMark:
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
PastoriaCity_Movement_RivalMoveAwayForCrasherWake:
    LockDir
    WalkFastSouth
    UnlockDir
    WalkOnSpotFastEast
    EndMovement

    .balign 4, 0
PastoriaCity_Movement_RivalLeaveAfterGym:
    WalkFastEast 5
    WalkFastNorth 8
    EndMovement

    .balign 4, 0
PastoriaCity_Movement_PlayerFaceRivalAfterGym:
    Delay4 11
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
PastoriaCity_Movement_PlayerMoveAwayForCrasherWake:
    WalkOnSpotNormalNorth
    Delay8 2
    WalkNormalSouth
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
PastoriaCity_Movement_PlayerWatchCrasherWakeLeave:
    Delay8
    WalkOnSpotNormalEast
    EndMovement

PastoriaCity_TriggerBomb:
    LockAll
    Call PastoriaCity_Explosion
    ApplyMovement LOCALID_CRASHER_WAKE, PastoriaCity_Movement_CrasherWakeWatchGruntMExitGreatMarsh
    ApplyMovement LOCALID_RIVAL, PastoriaCity_Movement_RivalWatchGruntMExitGreatMarsh
    ApplyMovement LOCALID_PLAYER, PastoriaCity_Movement_PlayerWatchGruntMExitGreatMarsh
    ApplyMovement LOCALID_GRUNT_M, PastoriaCity_Movement_GruntMExitGreatMarsh
    WaitMovement
    Call PastoriaCity_GruntMPushedTheButton
    ApplyMovement LOCALID_CRASHER_WAKE, PastoriaCity_Movement_CrasherWakeWatchGruntMLeave
    ApplyMovement LOCALID_RIVAL, PastoriaCity_Movement_RivalWatchGruntMLeave
    ApplyMovement LOCALID_PLAYER, PastoriaCity_Movement_PlayerWatchGruntMLeave
    ApplyMovement LOCALID_GRUNT_M, PastoriaCity_Movement_GruntMLeave
    WaitMovement
    Call PastoriaCity_MoveGruntMEast
    Message PastoriaCity_Text_GreatMarshIsInvaluable
    ApplyMovement LOCALID_CRASHER_WAKE, PastoriaCity_Movement_CrasherWakeWalkOnSpotSouthAfterExplosion
    ApplyMovement LOCALID_PLAYER, PastoriaCity_Movement_PlayerWalkOnSpotNorth
    WaitMovement
    Call PastoriaCity_GoAfterThatGoon
    ReleaseAll
    End

PastoriaCity_Explosion:
    ApplyMovement LOCALID_RIVAL, PastoriaCity_Movement_RivalWalkToPlayerForExplosion
    WaitMovement
    BufferRivalName 0
    Message PastoriaCity_Text_DontForgetImHere
    CloseMessage
    ApplyMovement LOCALID_PLAYER, PastoriaCity_Movement_PlayerFaceNorth
    ApplyMovement LOCALID_CRASHER_WAKE, PastoriaCity_Movement_CrasherWakeWalkOnSpotNorth
    WaitMovement
    Message PastoriaCity_Text_WheresThisGalac
    ApplyMovement LOCALID_RIVAL, PastoriaCity_Movement_RivalWalkOnSpotNorth
    WaitMovement
    PlaySE SEQ_SE_DP_FW291
    WaitTime 4, VAR_RESULT
    Message PastoriaCity_Text_BigExplosion
    WaitSE SEQ_SE_CONFIRM
    ScrCmd_29F 1
    CloseMessage
    ClearFlag FLAG_HIDE_PASTORIA_CITY_GRUNT_M
    SetObjectEventPos LOCALID_GRUNT_M, 610, 808
    SetObjectEventDir LOCALID_GRUNT_M, DIR_EAST
    SetObjectEventMovementType LOCALID_GRUNT_M, MOVEMENT_TYPE_LOOK_EAST
    AddObject LOCALID_GRUNT_M
    LockObject LOCALID_GRUNT_M
    Return

PastoriaCity_GruntMPushedTheButton:
    Message PastoriaCity_Text_ThatWasRough
    ApplyMovement LOCALID_CRASHER_WAKE, PastoriaCity_Movement_CrasherWakeWatchGruntMExitGreatMarsh
    WaitMovement
    Message PastoriaCity_Text_WhatveYouDone
    ApplyMovement LOCALID_GRUNT_M, PastoriaCity_Movement_GruntMWalkOnSpotNorth
    WaitMovement
    Message PastoriaCity_Text_IPushedTheButton
    CloseMessage
    Return

PastoriaCity_MoveGruntMEast:
    RemoveObject LOCALID_GRUNT_M
    ClearFlag FLAG_HIDE_PASTORIA_CITY_GRUNT_M
    SetObjectEventPos LOCALID_GRUNT_M, 637, 812
    SetObjectEventMovementType LOCALID_GRUNT_M, MOVEMENT_TYPE_LOOK_EAST
    SetObjectEventDir LOCALID_GRUNT_M, DIR_EAST
    AddObject LOCALID_GRUNT_M
    Return

PastoriaCity_GoAfterThatGoon:
    Message PastoriaCity_Text_DoNotFollowMe
    CloseMessage
    ApplyMovement LOCALID_CRASHER_WAKE, PastoriaCity_Movement_CrasherWakeEnterGreatMarsh
    ApplyMovement LOCALID_PLAYER, PastoriaCity_Movement_PlayerWatchCrasherWakeEnterGreatMarsh
    WaitMovement
    RemoveObject LOCALID_CRASHER_WAKE
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 609, PastoriaCity_RivalWalkToGreatMarsh
    CallIfEq VAR_0x8004, 611, PastoriaCity_RivalWalkToGreatMarshX611
    CallIfEq VAR_0x8004, 612, PastoriaCity_RivalWalkToGreatMarsh
    SetFlag FLAG_HIDE_VEILSTONE_CITY_GALACTIC_WAREHOUSE_LOOKER
    SetVar VAR_PASTORIA_STATE, 5
    SetFlag FLAG_PASTORIA_CITY_GRUNT_M_MOVED_EAST
    BufferRivalName 0
    BufferPlayerName 1
    Message PastoriaCity_Text_GoAfterThatGoon
    WaitButton
    CloseMessage
    Return

PastoriaCity_RivalWalkToGreatMarsh:
    ApplyMovement LOCALID_RIVAL, PastoriaCity_Movement_RivalWalkToGreatMarsh
    WaitMovement
    Return

PastoriaCity_RivalWalkToGreatMarshX611:
    ApplyMovement LOCALID_RIVAL, PastoriaCity_Movement_RivalWalkToGreatMarshX611
    WaitMovement
    Return

    .balign 4, 0
PastoriaCity_Movement_PlayerWatchCrasherWakeEnterGreatMarsh:
    Delay8
    FaceNorth
    EndMovement

PastoriaCity_CrasherWake:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Call PastoriaCity_Explosion
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 611, PastoriaCity_GruntMExitGreatMarshX611
    CallIfEq VAR_0x8004, 612, PastoriaCity_GruntMExitGreatMarshX612
    Call PastoriaCity_GruntMPushedTheButton
    ApplyMovement LOCALID_PLAYER, PastoriaCity_Movement_PlayerWatchGruntMLeave
    ApplyMovement LOCALID_CRASHER_WAKE, PastoriaCity_Movement_CrasherWakeWatchGruntMLeave
    ApplyMovement LOCALID_RIVAL, PastoriaCity_Movement_RivalWatchGruntMLeave
    ApplyMovement LOCALID_GRUNT_M, PastoriaCity_Movement_GruntMLeave
    WaitMovement
    Call PastoriaCity_MoveGruntMEast
    Message PastoriaCity_Text_GreatMarshIsInvaluable
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 611, PastoriaCity_PlayerAndCrasherWakeFaceEachOtherX611
    CallIfEq VAR_0x8004, 612, PastoriaCity_PlayerAndCrasherWakeFaceEachOtherX612
    Call PastoriaCity_GoAfterThatGoon
    ReleaseAll
    End

PastoriaCity_GruntMExitGreatMarshX611:
    ApplyMovement LOCALID_CRASHER_WAKE, PastoriaCity_Movement_CrasherWakeWatchGruntMExitGreatMarsh
    ApplyMovement LOCALID_PLAYER, PastoriaCity_Movement_PlayerWatchGruntMExitGreatMarsh2
    ApplyMovement LOCALID_RIVAL, PastoriaCity_Movement_RivalWatchGruntMExitGreatMarsh2
    ApplyMovement LOCALID_GRUNT_M, PastoriaCity_Movement_GruntMExitGreatMarsh
    WaitMovement
    Return

PastoriaCity_GruntMExitGreatMarshX612:
    ApplyMovement LOCALID_CRASHER_WAKE, PastoriaCity_Movement_CrasherWakeWatchGruntMExitGreatMarsh
    ApplyMovement LOCALID_PLAYER, PastoriaCity_Movement_PlayerWatchGruntMExitGreatMarsh2
    ApplyMovement LOCALID_RIVAL, PastoriaCity_Movement_RivalWatchGruntMExitGreatMarsh2
    ApplyMovement LOCALID_GRUNT_M, PastoriaCity_Movement_GruntMExitGreatMarsh
    WaitMovement
    Return

PastoriaCity_PlayerAndCrasherWakeFaceEachOtherX611:
    ApplyMovement LOCALID_CRASHER_WAKE, PastoriaCity_Movement_CrasherWakeWalkOnSpotSouthAfterExplosion
    ApplyMovement LOCALID_PLAYER, PastoriaCity_Movement_PlayerWalkOnSpotNorth
    WaitMovement
    Return

PastoriaCity_PlayerAndCrasherWakeFaceEachOtherX612:
    ApplyMovement LOCALID_CRASHER_WAKE, PastoriaCity_Movement_CrasherWakeWalkOnSpotSouthAfterExplosion
    ApplyMovement LOCALID_PLAYER, PastoriaCity_Movement_PlayerWalkOnSpotWest
    WaitMovement
    Return

    .balign 4, 0
PastoriaCity_Movement_PlayerFaceNorth:
    FaceNorth
    EndMovement

    .balign 4, 0
PastoriaCity_Movement_PlayerWatchGruntMExitGreatMarsh:
    WalkFastSouth
    WalkFastEast
    WalkOnSpotFastSouth
    EndMovement

    .balign 4, 0
PastoriaCity_Movement_PlayerWatchGruntMExitGreatMarsh2:
    Delay8
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
PastoriaCity_Movement_PlayerWatchGruntMLeave:
    Delay8
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
PastoriaCity_Movement_PlayerWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
PastoriaCity_Movement_PlayerWalkOnSpotWest:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
PastoriaCity_Movement_RivalWalkToPlayerForExplosion:
    WalkFastNorth 3
    WalkFastEast
    EndMovement

    .balign 4, 0
PastoriaCity_Movement_RivalWalkOnSpotNorth:
    WalkOnSpotFastNorth
    EndMovement

PastoriaCity_UnusedMovement18:
    WalkFastSouth 3
    EndMovement

PastoriaCity_UnusedMovement19:
    WalkOnSpotFastNorth
    EndMovement

    .balign 4, 0
PastoriaCity_Movement_RivalWatchGruntMExitGreatMarsh:
    WalkOnSpotFastSouth
    EndMovement

    .balign 4, 0
PastoriaCity_Movement_RivalWatchGruntMExitGreatMarsh2:
    Delay8
    WalkOnSpotFastSouth
    EndMovement

    .balign 4, 0
PastoriaCity_Movement_RivalWalkToGreatMarsh:
    WalkFastEast 2
    WalkFastNorth
    EndMovement

    .balign 4, 0
PastoriaCity_Movement_RivalWalkToGreatMarshX611:
    WalkFastEast
    WalkFastNorth
    WalkFastEast
    WalkOnSpotFastNorth
    EndMovement

    .balign 4, 0
PastoriaCity_Movement_RivalWatchGruntMLeave:
    WalkOnSpotFastEast
    EndMovement

    .balign 4, 0
PastoriaCity_Movement_GruntMExitGreatMarsh:
    WalkFastSouth 4
    EndMovement

    .balign 4, 0
PastoriaCity_Movement_GruntMWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
PastoriaCity_Movement_GruntMLeave:
    WalkFastEast 12
    EndMovement

    .balign 4, 0
PastoriaCity_Movement_CrasherWakeWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement

PastoriaCity_UnusedMovement20:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
PastoriaCity_Movement_CrasherWakeWatchGruntMExitGreatMarsh:
    WalkOnSpotFastSouth
    EndMovement

    .balign 4, 0
PastoriaCity_Movement_CrasherWakeWatchGruntMLeave:
    Delay8
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
PastoriaCity_Movement_CrasherWakeWalkOnSpotSouthAfterExplosion:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
PastoriaCity_Movement_CrasherWakeEnterGreatMarsh:
    WalkNormalNorth 2
    EndMovement

PastoriaCity_TriggerBlockGreatMarsh:
    LockAll
    ApplyMovement LOCALID_PLAYER, PastoriaCity_Movement_PlayerWalkOnSpotEast
    ApplyMovement LOCALID_RIVAL, PastoriaCity_Movement_RivalWalkOnSpotWest
    WaitMovement
    BufferRivalName 0
    BufferPlayerName 1
    Message PastoriaCity_Text_WhyArentYouGone
    CloseMessage
    ApplyMovement LOCALID_PLAYER, PastoriaCity_Movement_PlayerGetPushedSouth
    ApplyMovement LOCALID_RIVAL, PastoriaCity_Movement_RivalPushBackPlayer
    WaitMovement
    ReleaseAll
    End

    .balign 4, 0
PastoriaCity_Movement_PlayerWalkOnSpotEast:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
PastoriaCity_Movement_PlayerGetPushedSouth:
    WalkNormalSouth
    EndMovement

    .balign 4, 0
PastoriaCity_Movement_RivalWalkOnSpotWest:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
PastoriaCity_Movement_RivalPushBackPlayer:
    WalkNormalWest
    WalkNormalEast
    WalkOnSpotNormalNorth
    EndMovement

PastoriaCity_TriggerFaceBoard:
    LockAll
    GoToIfSet FLAG_BLOCK_PASTORIA_CITY_CROAGUNK_EVENT, PastoriaCity_FaceBoardEnd
    SetVar VAR_PASTORIA_CITY_TRY_CROAGUNK_SCENE_STATE, 1
    GetRandom VAR_RESULT, 100
    GoToIfGe VAR_RESULT, 90, PastoriaCity_CroagunkScene
    GoTo PastoriaCity_FaceBoardEnd
    End

PastoriaCity_FaceBoardEnd:
    ReleaseAll
    End

PastoriaCity_CroagunkScene:
    ClearFlag FLAG_HIDE_PASTORIA_CITY_CROAGUNK
    AddObject LOCALID_CROAGUNK
    ApplyMovement LOCALID_PLAYER, PastoriaCity_Movement_PlayerWalkOnSpotSouth
    ApplyMovement LOCALID_CROAGUNK, PastoriaCity_Movement_CroagunkEnter
    WaitMovement
    PlayCry SPECIES_CROAGUNK
    WaitCry
    WaitTime 30, VAR_RESULT
    ApplyMovement LOCALID_CROAGUNK, PastoriaCity_Movement_CroagunkLeave
    WaitMovement
    PlaySE SEQ_SE_DP_KAIDAN2
    RemoveObject LOCALID_CROAGUNK
    WaitSE SEQ_SE_DP_KAIDAN2
    ReleaseAll
    End

    .balign 4, 0
PastoriaCity_Movement_CroagunkEnter:
    WalkNormalNorth 7
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
PastoriaCity_Movement_CroagunkLeave:
    WalkNormalNorth 5
    EndMovement

    .balign 4, 0
PastoriaCity_Movement_PlayerWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement
