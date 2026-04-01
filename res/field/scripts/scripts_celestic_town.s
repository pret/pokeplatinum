#include "macros/scrcmd.inc"
#include "res/text/bank/celestic_town.h"
#include "res/field/events/events_celestic_town.h"


    ScriptEntry CelesticTown_OnTransition
    ScriptEntry CelesticTown_Elder
    ScriptEntry CelesticTown_TriggerElder
    ScriptEntry CelesticTown_GruntM
    ScriptEntry CelesticTown_OnFrameCynthia
    ScriptEntry CelesticTown_Cynthia
    ScriptEntry CelesticTown_ExpertM
    ScriptEntry CelesticTown_AceTrainerF
    ScriptEntry CelesticTown_NinjaBoy
    ScriptEntry CelesticTown_MapSign
    ScriptEntry CelesticTown_EtchingDialga
    ScriptEntry CelesticTown_EtchingPalkia
    ScriptEntryEnd

CelesticTown_OnTransition:
    SetFlag FLAG_UNLOCKED_VS_SEEKER_LVL_2
    End

CelesticTown_GruntM:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message CelesticTown_Text_WillYouMessWithMe
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, CelesticTown_GruntMBattle
    GoToIfEq VAR_RESULT, MENU_NO, CelesticTown_VerySmart
    End

CelesticTown_VerySmart:
    Message CelesticTown_Text_VerySmart
    WaitButton
    CloseMessage
    ReleaseAll
    End

CelesticTown_GruntMBattle:
    Message CelesticTown_Text_YouDareOpposeUs
    CloseMessage
    StartTrainerBattle TRAINER_GALACTIC_GRUNT_CELESTIC_TOWN
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, CelesticTown_BlackOut
    Message CelesticTown_Text_TooMuchToHandle
    CloseMessage
    GetPlayerDir VAR_RESULT
    GoToIfEq VAR_RESULT, DIR_NORTH, CelesticTown_GruntMLeaveElderEnterNorth
    GoToIfEq VAR_RESULT, DIR_WEST, CelesticTown_GruntMLeaveElderEnterWest
    GoToIfEq VAR_RESULT, DIR_EAST, CelesticTown_GruntMLeaveElderEnterEast
    End

CelesticTown_GruntMLeaveElderEnterNorth:
    ApplyMovement LOCALID_GRUNT_M, CelesticTown_Movement_GruntMLeaveNorthWest
    ApplyMovement LOCALID_PLAYER, CelesticTown_Movement_PlayerWatchGruntMLeaveNorth
    WaitMovement
    Call CelesticTown_RemoveGruntMAddElder
    ApplyMovement LOCALID_ELDER, CelesticTown_Movement_ElderEnterNorth
    ApplyMovement LOCALID_PLAYER, CelesticTown_Movement_PlayerWatchElderEnterNorth
    WaitMovement
    GoTo CelesticTown_GiveOldCharm

CelesticTown_GruntMLeaveElderEnterWest:
    ApplyMovement LOCALID_GRUNT_M, CelesticTown_Movement_GruntMLeaveNorthWest
    ApplyMovement LOCALID_PLAYER, CelesticTown_Movement_PlayerWatchGruntMLeaveWest
    WaitMovement
    Call CelesticTown_RemoveGruntMAddElder
    ApplyMovement LOCALID_ELDER, CelesticTown_Movement_ElderEnterWest
    WaitMovement
    GoTo CelesticTown_GiveOldCharm

CelesticTown_GruntMLeaveElderEnterEast:
    ApplyMovement LOCALID_GRUNT_M, CelesticTown_Movement_GruntMLeaveEast
    ApplyMovement LOCALID_PLAYER, CelesticTown_Movement_PlayerWatchGruntMLeaveEast
    WaitMovement
    Call CelesticTown_RemoveGruntMAddElder
    ApplyMovement LOCALID_ELDER, CelesticTown_Movement_ElderEnterEast
    WaitMovement
    GoTo CelesticTown_GiveOldCharm

CelesticTown_RemoveGruntMAddElder:
    RemoveObject LOCALID_GRUNT_M
    RemoveObject LOCALID_ELDER
    SetObjectEventPos LOCALID_ELDER, 466, 531
    SetObjectEventDir LOCALID_ELDER, DIR_NORTH
    SetObjectEventMovementType LOCALID_ELDER, MOVEMENT_TYPE_LOOK_NORTH
    ClearFlag FLAG_HIDE_CELESTIC_TOWN_ELDER
    AddObject LOCALID_ELDER
    LockObject LOCALID_ELDER
    Return

CelesticTown_GiveOldCharm:
    Message CelesticTown_Text_ThatOldCharm
    BufferPlayerName 0
    BufferItemName 1, ITEM_OLD_CHARM
    PlayFanfare SEQ_FANFA4
    Message CelesticTown_Text_PlayerHandedOverCharm
    WaitFanfare
    RemoveItem ITEM_OLD_CHARM, 1, VAR_RESULT
    SetFlag FLAG_DELIVERED_OLD_CHARM
    Message CelesticTown_Text_LookAroundRuins
    WaitButton
    CloseMessage
    ReleaseAll
    End

