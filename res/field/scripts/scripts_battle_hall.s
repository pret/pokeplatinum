#include "macros/scrcmd.inc"
#include "res/text/bank/battle_hall.h"
#include "res/text/bank/menu_entries.h"
#include "res/field/events/events_battle_hall.h"
#include "constants/battle_frontier.h"


    ScriptEntry BattleHall_SingleAttendant
    ScriptEntry BattleHall_ResumeChallenge
    ScriptEntry BattleHall_DidntSaveBeforeQuit
    ScriptEntry BattleHall_ChallengeEndedBPEarned
    ScriptEntry BattleHall_ChallengeEnded
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
    SetPosition LOCALID_SERENA_WINSTON, 8, 0, 11, 2
    Return

BattleHall_SerenaWinstonMoveCloser:
    SetObjectEventPos LOCALID_SERENA_WINSTON, 13, 11
    SetPosition LOCALID_SERENA_WINSTON, 13, 0, 11, 2
    Return

BattleHall_OnLoad:
    GoToIfEq VAR_BATTLE_HALL_LOBBY_LOAD_ACTION, 1, BattleHall_UpdateConditionalNPCs
    End

BattleHall_UpdateConditionalNPCs:
    Call BattleHall_UpdateReporter
    GetRandom VAR_MAP_LOCAL_7, 100
    CallIfUnset FLAG_HIDE_BATTLE_HALL_MAJOR_NPC, BattleHall_HideMajorNPC
    GoToIfLt VAR_MAP_LOCAL_7, 30, _00E5
    End

BattleHall_HideMajorNPC:
    RemoveObject LOCALID_MAJOR_NPC
    SetFlag FLAG_HIDE_BATTLE_HALL_MAJOR_NPC
    Return

_00E5:
    GoToIfUnset FLAG_UNK_0x0AC4, BattleHall_PickMajorNPC
    End

BattleHall_PickMajorNPC:
    SetFlag FLAG_UNK_0x0AC4
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
    CallIfUnset FLAG_BATTLE_HALL_HIDE_REPORTER, BattleHall_HideReporter
    CheckTVInterviewEligible TV_PROGRAM_SEGMENT_BATTLE_FRONTIER_FRONTLINE_NEWS_SINGLE, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 0, BattleHall_SetHideReporterFlag
    ScrCmd_32A VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 0, BattleHall_SetHideReporterFlag
    ClearFlag FLAG_BATTLE_HALL_HIDE_REPORTER
    AddObject LOCALID_REPORTER
    Return

BattleHall_SetHideReporterFlag:
    SetFlag FLAG_BATTLE_HALL_HIDE_REPORTER
    Return

BattleHall_HideReporter:
    RemoveObject LOCALID_REPORTER
    SetFlag FLAG_BATTLE_HALL_HIDE_REPORTER
    Return

BattleHall_OnTransition:
    GetPlayerGender VAR_MAP_LOCAL_0
    CallIfEq VAR_MAP_LOCAL_0, GENDER_MALE, BattleHall_SetSerenaAsFan
    CallIfEq VAR_MAP_LOCAL_0, GENDER_FEMALE, BattleHall_SetWinstonAsFan
    Call BattleHall_UpdateMajorNPC_GFX
    CheckTVInterviewEligible TV_PROGRAM_SEGMENT_BATTLE_FRONTIER_FRONTLINE_NEWS_SINGLE, VAR_MAP_LOCAL_0
    CallIfEq VAR_MAP_LOCAL_0, 0, BattleHall_SetHideReporterFlag
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
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar VAR_MAP_LOCAL_3, 0
    SetVar VAR_MAP_LOCAL_4, 0
    GoTo BattleHall_PrintBattleHallWelcome
    End

BattleHall_MultiAttendant:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar VAR_MAP_LOCAL_3, 0
    SetVar VAR_MAP_LOCAL_4, 1
    GoTo BattleHall_PrintBattleHallWelcome
    End

BattleHall_PrintBattleHallWelcome:
    RecordHeapMemory
    CallIfEq VAR_MAP_LOCAL_4, 0, BattleHall_PrintSingleChallengeWelcome
    CallIfEq VAR_MAP_LOCAL_4, 1, BattleHall_PrintMultiChallengeWelcome
    GoTo BattleHall_ShowChallengeSelectionMenu
    End

