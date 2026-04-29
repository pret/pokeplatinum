#include "macros/scrcmd.inc"
#include "res/text/bank/battle_castle.h"
#include "res/text/bank/menu_entries.h"
#include "constants/battle_frontier.h"


    ScriptEntry BattleCastle_SingleAttendant
    ScriptEntry BattleCastle_OnFrameResumeChallenge
    ScriptEntry BattleCastle_OnFrameDidntSaveBeforeQuit
    ScriptEntry BattleCastle_OnFrameChallengeEndedCompletedRound
    ScriptEntry BattleCastle_OnFrameChallengeEnded
    ScriptEntry BattleCastle_MultiAttendant
    ScriptEntry BattleCastle_Artist
    ScriptEntry BattleCastle_Socialite
    ScriptEntry BattleCastle_Waitress
    ScriptEntry BattleCastle_Collector
    ScriptEntry BattleCastle_Roughneck
    ScriptEntry BattleCastle_Gentleman
    ScriptEntry BattleCastle_BlackBelt
    ScriptEntry BattleCastle_OnTransition
    ScriptEntryEnd

BattleCastle_OnTransition:
    CheckTVInterviewEligible TV_PROGRAM_SEGMENT_BATTLE_FRONTIER_FRONTLINE_NEWS_MULTI, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, BattleCastle_HideBattleFrontierReporter
    ClearFlag FLAG_HIDE_BATTLE_FRONTIER_REPORTER
    End

BattleCastle_HideBattleFrontierReporter:
    SetFlag FLAG_HIDE_BATTLE_FRONTIER_REPORTER
    End

BattleCastle_SingleAttendant:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar VAR_MAP_LOCAL_3, 0
    SetVar VAR_MAP_LOCAL_4, 0
    GoTo BattleCastle_Attendant
    End

BattleCastle_MultiAttendant:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar VAR_MAP_LOCAL_3, 0
    SetVar VAR_MAP_LOCAL_4, 1
    GoTo BattleCastle_Attendant
    End

BattleCastle_Attendant:
    RecordHeapMemory
    CallIfEq VAR_MAP_LOCAL_4, 0, BattleCastle_WelcomeToSingleDoubleChallenge
    CallIfEq VAR_MAP_LOCAL_4, 1, BattleCastle_WelcomeToMultiChallenge
    GoTo BattleCastle_SelectChallenge
    End

BattleCastle_SelectChallenge:
    CallIfEq VAR_MAP_LOCAL_4, 0, BattleCastle_InitMenuSingleDoubleChallenge
    CallIfEq VAR_MAP_LOCAL_4, 1, BattleCastle_InitMenuMultiChallenge
    AddMenuEntryImm BattleCastle_Text_Info, 2
    AddMenuEntryImm BattleCastle_Text_Cancel, 3
    ShowMenu
    GoToIfEq VAR_RESULT, 0, BattleCastle_TryTakeSingleChallenge
    GoToIfEq VAR_RESULT, 1, BattleCastle_TryTakeDoubleChallenge
    GoToIfEq VAR_RESULT, 2, BattleCastle_ExplainChallenge
    GoToIfEq VAR_RESULT, 4, BattleCastle_TryTakeMultiChallenge
    GoTo BattleCastle_EndChallenge
    End

BattleCastle_ExplainChallenge:
    CallIfEq VAR_MAP_LOCAL_4, 0, BattleCastle_ExplainSingleDoubleChallenge
    CallIfEq VAR_MAP_LOCAL_4, 1, BattleCastle_ExplainMultiChallenge
    GoTo BattleCastle_SelectChallenge
    End

BattleCastle_EndChallenge:
    GoTo BattleCastle_HopeToSeeYouAgain
    End

BattleCastle_HopeToSeeYouAgain:
    SetVar VAR_BATTLE_CASTLE_LOBBY_LOAD_ACTION, 0
    Message BattleCastle_Text_HopeToSeeYouAgain
    WaitButton
    CloseMessage
    ReleaseAll
    End

