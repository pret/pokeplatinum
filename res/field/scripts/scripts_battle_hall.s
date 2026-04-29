#include "macros/scrcmd.inc"
#include "res/text/bank/battle_hall.h"
#include "res/text/bank/menu_entries.h"
#include "res/field/events/events_battle_hall.h"
#include "constants/battle_frontier.h"


    ScriptEntry BattleHall_SingleAttendant
    ScriptEntry BattleHall_OnFrameResumeChallenge
    ScriptEntry BattleHall_OnFrameDidntSaveBeforeQuit
    ScriptEntry BattleHall_OnFrameChallengeEndedCompletedRound
    ScriptEntry BattleHall_OnFrameChallengeEnded
    ScriptEntry BattleHall_MultiAttendant
    ScriptEntry BattleHall_Hiker
    ScriptEntry BattleHall_SnowpointNPC
    ScriptEntry BattleHall_Twin
    ScriptEntry BattleHall_Pachirisu
    ScriptEntry BattleHall_ExpertM
    ScriptEntry BattleHall_Idol
    ScriptEntry BattleHall_PokefanF
    ScriptEntry BattleHall_Maid
    ScriptEntry BattleHall_BugCatcher
    ScriptEntry BattleHall_OnTransition
    ScriptEntry BattleHall_RecordKeeper
    ScriptEntry BattleHall_SerenaWinston
    ScriptEntry BattleHall_WinstonSerena
    ScriptEntry BattleHall_MajorNPC
    ScriptEntry BattleHall_OnLoad
    ScriptEntry BattleHall_OnResume
    ScriptEntryEnd

BattleHall_OnResume:
    GetNumSpeciesWithBattleHallRecords VAR_MAP_LOCAL_0
    CallIfGe VAR_MAP_LOCAL_0, 11, BattleHall_SerenaWinstonMoveCloser
    CallIfGe VAR_MAP_LOCAL_0, 101, BattleHall_SerenaWinstonMoveEvenCloser
    End

BattleHall_SerenaWinstonMoveEvenCloser:
    SetObjectEventPos LOCALID_SERENA_WINSTON, 8, 11
    SetPosition LOCALID_SERENA_WINSTON, 8, 0, 11, DIR_WEST
    Return

BattleHall_SerenaWinstonMoveCloser:
    SetObjectEventPos LOCALID_SERENA_WINSTON, 13, 11
    SetPosition LOCALID_SERENA_WINSTON, 13, 0, 11, DIR_WEST
    Return

BattleHall_OnLoad:
    GoToIfEq VAR_BATTLE_HALL_LOBBY_LOAD_ACTION, 1, BattleHall_UpdateConditionalNPCs
    End

BattleHall_UpdateConditionalNPCs:
    Call BattleHall_UpdateReporter
    GetRandom VAR_MAP_LOCAL_7, 100
    CallIfUnset FLAG_HIDE_BATTLE_HALL_MAJOR_NPC, BattleHall_HideMajorNPC
    GoToIfLt VAR_MAP_LOCAL_7, 30, BattleHall_TryPickMajorNPC
    End

BattleHall_HideMajorNPC:
    RemoveObject LOCALID_MAJOR_NPC
    SetFlag FLAG_HIDE_BATTLE_HALL_MAJOR_NPC
    Return

BattleHall_TryPickMajorNPC:
    GoToIfUnset FLAG_SET_BATTLE_HALL_MAJOR_NPC, BattleHall_PickMajorNPC
    End

BattleHall_PickMajorNPC:
    SetFlag FLAG_SET_BATTLE_HALL_MAJOR_NPC
    GetBattleHallTotalSinglesRecord VAR_MAP_LOCAL_8
    GoToIfGe VAR_MAP_LOCAL_8, 10000, BattleHall_PickMajorNPCAfter10000Record
    GoToIfGe VAR_MAP_LOCAL_8, 1000, BattleHall_PickMajorNPCAfter1000Record
    GoToIfGe VAR_MAP_LOCAL_8, 500, BattleHall_PickMajorNPCAfter500Record
    End

BattleHall_PickMajorNPCAfter10000Record:
    GetRandom VAR_BATTLE_HALL_MAJOR_NPC, 4
    GoTo BattleHall_ShowMajorNPC
    End

BattleHall_PickMajorNPCAfter1000Record:
    GetRandom VAR_BATTLE_HALL_MAJOR_NPC, 2
    GoTo BattleHall_ShowMajorNPC
    End

BattleHall_PickMajorNPCAfter500Record:
    SetVar VAR_BATTLE_HALL_MAJOR_NPC, 0
    GoTo BattleHall_ShowMajorNPC
    End

BattleHall_ShowMajorNPC:
    ClearFlag FLAG_HIDE_BATTLE_HALL_MAJOR_NPC
    Call BattleHall_UpdateMajorNPC_GFX
    AddObject LOCALID_MAJOR_NPC
    End

