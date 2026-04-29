#include "macros/scrcmd.inc"
#include "res/text/bank/battle_arcade.h"
#include "res/text/bank/menu_entries.h"
#include "constants/battle_frontier.h"


    ScriptEntry BattleArcade_SingleAttendant
    ScriptEntry BattleArcade_OnFrameResumeChallenge
    ScriptEntry BattleArcade_OnFrameDidntSaveBeforeQuit
    ScriptEntry BattleArcade_OnFrameChallengeEndedCompletedRound
    ScriptEntry BattleArcade_OnFrameChallengeEnded
    ScriptEntry BattleArcade_MultiAttendant
    ScriptEntry BattleArcade_Worker
    ScriptEntry BattleArcade_ParasolLady
    ScriptEntry BattleArcade_Psychic
    ScriptEntry BattleArcade_BugCatcher
    ScriptEntry BattleArcade_Waitress
    ScriptEntry BattleArcade_Camper
    ScriptEntry BattleArcade_Beauty
    ScriptEntry BattleArcade_TuberF
    ScriptEntry BattleArcade_OnTransition
    ScriptEntry BattleArcade_Hiker1
    ScriptEntry BattleArcade_Hiker2
    ScriptEntryEnd

BattleArcade_OnTransition:
    CheckTVInterviewEligible TV_PROGRAM_SEGMENT_BATTLE_FRONTIER_FRONTLINE_NEWS_MULTI, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, BattleArcade_HideBattleFrontierReporter
    ClearFlag FLAG_HIDE_BATTLE_FRONTIER_REPORTER
    End

BattleArcade_HideBattleFrontierReporter:
    SetFlag FLAG_HIDE_BATTLE_FRONTIER_REPORTER
    End

BattleArcade_SingleAttendant:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar VAR_MAP_LOCAL_3, 0
    SetVar VAR_MAP_LOCAL_4, 0
    GoTo BattleArcade_Attendant
    End

BattleArcade_MultiAttendant:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar VAR_MAP_LOCAL_3, 0
    SetVar VAR_MAP_LOCAL_4, 1
    GoTo BattleArcade_Attendant
    End

BattleArcade_Attendant:
    RecordHeapMemory
    CallIfEq VAR_MAP_LOCAL_4, 0, BattleArcade_WelcomeToSingleDoubleChallenge
    CallIfEq VAR_MAP_LOCAL_4, 1, BattleArcade_WelcomeToMultiChallenge
    GoTo BattleArcade_SelectChallenge
    End

BattleArcade_SelectChallenge:
    CallIfEq VAR_MAP_LOCAL_4, 0, BattleArcade_InitMenuSingleDoubleChallenge
    CallIfEq VAR_MAP_LOCAL_4, 1, BattleArcade_InitMenuMultiChallenge
    AddMenuEntryImm BattleArcade_Text_Info, 2
    AddMenuEntryImm BattleArcade_Text_Cancel, 3
    ShowMenu
    GoToIfEq VAR_RESULT, 0, BattleArcade_TryTakeSingleChallenge
    GoToIfEq VAR_RESULT, 1, BattleArcade_TryTakeDoubleChallenge
    GoToIfEq VAR_RESULT, 2, BattleArcade_ExplainChallenge
    GoToIfEq VAR_RESULT, 4, BattleArcade_TryTakeMultiChallenge
    GoTo BattleArcade_EndChallenge
    End

BattleArcade_ExplainChallenge:
    CallIfEq VAR_MAP_LOCAL_4, 0, BattleArcade_ExplainSingleDoubleChallenge
    CallIfEq VAR_MAP_LOCAL_4, 1, BattleArcade_ExplainMultiChallenge
    GoTo BattleArcade_SelectChallenge
    End

BattleArcade_EndChallenge:
    GoTo BattleArcade_HopeToSeeYouAgain
    End

BattleArcade_HopeToSeeYouAgain:
    SetVar VAR_BATTLE_ARCADE_LOBBY_LOAD_ACTION, 0
    Message BattleArcade_Text_HopeToSeeYouAgain
    WaitButton
    CloseMessage
    ReleaseAll
    End

