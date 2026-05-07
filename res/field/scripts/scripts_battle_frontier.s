#include "macros/scrcmd.inc"
#include "res/text/bank/battle_frontier.h"
#include "res/field/events/events_battle_frontier.h"


    ScriptEntry BattleFrontier_Unused1
    ScriptEntry BattleFrontier_NinjaBoy
    ScriptEntry BattleFrontier_BlackBelt
    ScriptEntry BattleFrontier_Idol
    ScriptEntry BattleFrontier_AceTrainerSnowF
    ScriptEntry BattleFrontier_Twin
    ScriptEntry BattleFrontier_ParasolLady
    ScriptEntry BattleFrontier_ExpertM
    ScriptEntry BattleFrontier_ExpertF
    ScriptEntry BattleFrontier_Waitress
    ScriptEntry BattleFrontier_Cowgirl
    ScriptEntry BattleFrontier_Roughneck
    ScriptEntry BattleFrontier_PokefanM
    ScriptEntry BattleFrontier_Collector
    ScriptEntry BattleFrontier_Gentleman
    ScriptEntry BattleFrontier_AceTrainerM2
    ScriptEntry BattleFrontier_Picnicker
    ScriptEntry BattleFrontier_PokemonBreederF
    ScriptEntry BattleFrontier_AceTrainerM1
    ScriptEntry BattleFrontier_SchoolKidM
    ScriptEntry BattleFrontier_Fisherman
    ScriptEntry BattleFrontier_TuberM
    ScriptEntry BattleFrontier_AttendantSouthwest
    ScriptEntry BattleFrontier_Unused24
    ScriptEntry BattleFrontier_AttendantSoutheast
    ScriptEntry BattleFrontier_SignBattleTower
    ScriptEntry BattleFrontier_SignBattleHall
    ScriptEntry BattleFrontier_SignBattleCastle
    ScriptEntry BattleFrontier_SignBattleArcade
    ScriptEntry BattleFrontier_SignBattleFactory
    ScriptEntry BattleFrontier_StatueWest
    ScriptEntry BattleFrontier_StatueEast
    ScriptEntry BattleFrontier_ScaleModel
    ScriptEntry BattleFrontier_TriggerEnterBattleHall
    ScriptEntry BattleFrontier_TriggerEnterBattleCastle
    ScriptEntry BattleFrontier_TriggerEnterBattleArcade
    ScriptEntry BattleFrontier_TriggerEnterBattleFactory
    ScriptEntry BattleFrontier_OnTransition
    ScriptEntryEnd

BattleFrontier_OnTransition:
    SetFlag FLAG_HIDE_BATTLE_HALL_MAJOR_NPC
    CheckTVInterviewEligible TV_PROGRAM_SEGMENT_BATTLE_FRONTIER_FRONTLINE_NEWS_MULTI, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, BattleFrontier_HideReporter
    GetBattleFrontierReporterPosition VAR_MAP_LOCAL_1, VAR_MAP_LOCAL_2, VAR_MAP_LOCAL_3, VAR_MAP_LOCAL_4
    SetObjectEventPos LOCALID_REPORTER, VAR_MAP_LOCAL_1, VAR_MAP_LOCAL_2
    SetObjectEventDir LOCALID_REPORTER, VAR_MAP_LOCAL_3
    SetObjectEventMovementType LOCALID_REPORTER, VAR_MAP_LOCAL_4
    ClearFlag FLAG_HIDE_BATTLE_FRONTIER_REPORTER
    End

BattleFrontier_HideReporter:
    SetFlag FLAG_HIDE_BATTLE_FRONTIER_REPORTER
    End

BattleFrontier_NinjaBoy:
    NPCMessage BattleFrontier_Text_HeightIsSymbolOfChallenge
    End

BattleFrontier_BlackBelt:
    NPCMessage BattleFrontier_Text_TeamUpWithFriend
    End

BattleFrontier_Idol:
    NPCMessage BattleFrontier_Text_LearnAboutPokemon
    End

BattleFrontier_AceTrainerSnowF:
    NPCMessage BattleFrontier_Text_BattleWithWorldsBest
    End

BattleFrontier_Twin:
    NPCMessage BattleFrontier_Text_MostImportantIsLady
    End

BattleFrontier_ParasolLady:
    NPCMessage BattleFrontier_Text_PokemonAlwaysWithMe
    End

BattleFrontier_ExpertM:
    NPCMessage BattleFrontier_Text_StoryBehindEveryPokemon
    End

BattleFrontier_ExpertF:
    NPCMessage BattleFrontier_Text_BeenTogetherLongTime
    End

BattleFrontier_Waitress:
    NPCMessage BattleFrontier_Text_ExpectSoMuchFromMaid
    End

BattleFrontier_Cowgirl:
    NPCMessage BattleFrontier_Text_StrongIsWeak
    End

BattleFrontier_Roughneck:
    NPCMessage BattleFrontier_Text_ThoseWhoLoveBattling
    End

BattleFrontier_PokefanM:
    NPCMessage BattleFrontier_Text_HowManyYears
    End