BattleHall_UpdateReporter:
    CallIfUnset FLAG_HIDE_BATTLE_HALL_REPORTER, BattleHall_RemoveReporter
    CheckTVInterviewEligible TV_PROGRAM_SEGMENT_BATTLE_FRONTIER_FRONTLINE_NEWS_SINGLE, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, BattleHall_HideReporter
    ScrCmd_32A VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 0, BattleHall_HideReporter
    ClearFlag FLAG_HIDE_BATTLE_HALL_REPORTER
    AddObject LOCALID_REPORTER
    Return

BattleHall_HideReporter:
    SetFlag FLAG_HIDE_BATTLE_HALL_REPORTER
    Return

BattleHall_RemoveReporter:
    RemoveObject LOCALID_REPORTER
    SetFlag FLAG_HIDE_BATTLE_HALL_REPORTER
    Return

BattleHall_OnTransition:
    GetPlayerGender VAR_MAP_LOCAL_0
    CallIfEq VAR_MAP_LOCAL_0, GENDER_MALE, BattleHall_SetSerenaAsFan
    CallIfEq VAR_MAP_LOCAL_0, GENDER_FEMALE, BattleHall_SetWinstonAsFan
    Call BattleHall_UpdateMajorNPC_GFX
    CheckTVInterviewEligible TV_PROGRAM_SEGMENT_BATTLE_FRONTIER_FRONTLINE_NEWS_SINGLE, VAR_MAP_LOCAL_0
    CallIfEq VAR_MAP_LOCAL_0, 0, BattleHall_HideReporter
    End

BattleHall_UpdateMajorNPC_GFX:
    CallIfEq VAR_BATTLE_HALL_MAJOR_NPC, 0, BattleHall_SetCounterpartAsMajorNPC
    CallIfEq VAR_BATTLE_HALL_MAJOR_NPC, 1, BattleHall_SetMomAsMajorNPC
    CallIfEq VAR_BATTLE_HALL_MAJOR_NPC, 2, BattleHall_SetOakAsMajorNPC
    CallIfEq VAR_BATTLE_HALL_MAJOR_NPC, 3, BattleHall_SetJasmineAsMajorNPC
    Return

BattleHall_SetCounterpartAsMajorNPC:
    GetPlayerGender VAR_MAP_LOCAL_9
    GoToIfEq VAR_MAP_LOCAL_9, GENDER_MALE, BattleHall_SetDawnAsMajorNPC
    GoToIfEq VAR_MAP_LOCAL_9, GENDER_FEMALE, BattleHall_SetLucasAsMajorNPC
    Return

BattleHall_SetDawnAsMajorNPC:
    SetVar VAR_OBJ_GFX_ID_1, OBJ_EVENT_GFX_PLAYER_F
    Return

BattleHall_SetLucasAsMajorNPC:
    SetVar VAR_OBJ_GFX_ID_1, OBJ_EVENT_GFX_PLAYER_M
    Return

BattleHall_SetMomAsMajorNPC:
    SetVar VAR_OBJ_GFX_ID_1, OBJ_EVENT_GFX_MOM
    Return

BattleHall_SetOakAsMajorNPC:
    SetVar VAR_OBJ_GFX_ID_1, OBJ_EVENT_GFX_PROF_OAK
    Return

BattleHall_SetJasmineAsMajorNPC:
    SetVar VAR_OBJ_GFX_ID_1, OBJ_EVENT_GFX_JASMINE
    Return

BattleHall_SetSerenaAsFan:
    SetVar VAR_OBJ_GFX_ID_3, OBJ_EVENT_GFX_BATTLE_GIRL
    Return

BattleHall_SetWinstonAsFan:
    SetVar VAR_OBJ_GFX_ID_3, OBJ_EVENT_GFX_YOUNGSTER
    Return

BattleHall_SingleAttendant:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar VAR_MAP_LOCAL_3, 0
    SetVar VAR_MAP_LOCAL_4, 0
    GoTo BattleHall_WelcomeToChallenge
    End

BattleHall_MultiAttendant:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar VAR_MAP_LOCAL_3, 0
    SetVar VAR_MAP_LOCAL_4, 1
    GoTo BattleHall_WelcomeToChallenge
    End

BattleHall_WelcomeToChallenge:
    RecordHeapMemory
    CallIfEq VAR_MAP_LOCAL_4, 0, BattleHall_WelcomeToSingleDoubleChallenge
    CallIfEq VAR_MAP_LOCAL_4, 1, BattleHall_WelcomeToMultiChallenge
    GoTo BattleHall_SelectChallenge
    End