BattleArcade_TryTakeSingleChallenge:
    SetVar VAR_BATTLE_ARCADE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_SINGLE
    ScrCmd_2D9 0, 3, VAR_RESULT
    BufferNumber 0, 3
    BufferNumber 1, 3
    GoToIfEq VAR_RESULT, 0, BattleArcade_NotEnoughEligiblePokemonSingleDouble
    GoTo BattleArcade_SelectPokemon
    End

BattleArcade_TryTakeDoubleChallenge:
    SetVar VAR_BATTLE_ARCADE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_DOUBLE
    ScrCmd_2D9 0, 3, VAR_RESULT
    BufferNumber 0, 3
    BufferNumber 1, 3
    GoToIfEq VAR_RESULT, 0, BattleArcade_NotEnoughEligiblePokemonSingleDouble
    GoTo BattleArcade_SelectPokemon
    End

BattleArcade_TryTakeMultiChallenge:
    SetVar VAR_BATTLE_ARCADE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_MULTI
    ScrCmd_2D9 0, 2, VAR_RESULT
    BufferNumber 0, 2
    BufferNumber 1, 2
    GoToIfEq VAR_RESULT, 0, BattleArcade_NotEnoughEligiblePokemonMulti
    GoTo BattleArcade_SelectPokemon
    End

BattleArcade_NotEnoughEligiblePokemonSingleDouble:
    Message BattleArcade_Text_NotEnoughEligiblePokemon
    MessageSeenBanlistSpecies BattleArcade_Text_Banlist, 3
    GoTo BattleArcade_EndChallenge
    End

BattleArcade_NotEnoughEligiblePokemonMulti:
    Message BattleArcade_Text_NotEnoughEligiblePokemon
    MessageSeenBanlistSpecies BattleArcade_Text_Banlist, 2
    GoTo BattleArcade_EndChallenge
    End

BattleArcade_SelectPokemon:
    Message BattleArcade_Text_SelectPokemonToEnter
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    ScrCmd_2D9 4, VAR_BATTLE_ARCADE_CHALLENGE_TYPE, VAR_RESULT
    ScrCmd_2DB VAR_MAP_LOCAL_2, VAR_MAP_LOCAL_5, VAR_MAP_LOCAL_6
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_MAP_LOCAL_2, 0xFF, BattleArcade_EndChallenge
    TryRevertPokemonForm VAR_MAP_LOCAL_2, VAR_RESULT
    GoToIfEq VAR_RESULT, 0xFF, BattleArcade_GriseousOrbCouldNotBeRemoved
    TryRevertPokemonForm VAR_MAP_LOCAL_5, VAR_RESULT
    GoToIfEq VAR_RESULT, 0xFF, BattleArcade_GriseousOrbCouldNotBeRemoved
    TryRevertPokemonForm VAR_MAP_LOCAL_6, VAR_RESULT
    GoToIfEq VAR_RESULT, 0xFF, BattleArcade_GriseousOrbCouldNotBeRemoved
    GetPartyMonSpecies VAR_MAP_LOCAL_2, VAR_MAP_LOCAL_1
    GoToIfEq VAR_MAP_LOCAL_1, 0, BattleArcade_EndChallenge
    GoTo BattleArcade_TryStartChallenge
    End

BattleArcade_TryStartChallenge:
    GoTo BattleArcade_HealAndSaveBeforeChallenge
    End

BattleArcade_HealAndSaveBeforeChallenge:
    CallIfEq VAR_BATTLE_ARCADE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_SINGLE, BattleArcade_SetChallengeInProgress
    CallIfEq VAR_BATTLE_ARCADE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_DOUBLE, BattleArcade_SetChallengeInProgress
    SetVar VAR_MAP_LOCAL_0, 0
    HealParty
    Common_SaveGame
    SetVar VAR_RESULT, VAR_MAP_LOCAL_0
    GoToIfEq VAR_RESULT, 0, BattleArcade_EndChallenge
    GoToIfEq VAR_BATTLE_ARCADE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_MULTI, BattleArcade_BecomeLeaderOrJoinGroup
    GoTo BattleArcade_WalkIntoCorridor
    End