BattleCastle_TryTakeSingleChallenge:
    SetVar VAR_BATTLE_CASTLE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_SINGLE
    ScrCmd_2D2 0, 3, VAR_RESULT
    BufferNumber 0, 3
    BufferNumber 1, 3
    GoToIfEq VAR_RESULT, 0, BattleCastle_NotEnoughEligiblePokemonSingleDouble
    GoTo BattleCastle_SelectPokemon
    End

BattleCastle_TryTakeDoubleChallenge:
    SetVar VAR_BATTLE_CASTLE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_DOUBLE
    ScrCmd_2D2 0, 3, VAR_RESULT
    BufferNumber 0, 3
    BufferNumber 1, 3
    GoToIfEq VAR_RESULT, 0, BattleCastle_NotEnoughEligiblePokemonSingleDouble
    GoTo BattleCastle_SelectPokemon
    End

BattleCastle_TryTakeMultiChallenge:
    SetVar VAR_BATTLE_CASTLE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_MULTI
    ScrCmd_2D2 0, 2, VAR_RESULT
    BufferNumber 0, 2
    BufferNumber 1, 2
    GoToIfEq VAR_RESULT, 0, BattleCastle_NotEnoughEligiblePokemonMulti
    GoTo BattleCastle_SelectPokemon
    End

BattleCastle_NotEnoughEligiblePokemonSingleDouble:
    Message BattleCastle_Text_NotEnoughEligiblePokemon
    MessageSeenBanlistSpecies BattleCastle_Text_Banlist, 3
    GoTo BattleCastle_EndChallenge
    End

BattleCastle_NotEnoughEligiblePokemonMulti:
    Message BattleCastle_Text_NotEnoughEligiblePokemon
    MessageSeenBanlistSpecies BattleCastle_Text_Banlist, 2
    GoTo BattleCastle_EndChallenge
    End

BattleCastle_SelectPokemon:
    Message BattleCastle_Text_SelectPokemonToEnter
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    ScrCmd_2D2 4, VAR_BATTLE_CASTLE_CHALLENGE_TYPE, VAR_RESULT
    ScrCmd_2D4 VAR_MAP_LOCAL_2, VAR_MAP_LOCAL_5, VAR_MAP_LOCAL_6
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_MAP_LOCAL_2, 0xFF, BattleCastle_EndChallenge
    TryRevertPokemonForm VAR_MAP_LOCAL_2, VAR_RESULT
    GoToIfEq VAR_RESULT, 0xFF, BattleCastle_GriseousOrbCouldNotBeRemoved
    TryRevertPokemonForm VAR_MAP_LOCAL_5, VAR_RESULT
    GoToIfEq VAR_RESULT, 0xFF, BattleCastle_GriseousOrbCouldNotBeRemoved
    TryRevertPokemonForm VAR_MAP_LOCAL_6, VAR_RESULT
    GoToIfEq VAR_RESULT, 0xFF, BattleCastle_GriseousOrbCouldNotBeRemoved
    GetPartyMonSpecies VAR_MAP_LOCAL_2, VAR_MAP_LOCAL_1
    GoToIfEq VAR_MAP_LOCAL_1, 0, BattleCastle_EndChallenge
    GoTo BattleCastle_TryStartChallenge
    End

BattleCastle_TryStartChallenge:
    GoTo BattleCastle_HealAndSaveBeforeChallenge
    End

BattleCastle_HealAndSaveBeforeChallenge:
    CallIfEq VAR_BATTLE_CASTLE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_SINGLE, BattleCastle_SetChallengeInProgress
    CallIfEq VAR_BATTLE_CASTLE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_DOUBLE, BattleCastle_SetChallengeInProgress
    SetVar VAR_MAP_LOCAL_0, 0
    HealParty
    Common_SaveGame
    SetVar VAR_RESULT, VAR_MAP_LOCAL_0
    GoToIfEq VAR_RESULT, 0, BattleCastle_EndChallenge
    GoToIfEq VAR_BATTLE_CASTLE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_MULTI, BattleCastle_BecomeLeaderOrJoinGroup
    GoTo BattleCastle_WalkIntoCorridor
    End