BattleFrontier_Collector:
    NPCMessage BattleFrontier_Text_CommandInConfidence
    End

BattleFrontier_Gentleman:
    NPCMessage BattleFrontier_Text_TreatEveryBattleAsLast
    End

BattleFrontier_AceTrainerM2:
    NPCMessage BattleFrontier_Text_CantOverlookSingleDetail
    End

BattleFrontier_Picnicker:
    NPCMessage BattleFrontier_Text_LookForWhoToBlame
    End

BattleFrontier_PokemonBreederF:
    NPCMessage BattleFrontier_Text_WinToChallengeTheBoss
    End

BattleFrontier_AceTrainerM1:
    NPCMessage BattleFrontier_Text_WayOfPokemonIsDeep
    End

BattleFrontier_SchoolKidM:
    NPCMessage BattleFrontier_Text_WinningWithRentalPokemon
    End

BattleFrontier_Fisherman:
    NPCMessage BattleFrontier_Text_MagikarpHasShotAtNo1
    End

BattleFrontier_TuberM:
    NPCMessage BattleFrontier_Text_RideEbbsAndFlows
    End

BattleFrontier_AttendantSouthwest:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message BattleFrontier_Text_TradeBPForPrizes
    CloseMessageWithoutErasing
    PokeMartFrontier MART_FRONTIER_ID_EXCHANGE_SERVICE_CORNER_LEFT
    ReleaseAll
    End

BattleFrontier_Unused24:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    FadeScreenOut
    WaitFadeScreen
    ScrCmd_2E2
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

BattleFrontier_AttendantSoutheast:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message BattleFrontier_Text_TradeBPForPrizes2
    CloseMessageWithoutErasing
    PokeMartFrontier MART_FRONTIER_ID_EXCHANGE_SERVICE_CORNER_RIGHT
    ReleaseAll
    End

BattleFrontier_SignBattleTower:
    ShowLandmarkSign BattleFrontier_Text_SignBattleTower
    End

BattleFrontier_SignBattleHall:
    ShowLandmarkSign BattleFrontier_Text_SignBattleHall
    End

BattleFrontier_SignBattleCastle:
    ShowLandmarkSign BattleFrontier_Text_SignBattleCastle
    End

BattleFrontier_SignBattleArcade:
    ShowLandmarkSign BattleFrontier_Text_SignBattleArcade
    End

BattleFrontier_SignBattleFactory:
    ShowLandmarkSign BattleFrontier_Text_SignBattleFactory
    End

BattleFrontier_StatueWest:
    EventMessage BattleFrontier_Text_StatueRepresentsTrainer
    End

BattleFrontier_StatueEast:
    EventMessage BattleFrontier_Text_TitleBoastfulOfCapture
    End

BattleFrontier_ScaleModel:
    EventMessage BattleFrontier_Text_ScaleModelBattleFrontier
    End

BattleFrontier_TriggerEnterBattleHall:
    LockAll
    ApplyMovement LOCALID_PLAYER, BattleFrontier_Movement_PlayerEnterBattleHall
    WaitMovement
    PlaySE SEQ_SE_DP_KAIDAN2
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_BATTLE_HALL, 0, 25, 9, DIR_WEST
    FadeScreenIn
    WaitFadeScreen
    End

    .balign 4, 0
BattleFrontier_Movement_PlayerEnterBattleHall:
    WalkFastWest 5
    EndMovement

BattleFrontier_TriggerEnterBattleCastle:
    LockAll
    ApplyMovement LOCALID_PLAYER, BattleFrontier_Movement_PlayerEnterBattleCastle
    WaitMovement
    PlaySE SEQ_SE_DP_KAIDAN2
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_BATTLE_CASTLE, 0, 21, 9, DIR_WEST
    FadeScreenIn
    WaitFadeScreen
    End

    .balign 4, 0
BattleFrontier_Movement_PlayerEnterBattleCastle:
    WalkFastWest 6
    EndMovement

BattleFrontier_TriggerEnterBattleArcade:
    LockAll
    ApplyMovement LOCALID_PLAYER, BattleFrontier_Movement_PlayerEnterBattleArcade
    WaitMovement
    PlaySE SEQ_SE_DP_KAIDAN2
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_BATTLE_ARCADE, 0, 1, 6, DIR_EAST
    FadeScreenIn
    WaitFadeScreen
    End

    .balign 4, 0
BattleFrontier_Movement_PlayerEnterBattleArcade:
    WalkFastEast 5
    EndMovement

BattleFrontier_TriggerEnterBattleFactory:
    LockAll
    ApplyMovement LOCALID_PLAYER, BattleFrontier_Movement_PlayerEnterBattleFactory
    WaitMovement
    PlaySE SEQ_SE_DP_KAIDAN2
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_BATTLE_FACTORY, 0, 1, 7, DIR_EAST
    FadeScreenIn
    WaitFadeScreen
    End

    .balign 4, 0
BattleFrontier_Movement_PlayerEnterBattleFactory:
    WalkFastEast 6
    EndMovement

BattleFrontier_Unused1:
    End

    .balign 4, 0