BattleArcade_BecomeLeaderOrJoinGroup:
    Message BattleArcade_Text_BecomeLeaderOrJoinGroup
    InitGlobalTextMenu 30, 1, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm MenuEntries_Text_JoinGroup, 0
    AddMenuEntryImm MenuEntries_Text_BecomeLeader, 1
    AddMenuEntryImm MenuEntries_Text_Exit, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, BattleArcade_LaunchWiFiToJoinGroup
    GoToIfEq VAR_0x8008, 1, BattleArcade_LaunchWiFiToBecomeLeader
    GoTo BattleArcade_EndChallenge
    End

BattleArcade_LaunchWiFiToJoinGroup:
    Message BattleArcade_Text_NeedToLaunchWiFiComm
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, BattleArcade_BecomeLeaderOrJoinGroup
    CloseMessage
    StartBattleClient 32, 0, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_CANCEL, BattleArcade_CancelJoiningGroup
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_ERROR, BattleArcade_ErrorJoiningGroup
    GoTo BattleArcade_StartMultiChallenge
    End

BattleArcade_CancelJoiningGroup:
    GoTo BattleArcade_BecomeLeaderOrJoinGroup
    End

BattleArcade_ErrorJoiningGroup:
    EndCommunication
    GoTo BattleArcade_BecomeLeaderOrJoinGroup
    End

BattleArcade_LaunchWiFiToBecomeLeader:
    Message BattleArcade_Text_NeedToLaunchWiFiComm
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, BattleArcade_BecomeLeaderOrJoinGroup
    CloseMessage
    StartBattleServer 32, 0, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_CANCEL, BattleArcade_CancelBecomingLeader
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_ERROR, BattleArcade_ErrorBecomingLeader
    GoTo BattleArcade_StartMultiChallenge
    End

BattleArcade_CancelBecomingLeader:
    GoTo BattleArcade_BecomeLeaderOrJoinGroup
    End

BattleArcade_ErrorBecomingLeader:
    EndCommunication
    GoTo BattleArcade_BecomeLeaderOrJoinGroup
    End

BattleArcade_StartMultiChallenge:
    ClearReceivedTempDataAllPlayers
    ScrCmd_135 154
    GetPartyMonSpecies VAR_MAP_LOCAL_2, VAR_0x8000
    GetPartyMonSpecies VAR_MAP_LOCAL_5, VAR_0x8001
    ScrCmd_2DA VAR_0x8000, VAR_0x8001, VAR_RESULT
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 1, BattleArcade_BothTrainerChosePokemon1
    GoToIfEq VAR_0x8008, 2, BattleArcade_BothTrainerChosePokemon2
    GoToIfEq VAR_0x8008, 3, BattleArcade_BothTrainerChosePokemon1And2
    ClearReceivedTempDataAllPlayers
    ScrCmd_135 156
    Message BattleArcade_Text_MustSaveFirst
    CallIfEq VAR_BATTLE_ARCADE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_MULTI, BattleArcade_SetChallengeInProgress
    Call BattleArcade_SaveGame
    GoTo BattleArcade_WalkIntoCorridor
    End

BattleArcade_SetChallengeInProgress:
    SetVar VAR_BATTLE_ARCADE_LOBBY_LOAD_ACTION, 0xFF
    Return

BattleArcade_BothTrainerChosePokemon1:
    Call BattleArcade_EndCommunicationSamePokemon
    BufferPartyMonSpecies 0, VAR_MAP_LOCAL_2
    Message BattleArcade_Text_BothTrainersChoseThisPokemon
    GoTo BattleArcade_ChoseSamePokemonCancel
    End

BattleArcade_BothTrainerChosePokemon2:
    Call BattleArcade_EndCommunicationSamePokemon
    BufferPartyMonSpecies 0, VAR_MAP_LOCAL_5
    Message BattleArcade_Text_BothTrainersChoseThisPokemon
    GoTo BattleArcade_ChoseSamePokemonCancel
    End