BattleCastle_BecomeLeaderOrJoinGroup:
    Message BattleCastle_Text_BecomeLeaderOrJoinGroup
    InitGlobalTextMenu 30, 1, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm MenuEntries_Text_JoinGroup, 0
    AddMenuEntryImm MenuEntries_Text_BecomeLeader, 1
    AddMenuEntryImm MenuEntries_Text_Exit, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, BattleCastle_LaunchWiFiToJoinGroup
    GoToIfEq VAR_0x8008, 1, BattleCastle_LaunchWiFiToBecomeLeader
    GoTo BattleCastle_EndChallenge
    End

BattleCastle_LaunchWiFiToJoinGroup:
    Message BattleCastle_Text_NeedToLaunchWiFiComm
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, BattleCastle_BecomeLeaderOrJoinGroup
    CloseMessage
    StartBattleClient 31, 0, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_CANCEL, BattleCastle_CancelJoiningGroup
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_ERROR, BattleCastle_ErrorJoiningGroup
    GoTo BattleCastle_StartMultiChallenge
    End

BattleCastle_CancelJoiningGroup:
    GoTo BattleCastle_BecomeLeaderOrJoinGroup
    End

BattleCastle_ErrorJoiningGroup:
    EndCommunication
    GoTo BattleCastle_BecomeLeaderOrJoinGroup
    End

BattleCastle_LaunchWiFiToBecomeLeader:
    Message BattleCastle_Text_NeedToLaunchWiFiComm
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, BattleCastle_BecomeLeaderOrJoinGroup
    CloseMessage
    StartBattleServer 31, 0, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_CANCEL, BattleCastle_CancelBecomingLeader
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_ERROR, BattleCastle_ErrorBecomingLeader
    GoTo BattleCastle_StartMultiChallenge
    End

BattleCastle_CancelBecomingLeader:
    GoTo BattleCastle_BecomeLeaderOrJoinGroup
    End

BattleCastle_ErrorBecomingLeader:
    EndCommunication
    GoTo BattleCastle_BecomeLeaderOrJoinGroup
    End

BattleCastle_StartMultiChallenge:
    ClearReceivedTempDataAllPlayers
    ScrCmd_135 136
    GetPartyMonSpecies VAR_MAP_LOCAL_2, VAR_0x8000
    GetPartyMonSpecies VAR_MAP_LOCAL_5, VAR_0x8001
    ScrCmd_2D3 VAR_0x8000, VAR_0x8001, VAR_RESULT
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 1, BattleCastle_BothTrainerChosePokemon1
    GoToIfEq VAR_0x8008, 2, BattleCastle_BothTrainerChosePokemon2
    GoToIfEq VAR_0x8008, 3, BattleCastle_BothTrainerChosePokemon1And2
    ClearReceivedTempDataAllPlayers
    ScrCmd_135 138
    Message BattleCastle_Text_MustSaveFirst
    CallIfEq VAR_BATTLE_CASTLE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_MULTI, BattleCastle_SetChallengeInProgress
    Call BattleCastle_SaveGame
    GoTo BattleCastle_WalkIntoCorridor
    End

BattleCastle_SetChallengeInProgress:
    SetVar VAR_BATTLE_CASTLE_LOBBY_LOAD_ACTION, 0xFF
    Return

BattleCastle_BothTrainerChosePokemon1:
    Call BattleCastle_EndCommunicationSamePokemon
    BufferPartyMonSpecies 0, VAR_MAP_LOCAL_2
    Message BattleCastle_Text_BothTrainersChoseThisPokemon
    GoTo BattleCastle_ChoseSamePokemonCancel
    End

