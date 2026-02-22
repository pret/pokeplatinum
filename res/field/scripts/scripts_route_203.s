#include "macros/scrcmd.inc"
#include "res/text/bank/route_203.h"
#include "res/field/events/events_route_203.h"


    ScriptEntry Route203_Lass
    ScriptEntry Route203_ArrowSignpostJubilifeCity
    ScriptEntry Route203_ArrowSignpostOreburghCity
    ScriptEntry Route203_TrainerTipsSignpostEast
    ScriptEntry Route203_TrainerTipsSignpostWest
    ScriptEntry Route203_RivalTrigger
    ScriptEntryEnd

Route203_Lass:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message Route203_Text_YourFavoritePokemonShouldBePlacedAtTheTop
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

Route203_ArrowSignpostJubilifeCity:
    ShowArrowSign Route203_Text_Rt203JubilifeCity
    End

Route203_ArrowSignpostOreburghCity:
    ShowArrowSign Route203_Text_Rt203OreburghCity
    End

Route203_TrainerTipsSignpostEast:
    ShowScrollingSign Route203_Text_TrainerTipsIfAPokemonIsAboutToEvolveItCanBeInstantlyStopped
    End

Route203_TrainerTipsSignpostWest:
    ShowScrollingSign Route203_Text_TrainerTipsPokemonMovesUseEnergyCalledPowerPoints
    End

Route203_RivalTrigger:
    LockAll
    ApplyMovement LOCALID_RIVAL, Route203_Movement_RivalNoticePlayer
    WaitMovement
    Common_SetRivalBGM
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 757, Route203_RivalWalkToPlayerZ757
    GoToIfEq VAR_0x8005, 758, Route203_RivalWalkToPlayerZ758
    GoToIfEq VAR_0x8005, 759, Route203_RivalWalkToPlayerZ759
    GoToIfEq VAR_0x8005, 760, Route203_RivalWalkToPlayerZ760
    End

Route203_RivalWalkToPlayerZ757:
    ApplyMovement LOCALID_RIVAL, Route203_Movement_RivalWalkToPlayerZ757
    WaitMovement
    GoTo Route203_RivalIntro

Route203_RivalWalkToPlayerZ758:
    ApplyMovement LOCALID_RIVAL, Route203_Movement_RivalWalkToPlayerZ758
    WaitMovement
    GoTo Route203_RivalIntro

Route203_RivalWalkToPlayerZ759:
    ApplyMovement LOCALID_RIVAL, Route203_Movement_RivalWalkToPlayerZ759
    WaitMovement
    GoTo Route203_RivalIntro

Route203_RivalWalkToPlayerZ760:
    ApplyMovement LOCALID_RIVAL, Route203_Movement_RivalWalkToPlayerZ760
    WaitMovement
    GoTo Route203_RivalIntro

Route203_RivalIntro:
    BufferRivalName 0
    BufferPlayerName 1
    Message Route203_Text_OfCourseIGotTougherIllDemonstrateItToYou
    CloseMessage
    GetPlayerStarterSpecies VAR_RESULT
    GoToIfEq VAR_RESULT, SPECIES_TURTWIG, Route203_StartRivalBattleTurtwig
    GoToIfEq VAR_RESULT, SPECIES_CHIMCHAR, Route203_StartRivalBattleChimchar
    GoTo Route203_StartRivalBattlePiplup

Route203_StartRivalBattlePiplup:
    StartTrainerBattle TRAINER_RIVAL_ROUTE_203_PIPLUP
    GoTo Route203_RivalBattleEnd

Route203_StartRivalBattleTurtwig:
    StartTrainerBattle TRAINER_RIVAL_ROUTE_203_TURTWIG
    GoTo Route203_RivalBattleEnd

Route203_StartRivalBattleChimchar:
    StartTrainerBattle TRAINER_RIVAL_ROUTE_203_CHIMCHAR
    GoTo Route203_RivalBattleEnd

Route203_RivalBattleEnd:
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, Route203_BlackOutRivalBattle
    BufferRivalName 0
    Message Route203_Text_WhatDoYouMeanILost
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 757, Route203_RivalLeaveZ757
    GoToIfEq VAR_0x8005, 758, Route203_RivalLeaveZ758
    GoToIfEq VAR_0x8005, 759, Route203_RivalLeaveZ759
    GoToIfEq VAR_0x8005, 760, Route203_RivalLeaveZ760
    End

Route203_RivalLeaveZ757:
    ApplyMovement LOCALID_RIVAL, Route203_Movement_RivalLeaveZ757
    WaitMovement
    GoTo Route203_RemoveRival

Route203_RivalLeaveZ758:
    ApplyMovement LOCALID_RIVAL, Route203_Movement_RivalLeaveZ758
    WaitMovement
    GoTo Route203_RemoveRival

Route203_RivalLeaveZ759:
    ApplyMovement LOCALID_RIVAL, Route203_Movement_RivalLeaveZ759
    WaitMovement
    GoTo Route203_RemoveRival

Route203_RivalLeaveZ760:
    ApplyMovement LOCALID_RIVAL, Route203_Movement_RivalLeaveZ760
    WaitMovement
    GoTo Route203_RemoveRival

Route203_RemoveRival:
    RemoveObject LOCALID_RIVAL
    SetVar VAR_ROUTE_203_RIVAL_STATE, 1
    ReleaseAll
    End

Route203_BlackOutRivalBattle:
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
Route203_Movement_RivalLeaveZ757:
    WalkFastEast 10
    EndMovement

    .balign 4, 0
Route203_Movement_RivalLeaveZ758:
    WalkFastEast 10
    EndMovement

    .balign 4, 0
Route203_Movement_RivalLeaveZ759:
    WalkFastEast 10
    EndMovement

    .balign 4, 0
Route203_Movement_RivalLeaveZ760:
    WalkFastEast 10
    EndMovement

    .balign 4, 0
Route203_Movement_RivalWalkToPlayerZ757:
    WalkFastWest 4
    EndMovement

    .balign 4, 0
Route203_Movement_RivalWalkToPlayerZ758:
    WalkFastWest 2
    WalkFastSouth
    WalkFastWest 2
    EndMovement

    .balign 4, 0
Route203_Movement_RivalWalkToPlayerZ759:
    WalkFastWest 2
    WalkFastSouth 2
    WalkFastWest 2
    EndMovement

    .balign 4, 0
Route203_Movement_RivalWalkToPlayerZ760:
    WalkFastWest 2
    WalkFastSouth 3
    WalkFastWest 2
    EndMovement

    .balign 4, 0
Route203_Movement_RivalNoticePlayer:
    Delay8
    EmoteExclamationMark
    Delay8
    EndMovement