BattleHall_SelectChallenge:
    CallIfEq VAR_MAP_LOCAL_4, 0, BattleHall_InitMenuSingleDoubleChallenge
    CallIfEq VAR_MAP_LOCAL_4, 1, BattleHall_InitMenuMultiChallenge
    AddMenuEntryImm BattleHall_Text_Info, 2
    AddMenuEntryImm BattleHall_Text_Cancel, 3
    ShowMenu
    GoToIfEq VAR_RESULT, 0, BattleHall_TryTakeSingleChallenge
    GoToIfEq VAR_RESULT, 1, BattleHall_TryTakeDoubleChallenge
    GoToIfEq VAR_RESULT, 2, BattleHall_ExplainChallenge
    GoToIfEq VAR_RESULT, 4, BattleHall_TryTakeMultiChallenge
    GoTo BattleHall_EndChallenge
    End

BattleHall_ExplainChallenge:
    CallIfEq VAR_MAP_LOCAL_4, 0, BattleHall_ExplainSingleDoubleChallenge
    CallIfEq VAR_MAP_LOCAL_4, 1, BattleHall_ExplainMultiChallenge
    GoTo BattleHall_SelectChallenge
    End

BattleHall_EndChallenge:
    GoTo BattleHall_HopeToSeeYouAgain
    End

BattleHall_HopeToSeeYouAgain:
    SetVar VAR_BATTLE_HALL_LOBBY_LOAD_ACTION, 0
    Message BattleHall_Text_HopeToSeeYouAgain
    WaitButton
    CloseMessage
    ReleaseAll
    End

BattleHall_TryTakeSingleChallenge:
    SetVar VAR_BATTLE_HALL_CHALLENGE_TYPE, FRONTIER_CHALLENGE_SINGLE
    ScrCmd_2CC 0, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, BattleHall_PrintEligbilityRuleOnePokemon
    GoTo BattleHall_SelectPokemon
    End

BattleHall_TryTakeDoubleChallenge:
    SetVar VAR_BATTLE_HALL_CHALLENGE_TYPE, FRONTIER_CHALLENGE_DOUBLE
    ScrCmd_2CC 0, 2, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, BattleHall_PrintEligbilityRulesForTwoPokemon
    GoTo BattleHall_SelectPokemon
    End

BattleHall_TryTakeMultiChallenge:
    SetVar VAR_BATTLE_HALL_CHALLENGE_TYPE, FRONTIER_CHALLENGE_MULTI
    ScrCmd_2CC 0, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, BattleHall_PrintEligbilityRuleOnePokemon
    GoTo BattleHall_SelectPokemon
    End

BattleHall_PrintEligbilityRuleOnePokemon:
    Message BattleHall_Text_NeedOneLvl30Pokemon
    MessageSeenBanlistSpecies BattleHall_Text_Banlist, 1
    GoTo BattleHall_EndChallenge
    End

BattleHall_PrintEligbilityRulesForTwoPokemon:
    Message BattleHall_Text_NeedTwoLvl30Pokemon
    MessageSeenBanlistSpecies BattleHall_Text_Banlist, 2
    GoTo BattleHall_EndChallenge
    End

BattleHall_SelectPokemon:
    Message BattleHall_Text_ChoosePokemonToEnter
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    ScrCmd_2CC 4, VAR_BATTLE_HALL_CHALLENGE_TYPE, VAR_RESULT
    GetBattleHallSelectedSlots VAR_MAP_LOCAL_2, VAR_MAP_LOCAL_5
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_MAP_LOCAL_2, 0xFF, BattleHall_EndChallenge
    TryRevertPokemonForm VAR_MAP_LOCAL_2, VAR_RESULT
    GoToIfEq VAR_RESULT, 0xFF, BattleHall_ShowGriseousOrbErrorAndExit
    TryRevertPokemonForm VAR_MAP_LOCAL_5, VAR_RESULT
    GoToIfEq VAR_RESULT, 0xFF, BattleHall_ShowGriseousOrbErrorAndExit
    GetPartyMonSpecies VAR_MAP_LOCAL_2, VAR_MAP_LOCAL_1
    GoToIfEq VAR_MAP_LOCAL_1, 0, BattleHall_EndChallenge
    ScrCmd_2CC 1, VAR_BATTLE_HALL_CHALLENGE_TYPE, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, BattleHall_TryStartSingleDoubleChallenge
    ScrCmd_2CC 2, VAR_BATTLE_HALL_CHALLENGE_TYPE, VAR_RESULT
    BufferSpeciesNameFromVar 0, VAR_RESULT, 0, 0
    GoToIfEq VAR_RESULT, VAR_MAP_LOCAL_1, BattleHall_TryStartSingleDoubleChallenge
    GoTo BattleHall_AskDeleteOngoingStreak
    End

BattleHall_AskDeleteOngoingStreak:
    BufferSpeciesNameFromVar 1, VAR_MAP_LOCAL_1, 0, 0
    Message BattleHall_Text_DeleteOngoingStreak
    InitGlobalTextListMenu 25, 13, 1, VAR_RESULT
    AddListMenuEntry MenuEntries_Text_Yes, 0
    AddListMenuEntry MenuEntries_Text_No, 1
    ShowListMenuSetWidth 6
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, BattleHall_DeleteOngoingStreak
    GoTo BattleHall_EndChallenge
    End

