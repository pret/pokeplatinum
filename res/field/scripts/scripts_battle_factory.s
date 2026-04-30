#include "macros/scrcmd.inc"
#include "res/text/bank/battle_factory.h"
#include "res/text/bank/menu_entries.h"
#include "constants/battle_frontier.h"


    ScriptEntry BattleFactory_SingleAttendant
    ScriptEntry BattleFactory_OnFrameResumeChallenge
    ScriptEntry BattleFactory_OnFrameDidntSaveBeforeQuit
    ScriptEntry BattleFactory_OnFrameChallengeEndedCompletedRound
    ScriptEntry BattleFactory_OnFrameChallengeEnded
    ScriptEntry BattleFactory_MultiAttendant
    ScriptEntry BattleFactory_PokemonBreederF
    ScriptEntry BattleFactory_Sailor
    ScriptEntry BattleFactory_Beauty
    ScriptEntry BattleFactory_Youngster
    ScriptEntry BattleFactory_Clown
    ScriptEntry BattleFactory_Lady
    ScriptEntry BattleFactory_Policeman
    ScriptEntry BattleFactory_OnTransition
    ScriptEntryEnd

BattleFactory_OnTransition:
    CheckTVInterviewEligible TV_PROGRAM_SEGMENT_BATTLE_FRONTIER_FRONTLINE_NEWS_MULTI, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, BattleFactory_HideBattleFrontierReporter
    ClearFlag FLAG_HIDE_BATTLE_FRONTIER_REPORTER
    End

BattleFactory_HideBattleFrontierReporter:
    SetFlag FLAG_HIDE_BATTLE_FRONTIER_REPORTER
    End

BattleFactory_SingleAttendant:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar VAR_MAP_LOCAL_3, 0
    SetVar VAR_MAP_LOCAL_4, 0
    GoTo BattleFactory_Attendant
    End

BattleFactory_MultiAttendant:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar VAR_MAP_LOCAL_3, 0
    SetVar VAR_MAP_LOCAL_4, 1
    GoTo BattleFactory_Attendant
    End

BattleFactory_Attendant:
    RecordHeapMemory
    CallIfEq VAR_MAP_LOCAL_4, 0, BattleFactory_WelcomeToSingleDoubleChallenge
    CallIfEq VAR_MAP_LOCAL_4, 1, BattleFactory_WelcomeToMultiChallenge
    GoTo BattleFactory_SelectChallenge
    End

BattleFactory_SelectChallenge:
    CallIfEq VAR_MAP_LOCAL_4, 0, BattleFactory_InitMenuSingleDoubleChallenge
    CallIfEq VAR_MAP_LOCAL_4, 1, BattleFactory_InitMenuMultiChallenge
    AddMenuEntryImm BattleFactory_Text_Info, 2
    AddMenuEntryImm BattleFactory_Text_CancelChallenge, 3
    ShowMenu
    GoToIfEq VAR_RESULT, 0, BattleFactory_TryTakeSingleChallenge
    GoToIfEq VAR_RESULT, 1, BattleFactory_TryTakeDoubleChallenge
    GoToIfEq VAR_RESULT, 2, BattleFactory_ExplainChallenge
    GoToIfEq VAR_RESULT, 4, BattleFactory_TryTakeMultiChallenge
    GoTo BattleFactory_EndChallenge
    End

BattleFactory_ExplainChallenge:
    CallIfEq VAR_MAP_LOCAL_4, 0, BattleFactory_ExplainSingleDoubleChallenge
    CallIfEq VAR_MAP_LOCAL_4, 1, BattleFactory_ExplainMultiChallenge
    GoTo BattleFactory_SelectChallenge
    End

BattleFactory_EndChallenge:
    GoTo BattleFactory_HopeToSeeYouAgain
    End

BattleFactory_HopeToSeeYouAgain:
    SetVar VAR_BATTLE_FACTORY_LOBBY_LOAD_ACTION, 0
    Message BattleFactory_Text_HopeToSeeYouAgain
    WaitButton
    CloseMessage
    ReleaseAll
    End

BattleFactory_TryTakeSingleChallenge:
    SetVar VAR_BATTLE_FACTORY_CHALLENGE_TYPE, FRONTIER_CHALLENGE_SINGLE
    GoTo BattleFactory_SelectPokemon
    End

BattleFactory_TryTakeDoubleChallenge:
    SetVar VAR_BATTLE_FACTORY_CHALLENGE_TYPE, FRONTIER_CHALLENGE_DOUBLE
    GoTo BattleFactory_SelectPokemon
    End