BattleHall_ShowChallengeSelectionMenu:
    CallIfEq VAR_MAP_LOCAL_4, 0, BattleHall_GenerateSingleChallengeMenu
    CallIfEq VAR_MAP_LOCAL_4, 1, BattleHall_GenerateMultiChallengeMenu
    AddMenuEntryImm BattleHall_Text_Info, 2
    AddMenuEntryImm BattleHall_Text_Cancel, 3
    ShowMenu
    GoToIfEq VAR_RESULT, 0, BattleHall_CheckSingleBattleEligibility
    GoToIfEq VAR_RESULT, 1, BattleHall_CheckDoubleBattleEligibility
    GoToIfEq VAR_RESULT, 2, BattleHall_PrintChallengeInfo
    GoToIfEq VAR_RESULT, 4, BattleHall_CheckMultiBattleEligibility
    GoTo BattleHall_EndChallenge
    End

BattleHall_PrintChallengeInfo:
    CallIfEq VAR_MAP_LOCAL_4, 0, BattleHall_PrintSingleChallengeInfo
    CallIfEq VAR_MAP_LOCAL_4, 1, BattleHall_PrintMultiChallengeInfo
    GoTo BattleHall_ShowChallengeSelectionMenu
    End

BattleHall_EndChallenge:
    GoTo _0355
    End

_0355:
    SetVar VAR_BATTLE_HALL_LOBBY_LOAD_ACTION, 0
    Message BattleHall_Text_HopeToSeeYouAgain
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

BattleHall_CheckSingleBattleEligibility:
    SetVar VAR_BATTLE_HALL_CHALLENGE_TYPE, FRONTIER_CHALLENGE_SINGLE
    ScrCmd_2CC 0, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, BattleHall_PrintEligbilityRuleOnePokemon
    GoTo BattleHall_SelectPokemonForChallenge
    End

BattleHall_CheckDoubleBattleEligibility:
    SetVar VAR_BATTLE_HALL_CHALLENGE_TYPE, FRONTIER_CHALLENGE_DOUBLE
    ScrCmd_2CC 0, 2, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, BattleHall_PrintEligbilityRulesForTwoPokemon
    GoTo BattleHall_SelectPokemonForChallenge
    End

BattleHall_CheckMultiBattleEligibility:
    SetVar VAR_BATTLE_HALL_CHALLENGE_TYPE, FRONTIER_CHALLENGE_MULTI
    ScrCmd_2CC 0, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, BattleHall_PrintEligbilityRuleOnePokemon
    GoTo BattleHall_SelectPokemonForChallenge
    End

BattleHall_PrintEligbilityRuleOnePokemon:
    Message BattleHall_Text_NeedOneLvl30Pokemon
    MessageSeenBanlistSpecies BattleHall_Text_BanList, 1
    GoTo BattleHall_EndChallenge
    End

BattleHall_PrintEligbilityRulesForTwoPokemon:
    Message BattleHall_Text_NeedTwoLvl30Pokemon
    MessageSeenBanlistSpecies BattleHall_Text_BanList, 2
    GoTo BattleHall_EndChallenge
    End

BattleHall_SelectPokemonForChallenge:
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
    GoToIfEq VAR_RESULT, 0, BattleHall_HealAndSaveBeforeChallenge
    ScrCmd_2CC 2, VAR_BATTLE_HALL_CHALLENGE_TYPE, VAR_RESULT
    BufferSpeciesNameFromVar 0, VAR_RESULT, 0, 0
    GoToIfEq VAR_RESULT, VAR_MAP_LOCAL_1, BattleHall_HealAndSaveBeforeChallenge
    GoTo BattleHall_TryToDeleteOngoingStreak
    End

BattleHall_TryToDeleteOngoingStreak:
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
    GoTo BattleHall_HealAndSaveBeforeChallenge
    End

BattleHall_HealAndSaveBeforeChallenge:
    GoTo _04FC
    End

_04FC:
    CallIfEq VAR_BATTLE_HALL_CHALLENGE_TYPE, FRONTIER_CHALLENGE_SINGLE, BattleHall_SetChallengeAsInProgress
    CallIfEq VAR_BATTLE_HALL_CHALLENGE_TYPE, FRONTIER_CHALLENGE_DOUBLE, BattleHall_SetChallengeAsInProgress
    SetVar VAR_MAP_LOCAL_0, 0
    HealParty
    Common_SaveGame
    SetVar VAR_RESULT, VAR_MAP_LOCAL_0
    GoToIfEq VAR_RESULT, 0, BattleHall_EndChallenge
    GoToIfEq VAR_BATTLE_HALL_CHALLENGE_TYPE, FRONTIER_CHALLENGE_MULTI, BattleHall_StartWifiCommunication
    GoTo BattleHall_WalkIntoCorridor
    End