BattleHall_DeleteOngoingStreak:
    ScrCmd_2CC 3, VAR_BATTLE_HALL_CHALLENGE_TYPE, VAR_RESULT
    GoTo BattleHall_TryStartSingleDoubleChallenge
    End

BattleHall_TryStartSingleDoubleChallenge:
    GoTo BattleHall_HealAndSaveBeforeChallenge
    End

BattleHall_HealAndSaveBeforeChallenge:
    CallIfEq VAR_BATTLE_HALL_CHALLENGE_TYPE, FRONTIER_CHALLENGE_SINGLE, BattleHall_SetChallengeInProgress
    CallIfEq VAR_BATTLE_HALL_CHALLENGE_TYPE, FRONTIER_CHALLENGE_DOUBLE, BattleHall_SetChallengeInProgress
    SetVar VAR_MAP_LOCAL_0, 0
    HealParty
    Common_SaveGame
    SetVar VAR_RESULT, VAR_MAP_LOCAL_0
    GoToIfEq VAR_RESULT, 0, BattleHall_EndChallenge
    GoToIfEq VAR_BATTLE_HALL_CHALLENGE_TYPE, FRONTIER_CHALLENGE_MULTI, BattleHall_BecomeLeaderOrJoinGroup
    GoTo BattleHall_WalkIntoCorridor
    End

BattleHall_BecomeLeaderOrJoinGroup:
    Message BattleHall_Text_BecomeLeaderOrJoinGroup
    InitGlobalTextMenu 30, 1, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm MenuEntries_Text_JoinGroup, 0
    AddMenuEntryImm MenuEntries_Text_BecomeLeader, 1
    AddMenuEntryImm MenuEntries_Text_Exit, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, BattleHall_LaunchWiFiToJoinGroup
    GoToIfEq VAR_0x8008, 1, BattleHall_LaunchWiFiToBecomeLeader
    GoTo BattleHall_EndChallenge
    End

BattleHall_LaunchWiFiToJoinGroup:
    Message BattleHall_Text_NeedToLaunchWiFiComm
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, BattleHall_BecomeLeaderOrJoinGroup
    CloseMessage
    StartBattleClient 30, 0, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_CANCEL, BattleHall_CancelJoiningGroup
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_ERROR, BattleHall_ErrorJoiningGroup
    GoTo BattleHall_StartMultiChallenge
    End

BattleHall_CancelJoiningGroup:
    GoTo BattleHall_BecomeLeaderOrJoinGroup
    End

BattleHall_ErrorJoiningGroup:
    EndCommunication
    GoTo BattleHall_BecomeLeaderOrJoinGroup
    End

BattleHall_LaunchWiFiToBecomeLeader:
    Message BattleHall_Text_NeedToLaunchWiFiComm
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, BattleHall_BecomeLeaderOrJoinGroup
    CloseMessage
    StartBattleServer 30, 0, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_CANCEL, BattleHall_CancelBecomingLeader
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_ERROR, BattleHall_ErrorBecomingLeader
    GoTo BattleHall_StartMultiChallenge
    End

BattleHall_CancelBecomingLeader:
    GoTo BattleHall_BecomeLeaderOrJoinGroup
    End

BattleHall_ErrorBecomingLeader:
    EndCommunication
    GoTo BattleHall_BecomeLeaderOrJoinGroup
    End

BattleHall_StartMultiChallenge:
    ClearReceivedTempDataAllPlayers
    ScrCmd_135 108
    CheckBattleHallPartnerUsesDifferentSpecies VAR_MAP_LOCAL_1, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, BattleHall_MultiChallengeMustUseSamePokemon
    ClearReceivedTempDataAllPlayers
    ScrCmd_135 110
    Message BattleHall_Text_MustSaveFirst
    CallIfEq VAR_BATTLE_HALL_CHALLENGE_TYPE, FRONTIER_CHALLENGE_MULTI, BattleHall_SetChallengeInProgress
    Call BattleHall_SaveGame
    GoTo BattleHall_WalkIntoCorridor
    End

BattleHall_SetChallengeInProgress:
    SetVar VAR_BATTLE_HALL_LOBBY_LOAD_ACTION, 0xFF
    Return

BattleHall_MultiChallengeMustUseSamePokemon:
    Call BattleHall_EndCommunicationDifferentPokemon
    Message BattleHall_Text_MultiChallengeMustUseSamePokemon
    GoTo BattleHall_EndChallenge
    End

BattleHall_EndCommunicationDifferentPokemon:
    EndCommunication
    Return