BattleFactory_TryTakeMultiChallenge:
    SetVar VAR_BATTLE_FACTORY_CHALLENGE_TYPE, FRONTIER_CHALLENGE_MULTI
    GoTo BattleFactory_SelectPokemon
    End

BattleFactory_SelectPokemon:
    Message BattleFactory_Text_WhichChallengeLevel
    InitLocalTextMenu 31, 11, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm BattleFactory_Text_Level50, 0
    AddMenuEntryImm BattleFactory_Text_OpenLevel, 1
    AddMenuEntryImm BattleFactory_Text_CancelLevel, 2
    ShowMenu
    GoToIfEq VAR_RESULT, 0, BattleFactory_SetLevel50
    GoToIfEq VAR_RESULT, 1, BattleFactory_SetOpenLevel
    GoTo BattleFactory_EndChallenge
    End

BattleFactory_SetLevel50:
    SetVar VAR_BATTLE_FACTORY_CHALLENGE_LEVEL, 0
    GoTo BattleFactory_TryStartChallenge
    End

BattleFactory_SetOpenLevel:
    SetVar VAR_BATTLE_FACTORY_CHALLENGE_LEVEL, 1
    GoTo BattleFactory_TryStartChallenge
    End

BattleFactory_TryStartChallenge:
    GoTo BattleFactory_HealAndSaveBeforeChallenge
    End

BattleFactory_HealAndSaveBeforeChallenge:
    CallIfEq VAR_BATTLE_FACTORY_CHALLENGE_TYPE, FRONTIER_CHALLENGE_SINGLE, BattleFactory_SetChallengeInProgress
    CallIfEq VAR_BATTLE_FACTORY_CHALLENGE_TYPE, FRONTIER_CHALLENGE_DOUBLE, BattleFactory_SetChallengeInProgress
    SetVar VAR_MAP_LOCAL_0, 0
    HealParty
    Common_SaveGame
    SetVar VAR_RESULT, VAR_MAP_LOCAL_0
    GoToIfEq VAR_RESULT, 0, BattleFactory_EndChallenge
    GoToIfEq VAR_BATTLE_FACTORY_CHALLENGE_TYPE, FRONTIER_CHALLENGE_MULTI, BattleFactory_BecomeLeaderOrJoinGroup
    GoTo BattleFactory_WalkIntoCorridor
    End

BattleFactory_BecomeLeaderOrJoinGroup:
    Message BattleFactory_Text_BecomeLeaderOrJoinGroup
    InitGlobalTextMenu 30, 1, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm MenuEntries_Text_JoinGroup, 0
    AddMenuEntryImm MenuEntries_Text_BecomeLeader, 1
    AddMenuEntryImm MenuEntries_Text_Exit, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, BattleFactory_LaunchWiFiToJoinGroup
    GoToIfEq VAR_0x8008, 1, BattleFactory_LaunchWiFiToBecomeLeader
    GoTo BattleFactory_EndChallenge
    End

BattleFactory_LaunchWiFiToJoinGroup:
    Message BattleFactory_Text_NeedToLaunchWiFiComm
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, BattleFactory_BecomeLeaderOrJoinGroup
    CloseMessage
    CallIfEq VAR_BATTLE_FACTORY_CHALLENGE_LEVEL, 0, BattleFactory_StartBattleClientLevel50
    CallIfEq VAR_BATTLE_FACTORY_CHALLENGE_LEVEL, 1, BattleFactory_StartBattleClientOpenLevel
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_CANCEL, BattleFactory_CancelJoiningGroup
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_ERROR, BattleFactory_ErrorJoiningGroup
    GoTo BattleFactory_StartMultiChallenge
    End

BattleFactory_StartBattleClientLevel50:
    StartBattleClient 27, 0, 0, VAR_RESULT
    Return

BattleFactory_StartBattleClientOpenLevel:
    StartBattleClient 28, 0, 0, VAR_RESULT
    Return

BattleFactory_CancelJoiningGroup:
    GoTo BattleFactory_BecomeLeaderOrJoinGroup
    End

BattleFactory_ErrorJoiningGroup:
    EndCommunication
    GoTo BattleFactory_BecomeLeaderOrJoinGroup
    End