BattleCastle_BothTrainerChosePokemon2:
    Call BattleCastle_EndCommunicationSamePokemon
    BufferPartyMonSpecies 0, VAR_MAP_LOCAL_5
    Message BattleCastle_Text_BothTrainersChoseThisPokemon
    GoTo BattleCastle_ChoseSamePokemonCancel
    End

BattleCastle_BothTrainerChosePokemon1And2:
    Call BattleCastle_EndCommunicationSamePokemon
    BufferPartyMonSpecies 0, VAR_MAP_LOCAL_2
    BufferPartyMonSpecies 1, VAR_MAP_LOCAL_5
    Message BattleCastle_Text_BothTrainersChoseThesePokemon
    GoTo BattleCastle_ChoseSamePokemonCancel
    End

BattleCastle_ChoseSamePokemonCancel:
    GoTo BattleCastle_EndChallenge
    End

BattleCastle_EndCommunicationSamePokemon:
    ClearReceivedTempDataAllPlayers
    ScrCmd_135 139
    EndCommunication
    Return

BattleCastle_WalkIntoCorridor:
    CallIfEq VAR_BATTLE_CASTLE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_SINGLE, BattleCastle_WalkToCorridorSingleChallenge
    CallIfEq VAR_BATTLE_CASTLE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_DOUBLE, BattleCastle_WalkToCorridorDoubleChallenge
    CallIfEq VAR_BATTLE_CASTLE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_MULTI, BattleCastle_WalkToCorridorMultiChallenge
    PlaySE SEQ_SE_DP_KAIDAN2
    GoTo BattleCastle_StartChallenge
    End

BattleCastle_StartChallenge:
    FadeScreenOut
    WaitFadeScreen
    CallIfEq VAR_BATTLE_CASTLE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_SINGLE, BattleCastle_WalkBackInvisiblySingleChallenge
    CallIfEq VAR_BATTLE_CASTLE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_DOUBLE, BattleCastle_WalkBackInvisiblyDoubleChallenge
    CallIfEq VAR_BATTLE_CASTLE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_MULTI, BattleCastle_WalkBackInvisiblyMultiChallenge
    IncrementGameRecord RECORD_TIMES_STARTED_BATTLE_FRONTIER_CHALLENGE
    CreateJournalEvent LOCATION_EVENT_BATTLE_CASTLE, 0, 0, 0, 0
    WaitForTransition
    ScrCmd_2C4 11
    CallIfEq VAR_BATTLE_CASTLE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_MULTI, BattleCastle_EndCommunication
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    AssertHeapMemory
    End

BattleCastle_EndCommunication:
    EndCommunication
    Return

BattleCastle_WalkToCorridorSingleChallenge:
    Message BattleCastle_Text_ThisWayPlease
    WaitABPress
    CloseMessage
    ApplyMovement LOCALID_PLAYER, BattleCastle_Movement_PlayerWalkToCorridorSingleDoubleChallenge
    ApplyMovement VAR_LAST_TALKED, BattleCastle_Movement_AttendantWalkToCorridorSingleDoubleChallenge
    WaitMovement
    Return

BattleCastle_WalkToCorridorDoubleChallenge:
    Message BattleCastle_Text_ThisWayPlease
    WaitABPress
    CloseMessage
    ApplyMovement LOCALID_PLAYER, BattleCastle_Movement_PlayerWalkToCorridorSingleDoubleChallenge
    ApplyMovement VAR_LAST_TALKED, BattleCastle_Movement_AttendantWalkToCorridorSingleDoubleChallenge
    WaitMovement
    Return

BattleCastle_WalkToCorridorMultiChallenge:
    MessageNoSkip BattleCastle_Text_ThisWayPlease
    WaitTime 10, VAR_RESULT
    ClearReceivedTempDataAllPlayers
    ScrCmd_135 137
    CloseMessage
    ApplyMovement LOCALID_PLAYER, BattleCastle_Movement_PlayerWalkToCorridorMultiChallenge
    ApplyMovement VAR_LAST_TALKED, BattleCastle_Movement_AttendantWalkToCorridorMultiChallenge
    WaitMovement
    Return