CelesticTown_BlackOut:
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
CelesticTown_Movement_GruntMLeaveNorthWest:
    WalkFastWest 3
    WalkFastSouth 9
    EndMovement

    .balign 4, 0
CelesticTown_Movement_GruntMLeaveEast:
    WalkFastSouth 2
    WalkFastWest 3
    WalkFastSouth 7
    EndMovement

    .balign 4, 0
CelesticTown_Movement_ElderEnterNorth:
    WalkNormalNorth 8
    WalkNormalWest 2
    EndMovement

    .balign 4, 0
CelesticTown_Movement_ElderEnterWest:
    WalkNormalNorth 8
    WalkNormalWest 2
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
CelesticTown_Movement_ElderEnterEast:
    WalkNormalNorth 8
    WalkNormalWest 4
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
CelesticTown_Movement_PlayerWatchGruntMLeaveNorth:
    WalkOnSpotNormalWest
    Delay8
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
CelesticTown_Movement_PlayerWatchGruntMLeaveWest:
    Delay8 3
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
CelesticTown_Movement_PlayerWatchGruntMLeaveEast:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
CelesticTown_Movement_PlayerWatchElderEnterNorth:
    Delay8 8
    Delay4
    WalkOnSpotNormalEast
    EndMovement

CelesticTown_UnusedMovement:
    Delay8 8
    WalkOnSpotNormalSouth
    EndMovement

CelesticTown_UnusedMovement2:
    Delay8 9
    WalkOnSpotNormalSouth
    EndMovement

CelesticTown_TriggerElder:
    LockAll
    ApplyMovement LOCALID_PLAYER, CelesticTown_Movement_PlayerFaceWest
    ApplyMovement LOCALID_ELDER, CelesticTown_Movement_ElderWalkOnSpotEast
    WaitMovement
    Call CelesticTown_OddSpaceman
    ReleaseAll
    End

CelesticTown_OddSpaceman:
    SetVar VAR_CELESTIC_TOWN_ELDER_STATE, 1
    Message CelesticTown_Text_OddSpaceman
    WaitButton
    CloseMessage
    Return

    .balign 4, 0
CelesticTown_Movement_ElderWalkOnSpotEast:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
CelesticTown_Movement_PlayerFaceWest:
    FaceWest
    EndMovement

CelesticTown_Elder:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_DELIVERED_OLD_CHARM, CelesticTown_ExamineRuins
    Call CelesticTown_OddSpaceman
    ReleaseAll
    End

CelesticTown_ExamineRuins:
    Message CelesticTown_Text_ExamineRuins
    WaitButton
    CloseMessage
    ReleaseAll
    End

CelesticTown_OnFrameCynthia:
    LockAll
    ApplyMovement LOCALID_PLAYER, CelesticTown_Movement_PlayerWalkOnSpotEast
    ApplyMovement LOCALID_CYNTHIA, CelesticTown_Movement_CynthiaNoticePlayer
    WaitMovement
    Message CelesticTown_Text_WasEverythingAllRight
    ApplyMovement LOCALID_CYNTHIA, CelesticTown_Movement_CynthiaWalkOnSpotNorth
    WaitMovement
    Message CelesticTown_Text_ThoughtGalacticWasHarmless
    CloseMessage
    ApplyMovement LOCALID_CYNTHIA, CelesticTown_Movement_CynthiaWalkOnSpotWest
    WaitMovement
    SetVar VAR_CELESTIC_TOWN_STATE, 2
    SetFlag FLAG_HIDE_ROUTE_218_BLOCKADE
    WaitTime 12, VAR_RESULT
    Message CelesticTown_Text_LibraryInCanalave
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
CelesticTown_Movement_PlayerWalkOnSpotEast:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
CelesticTown_Movement_CynthiaNoticePlayer:
    EmoteExclamationMark
    WalkNormalWest 2
    EndMovement

    .balign 4, 0
CelesticTown_Movement_CynthiaWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
CelesticTown_Movement_CynthiaWalkOnSpotWest:
    WalkOnSpotNormalWest
    EndMovement

CelesticTown_Cynthia:
    NPCMessage CelesticTown_Text_LibraryInCanalave
    End

CelesticTown_ExpertM:
    NPCMessage CelesticTown_Text_StudyingLocalHistory
    End

CelesticTown_AceTrainerF:
    NPCMessage CelesticTown_Text_NoPokemonMart
    End

CelesticTown_NinjaBoy:
    NPCMessage CelesticTown_Text_APokemonCreatedSinnoh
    End

CelesticTown_MapSign:
    ShowMapSign CelesticTown_Text_MapSign
    End

CelesticTown_EtchingDialga:
    EventMessage CelesticTown_Text_EtchingDialga
    End

CelesticTown_EtchingPalkia:
    EventMessage CelesticTown_Text_EtchingPalkia
    End

    .balign 4, 0