BattleFactory_LaunchWiFiToBecomeLeader:
    Message BattleFactory_Text_NeedToLaunchWiFiComm
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, BattleFactory_BecomeLeaderOrJoinGroup
    CloseMessage
    CallIfEq VAR_BATTLE_FACTORY_CHALLENGE_LEVEL, 0, BattleFactory_StartBattleServerLevel50
    CallIfEq VAR_BATTLE_FACTORY_CHALLENGE_LEVEL, 1, BattleFactory_StartBattleServerOpenLevel
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_CANCEL, BattleFactory_CancelBecomingLeader
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_ERROR, BattleFactory_ErrorBecomingLeader
    GoTo BattleFactory_StartMultiChallenge
    End

BattleFactory_StartBattleServerLevel50:
    StartBattleServer 27, 0, 0, VAR_RESULT
    Return

BattleFactory_StartBattleServerOpenLevel:
    StartBattleServer 28, 0, 0, VAR_RESULT
    Return

BattleFactory_CancelBecomingLeader:
    GoTo BattleFactory_BecomeLeaderOrJoinGroup
    End

BattleFactory_ErrorBecomingLeader:
    EndCommunication
    GoTo BattleFactory_BecomeLeaderOrJoinGroup
    End

BattleFactory_StartMultiChallenge:
    Message BattleFactory_Text_MustSaveFirst
    CallIfEq VAR_BATTLE_FACTORY_CHALLENGE_TYPE, FRONTIER_CHALLENGE_MULTI, BattleFactory_SetChallengeInProgress
    Call BattleFactory_SaveGame
    GoTo BattleFactory_WalkIntoCorridor
    End

BattleFactory_SetChallengeInProgress:
    SetVar VAR_BATTLE_FACTORY_LOBBY_LOAD_ACTION, 0xFF
    Return

BattleFactory_WalkIntoCorridor:
    CallIfEq VAR_BATTLE_FACTORY_CHALLENGE_TYPE, FRONTIER_CHALLENGE_SINGLE, BattleFactory_WalkToCorridorSingleChallenge
    CallIfEq VAR_BATTLE_FACTORY_CHALLENGE_TYPE, FRONTIER_CHALLENGE_DOUBLE, BattleFactory_WalkToCorridorDoubleChallenge
    CallIfEq VAR_BATTLE_FACTORY_CHALLENGE_TYPE, FRONTIER_CHALLENGE_MULTI, BattleFactory_WalkToCorridorMultiChallenge
    PlaySE SEQ_SE_DP_KAIDAN2
    GoTo BattleFactory_StartChallenge
    End

BattleFactory_StartChallenge:
    FadeScreenOut
    WaitFadeScreen
    CallIfEq VAR_BATTLE_FACTORY_CHALLENGE_TYPE, FRONTIER_CHALLENGE_SINGLE, BattleFactory_WalkBackInvisiblySingleChallenge
    CallIfEq VAR_BATTLE_FACTORY_CHALLENGE_TYPE, FRONTIER_CHALLENGE_DOUBLE, BattleFactory_WalkBackInvisiblyDoubleChallenge
    CallIfEq VAR_BATTLE_FACTORY_CHALLENGE_TYPE, FRONTIER_CHALLENGE_MULTI, BattleFactory_WalkBackInvisiblyMultiChallenge
    IncrementGameRecord RECORD_TIMES_STARTED_BATTLE_FRONTIER_CHALLENGE
    CreateJournalEvent LOCATION_EVENT_BATTLE_FACTORY, 0, 0, 0, 0
    WaitForTransition
    ScrCmd_2C4 3
    CallIfEq VAR_BATTLE_FACTORY_CHALLENGE_TYPE, FRONTIER_CHALLENGE_MULTI, BattleFactory_EndCommunication
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    AssertHeapMemory
    End

BattleFactory_EndCommunication:
    EndCommunication
    Return

BattleFactory_WalkToCorridorSingleChallenge:
    Message BattleFactory_Text_ThisWayPlease
    WaitABPress
    CloseMessage
    ApplyMovement LOCALID_PLAYER, BattleFactory_Movement_PlayerWalkToCorridorSingleDoubleChallenge
    ApplyMovement VAR_LAST_TALKED, BattleFactory_Movement_AttendantWalkToCorridorSingleDoubleChallenge
    WaitMovement
    Return

BattleFactory_WalkToCorridorDoubleChallenge:
    Message BattleFactory_Text_ThisWayPlease
    WaitABPress
    CloseMessage
    ApplyMovement LOCALID_PLAYER, BattleFactory_Movement_PlayerWalkToCorridorSingleDoubleChallenge
    ApplyMovement VAR_LAST_TALKED, BattleFactory_Movement_AttendantWalkToCorridorSingleDoubleChallenge
    WaitMovement
    Return