BattleCastle_WalkBackInvisiblySingleChallenge:
    ApplyMovement LOCALID_PLAYER, BattleCastle_Movement_PlayerWalkBackSingleDoubleChallenge
    ApplyMovement VAR_LAST_TALKED, BattleCastle_Movement_AttendantWalkBackSingleDoubleChallenge
    WaitMovement
    Return

BattleCastle_WalkBackInvisiblyDoubleChallenge:
    ApplyMovement LOCALID_PLAYER, BattleCastle_Movement_PlayerWalkBackSingleDoubleChallenge
    ApplyMovement VAR_LAST_TALKED, BattleCastle_Movement_AttendantWalkBackSingleDoubleChallenge
    WaitMovement
    Return

BattleCastle_WalkBackInvisiblyMultiChallenge:
    ApplyMovement LOCALID_PLAYER, BattleCastle_Movement_PlayerWalkBackMultiChallenge
    ApplyMovement VAR_LAST_TALKED, BattleCastle_Movement_AttendantWalkBackMultiChallenge
    WaitMovement
    Return

BattleCastle_GriseousOrbCouldNotBeRemoved:
    SetVar VAR_BATTLE_CASTLE_LOBBY_LOAD_ACTION, 0
    Common_GriseousOrbCouldNotBeRemoved
    End

    .balign 4, 0
BattleCastle_Movement_PlayerWalkToCorridorSingleDoubleChallenge:
    WalkNormalWest 6
    SetInvisible
    EndMovement

    .balign 4, 0
BattleCastle_Movement_PlayerWalkToCorridorMultiChallenge:
    WalkNormalWest 3
    WalkNormalNorth
    WalkNormalWest 3
    SetInvisible
    EndMovement

    .balign 4, 0
BattleCastle_Movement_AttendantWalkToCorridorSingleDoubleChallenge:
    WalkNormalWest 5
    SetInvisible
    EndMovement

    .balign 4, 0
BattleCastle_Movement_AttendantWalkToCorridorMultiChallenge:
    WalkNormalWest 2
    WalkNormalNorth
    WalkNormalWest 3
    SetInvisible
    EndMovement

    .balign 4, 0
BattleCastle_Movement_PlayerWalkBackSingleDoubleChallenge:
    WalkFasterEast 6
    SetVisible
    FaceWest
    EndMovement

    .balign 4, 0
BattleCastle_Movement_PlayerWalkBackMultiChallenge:
    WalkFasterEast 6
    WalkFasterSouth
    SetVisible
    FaceWest
    EndMovement

    .balign 4, 0
BattleCastle_Movement_AttendantWalkBackSingleDoubleChallenge:
    WalkFasterEast 5
    SetVisible
    EndMovement

    .balign 4, 0
BattleCastle_Movement_AttendantWalkBackMultiChallenge:
    WalkFasterSouth
    WalkFasterEast 5
    SetVisible
    EndMovement

BattleCastle_WelcomeToSingleDoubleChallenge:
    Message BattleCastle_Text_WelcomeToSingleDoubleChallenge
    Return

BattleCastle_WelcomeToMultiChallenge:
    Message BattleCastle_Text_WelcomeToMultiChallenge
    Return

BattleCastle_InitMenuSingleDoubleChallenge:
    InitLocalTextMenu 31, 9, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm BattleCastle_Text_SingleBattle, 0
    AddMenuEntryImm BattleCastle_Text_DoubleBattle, 1
    Message BattleCastle_Text_TakeWhichChallenge
    Return

BattleCastle_InitMenuMultiChallenge:
    InitLocalTextMenu 31, 11, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm BattleCastle_Text_TakeChallenge, 4
    Message BattleCastle_Text_AskTakeMultiChallenge
    Return

BattleCastle_ExplainSingleDoubleChallenge:
    Message BattleCastle_Text_ExplainSingleDoubleChallenge
    Return