BattleArcade_BothTrainerChosePokemon1And2:
    Call BattleArcade_EndCommunicationSamePokemon
    BufferPartyMonSpecies 0, VAR_MAP_LOCAL_2
    BufferPartyMonSpecies 1, VAR_MAP_LOCAL_5
    Message BattleArcade_Text_BothTrainersChoseThesePokemon
    GoTo BattleArcade_ChoseSamePokemonCancel
    End

BattleArcade_ChoseSamePokemonCancel:
    GoTo BattleArcade_EndChallenge
    End

BattleArcade_EndCommunicationSamePokemon:
    ClearReceivedTempDataAllPlayers
    ScrCmd_135 157
    EndCommunication
    Return

BattleArcade_WalkIntoCorridor:
    CallIfEq VAR_BATTLE_ARCADE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_SINGLE, BattleArcade_WalkToCorridorSingleChallenge
    CallIfEq VAR_BATTLE_ARCADE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_DOUBLE, BattleArcade_WalkToCorridorDoubleChallenge
    CallIfEq VAR_BATTLE_ARCADE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_MULTI, BattleArcade_WalkToCorridorMultiChallenge
    PlaySE SEQ_SE_DP_KAIDAN2
    GoTo BattleArcade_StartChallenge
    End

BattleArcade_StartChallenge:
    FadeScreenOut
    WaitFadeScreen
    CallIfEq VAR_BATTLE_ARCADE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_SINGLE, BattleArcade_WalkBackInvisiblySingleChallenge
    CallIfEq VAR_BATTLE_ARCADE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_DOUBLE, BattleArcade_WalkBackInvisiblyDoubleChallenge
    CallIfEq VAR_BATTLE_ARCADE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_MULTI, BattleArcade_WalkBackInvisiblyMultiChallenge
    IncrementGameRecord RECORD_TIMES_STARTED_BATTLE_FRONTIER_CHALLENGE
    CreateJournalEvent LOCATION_EVENT_BATTLE_ARCADE, 0, 0, 0, 0
    WaitForTransition
    ScrCmd_2C4 15
    CallIfEq VAR_BATTLE_ARCADE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_MULTI, BattleArcade_EndCommunication
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    AssertHeapMemory
    End

BattleArcade_EndCommunication:
    EndCommunication
    Return

BattleArcade_WalkToCorridorSingleChallenge:
    Message BattleArcade_Text_ThisWayPlease
    WaitABPress
    CloseMessage
    ApplyMovement LOCALID_PLAYER, BattleArcade_Movement_PlayerWalkToCorridorSingleDoubleChallenge
    ApplyMovement VAR_LAST_TALKED, BattleArcade_Movement_AttendantWalkToCorridorSingleDoubleChallenge
    WaitMovement
    Return

BattleArcade_WalkToCorridorDoubleChallenge:
    Message BattleArcade_Text_ThisWayPlease
    WaitABPress
    CloseMessage
    ApplyMovement LOCALID_PLAYER, BattleArcade_Movement_PlayerWalkToCorridorSingleDoubleChallenge
    ApplyMovement VAR_LAST_TALKED, BattleArcade_Movement_AttendantWalkToCorridorSingleDoubleChallenge
    WaitMovement
    Return

BattleArcade_WalkToCorridorMultiChallenge:
    MessageNoSkip BattleArcade_Text_ThisWayPlease
    WaitTime 10, VAR_RESULT
    ClearReceivedTempDataAllPlayers
    ScrCmd_135 155
    CloseMessage
    ApplyMovement LOCALID_PLAYER, BattleArcade_Movement_PlayerWalkToCorridorMultiChallenge
    ApplyMovement VAR_LAST_TALKED, BattleArcade_Movement_AttendantWalkToCorridorMultiChallenge
    WaitMovement
    Return