BattleFactory_WalkToCorridorMultiChallenge:
    MessageNoSkip BattleFactory_Text_ThisWayPlease
    WaitTime 15, VAR_RESULT
    ClearReceivedTempDataAllPlayers
    ScrCmd_135 169
    CloseMessage
    ApplyMovement LOCALID_PLAYER, BattleFactory_Movement_PlayerWalkToCorridorMultiChallenge
    ApplyMovement VAR_LAST_TALKED, BattleFactory_Movement_AttendantWalkToCorridorMultiChallenge
    WaitMovement
    Return

BattleFactory_WalkBackInvisiblySingleChallenge:
    ApplyMovement LOCALID_PLAYER, BattleFactory_Movement_PlayerWalkBackSingleDoubleChallenge
    ApplyMovement VAR_LAST_TALKED, BattleFactory_Movement_AttendantWalkBackSingleDoubleChallenge
    WaitMovement
    Return

BattleFactory_WalkBackInvisiblyDoubleChallenge:
    ApplyMovement LOCALID_PLAYER, BattleFactory_Movement_PlayerWalkBackSingleDoubleChallenge
    ApplyMovement VAR_LAST_TALKED, BattleFactory_Movement_AttendantWalkBackSingleDoubleChallenge
    WaitMovement
    Return

BattleFactory_WalkBackInvisiblyMultiChallenge:
    ApplyMovement LOCALID_PLAYER, BattleFactory_Movement_PlayerWalkBackMultiChallenge
    ApplyMovement VAR_LAST_TALKED, BattleFactory_Movement_AttendantWalkBackMultiChallenge
    WaitMovement
    Return

    .balign 4, 0
BattleFactory_Movement_PlayerWalkToCorridorSingleDoubleChallenge:
    WalkNormalNorth 3
    WalkNormalEast
    WalkNormalNorth 4
    SetInvisible
    EndMovement

    .balign 4, 0
BattleFactory_Movement_PlayerWalkToCorridorMultiChallenge:
    WalkNormalNorth 3
    WalkNormalWest
    WalkNormalNorth 4
    SetInvisible
    EndMovement

    .balign 4, 0
BattleFactory_Movement_AttendantWalkToCorridorSingleDoubleChallenge:
    WalkNormalNorth 2
    WalkNormalEast
    WalkNormalNorth 4
    SetInvisible
    EndMovement

    .balign 4, 0
BattleFactory_Movement_AttendantWalkToCorridorMultiChallenge:
    WalkNormalNorth 2
    WalkNormalWest
    WalkNormalNorth 4
    SetInvisible
    EndMovement

    .balign 4, 0
BattleFactory_Movement_PlayerWalkBackSingleDoubleChallenge:
    WalkFasterSouth 3
    WalkFasterWest
    WalkFasterSouth 4
    FaceNorth
    SetVisible
    EndMovement

    .balign 4, 0
BattleFactory_Movement_PlayerWalkBackMultiChallenge:
    WalkFasterSouth 3
    WalkFasterEast
    WalkFasterSouth 4
    FaceNorth
    SetVisible
    EndMovement

    .balign 4, 0
BattleFactory_Movement_AttendantWalkBackSingleDoubleChallenge:
    WalkFasterSouth 2
    WalkFasterWest
    WalkFasterSouth 4
    SetVisible
    EndMovement

    .balign 4, 0
BattleFactory_Movement_AttendantWalkBackMultiChallenge:
    WalkFasterSouth 2
    WalkFasterEast
    WalkFasterSouth 4
    SetVisible
    EndMovement

BattleFactory_WelcomeToSingleDoubleChallenge:
    Message BattleFactory_Text_WelcomeToSingleDoubleChallenge
    Return

BattleFactory_WelcomeToMultiChallenge:
    Message BattleFactory_Text_WelcomeToMultiChallenge
    Return

BattleFactory_InitMenuSingleDoubleChallenge:
    InitLocalTextMenu 31, 9, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm BattleFactory_Text_SingleBattle, 0
    AddMenuEntryImm BattleFactory_Text_DoubleBattle, 1
    Message BattleFactory_Text_TakeWhichChallenge
    Return

BattleFactory_InitMenuMultiChallenge:
    InitLocalTextMenu 31, 11, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm BattleFactory_Text_TakeChallenge, 4
    Message BattleFactory_Text_AskTakeMultiChallenge
    Return

