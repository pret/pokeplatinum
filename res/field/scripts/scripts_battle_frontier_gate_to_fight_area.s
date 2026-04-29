#include "macros/scrcmd.inc"
#include "res/text/bank/battle_frontier_gate_to_fight_area.h"
#include "res/field/events/events_battle_frontier_gate_to_fight_area.h"


    ScriptEntry BattleFrontierGateToFightArea_OnFrameFirstEntry
    ScriptEntry BattleFrontierGateToFightArea_AttendantGeneral
    ScriptEntry BattleFrontierGateToFightArea_AttendantBattleTower
    ScriptEntry BattleFrontierGateToFightArea_AttendantBattleFactory
    ScriptEntry BattleFrontierGateToFightArea_AttendantBattleHall
    ScriptEntry BattleFrontierGateToFightArea_AttendantBattleCastle
    ScriptEntry BattleFrontierGateToFightArea_AttendantBattleArcade
    ScriptEntry BattleFrontierGateToFightArea_RuinManiac
    ScriptEntry BattleFrontierGateToFightArea_ExpertM
    ScriptEntry BattleFrontierGateToFightArea_PokemonBreederM
    ScriptEntry BattleFrontierGateToFightArea_Beauty
    ScriptEntry BattleFrontierGateToFightArea_OnTransition
    ScriptEntryEnd

BattleFrontierGateToFightArea_OnTransition:
    SetFlag FLAG_FIRST_ARRIVAL_BATTLE_PARK
    End

BattleFrontierGateToFightArea_OnFrameFirstEntry:
    LockAll
    SetVar VAR_BATTLE_FRONTIER_GATE_TO_FIGHT_AREA_STATE, 1
    SetFlag FLAG_HIDE_JUBILIFE_TV_3F_GLOBAL_RANKING_ROOM_WORKER
    SetFlag FLAG_HIDE_JUBILIFE_TV_3F_GROUP_RANKING_ROOM_WORKER
    Call BattleFrontierGateToFightArea_AttendantsFaceSouth
    Message BattleFrontierGateToFightArea_Text_RightThisWay
    CloseMessage
    Call BattleFrontierGateToFightArea_PlayerWalkToAttendant
    Message BattleFrontierGateToFightArea_Text_BorrowVsRecorder
    BufferPlayerName 0
    PlayFanfare SEQ_FANFA4
    Message BattleFrontierGateToFightArea_Text_VsRecorderWasUpgraded
    WaitFanfare
    Message BattleFrontierGateToFightArea_Text_AnyQuestions
    Call BattleFrontierGateToFightArea_QuestionsMenu
    Message BattleFrontierGateToFightArea_Text_EnjoyYourVisit
    WaitButton
    CloseMessage
    ReleaseAll
    End

BattleFrontierGateToFightArea_AttendantGeneral:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message BattleFrontierGateToFightArea_Text_ExplainWhichTopic
    Call BattleFrontierGateToFightArea_QuestionsMenu
    GoTo BattleFrontierGateToFightArea_EnjoyYourVisit
    End

BattleFrontierGateToFightArea_QuestionsMenu:
    InitLocalTextMenu 31, 5, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm BattleFrontierGateToFightArea_Text_BattleFrontier, 0
    AddMenuEntryImm BattleFrontierGateToFightArea_Text_BasicRules, 1
    AddMenuEntryImm BattleFrontierGateToFightArea_Text_BattlePoints, 2
    AddMenuEntryImm BattleFrontierGateToFightArea_Text_ExchangeServiceCorner, 3
    AddMenuEntryImm BattleFrontierGateToFightArea_Text_PerformanceMonitor, 4
    AddMenuEntryImm BattleFrontierGateToFightArea_Text_Exit, 5
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, BattleFrontierGateToFightArea_ExplainBattleFrontier
    GoToIfEq VAR_0x8008, 1, BattleFrontierGateToFightArea_ExplainBasicRules
    GoToIfEq VAR_0x8008, 2, BattleFrontierGateToFightArea_ExplainBattlePoints
    GoToIfEq VAR_0x8008, 3, BattleFrontierGateToFightArea_ExplainExchangeServiceCorner
    GoToIfEq VAR_0x8008, 4, BattleFrontierGateToFightArea_ExplainPerformanceMonitor
    Return

BattleFrontierGateToFightArea_EnjoyYourVisit:
    Message BattleFrontierGateToFightArea_Text_EnjoyYourVisit
    WaitButton
    CloseMessage
    ReleaseAll
    End

BattleFrontierGateToFightArea_ExplainBattleFrontier:
    Message BattleFrontierGateToFightArea_Text_ExplainBattleFrontier
    Message BattleFrontierGateToFightArea_Text_ExplainWhichTopic
    GoTo BattleFrontierGateToFightArea_QuestionsMenu
    End