BattleHall_StartWifiCommunication:
    Message BattleHall_Text_BecomeLeaderOrJoinGroup
    InitGlobalTextMenu 30, 1, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm MenuEntries_Text_BattleTower_JoinGroup, 0
    AddMenuEntryImm MenuEntries_Text_BattleTower_BecomeLeader, 1
    AddMenuEntryImm MenuEntries_Text_Exit, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, BattleHall_LaunchWifiToJoinGroup
    GoToIfEq VAR_0x8008, 1, BattleHall_LaunchWifiToBecomeLeader
    GoTo BattleHall_EndChallenge
    End

BattleHall_LaunchWifiToJoinGroup:
    Message BattleHall_Text_NeedToLaunchWifiComm
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, BattleHall_StartWifiCommunication
    CloseMessage
    StartBattleClient 30, 0, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_CANCEL, BattleHall_CancelJoiningGroup
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_ERROR, BattleHall_ErrorJoiningGroup
    GoTo BattleHall_StartMultiChallenge
    End

BattleHall_CancelJoiningGroup:
    GoTo BattleHall_StartWifiCommunication
    End

BattleHall_ErrorJoiningGroup:
    EndCommunication
    GoTo BattleHall_StartWifiCommunication
    End

BattleHall_LaunchWifiToBecomeLeader:
    Message BattleHall_Text_NeedToLaunchWifiComm
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, BattleHall_StartWifiCommunication
    CloseMessage
    StartBattleServer 30, 0, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_CANCEL, BattleHall_CancelBecomingLeader
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_ERROR, BattleHall_ErrorBecomingLeader
    GoTo BattleHall_StartMultiChallenge
    End

BattleHall_CancelBecomingLeader:
    GoTo BattleHall_StartWifiCommunication
    End

BattleHall_ErrorBecomingLeader:
    EndCommunication
    GoTo BattleHall_StartWifiCommunication
    End

BattleHall_StartMultiChallenge:
    ClearReceivedTempDataAllPlayers
    ScrCmd_135 108
    BattleHallCheckUsingSameSpeciesAsPartner VAR_MAP_LOCAL_1, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, BattleHall_MultiChallengeMustUseSamePokemon
    ClearReceivedTempDataAllPlayers
    ScrCmd_135 110
    Message BattleHall_Text_MustSaveFirst
    CallIfEq VAR_BATTLE_HALL_CHALLENGE_TYPE, FRONTIER_CHALLENGE_MULTI, BattleHall_SetChallengeAsInProgress
    Call BattleHall_SaveGame
    GoTo BattleHall_WalkIntoCorridor
    End

BattleHall_SetChallengeAsInProgress:
    SetVar VAR_BATTLE_HALL_LOBBY_LOAD_ACTION, 0xFF
    Return

BattleHall_MultiChallengeMustUseSamePokemon:
    Call _068C
    Message BattleHall_Text_MultiChallengeMustUseSamePokemon
    GoTo BattleHall_EndChallenge
    End

_068C:
    EndCommunication
    Return

BattleHall_WalkIntoCorridor:
    CallIfEq VAR_BATTLE_HALL_CHALLENGE_TYPE, FRONTIER_CHALLENGE_SINGLE, BattleHall_WalkToStartSingleBattle
    CallIfEq VAR_BATTLE_HALL_CHALLENGE_TYPE, FRONTIER_CHALLENGE_DOUBLE, BattleHall_WalkToStartDoubleBattle
    CallIfEq VAR_BATTLE_HALL_CHALLENGE_TYPE, FRONTIER_CHALLENGE_MULTI, BattleHall_WalkToStartMultiBattle
    PlayFanfare SEQ_SE_DP_KAIDAN2
    GoTo BattleHall_SetupAndRunFrontierScript
    End

BattleHall_SetupAndRunFrontierScript:
    FadeScreenOut
    WaitFadeScreen
    CallIfEq VAR_BATTLE_HALL_CHALLENGE_TYPE, FRONTIER_CHALLENGE_SINGLE, _078C
    CallIfEq VAR_BATTLE_HALL_CHALLENGE_TYPE, FRONTIER_CHALLENGE_DOUBLE, _07A0
    CallIfEq VAR_BATTLE_HALL_CHALLENGE_TYPE, FRONTIER_CHALLENGE_MULTI, _07B4
    IncrementGameRecord RECORD_UNK_058
    CreateJournalEvent LOCATION_EVENT_BATTLE_HALL, 0, 0, 0, 0
    WaitForTransition
    ScrCmd_2C4 9
    CallIfEq VAR_BATTLE_HALL_CHALLENGE_TYPE, FRONTIER_CHALLENGE_MULTI, _072C
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    AssertHeapMemory
    End