BattleFactory_ExplainSingleDoubleChallenge:
    Message BattleFactory_Text_ExplainSingleDoubleChallenge
    Return

BattleFactory_ExplainMultiChallenge:
    Message BattleFactory_Text_ExplainMultiChallenge
    Return

BattleFactory_OnFrameResumeChallenge:
    RecordHeapMemory
    SetVar VAR_MAP_LOCAL_3, 1
    SetVar VAR_BATTLE_FACTORY_LOBBY_LOAD_ACTION, 0
    Message BattleFactory_Text_MustSaveBeforeResuming
    Call BattleFactory_SetChallengeInProgress
    Call BattleFactory_SaveGame
    GoTo BattleFactory_WalkIntoCorridor
    End

BattleFactory_SaveGame:
    ShowSavingIcon
    TrySaveGame VAR_RESULT
    HideSavingIcon
    PlaySE SEQ_SE_DP_SAVE
    WaitSE SEQ_SE_DP_SAVE
    Return

BattleFactory_OnFrameDidntSaveBeforeQuit:
    Message BattleFactory_Text_DidntSaveBeforeQuit
    ScrCmd_2C5 VAR_BATTLE_FACTORY_CHALLENGE_TYPE, VAR_BATTLE_FACTORY_CHALLENGE_LEVEL
    GoTo BattleFactory_EndChallenge
    End

BattleFactory_OnFrameChallengeEndedCompletedRound:
    CallIfEq VAR_BATTLE_FACTORY_CHALLENGE_TYPE, FRONTIER_CHALLENGE_SINGLE, BattleFactory_IncrementTrainerScoreRoundCompleted
    CallIfEq VAR_BATTLE_FACTORY_CHALLENGE_TYPE, FRONTIER_CHALLENGE_DOUBLE, BattleFactory_IncrementTrainerScoreRoundCompleted
    CallIfEq VAR_BATTLE_FACTORY_PRINT_STATE, 1, BattleFactory_EarnedSilverPrint
    CallIfEq VAR_BATTLE_FACTORY_PRINT_STATE, 3, BattleFactory_EarnedGoldPrint
    GoTo BattleFactory_EndChallenge
    End

BattleFactory_IncrementTrainerScoreRoundCompleted:
    IncrementTrainerScore TRAINER_SCORE_EVENT_BATTLE_FACTORY_ROUND_COMPLETED
    Return

BattleFactory_EarnedSilverPrint:
    Message BattleFactory_Text_PrintForVictory
    BufferPlayerName 0
    Message BattleFactory_Text_SilverPrintAdded
    PlayFanfare SEQ_FANFA4
    WaitFanfare
    SetVar VAR_BATTLE_FACTORY_PRINT_STATE, 2
    Return

BattleFactory_EarnedGoldPrint:
    Message BattleFactory_Text_PrintForVictory
    BufferPlayerName 0
    Message BattleFactory_Text_GoldPrintAdded
    PlayFanfare SEQ_FANFA4
    WaitFanfare
    SetVar VAR_BATTLE_FACTORY_PRINT_STATE, 4
    Common_CheckAllFrontierGoldPrintsObtained
    Return

BattleFactory_OnFrameChallengeEnded:
    GoTo BattleFactory_EndChallenge
    End

    .balign 4, 0
BattleFactory_UnusedMovement:
    WalkNormalNorth 2
    Delay8
    WalkNormalNorth
    EndMovement

BattleFactory_UnusedMovement2:
    WalkNormalNorth 2
    Delay8
    WalkNormalNorth
    EndMovement

BattleFactory_PokemonBreederF:
    NPCMessage BattleFactory_Text_StaffTellAboutNextTrainer
    End

BattleFactory_Sailor:
    NPCMessage BattleFactory_Text_GetOpponentsLineup
    End

BattleFactory_Beauty:
    NPCMessage BattleFactory_Text_MemorizeOpponentsMoves
    End

BattleFactory_Youngster:
    NPCMessage BattleFactory_Text_IllTeachMyStyle
    End

BattleFactory_Clown:
    NPCMessage BattleFactory_Text_ChallengeWithNothing
    End

BattleFactory_Lady:
    NPCMessage BattleFactory_Text_AlreadySixFavorites
    End

BattleFactory_Policeman:
    NPCMessage BattleFactory_Text_WonMeOverWithPower
    End

    .balign 4, 0