BattleArcade_WalkBackInvisiblySingleChallenge:
    ApplyMovement LOCALID_PLAYER, BattleArcade_Movement_PlayerWalkBackSingleDoubleChallenge
    ApplyMovement VAR_LAST_TALKED, BattleArcade_Movement_AttendantWalkBackSingleDoubleChallenge
    WaitMovement
    Return

BattleArcade_WalkBackInvisiblyDoubleChallenge:
    ApplyMovement LOCALID_PLAYER, BattleArcade_Movement_PlayerWalkBackSingleDoubleChallenge
    ApplyMovement VAR_LAST_TALKED, BattleArcade_Movement_AttendantWalkBackSingleDoubleChallenge
    WaitMovement
    Return

BattleArcade_WalkBackInvisiblyMultiChallenge:
    ApplyMovement LOCALID_PLAYER, BattleArcade_Movement_PlayerWalkBackMultiChallenge
    ApplyMovement VAR_LAST_TALKED, BattleArcade_Movement_AttendantWalkBackMultiChallenge
    WaitMovement
    Return

BattleArcade_GriseousOrbCouldNotBeRemoved:
    SetVar VAR_BATTLE_ARCADE_LOBBY_LOAD_ACTION, 0
    Common_GriseousOrbCouldNotBeRemoved
    End

    .balign 4, 0
BattleArcade_Movement_PlayerWalkToCorridorSingleDoubleChallenge:
    WalkNormalNorth 2
    WalkNormalEast
    WalkNormalNorth 2
    SetInvisible
    EndMovement

    .balign 4, 0
BattleArcade_Movement_PlayerWalkToCorridorMultiChallenge:
    WalkNormalNorth 4
    SetInvisible
    EndMovement

    .balign 4, 0
BattleArcade_Movement_AttendantWalkToCorridorSingleDoubleChallenge:
    WalkNormalNorth
    WalkNormalEast
    WalkNormalNorth 2
    SetInvisible
    EndMovement

    .balign 4, 0
BattleArcade_Movement_AttendantWalkToCorridorMultiChallenge:
    WalkNormalNorth 3
    SetInvisible
    EndMovement

    .balign 4, 0
BattleArcade_Movement_PlayerWalkBackSingleDoubleChallenge:
    WalkFasterSouth 2
    WalkFasterWest
    WalkFasterSouth 2
    FaceNorth
    SetVisible
    EndMovement

    .balign 4, 0
BattleArcade_Movement_PlayerWalkBackMultiChallenge:
    WalkFasterSouth 4
    FaceNorth
    SetVisible
    EndMovement

    .balign 4, 0
BattleArcade_Movement_AttendantWalkBackSingleDoubleChallenge:
    WalkFasterSouth
    WalkFasterWest
    WalkFasterSouth 2
    SetVisible
    EndMovement

    .balign 4, 0
BattleArcade_Movement_AttendantWalkBackMultiChallenge:
    WalkFasterSouth 3
    SetVisible
    EndMovement

BattleArcade_WelcomeToSingleDoubleChallenge:
    Message BattleArcade_Text_WelcomeToSingleDoubleChallenge
    Return

BattleArcade_WelcomeToMultiChallenge:
    Message BattleArcade_Text_WelcomeToMultiChallenge
    Return

BattleArcade_InitMenuSingleDoubleChallenge:
    InitLocalTextMenu 31, 9, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm BattleArcade_Text_SingleBattle, 0
    AddMenuEntryImm BattleArcade_Text_DoubleBattle, 1
    Message BattleArcade_Text_TakeWhichChallenge
    Return

BattleArcade_InitMenuMultiChallenge:
    InitLocalTextMenu 31, 11, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm BattleArcade_Text_TakeChallenge, 4
    Message BattleArcade_Text_AskTakeMultiChallenge
    Return

BattleArcade_ExplainSingleDoubleChallenge:
    Message BattleArcade_Text_ExplainSingleDoubleChallenge
    Return

BattleArcade_ExplainMultiChallenge:
    Message BattleArcade_Text_ExplainMultiChallenge
    Return