BattleHall_WalkIntoCorridor:
    CallIfEq VAR_BATTLE_HALL_CHALLENGE_TYPE, FRONTIER_CHALLENGE_SINGLE, BattleHall_WalkToCorridorSingleChallenge
    CallIfEq VAR_BATTLE_HALL_CHALLENGE_TYPE, FRONTIER_CHALLENGE_DOUBLE, BattleHall_WalkToCorridorDoubleChallenge
    CallIfEq VAR_BATTLE_HALL_CHALLENGE_TYPE, FRONTIER_CHALLENGE_MULTI, BattleHall_WalkToCorridorMultiChallenge
    PlaySE SEQ_SE_DP_KAIDAN2
    GoTo BattleHall_StartChallenge
    End

BattleHall_StartChallenge:
    FadeScreenOut
    WaitFadeScreen
    CallIfEq VAR_BATTLE_HALL_CHALLENGE_TYPE, FRONTIER_CHALLENGE_SINGLE, BattleHall_WalkBackInvisiblySingleChallenge
    CallIfEq VAR_BATTLE_HALL_CHALLENGE_TYPE, FRONTIER_CHALLENGE_DOUBLE, BattleHall_WalkBackInvisiblyDoubleChallenge
    CallIfEq VAR_BATTLE_HALL_CHALLENGE_TYPE, FRONTIER_CHALLENGE_MULTI, BattleHall_WalkBackInvisiblyMultiChallenge
    IncrementGameRecord RECORD_TIMES_STARTED_BATTLE_FRONTIER_CHALLENGE
    CreateJournalEvent LOCATION_EVENT_BATTLE_HALL, 0, 0, 0, 0
    WaitForTransition
    ScrCmd_2C4 9
    CallIfEq VAR_BATTLE_HALL_CHALLENGE_TYPE, FRONTIER_CHALLENGE_MULTI, BattleHall_EndCommunication
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    AssertHeapMemory
    End

BattleHall_EndCommunication:
    EndCommunication
    Return

BattleHall_WalkToCorridorSingleChallenge:
    Message BattleHall_Text_ThisWayPlease
    WaitABPress
    CloseMessage
    ApplyMovement LOCALID_PLAYER, BattleHall_Movement_PlayerWalkToCorridorSingleDoubleChallenge
    ApplyMovement VAR_LAST_TALKED, BattleHall_Movement_AttendantWalkToCorridorSingleDoubleChallenge
    WaitMovement
    Return

BattleHall_WalkToCorridorDoubleChallenge:
    Message BattleHall_Text_ThisWayPlease
    WaitABPress
    CloseMessage
    ApplyMovement LOCALID_PLAYER, BattleHall_Movement_PlayerWalkToCorridorSingleDoubleChallenge
    ApplyMovement VAR_LAST_TALKED, BattleHall_Movement_AttendantWalkToCorridorSingleDoubleChallenge
    WaitMovement
    Return

BattleHall_WalkToCorridorMultiChallenge:
    MessageNoSkip BattleHall_Text_ThisWayPlease
    WaitTime 10, VAR_RESULT
    ClearReceivedTempDataAllPlayers
    ScrCmd_135 109
    CloseMessage
    ApplyMovement LOCALID_PLAYER, BattleHall_Movement_PlayerWalkToCorridorMultiChallenge
    ApplyMovement VAR_LAST_TALKED, BattleHall_Movement_AttendantWalkToCorridorMultiChallenge
    WaitMovement
    Return

BattleHall_WalkBackInvisiblySingleChallenge:
    ApplyMovement LOCALID_PLAYER, BattleHall_Movement_PlayerWalkBackInvisiblySingleDoubleChallenge
    ApplyMovement VAR_LAST_TALKED, BattleHall_Movement_AttendantWalkBackInvisiblySingleDoubleChallenge
    WaitMovement
    Return

BattleHall_WalkBackInvisiblyDoubleChallenge:
    ApplyMovement LOCALID_PLAYER, BattleHall_Movement_PlayerWalkBackInvisiblySingleDoubleChallenge
    ApplyMovement VAR_LAST_TALKED, BattleHall_Movement_AttendantWalkBackInvisiblySingleDoubleChallenge
    WaitMovement
    Return

BattleHall_WalkBackInvisiblyMultiChallenge:
    ApplyMovement LOCALID_PLAYER, BattleHall_Movement_PlayerWalkBackInvisiblyMultiChallenge
    ApplyMovement VAR_LAST_TALKED, BattleHall_Movement_AttendantWalkBackInvisiblyMultiChallenge
    WaitMovement
    Return

BattleHall_ShowGriseousOrbErrorAndExit:
    SetVar VAR_BATTLE_HALL_LOBBY_LOAD_ACTION, 0
    Common_GriseousOrbCouldNotBeRemoved
    End

    .balign 4, 0
BattleHall_Movement_PlayerWalkToCorridorSingleDoubleChallenge:
    WalkNormalWest 4
    WalkNormalSouth 3
    SetInvisible
    EndMovement

    .balign 4, 0
BattleHall_Movement_PlayerWalkToCorridorMultiChallenge:
    WalkNormalWest 2
    WalkNormalNorth
    WalkNormalWest 2
    WalkNormalSouth 3
    SetInvisible
    EndMovement

    .balign 4, 0