BattleFrontierGateToFightArea_ExplainBattlePoints:
    Message BattleFrontierGateToFightArea_Text_ExplainBattlePoints
    Message BattleFrontierGateToFightArea_Text_ExplainWhichTopic
    GoTo BattleFrontierGateToFightArea_QuestionsMenu
    End

BattleFrontierGateToFightArea_ExplainExchangeServiceCorner:
    Message BattleFrontierGateToFightArea_Text_ExplainExchangeServiceCorner
    Message BattleFrontierGateToFightArea_Text_ExplainWhichTopic
    GoTo BattleFrontierGateToFightArea_QuestionsMenu
    End

BattleFrontierGateToFightArea_ExplainPerformanceMonitor:
    Message BattleFrontierGateToFightArea_Text_ExplainPerformanceMonitor
    Message BattleFrontierGateToFightArea_Text_ExplainWhichTopic
    GoTo BattleFrontierGateToFightArea_QuestionsMenu
    End

BattleFrontierGateToFightArea_ExplainBasicRules:
    Message BattleFrontierGateToFightArea_Text_ExplainBasicRules
    Message BattleFrontierGateToFightArea_Text_ExplainWhichTopic
    GoTo BattleFrontierGateToFightArea_QuestionsMenu
    End

BattleFrontierGateToFightArea_AttendantBattleTower:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message BattleFrontierGateToFightArea_Text_ShouldIExplainBattleTower
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, BattleFrontierGateToFightArea_ExplainBattleTower
    GoToIfEq VAR_RESULT, MENU_NO, BattleFrontierGateToFightArea_EnjoyVisitBattleTower
    End

BattleFrontierGateToFightArea_ExplainBattleTower:
    Message BattleFrontierGateToFightArea_Text_ExplainBattleTower
    GoTo BattleFrontierGateToFightArea_EnjoyVisitBattleTower
    End

BattleFrontierGateToFightArea_EnjoyVisitBattleTower:
    Message BattleFrontierGateToFightArea_Text_EnjoyVisitBattleTower
    GoTo BattleFrontierGateToFightArea_AttendantBattleTowerEnd
    End

BattleFrontierGateToFightArea_AttendantBattleTowerEnd:
    WaitButton
    CloseMessage
    ReleaseAll
    End

BattleFrontierGateToFightArea_AttendantBattleFactory:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message BattleFrontierGateToFightArea_Text_ShouldIExplainBattleFactory
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, BattleFrontierGateToFightArea_ExplainBattleFactory
    GoToIfEq VAR_RESULT, MENU_NO, BattleFrontierGateToFightArea_EnjoyVisitBattleFactory
    End

BattleFrontierGateToFightArea_ExplainBattleFactory:
    Message BattleFrontierGateToFightArea_Text_ExplainBattleFactory
    GoTo BattleFrontierGateToFightArea_EnjoyVisitBattleFactory
    End

BattleFrontierGateToFightArea_EnjoyVisitBattleFactory:
    Message BattleFrontierGateToFightArea_Text_EnjoyVisitBattleFactory
    GoTo BattleFrontierGateToFightArea_AttendantBattleFactoryEnd
    End

BattleFrontierGateToFightArea_AttendantBattleFactoryEnd:
    WaitButton
    CloseMessage
    ReleaseAll
    End

BattleFrontierGateToFightArea_AttendantBattleHall:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message BattleFrontierGateToFightArea_Text_ShouldIExplainBattleHall
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, BattleFrontierGateToFightArea_ExplainBattleHall
    GoToIfEq VAR_RESULT, MENU_NO, BattleFrontierGateToFightArea_EnjoyVisitBattleHall
    End

BattleFrontierGateToFightArea_ExplainBattleHall:
    Message BattleFrontierGateToFightArea_Text_ExplainBattleHall
    GoTo BattleFrontierGateToFightArea_EnjoyVisitBattleHall
    End

BattleFrontierGateToFightArea_EnjoyVisitBattleHall:
    Message BattleFrontierGateToFightArea_Text_EnjoyVisitBattleHall
    GoTo BattleFrontierGateToFightArea_AttendantBattleHallEnd
    End

BattleFrontierGateToFightArea_AttendantBattleHallEnd:
    WaitButton
    CloseMessage
    ReleaseAll
    End

BattleFrontierGateToFightArea_AttendantBattleCastle:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message BattleFrontierGateToFightArea_Text_ShouldIExplainBattleCastle
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, BattleFrontierGateToFightArea_ExplainBattleCastle
    GoToIfEq VAR_RESULT, MENU_NO, BattleFrontierGateToFightArea_EnjoyVisitBattleCastle
    End

BattleFrontierGateToFightArea_ExplainBattleCastle:
    Message BattleFrontierGateToFightArea_Text_ExplainBattleCastle
    GoTo BattleFrontierGateToFightArea_EnjoyVisitBattleCastle
    End