_072C:
    EndCommunication
    Return

BattleHall_WalkToStartSingleBattle:
    Message BattleHall_Text_ThisWayPlease
    WaitABPress
    CloseMessage
    ApplyMovement LOCALID_PLAYER, Movement_PlayerStartChallenge
    ApplyMovement VAR_LAST_TALKED, Movement_AttendantStartChallenge
    WaitMovement
    Return

BattleHall_WalkToStartDoubleBattle:
    Message BattleHall_Text_ThisWayPlease
    WaitABPress
    CloseMessage
    ApplyMovement LOCALID_PLAYER, Movement_PlayerStartChallenge
    ApplyMovement VAR_LAST_TALKED, Movement_AttendantStartChallenge
    WaitMovement
    Return

BattleHall_WalkToStartMultiBattle:
    MessageNoSkip 9
    WaitTime 10, VAR_RESULT
    ClearReceivedTempDataAllPlayers
    ScrCmd_135 109
    CloseMessage
    ApplyMovement LOCALID_PLAYER, Movement_PlayerStartChallengeMulti
    ApplyMovement VAR_LAST_TALKED, Movement_AttendantStartChallengeMulti
    WaitMovement
    Return

_078C:
    ApplyMovement LOCALID_PLAYER, _0824
    ApplyMovement VAR_LAST_TALKED, _0854
    WaitMovement
    Return

_07A0:
    ApplyMovement LOCALID_PLAYER, _0824
    ApplyMovement VAR_LAST_TALKED, _0854
    WaitMovement
    Return

_07B4:
    ApplyMovement LOCALID_PLAYER, _0838
    ApplyMovement VAR_LAST_TALKED, _0864
    WaitMovement
    Return

BattleHall_ShowGriseousOrbErrorAndExit:
    SetVar VAR_BATTLE_HALL_LOBBY_LOAD_ACTION, 0
    Common_GriseousOrbCouldNotBeRemoved
    End

    .balign 4, 0
Movement_PlayerStartChallenge:
    WalkNormalWest 4
    WalkNormalSouth 3
    SetInvisible
    EndMovement

    .balign 4, 0
Movement_PlayerStartChallengeMulti:
    WalkNormalWest 2
    WalkNormalNorth
    WalkNormalWest 2
    WalkNormalSouth 3
    SetInvisible
    EndMovement

    .balign 4, 0
Movement_AttendantStartChallenge:
    WalkNormalWest 3
    WalkNormalSouth 3
    SetInvisible
    EndMovement

    .balign 4, 0
Movement_AttendantStartChallengeMulti:
    WalkNormalWest
    WalkNormalNorth
    WalkNormalWest 2
    WalkNormalSouth 3
    SetInvisible
    EndMovement

    .balign 4, 0
_0824:
    WalkFasterEast 4
    WalkFasterNorth 3
    FaceWest
    SetVisible
    EndMovement

    .balign 4, 0
_0838:
    WalkFasterEast 2
    WalkFasterSouth
    WalkFasterEast 2
    WalkFasterNorth 3
    FaceWest
    SetVisible
    EndMovement

    .balign 4, 0
_0854:
    WalkFasterNorth 3
    WalkFasterEast 3
    SetVisible
    EndMovement

    .balign 4, 0
_0864:
    WalkFasterNorth 2
    WalkFasterEast 3
    SetVisible
    EndMovement

BattleHall_PrintSingleChallengeWelcome:
    Message BattleHall_Text_WelcomeToSingleChallenge
    Return

BattleHall_PrintMultiChallengeWelcome:
    Message BattleHall_Text_WelcomeToMultiChallenge
    Return

BattleHall_GenerateSingleChallengeMenu:
    InitLocalTextMenu 31, 9, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm BattleHall_Text_SingleBattle, 0
    AddMenuEntryImm BattleHall_Text_DoubleBattle, 1
    Message BattleHall_Text_SelectChallenge
    Return

BattleHall_GenerateMultiChallengeMenu:
    InitLocalTextMenu 31, 11, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm BattleHall_Text_TakeChallenge, 4
    Message BattleHall_Text_AcceptMultiChallenge
    Return

BattleHall_PrintSingleChallengeInfo:
    Message BattleHall_Text_SingleChallengeInfo
    Return

BattleHall_PrintMultiChallengeInfo:
    Message BattleHall_Text_MultiChallengeInfo
    Return