BattleHall_Movement_AttendantWalkToCorridorSingleDoubleChallenge:
    WalkNormalWest 3
    WalkNormalSouth 3
    SetInvisible
    EndMovement

    .balign 4, 0
BattleHall_Movement_AttendantWalkToCorridorMultiChallenge:
    WalkNormalWest
    WalkNormalNorth
    WalkNormalWest 2
    WalkNormalSouth 3
    SetInvisible
    EndMovement

    .balign 4, 0
BattleHall_Movement_PlayerWalkBackInvisiblySingleDoubleChallenge:
    WalkFasterEast 4
    WalkFasterNorth 3
    FaceWest
    SetVisible
    EndMovement

    .balign 4, 0
BattleHall_Movement_PlayerWalkBackInvisiblyMultiChallenge:
    WalkFasterEast 2
    WalkFasterSouth
    WalkFasterEast 2
    WalkFasterNorth 3
    FaceWest
    SetVisible
    EndMovement

    .balign 4, 0
BattleHall_Movement_AttendantWalkBackInvisiblySingleDoubleChallenge:
    WalkFasterNorth 3
    WalkFasterEast 3
    SetVisible
    EndMovement

    .balign 4, 0
BattleHall_Movement_AttendantWalkBackInvisiblyMultiChallenge:
    WalkFasterNorth 2
    WalkFasterEast 3
    SetVisible
    EndMovement

BattleHall_WelcomeToSingleDoubleChallenge:
    Message BattleHall_Text_WelcomeToSingleDoubleChallenge
    Return

BattleHall_WelcomeToMultiChallenge:
    Message BattleHall_Text_WelcomeToMultiChallenge
    Return

BattleHall_InitMenuSingleDoubleChallenge:
    InitLocalTextMenu 31, 9, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm BattleHall_Text_SingleBattle, 0
    AddMenuEntryImm BattleHall_Text_DoubleBattle, 1
    Message BattleHall_Text_SelectChallenge
    Return

BattleHall_InitMenuMultiChallenge:
    InitLocalTextMenu 31, 11, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm BattleHall_Text_TakeChallenge, 4
    Message BattleHall_Text_AcceptMultiChallenge
    Return

BattleHall_ExplainSingleDoubleChallenge:
    Message BattleHall_Text_ExplainSingleDoubleChallenge
    Return

BattleHall_ExplainMultiChallenge:
    Message BattleHall_Text_ExplainMultiChallenge
    Return

BattleHall_OnFrameResumeChallenge:
    RecordHeapMemory
    SetVar VAR_MAP_LOCAL_3, 1
    SetVar VAR_BATTLE_HALL_LOBBY_LOAD_ACTION, 0
    Message BattleHall_Text_MustSaveBeforeResuming
    Call BattleHall_SetChallengeInProgress
    Call BattleHall_SaveGame
    GoTo BattleHall_WalkIntoCorridor
    End

BattleHall_SaveGame:
    ShowSavingIcon
    TrySaveGame VAR_RESULT
    HideSavingIcon
    PlaySE SEQ_SE_DP_SAVE
    WaitSE SEQ_SE_DP_SAVE
    Return

BattleHall_OnFrameDidntSaveBeforeQuit:
    Message BattleHall_Text_DidntSaveBeforeQuit
    ScrCmd_2D1 VAR_BATTLE_HALL_CHALLENGE_TYPE
    GoTo BattleHall_EndChallenge
    End

BattleHall_OnFrameChallengeEndedCompletedRound:
    CallIfEq VAR_BATTLE_HALL_CHALLENGE_TYPE, FRONTIER_CHALLENGE_SINGLE, BattleHall_IncrementTrainerScoreRoundCompleted
    CallIfEq VAR_BATTLE_HALL_CHALLENGE_TYPE, FRONTIER_CHALLENGE_DOUBLE, BattleHall_IncrementTrainerScoreRoundCompleted
    CallIfEq VAR_BATTLE_HALL_PRINT_STATE, 1, BattleHall_EarnedSilverPrint
    CallIfEq VAR_BATTLE_HALL_PRINT_STATE, 3, BattleHall_EarnedGoldPrint
    GoTo BattleHall_EndChallenge
    End

BattleHall_IncrementTrainerScoreRoundCompleted:
    IncrementTrainerScore TRAINER_SCORE_EVENT_BATTLE_HALL_ROUND_COMPLETED
    Return

BattleHall_EarnedSilverPrint:
    Message BattleHall_Text_PrintForVictory
    BufferPlayerName 0
    Message BattleHall_Text_SilverPrintAdded
    PlayFanfare SEQ_FANFA4
    WaitFanfare
    SetVar VAR_BATTLE_HALL_PRINT_STATE, 2
    Return