BattleCastle_ExplainMultiChallenge:
    Message BattleCastle_Text_ExplainMultiChallenge
    Return

BattleCastle_OnFrameResumeChallenge:
    RecordHeapMemory
    SetVar VAR_MAP_LOCAL_3, 1
    SetVar VAR_BATTLE_CASTLE_LOBBY_LOAD_ACTION, 0
    Message BattleCastle_Text_MustSaveBeforeResuming
    Call BattleCastle_SetChallengeInProgress
    Call BattleCastle_SaveGame
    GoTo BattleCastle_WalkIntoCorridor
    End

BattleCastle_SaveGame:
    ShowSavingIcon
    TrySaveGame VAR_RESULT
    HideSavingIcon
    PlaySE SEQ_SE_DP_SAVE
    WaitSE SEQ_SE_DP_SAVE
    Return

BattleCastle_OnFrameDidntSaveBeforeQuit:
    Message BattleCastle_Text_DidntSaveBeforeQuit
    ScrCmd_2D5 VAR_BATTLE_CASTLE_CHALLENGE_TYPE
    GoTo BattleCastle_EndChallenge
    End

BattleCastle_OnFrameChallengeEndedCompletedRound:
    CallIfEq VAR_BATTLE_CASTLE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_SINGLE, BattleCastle_IncrementTrainerScoreRoundCompleted
    CallIfEq VAR_BATTLE_CASTLE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_DOUBLE, BattleCastle_IncrementTrainerScoreRoundCompleted
    CallIfEq VAR_BATTLE_CASTLE_PRINT_STATE, 1, BattleCastle_EarnedSilverPrint
    CallIfEq VAR_BATTLE_CASTLE_PRINT_STATE, 3, BattleCastle_EarnedGoldPrint
    GoTo BattleCastle_EndChallenge
    End

BattleCastle_IncrementTrainerScoreRoundCompleted:
    IncrementTrainerScore TRAINER_SCORE_EVENT_BATTLE_CASTLE_ROUND_COMPLETED
    Return

BattleCastle_EarnedSilverPrint:
    Message BattleCastle_Text_PrintForVictory
    BufferPlayerName 0
    Message BattleCastle_Text_SinglePrintAdded
    PlayFanfare SEQ_FANFA4
    WaitFanfare
    SetVar VAR_BATTLE_CASTLE_PRINT_STATE, 2
    Return

BattleCastle_EarnedGoldPrint:
    Message BattleCastle_Text_PrintForVictory
    BufferPlayerName 0
    Message BattleCastle_Text_GoldPrintAdded
    PlayFanfare SEQ_FANFA4
    WaitFanfare
    SetVar VAR_BATTLE_CASTLE_PRINT_STATE, 4
    Common_CheckAllFrontierGoldPrintsObtained
    Return

BattleCastle_OnFrameChallengeEnded:
    GoTo BattleCastle_EndChallenge
    End

BattleCastle_UnusedMovement:
    WalkNormalNorth 2
    Delay8
    WalkNormalNorth
    EndMovement

BattleCastle_UnusedMovement2:
    WalkNormalNorth 2
    Delay8
    WalkNormalNorth
    EndMovement

BattleCastle_Artist:
    NPCMessage BattleCastle_Text_NoDamageMoreCP
    End

BattleCastle_Socialite:
    NPCMessage BattleCastle_Text_HigherLevelOpponentsMoreCP
    End

BattleCastle_Waitress:
    NPCMessage BattleCastle_Text_CheckOpponentsLineup
    End

BattleCastle_Collector:
    NPCMessage BattleCastle_Text_IPineForMrDarach
    End

BattleCastle_Roughneck:
    NPCMessage BattleCastle_Text_SpendCPToRankUp
    End

BattleCastle_Gentleman:
    NPCMessage BattleCastle_Text_MatterOfGraveImportance
    End

BattleCastle_BlackBelt:
    NPCMessage BattleCastle_Text_IWantToLiveInCastle
    End

    .balign 4, 0