BattleFrontierGateToFightArea_EnjoyVisitBattleCastle:
    Message BattleFrontierGateToFightArea_Text_EnjoyVisitBattleCastle
    GoTo BattleFrontierGateToFightArea_AttendantBattleCastleEnd
    End

BattleFrontierGateToFightArea_AttendantBattleCastleEnd:
    WaitButton
    CloseMessage
    ReleaseAll
    End

BattleFrontierGateToFightArea_AttendantBattleArcade:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message BattleFrontierGateToFightArea_Text_ShouldIExplainBattleArcade
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, BattleFrontierGateToFightArea_ExplainBattleArcade
    GoToIfEq VAR_RESULT, MENU_NO, BattleFrontierGateToFightArea_EnjoyVisitBattleArcade
    End

BattleFrontierGateToFightArea_ExplainBattleArcade:
    Message BattleFrontierGateToFightArea_Text_ExplainBattleArcade
    GoTo BattleFrontierGateToFightArea_EnjoyVisitBattleArcade
    End

BattleFrontierGateToFightArea_EnjoyVisitBattleArcade:
    Message BattleFrontierGateToFightArea_Text_EnjoyVisitBattleArcade
    GoTo BattleFrontierGateToFightArea_AttendantBattleArcadeEnd
    End

BattleFrontierGateToFightArea_AttendantBattleArcadeEnd:
    WaitButton
    CloseMessage
    ReleaseAll
    End

BattleFrontierGateToFightArea_AttendantsFaceSouth:
    ApplyMovement LOCALID_ATTENDANT_BATTLE_CASTLE, BattleFrontierGateToFightArea_Movement_AttendantFaceSouth
    ApplyMovement LOCALID_ATTENDANT_BATTLE_FACTORY, BattleFrontierGateToFightArea_Movement_AttendantFaceSouth
    ApplyMovement LOCALID_ATTENDANT_GENERAL, BattleFrontierGateToFightArea_Movement_AttendantFaceSouth
    ApplyMovement LOCALID_ATTENDANT_BATTLE_ARCADE, BattleFrontierGateToFightArea_Movement_AttendantFaceSouth
    ApplyMovement LOCALID_ATTENDANT_BATTLE_HALL, BattleFrontierGateToFightArea_Movement_AttendantFaceSouth
    ApplyMovement LOCALID_ATTENDANT_BATTLE_TOWER, BattleFrontierGateToFightArea_Movement_AttendantFaceSouth
    WaitMovement
    Return

BattleFrontierGateToFightArea_PlayerWalkToAttendant:
    ApplyMovement LOCALID_ATTENDANT_BATTLE_CASTLE, BattleFrontierGateToFightArea_Movement_AttendantFaceEast
    ApplyMovement LOCALID_ATTENDANT_BATTLE_FACTORY, BattleFrontierGateToFightArea_Movement_AttendantFaceEast
    ApplyMovement LOCALID_ATTENDANT_GENERAL, BattleFrontierGateToFightArea_Movement_AttendantFaceEast
    ApplyMovement LOCALID_ATTENDANT_BATTLE_ARCADE, BattleFrontierGateToFightArea_Movement_AttendantFaceWest
    ApplyMovement LOCALID_ATTENDANT_BATTLE_HALL, BattleFrontierGateToFightArea_Movement_AttendantFaceWest
    ApplyMovement LOCALID_ATTENDANT_BATTLE_TOWER, BattleFrontierGateToFightArea_Movement_AttendantFaceWest
    ApplyMovement LOCALID_PLAYER, BattleFrontierGateToFightArea_Movement_PlayerWalkToAttendant
    WaitMovement
    Return

    .balign 4, 0
BattleFrontierGateToFightArea_Movement_AttendantFaceSouth:
    FaceSouth
    EndMovement

    .balign 4, 0
BattleFrontierGateToFightArea_Movement_AttendantFaceEast:
    FaceEast
    EndMovement

    .balign 4, 0
BattleFrontierGateToFightArea_Movement_AttendantFaceWest:
    FaceWest
    EndMovement

    .balign 4, 0
BattleFrontierGateToFightArea_Movement_PlayerWalkToAttendant:
    WalkNormalNorth 3
    WalkOnSpotNormalWest
    EndMovement

BattleFrontierGateToFightArea_RuinManiac:
    NPCMessage BattleFrontierGateToFightArea_Text_FrontierUpAhead
    End

BattleFrontierGateToFightArea_ExpertM:
    NPCMessage BattleFrontierGateToFightArea_Text_NoAcronymFacilities
    End

BattleFrontierGateToFightArea_PokemonBreederM:
    NPCMessage BattleFrontierGateToFightArea_Text_VsRecorderIsNifty
    End

BattleFrontierGateToFightArea_Beauty:
    NPCMessage BattleFrontierGateToFightArea_Text_DreamToBattlePalmer
    End