BattleHall_ResumeChallenge:
    RecordHeapMemory
    SetVar VAR_MAP_LOCAL_3, 1
    SetVar VAR_BATTLE_HALL_LOBBY_LOAD_ACTION, 0
    Message BattleHall_Text_MustSaveBeforeResuming
    Call BattleHall_SetChallengeAsInProgress
    Call BattleHall_SaveGame
    GoTo BattleHall_WalkIntoCorridor
    End

BattleHall_SaveGame:
    ShowSavingIcon
    TrySaveGame VAR_RESULT
    HideSavingIcon
    PlayFanfare SEQ_SE_DP_SAVE
    WaitFanfare SEQ_SE_DP_SAVE
    Return

BattleHall_DidntSaveBeforeQuit:
    Message BattleHall_Text_DidntSaveBeforeQuit
    ScrCmd_2D1 VAR_BATTLE_HALL_CHALLENGE_TYPE
    GoTo BattleHall_EndChallenge
    End

BattleHall_ChallengeEndedBPEarned:
    CallIfEq VAR_BATTLE_HALL_CHALLENGE_TYPE, FRONTIER_CHALLENGE_SINGLE, BattleHall_IncrementTrainerScore
    CallIfEq VAR_BATTLE_HALL_CHALLENGE_TYPE, FRONTIER_CHALLENGE_DOUBLE, BattleHall_IncrementTrainerScore
    CallIfEq VAR_BATTLE_HALL_PRINT_STATE, 1, BattleHall_SilverPrintEarned
    CallIfEq VAR_BATTLE_HALL_PRINT_STATE, 3, BattleHall_GoldPrintEarned
    GoTo BattleHall_EndChallenge
    End

BattleHall_IncrementTrainerScore:
    IncrementTrainerScore TRAINER_SCORE_EVENT_BATTLE_HALL_ROUND_COMPLETED
    Return

BattleHall_SilverPrintEarned:
    Message BattleHall_Text_YouveEarnedAPrint
    BufferPlayerName 0
    Message BattleHall_Text_SilverPrintAdded
    PlaySound SEQ_FANFA4
    WaitSound
    SetVar VAR_BATTLE_HALL_PRINT_STATE, 2
    Return

BattleHall_GoldPrintEarned:
    Message BattleHall_Text_YouveEarnedAPrint
    BufferPlayerName 0
    Message BattleHall_Text_GoldPrintAdded
    PlaySound SEQ_FANFA4
    WaitSound
    SetVar VAR_BATTLE_HALL_PRINT_STATE, 4
    Common_CheckAllFrontierGoldPrintsObtained
    Return

BattleHall_ChallengeEnded:
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
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message BattleHall_Text_StartWithHardMatchups
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

BattleHall_SnowpointNPC:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message BattleHall_Text_TryForARecord
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

BattleHall_Twin:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message BattleHall_Text_PachirisusACutie
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

BattleHall_Pachirisu:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_PACHIRISU
    Message BattleHall_Text_Pachirisu
    WaitCry
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

BattleHall_ExpertM:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message BattleHall_Text_TryDifferentPokemon
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

BattleHall_Idol:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message BattleHall_Text_TrySameSpeciesDifferentMoves
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

BattleHall_PokefanF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message BattleHall_Text_CroagunkHasTwoTypes
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

BattleHall_Maid:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message BattleHall_Text_MysteriousMaid
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

BattleHall_BugCatcher:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message BattleHall_Text_CompeteWithAFriend
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

BattleHall_RecordKeeper:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfUnset FLAG_SPOKEN_TO_BATTLE_HALL_RECORD_KEEPER, BattleHall_RecordKeeperIntro
    GetBattleHallRecordKeeperStats 1, 2, 3, 4, VAR_BATTLE_HALL_NEXT_TOTAL_RECORD_MILESTONE, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, BattleHall_RecordKeeperReplayIntro
    GoToIfEq VAR_RESULT, 2, BattleHall_RecordKeeperNextMilestoneInfo
    GoToIfEq VAR_RESULT, 3, BattleHall_RecordKeeperAllMilestonesMet
    BufferPlayerName 0
    Message BattleHall_Text_StreakIsPresentlyX
    Message BattleHall_Text_BPRewardForStreak
    PlaySound SEQ_PL_POINTGET3
    Message BattleHall_Text_PlayerReceivedBP
    WaitSound
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
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

BattleHall_SerenaWinston:
    PlayFanfare SEQ_SE_CONFIRM
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
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

BattleHall_WinstonSerena:
    PlayFanfare SEQ_SE_CONFIRM
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
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

BattleHall_MajorNPC:
    PlayFanfare SEQ_SE_CONFIRM
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
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