BattleArcade_OnFrameResumeChallenge:
    RecordHeapMemory
    SetVar VAR_MAP_LOCAL_3, 1
    SetVar VAR_BATTLE_ARCADE_LOBBY_LOAD_ACTION, 0
    Message BattleArcade_Text_MustSaveBeforeResuming
    Call BattleArcade_SetChallengeInProgress
    Call BattleArcade_SaveGame
    GoTo BattleArcade_WalkIntoCorridor
    End

BattleArcade_SaveGame:
    ShowSavingIcon
    TrySaveGame VAR_RESULT
    HideSavingIcon
    PlaySE SEQ_SE_DP_SAVE
    WaitSE SEQ_SE_DP_SAVE
    Return

BattleArcade_OnFrameDidntSaveBeforeQuit:
    Message BattleArcade_Text_DidntSaveBeforeQuit
    ScrCmd_2DC VAR_BATTLE_ARCADE_CHALLENGE_TYPE
    GoTo BattleArcade_EndChallenge
    End

BattleArcade_OnFrameChallengeEndedCompletedRound:
    CallIfEq VAR_BATTLE_ARCADE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_SINGLE, BattleArcade_IncrementTrainerScoreRoundCompleted
    CallIfEq VAR_BATTLE_ARCADE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_DOUBLE, BattleArcade_IncrementTrainerScoreRoundCompleted
    CallIfEq VAR_BATTLE_ARCADE_PRINT_STATE, 1, BattleArcade_EarnedSilverPrint
    CallIfEq VAR_BATTLE_ARCADE_PRINT_STATE, 3, BattleArcade_EarnedGoldPrint
    GoTo BattleArcade_EndChallenge
    End

BattleArcade_IncrementTrainerScoreRoundCompleted:
    IncrementTrainerScore TRAINER_SCORE_EVENT_BATTLE_ARCADE_ROUND_COMPLETED
    Return

BattleArcade_EarnedSilverPrint:
    Message BattleArcade_Text_PrintForVictory
    BufferPlayerName 0
    Message BattleArcade_Text_SilverPrintAdded
    PlayFanfare SEQ_FANFA4
    WaitFanfare
    SetVar VAR_BATTLE_ARCADE_PRINT_STATE, 2
    Return

BattleArcade_EarnedGoldPrint:
    Message BattleArcade_Text_PrintForVictory
    BufferPlayerName 0
    Message BattleArcade_Text_GoldPrintAdded
    PlayFanfare SEQ_FANFA4
    WaitFanfare
    SetVar VAR_BATTLE_ARCADE_PRINT_STATE, 4
    Common_CheckAllFrontierGoldPrintsObtained
    Return

BattleArcade_OnFrameChallengeEnded:
    GoTo BattleArcade_EndChallenge
    End

BattleArcade_UnusedMovement:
    WalkNormalNorth 2
    Delay8
    WalkNormalNorth
    EndMovement

BattleArcade_UnusedMovement2:
    WalkNormalNorth 2
    Delay8
    WalkNormalNorth
    EndMovement

BattleArcade_Worker:
    NPCMessage BattleArcade_Text_RuleGameBoard
    End

BattleArcade_ParasolLady:
    NPCMessage BattleArcade_Text_ComesDownToLuck
    End

BattleArcade_Psychic:
    NPCMessage BattleArcade_Text_NothingToDoAboutLuck
    End

BattleArcade_BugCatcher:
    NPCMessage BattleArcade_Text_DontBeAwestruck
    End

BattleArcade_Waitress:
    NPCMessage BattleArcade_Text_PeculiarFashionSense
    End

BattleArcade_Camper:
    NPCMessage BattleArcade_Text_StartBattlesWithTrickRoom
    End

BattleArcade_Beauty:
    NPCMessage BattleArcade_Text_ThrilledByUnknownHand
    End

BattleArcade_TuberF:
    NPCMessage BattleArcade_Text_BlamingGameBoardIsPitiful
    End

BattleArcade_Hiker1:
    EventMessage BattleArcade_Text_FigureThisOneOut
    End

BattleArcade_Hiker2:
    EventMessage BattleArcade_Text_GroundTypesArentAffected
    End

    .balign 4, 0