BattleHall_EarnedGoldPrint:
    Message BattleHall_Text_PrintForVictory
    BufferPlayerName 0
    Message BattleHall_Text_GoldPrintAdded
    PlayFanfare SEQ_FANFA4
    WaitFanfare
    SetVar VAR_BATTLE_HALL_PRINT_STATE, 4
    Common_CheckAllFrontierGoldPrintsObtained
    Return

BattleHall_OnFrameChallengeEnded:
    GoTo BattleHall_EndChallenge
    End

BattleHall_UnusedMovement:
    WalkNormalNorth 2
    Delay8
    WalkNormalNorth
    EndMovement

BattleHall_UnusedMovement2:
    WalkNormalNorth 2
    Delay8
    WalkNormalNorth
    EndMovement

BattleHall_Hiker:
    NPCMessage BattleHall_Text_StartWithHardMatchups
    End

BattleHall_SnowpointNPC:
    NPCMessage BattleHall_Text_TryForARecord
    End

BattleHall_Twin:
    NPCMessage BattleHall_Text_PachirisusACutie
    End

BattleHall_Pachirisu:
    PokemonCryAndMessage SPECIES_PACHIRISU, BattleHall_Text_PachirisuCry
    End

BattleHall_ExpertM:
    NPCMessage BattleHall_Text_TryDifferentPokemon
    End

BattleHall_Idol:
    NPCMessage BattleHall_Text_TrySameSpeciesDifferentMoves
    End

BattleHall_PokefanF:
    NPCMessage BattleHall_Text_CroagunkHasTwoTypes
    End

BattleHall_Maid:
    NPCMessage BattleHall_Text_MysteriousMaid
    End

BattleHall_BugCatcher:
    NPCMessage BattleHall_Text_CompeteWithAFriend
    End

BattleHall_RecordKeeper:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfUnset FLAG_SPOKEN_TO_BATTLE_HALL_RECORD_KEEPER, BattleHall_RecordKeeperIntro
    GetBattleHallRecordKeeperStats 1, 2, 3, 4, VAR_BATTLE_HALL_NEXT_TOTAL_RECORD_MILESTONE, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, BattleHall_RecordKeeperReplayIntro
    GoToIfEq VAR_RESULT, 2, BattleHall_RecordKeeperNextMilestoneInfo
    GoToIfEq VAR_RESULT, 3, BattleHall_RecordKeeperAllMilestonesMet
    BufferPlayerName 0
    Message BattleHall_Text_StreakRecordIsX
    Message BattleHall_Text_BPRewardForStreak
    PlayFanfare SEQ_PL_POINTGET3
    Message BattleHall_Text_PlayerReceivedBP
    WaitFanfare
    GoTo BattleHall_RecordKeeperEnd
    End

BattleHall_RecordKeeperReplayIntro:
    Message BattleHall_Text_RecordKeeperIntro
    GoTo BattleHall_RecordKeeperEnd
    End

BattleHall_RecordKeeperNextMilestoneInfo:
    BufferPlayerName 0
    Message BattleHall_Text_RecordStandsAtX
    Message BattleHall_Text_WillEarnBPForStreak
    GoTo BattleHall_RecordKeeperEnd
    End

BattleHall_RecordKeeperAllMilestonesMet:
    BufferPlayerName 0
    Message BattleHall_Text_FantasticRecord
    GoTo BattleHall_RecordKeeperEnd
    End

BattleHall_RecordKeeperIntro:
    SetFlag FLAG_SPOKEN_TO_BATTLE_HALL_RECORD_KEEPER
    Message BattleHall_Text_RecordKeeperIntro
    GoTo BattleHall_RecordKeeperEnd
    End

BattleHall_RecordKeeperEnd:
    WaitButton
    CloseMessage
    ReleaseAll
    End

BattleHall_SerenaWinston:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, BattleHall_SerenaMessages
    GoTo BattleHall_WinstonMessages
    End

BattleHall_WinstonMessages:
    BufferPlayerName 0
    GetNumSpeciesWithBattleHallRecords VAR_0x8005
    GoToIfGe VAR_0x8005, 475, BattleHall_Winston475Species
    GoToIfGe VAR_0x8005, 351, BattleHall_Winston351Species
    GoToIfGe VAR_0x8005, 251, BattleHall_Winston251Species
    GoToIfGe VAR_0x8005, 151, BattleHall_Winston151Species
    GoToIfGe VAR_0x8005, 101, BattleHall_Winston101Species
    GoToIfGe VAR_0x8005, 51, BattleHall_Winston51Species
    GoToIfGe VAR_0x8005, 31, BattleHall_Winston31Species
    GoToIfGe VAR_0x8005, 11, BattleHall_Winston11Species
    GoToIfGe VAR_0x8005, 1, BattleHall_Winston1Species
    Message BattleHall_Text_Winston0Species
    GoTo BattleHall_WinstonEnd
    End

BattleHall_Winston475Species:
    Message BattleHall_Text_Winston475Species
    GoTo BattleHall_WinstonEnd
    End

BattleHall_Winston351Species:
    Message BattleHall_Text_Winston351Species
    GoTo BattleHall_WinstonEnd
    End

BattleHall_Winston251Species:
    Message BattleHall_Text_Winston251Species
    GoTo BattleHall_WinstonEnd
    End

BattleHall_Winston151Species:
    Message BattleHall_Text_Winston151Species
    GoTo BattleHall_WinstonEnd
    End

BattleHall_Winston101Species:
    Message BattleHall_Text_Winston101Species
    GoTo BattleHall_WinstonEnd
    End

BattleHall_Winston51Species:
    Message BattleHall_Text_Winston51Species
    GoTo BattleHall_WinstonEnd
    End

BattleHall_Winston31Species:
    Message BattleHall_Text_Winston31Species
    GoTo BattleHall_WinstonEnd
    End

BattleHall_Winston11Species:
    Message BattleHall_Text_Winston11Species
    GoTo BattleHall_WinstonEnd
    End

BattleHall_Winston1Species:
    Message BattleHall_Text_Winston1Species
    GoTo BattleHall_WinstonEnd
    End

BattleHall_WinstonEnd:
    WaitButton
    CloseMessage
    ReleaseAll
    End

BattleHall_WinstonSerena:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_FEMALE, BattleHall_WinstonMessages
    GoTo BattleHall_SerenaMessages
    End

BattleHall_SerenaMessages:
    BufferPlayerName 0
    GetNumSpeciesWithBattleHallRecords VAR_0x8005
    GoToIfGe VAR_0x8005, 475, BattleHall_Serena475Species
    GoToIfGe VAR_0x8005, 351, BattleHall_Serena351Species
    GoToIfGe VAR_0x8005, 251, BattleHall_Serena251Species
    GoToIfGe VAR_0x8005, 151, BattleHall_Serena151Species
    GoToIfGe VAR_0x8005, 101, BattleHall_Serena101Species
    GoToIfGe VAR_0x8005, 51, BattleHall_Serena51Species
    GoToIfGe VAR_0x8005, 31, BattleHall_Serena31Species
    GoToIfGe VAR_0x8005, 11, BattleHall_Serena11Species
    GoToIfGe VAR_0x8005, 1, BattleHall_Serena1Species
    Message BattleHall_Text_Serena0Species
    GoTo BattleHall_SerenaEnd
    End

BattleHall_Serena475Species:
    Message BattleHall_Text_Serena475Species
    GoTo BattleHall_SerenaEnd
    End

BattleHall_Serena351Species:
    Message BattleHall_Text_Serena351Species
    GoTo BattleHall_SerenaEnd
    End

BattleHall_Serena251Species:
    Message BattleHall_Text_Serena251Species
    GoTo BattleHall_SerenaEnd
    End

BattleHall_Serena151Species:
    Message BattleHall_Text_Serena151Species
    GoTo BattleHall_SerenaEnd
    End

BattleHall_Serena101Species:
    Message BattleHall_Text_Serena101Species
    GoTo BattleHall_SerenaEnd
    End

BattleHall_Serena51Species:
    Message BattleHall_Text_Serena51Species
    GoTo BattleHall_SerenaEnd
    End

BattleHall_Serena31Species:
    Message BattleHall_Text_Serena31Species
    GoTo BattleHall_SerenaEnd
    End

BattleHall_Serena11Species:
    Message BattleHall_Text_Serena11Species
    GoTo BattleHall_SerenaEnd
    End

BattleHall_Serena1Species:
    Message BattleHall_Text_Serena1Species
    GoTo BattleHall_SerenaEnd
    End

BattleHall_SerenaEnd:
    WaitButton
    CloseMessage
    ReleaseAll
    End

BattleHall_MajorNPC:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferPlayerName 0
    SetVar VAR_MAP_LOCAL_1, VAR_OBJ_GFX_ID_1
    GoToIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_PLAYER_M, BattleHall_Lucas
    GoToIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_PLAYER_F, BattleHall_Dawn
    GoToIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_MOM, BattleHall_Mom
    GoToIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_PROF_OAK, BattleHall_Oak
    GoToIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_JASMINE, BattleHall_Jasmine
    End

BattleHall_Lucas:
    Message BattleHall_Text_Lucas
    GoTo BattleHall_MajorNPCEnd
    End

BattleHall_Dawn:
    Message BattleHall_Text_Dawn
    GoTo BattleHall_MajorNPCEnd
    End

BattleHall_Mom:
    Message BattleHall_Text_Mom
    GoTo BattleHall_MajorNPCEnd
    End

BattleHall_Oak:
    Message BattleHall_Text_Oak
    GoTo BattleHall_MajorNPCEnd
    End

BattleHall_Jasmine:
    Message BattleHall_Text_Jasmine
    GoTo BattleHall_MajorNPCEnd
    End

BattleHall_MajorNPCEnd:
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
