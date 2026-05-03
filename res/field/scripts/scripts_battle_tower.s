#include "macros/scrcmd.inc"
#include "res/text/bank/battle_tower.h"
#include "res/text/bank/menu_entries.h"
#include "res/field/events/events_battle_tower.h"
#include "generated/goods.h"


    ScriptEntry BattleTower_SingleAttendant
    ScriptEntry BattleTower_MultiAttendant
    ScriptEntry BattleTower_WiFiAttendant
    ScriptEntry BattleTower_OnFrameChallengeEnded
    ScriptEntry BattleTower_OnFrameResumeChallenge
    ScriptEntry BattleTower_OnFrameDidntSaveBeforeQuit
    ScriptEntry BattleTower_Teala
    ScriptEntry BattleTower_OnFrameQuitBattleSalon
    ScriptEntry BattleTower_Unused9
    ScriptEntry BattleTower_Unused10
    ScriptEntry BattleTower_Unused11
    ScriptEntry BattleTower_MachineWiFiResults
    ScriptEntry BattleTower_MachineWiFiLeaders
    ScriptEntry BattleTower_ParasolLady
    ScriptEntry BattleTower_Jogger
    ScriptEntry BattleTower_Idol
    ScriptEntry BattleTower_RichBoy
    ScriptEntry BattleTower_Pikachu1
    ScriptEntry BattleTower_Artist
    ScriptEntry BattleTower_SchoolKidM1
    ScriptEntry BattleTower_Pikachu2
    ScriptEntry BattleTower_OnTransition
    ScriptEntry BattleTower_OnResume
    ScriptEntry BattleTower_StatsJudge
    ScriptEntryEnd

BattleTower_OnTransition:
    CallIfEq VAR_BATTLE_TOWER_LOBBY_LOAD_ACTION, 1, BattleTower_ShowPoketch
    CallIfEq VAR_BATTLE_TOWER_LOBBY_LOAD_ACTION, 3, BattleTower_ShowPoketch
    CallIfEq VAR_BATTLE_TOWER_LOBBY_LOAD_ACTION, 0xFF, BattleTower_ShowPoketch
    CheckTVInterviewEligible TV_PROGRAM_SEGMENT_BATTLE_FRONTIER_FRONTLINE_NEWS_MULTI, VAR_MAP_LOCAL_0
    CallIfEq VAR_MAP_LOCAL_0, FALSE, BattleTower_HideBattleFrontierReporter
    CallIfNe VAR_MAP_LOCAL_0, FALSE, BattleTower_ShowBattleFrontierReporter
    ScrCmd_1E0 VAR_MAP_LOCAL_0
    GoToIfNe VAR_MAP_LOCAL_0, 0, BattleTower_ShowTealaTryShowReporter
    SetFlag FLAG_HIDE_BATTLE_TOWER_TEALA
    GoTo BattleTower_TryShowBattleTowerReporter
    End

BattleTower_TryShowBattleTowerReporter:
    CheckTVInterviewEligible TV_PROGRAM_SEGMENT_BATTLE_TOWER_CORNER, VAR_MAP_LOCAL_0
    GoToIfNe VAR_MAP_LOCAL_0, FALSE, BattleTower_ShowReporter
    SetFlag FLAG_HIDE_BATTLE_TOWER_REPORTER
    End

BattleTower_ShowTealaTryShowReporter:
    ClearFlag FLAG_HIDE_BATTLE_TOWER_TEALA
    GoTo BattleTower_TryShowBattleTowerReporter
    End

BattleTower_ShowReporter:
    ClearFlag FLAG_HIDE_BATTLE_TOWER_REPORTER
    End

BattleTower_ShowPoketch:
    ShowPoketch
    Return

BattleTower_OnResume:
    GoToIfNe VAR_BATTLE_TOWER_LOBBY_LOAD_ACTION, 1, BattleTower_OnResumeEnd
    ScrCmd_1E0 VAR_MAP_LOCAL_0
    GoToIfNe VAR_MAP_LOCAL_0, 0, BattleTower_SetTealaDirectionWest
    GoToIfEq VAR_MAP_LOCAL_0, 1, BattleTower_SetTealaDirectionWest
    GoToIfEq VAR_MAP_LOCAL_0, 2, BattleTower_SetTealaDirectionWest
    GoToIfEq VAR_MAP_LOCAL_0, 3, BattleTower_SetTealaDirectionWest
BattleTower_OnResumeEnd:
    End

BattleTower_SetTealaDirectionWest:
    ScrCmd_18C LOCALID_TEALA, DIR_WEST
    End

BattleTower_HideBattleFrontierReporter:
    SetFlag FLAG_HIDE_BATTLE_FRONTIER_REPORTER
    Return

BattleTower_ShowBattleFrontierReporter:
    ClearFlag FLAG_HIDE_BATTLE_FRONTIER_REPORTER
    Return

BattleTower_Unused:
    InitBattleTower 0, BATTLE_TOWER_MODE_DOUBLE
    Return

BattleTower_SetVarsStartChallenge:
    SetVar VAR_BATTLE_TOWER_LOBBY_LOAD_ACTION, 0xFF
    SetVar VAR_BATTLE_TOWER_ELEVATOR_LOAD_ACTION, 1
    SetVar VAR_BATTLE_TOWER_CORRIDOR_LOAD_ACTION, 1
    SetVar VAR_BATTLE_TOWER_BATTLE_ROOM_LOAD_ACTION, 1
    Return

BattleTower_SetVarsStartMultiChallenge:
    SetVar VAR_BATTLE_TOWER_LOBBY_LOAD_ACTION, 0xFF
    SetVar VAR_BATTLE_TOWER_ELEVATOR_LOAD_ACTION, 3
    SetVar VAR_BATTLE_TOWER_CORRIDOR_MULTI_LOAD_ACTION, 1
    SetVar VAR_BATTLE_TOWER_MULTI_BATTLE_ROOM_LOAD_ACTION, 1
    SetVar VAR_BATTLE_TOWER_BATTLE_SALON_STATE, 1
    Return

BattleTower_SetVarsResumeChallenge:
    SetVar VAR_BATTLE_TOWER_LOBBY_LOAD_ACTION, 0xFF
    SetVar VAR_BATTLE_TOWER_ELEVATOR_LOAD_ACTION, 1
    SetVar VAR_BATTLE_TOWER_CORRIDOR_LOAD_ACTION, 1
    SetVar VAR_BATTLE_TOWER_BATTLE_ROOM_LOAD_ACTION, 2
    Return

BattleTower_Teala:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar VAR_MAP_LOCAL_1, 0
    ScrCmd_1DF VAR_MAP_LOCAL_2
    GoTo BattleTower_TryGiveTrophy
    End

BattleTower_TryGiveTrophy:
    SetVar VAR_0x8008, VAR_MAP_LOCAL_2
    GoToIfEq VAR_0x8008, 1, BattleTower_GiveBronzeTrophy
    GoToIfEq VAR_0x8008, 2, BattleTower_GiveSilverTrophy
    GoToIfEq VAR_0x8008, 3, BattleTower_GiveGoldTrophy
    GoToIfEq VAR_0x8008, 4, BattleTower_NoRoomForGoods
    Message BattleTower_Text_HopeToSeeYouAgain2
    GoTo BattleTower_TealaEnd
    End

BattleTower_TealaEnd:
    WaitABPress
    GoToIfEq VAR_MAP_LOCAL_1, 1, BattleTower_TealaClearCommunication
    CloseMessage
    ReleaseAll
    End

BattleTower_TealaClearCommunication:
    Call BattleTower_ClearCommunication
    GoTo BattleTower_End
    End

BattleTower_NoRoomForGoods:
    Message BattleTower_Text_NoRoomForGoods
    GoTo BattleTower_TealaEnd
    End

BattleTower_GiveBronzeTrophy:
    BufferNumber 0, 20
    SetVar VAR_0x8004, UG_GOOD_BRONZE_TROPHY
    GoTo BattleTower_GiveTrophy
    End

BattleTower_GiveSilverTrophy:
    BufferNumber 0, 50
    SetVar VAR_0x8004, UG_GOOD_SILVER_TROPHY
    GoTo BattleTower_GiveTrophy
    End

BattleTower_GiveGoldTrophy:
    BufferNumber 0, 100
    SetVar VAR_0x8004, UG_GOOD_GOLD_TROPHY
    GoTo BattleTower_GiveTrophy
    End

BattleTower_GiveTrophy:
    Message BattleTower_Text_TrophyForWinStreak
    SetVar VAR_0x8005, 1
    Common_SendToUndergroundPCWithLinefeed
    Message BattleTower_Text_HopeToSeeYouAgain2
    GoTo BattleTower_TealaEnd
    End

BattleTower_SingleAttendant:
    LockAll
    PlaySE SEQ_SE_CONFIRM
    SetBattleTowerNull
    Message BattleTower_Text_WelcomeToSingleDoubleBattleRooms
    GoTo BattleTower_AskTakeChallenge
    End

BattleTower_AskTakeChallenge:
    Message BattleTower_Text_AskTakeChallenge
    Call BattleTower_InitMenuTakeChallenge
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, BattleTower_SelectChallenge
    GoToIfEq VAR_0x8008, 1, BattleTower_ExplainSingleDoubleChallenge
    GoToIfEq VAR_0x8008, 2, BattleTower_HopeToSeeYouAgain
    GoTo BattleTower_HopeToSeeYouAgain
    End

BattleTower_ExplainSingleDoubleChallenge:
    Message BattleTower_Text_ExplainSingleDoubleChallenge
    GoTo BattleTower_AskTakeChallenge
    End

BattleTower_InitMenuTakeChallenge:
    InitGlobalTextMenu 31, 11, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm MenuEntries_Text_BattleTower_Challenge, 0
    AddMenuEntryImm MenuEntries_Text_BattleTower_Info, 1
    AddMenuEntryImm MenuEntries_Text_BattleTower_Exit, 2
    ShowMenu
    Return

BattleTower_SelectChallenge:
    Message BattleTower_Text_SingleOrDoubleBattleRoom
    InitGlobalTextMenu 31, 11, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm MenuEntries_Text_SingleBattle, 0
    AddMenuEntryImm MenuEntries_Text_DoubleBattle, 1
    AddMenuEntryImm MenuEntries_Text_BattleTower_Cancel, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, BattleTower_InitSingleChallenge
    GoToIfEq VAR_0x8008, 1, BattleTower_InitDoubleChallenge
    GoToIfEq VAR_0x8008, 2, BattleTower_HopeToSeeYouAgain
    GoTo BattleTower_HopeToSeeYouAgain
    End

BattleTower_InitSingleChallenge:
    InitBattleTower 0, BATTLE_TOWER_MODE_SINGLE
    GoTo BattleTower_CheckEnoughEligiblePokemonSingleChallenge
    End

BattleTower_CheckEnoughEligiblePokemonSingleChallenge:
    CallBattleTowerFunction BT_FUNC_CHECK_ENOUGH_VALID_POKEMON, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, BattleTower_SelectAndValidatePokemon
    MessageSeenBanlistSpecies BattleTower_Text_Banlist, 3
    GoTo BattleTower_WaitButton
    End

BattleTower_InitDoubleChallenge:
    InitBattleTower 0, BATTLE_TOWER_MODE_DOUBLE
    CallBattleTowerFunction BT_FUNC_CHECK_ENOUGH_VALID_POKEMON, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, BattleTower_SelectAndValidatePokemon
    MessageSeenBanlistSpecies BattleTower_Text_Banlist, 4
    GoTo BattleTower_WaitButton
    End

BattleTower_SelectAndValidatePokemon:
    Message BattleTower_Text_SelectPokemonToEnter
    Call BattleTower_SelectPokemon
    GoToIfEq VAR_RESULT, 0, BattleTower_HopeToSeeYouAgain
    CallBattleTowerFunction BT_FUNC_CHECK_DUPLICATE_SPECIES_AND_HELD_ITEMS, 0, VAR_RESULT
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 1, BattleTower_SelectedTwoIdenticalSpecies
    GoToIfEq VAR_0x8008, 2, BattleTower_SelectedTwoIdenticalHeldItems
    CallBattleTowerFunction BT_FUNC_GET_SLOT_INDEX, 0, VAR_RESULT
    TryRevertPokemonForm VAR_RESULT, VAR_RESULT
    GoToIfEq VAR_RESULT, 0xFF, BattleTower_GriseousOrbCouldNotBeRemoved
    CallBattleTowerFunction BT_FUNC_GET_SLOT_INDEX, 1, VAR_RESULT
    TryRevertPokemonForm VAR_RESULT, VAR_RESULT
    GoToIfEq VAR_RESULT, 0xFF, BattleTower_GriseousOrbCouldNotBeRemoved
    CallBattleTowerFunction BT_FUNC_GET_SLOT_INDEX, 2, VAR_RESULT
    TryRevertPokemonForm VAR_RESULT, VAR_RESULT
    GoToIfEq VAR_RESULT, 0xFF, BattleTower_GriseousOrbCouldNotBeRemoved
    CallBattleTowerFunction BT_FUNC_GET_CHALLENGE_MODE, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, BATTLE_TOWER_MODE_WIFI, BattleTower_HealAndSaveBeforeWiFiChallenge
    GoTo BattleTower_HealAndSaveBeforeEnteringBattleRoom
    End

BattleTower_HealAndSaveBeforeEnteringBattleRoom:
    Call BattleTower_SetVarsStartChallenge
    CallBattleTowerFunction BT_FUNC_SET_COMMUNICATION_CLUB_ACCESSIBLE, 0, 0
    HealParty
    Call BattleTower_SaveGame
    GoToIfEq VAR_RESULT, 0, BattleTower_ClearCommunicationAndEnd
    CallBattleTowerFunction BT_FUNC_UNK_57, 0, VAR_RESULT
    CallBattleTowerFunction BT_FUNC_UNK_52, 0, 0
    Message BattleTower_Text_ShowYouToBattleRoom
    WaitABPress
    GoTo BattleTower_EnterBattleRoom
    End

BattleTower_SaveGame:
    Common_SaveGame
    SetVar VAR_RESULT, VAR_MAP_LOCAL_0
    Return

BattleTower_SelectedTwoIdenticalSpecies:
    Message BattleTower_Text_PokemonMustAllBeDifferent
    GoTo BattleTower_HopeToSeeYouAgain
    End

BattleTower_SelectedTwoIdenticalHeldItems:
    Message BattleTower_Text_ItemsMustAllBeDifferent
    GoTo BattleTower_HopeToSeeYouAgain
    End

BattleTower_SelectPokemon:
    FadeScreenOut
    WaitFadeScreen
    CloseMessage
    CallBattleTowerFunction BT_FUNC_UNK_30, 0, 0
    ReturnToField
    CallBattleTowerFunction BT_FUNC_UNK_31, 0, VAR_RESULT
    FadeScreenIn
    WaitFadeScreen
    Return

BattleTower_OnFrameResumeChallenge:
    LockAll
    SetVar VAR_BATTLE_TOWER_LOBBY_LOAD_ACTION, 0
    CallBattleTowerFunction BT_FUNC_UNK_04, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, BattleTower_OnFrameDidntSaveBeforeQuit
    Message BattleTower_Text_SaveBeforeEntering
    InitBattleTower 1, 0xFFFF
    CallBattleTowerFunction BT_FUNC_GET_CHALLENGE_MODE, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, BATTLE_TOWER_MODE_MULTI, BattleTower_HealAndSaveBeforeEnteringMultiBattleRoom
    Call BattleTower_SetVarsResumeChallenge
    CallBattleTowerFunction BT_FUNC_SET_COMMUNICATION_CLUB_ACCESSIBLE, 0, 0
    Call BattleTower_TrySaveGame
    Message BattleTower_Text_ShowYouToBattleRoom
    WaitABPress
    GoTo BattleTower_EnterBattleRoom
    End

BattleTower_HealAndSaveBeforeEnteringMultiBattleRoom:
    Call BattleTower_SetVarsResumeMultiChallenge
    CallBattleTowerFunction BT_FUNC_SET_COMMUNICATION_CLUB_ACCESSIBLE, 0, 0
    Call BattleTower_TrySaveGame
    CallBattleTowerFunction BT_FUNC_GET_PARTNER_ID, 0, VAR_RESULT
    SetVar VAR_MAP_LOCAL_9, VAR_RESULT
    Message BattleTower_Text_DirectToMultiBattleRoom
    WaitABPress
    GoTo BattleTower_EnterBattleRoom
    End

BattleTower_SetVarsResumeMultiChallenge:
    SetVar VAR_BATTLE_TOWER_LOBBY_LOAD_ACTION, 0xFF
    SetVar VAR_BATTLE_TOWER_ELEVATOR_LOAD_ACTION, 2
    SetVar VAR_BATTLE_TOWER_CORRIDOR_MULTI_LOAD_ACTION, 1
    SetVar VAR_BATTLE_TOWER_MULTI_BATTLE_ROOM_LOAD_ACTION, 2
    SetVar VAR_BATTLE_TOWER_BATTLE_SALON_STATE, 0
    Return

BattleTower_OnFrameDidntSaveBeforeQuit:
    LockAll
    Message BattleTower_Text_DidntSaveBeforeQuit
    CallBattleTowerFunction BT_FUNC_UNK_14, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 4, BattleTower_DidntSaveCheckDemoted
    GoTo BattleTower_ClearCommunicationAndEnd
    End

BattleTower_DidntSaveCheckDemoted:
    CallBattleTowerFunction BT_FUNC_UNK_09, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, BattleTower_ClearCommunicationAndEnd
    CallBattleTowerFunction BT_FUNC_UNK_10, 0, VAR_RESULT
    SetVar VAR_0x8000, VAR_RESULT
    BufferNumber 0, VAR_0x8000
    Message BattleTower_Text_DemotedToRank
    GoTo BattleTower_ClearCommunicationAndEnd
    End

BattleTower_EnterBattleRoom:
    CloseMessage
    CallBattleTowerFunction BT_FUNC_GET_CHALLENGE_MODE, 0, VAR_RESULT
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, BATTLE_TOWER_MODE_WIFI, BattleTower_EnterWiFiBattleRoom
    GoToIfEq VAR_0x8008, BATTLE_TOWER_MODE_5, BattleTower_EnterWiFiBattleRoom
    GoToIfEq VAR_0x8008, BATTLE_TOWER_MODE_MULTI, BattleTower_EnterMultiBattleRoom
    GoToIfEq VAR_0x8008, BATTLE_TOWER_MODE_LINK_MULTI, BattleTower_EnterLinkMultiBattleRoom
    GoTo BattleTower_EnterSingleDoubleBattleRoom
    End

BattleTower_EnterSingleDoubleBattleRoom:
    SetVar VAR_MAP_LOCAL_2, 0
    SetVar VAR_MAP_LOCAL_3, 15
    Call BattleTower_EnterBattleRoomAnimation
    GoTo BattleTower_WarpToElevator
    End

BattleTower_EnterWiFiBattleRoom:
    SetVar VAR_MAP_LOCAL_2, 2
    SetVar VAR_MAP_LOCAL_3, 19
    Call BattleTower_EnterBattleRoomAnimation
    GoTo BattleTower_WarpToElevator
    End

BattleTower_EnterMultiBattleRoom:
    SetVar VAR_MAP_LOCAL_2, 1
    SetVar VAR_MAP_LOCAL_3, 11
    Call BattleTower_EnterBattleRoomAnimation
    GoTo BattleTower_GoToWarpToElevator
    End

BattleTower_EnterLinkMultiBattleRoom:
    SetVar VAR_MAP_LOCAL_2, 1
    SetVar VAR_MAP_LOCAL_3, 11
    Call BattleTower_EnterBattleRoomAnimation
    GoTo _06A0
    End

_06A0:
    SetVar VAR_BATTLE_TOWER_ELEVATOR_LOAD_ACTION, 2
    GoTo BattleTower_WarpToElevator
    End

BattleTower_EnterBattleRoomAnimation:
    ApplyMovement VAR_MAP_LOCAL_2, BattleTower_Movement_AttendantWalkToDoor
    ApplyMovement LOCALID_PLAYER, BattleTower_Movement_PlayerWalkToDoor
    WaitMovement
    LoadDoorAnimation 0, 0, VAR_MAP_LOCAL_3, 2, ANIMATION_TAG_DOOR_1
    PlayDoorOpenAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    ApplyMovement VAR_MAP_LOCAL_2, BattleTower_Movement_AttendantEnterBattleRoom
    ApplyMovement LOCALID_PLAYER, BattleTower_Movement_PlayerEnterBattleRoom
    WaitMovement
    PlayDoorCloseAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    UnloadAnimation ANIMATION_TAG_DOOR_1
    Return

BattleTower_GoToWarpToElevator:
    GoTo BattleTower_WarpToElevator
    End

BattleTower_OnFrameQuitBattleSalon:
    LockAll
    Call BattleTower_ResetVarsClearCommunication
    CallBattleTowerFunction BT_FUNC_CHECK_IS_NULL, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, BattleTower_HopeToSeeYouAgain
    Message BattleTower_Text_SavingDontTurnOffPower2
    Call BattleTower_TrySaveGame
    GoTo BattleTower_ClearCommunicationAndEnd
    End

BattleTower_ResetVarsClearCommunication:
    Call BattleTower_ResetBattleTowerVars
    CallBattleTowerFunction BT_FUNC_CLEAR_COMMUNICATION_CLUB_ACCESSIBLE, 0, 0
    Return

BattleTower_TrySaveGame:
    ShowSavingIcon
    TrySaveGame VAR_RESULT
    HideSavingIcon
    PlaySE SEQ_SE_DP_SAVE
    WaitSE SEQ_SE_DP_SAVE
    Return

BattleTower_WarpToElevator:
    IncrementGameRecord RECORD_TIMES_STARTED_BATTLE_FRONTIER_CHALLENGE
    CreateJournalEvent LOCATION_EVENT_BATTLE_TOWER, 0, 0, 0, 0
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_BATTLE_TOWER_ELEVATOR, 0, 3, 6, DIR_NORTH
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

BattleTower_ClearCommunicationAndEnd:
    Call BattleTower_ClearCommunication
BattleTower_HopeToSeeYouAgain:
    Message BattleTower_Text_HopeToSeeYouAgain
BattleTower_WaitButton:
    WaitButton
BattleTower_End:
    CloseMessage
    Call BattleTower_FreeBattleTower
    Call BattleTower_ResetBattleTowerVars
    ReleaseAll
    End

BattleTower_ClearCommunication:
    CallBattleTowerFunction BT_FUNC_CLEAR_COMMUNICATION_CLUB_ACCESSIBLE, 0, 0
    Call _07AB
    Return

_07AB:
    CallBattleTowerFunction BT_FUNC_UNK_03, 0, 0
    Return

BattleTower_FreeBattleTower:
    FreeBattleTower
    Return

BattleTower_ResetBattleTowerVars:
    SetVar VAR_BATTLE_TOWER_LOBBY_LOAD_ACTION, 0
    SetVar VAR_BATTLE_TOWER_ELEVATOR_LOAD_ACTION, 0
    SetVar VAR_BATTLE_TOWER_CORRIDOR_LOAD_ACTION, 0
    SetVar VAR_BATTLE_TOWER_CORRIDOR_MULTI_LOAD_ACTION, 0
    SetVar VAR_BATTLE_TOWER_BATTLE_ROOM_LOAD_ACTION, 0
    SetVar VAR_BATTLE_TOWER_MULTI_BATTLE_ROOM_LOAD_ACTION, 0
    SetVar VAR_BATTLE_TOWER_BATTLE_SALON_STATE, 0
    Return

BattleTower_WiFiAttendant:
    LockAll
    PlaySE SEQ_SE_CONFIRM
    SetBattleTowerNull
    CallBattleTowerFunction BT_FUNC_UNK_12, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, BattleTower_AskSendPreviousResults
    Message BattleTower_Text_WelcomeToWiFiBattleRooms
    GoTo BattleTower_GoToWiFiChallengeMenu
    End

BattleTower_GoToWiFiChallengeMenu:
    GoTo BattleTower_CheckWhichWiFiChallengeMenu
    End

BattleTower_CheckWhichWiFiChallengeMenu:
    CallBattleTowerFunction BT_FUNC_UNK_15, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, BattleTower_AskTakeWiFiOrEarlierChallenge
    GoTo BattleTower_AskTakeWiFiChallenge
    End

BattleTower_AskTakeWiFiChallenge:
    Message BattleTower_Text_AskTakeWiFiChallenge
    Call BattleTower_InitMenuWiFiChallenge
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, BattleTower_InitWiFiChallengeMode
    GoToIfEq VAR_0x8008, 1, BattleTower_CheckLeaders
    GoToIfEq VAR_0x8008, 2, BattleTower_ExplainWiFiBattleRoom
    GoToIfEq VAR_0x8008, 3, BattleTower_HopeToSeeYouAgain
    GoTo BattleTower_HopeToSeeYouAgain
    End

BattleTower_InitMenuWiFiChallenge:
    InitGlobalTextMenu 31, 9, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm MenuEntries_Text_BattleTower_Challenge, 0
    AddMenuEntryImm MenuEntries_Text_BattleTower_CheckLeaders, 1
    AddMenuEntryImm MenuEntries_Text_BattleTower_Info, 2
    AddMenuEntryImm MenuEntries_Text_BattleTower_Exit, 3
    ShowMenu
    Return

BattleTower_ExplainWiFiBattleRoom:
    Message BattleTower_Text_ExplainWiFiBattleRoom
    GoTo BattleTower_CheckWhichWiFiChallengeMenu
    End

BattleTower_AskTakeWiFiOrEarlierChallenge:
    Message BattleTower_Text_AskTakeWiFiChallenge
    Call BattleTower_InitMenuWiFiOrEarlierChallenge
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, BattleTower_InitWiFiChallengeMode
    GoToIfEq VAR_0x8008, 1, BattleTower_CheckLeaders
    GoToIfEq VAR_0x8008, 2, BattleTower_ChallengeEarlierRoom
    GoToIfEq VAR_0x8008, 3, BattleTower_ExplainWiFiBattleRoom
    GoToIfEq VAR_0x8008, 4, BattleTower_HopeToSeeYouAgain
    GoTo BattleTower_HopeToSeeYouAgain
    End

BattleTower_InitMenuWiFiOrEarlierChallenge:
    InitGlobalTextMenu 31, 7, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm MenuEntries_Text_BattleTower_Challenge, 0
    AddMenuEntryImm MenuEntries_Text_BattleTower_CheckLeaders, 1
    AddMenuEntryImm MenuEntries_Text_BattleTower_ChallengeEarlierRoom, 2
    AddMenuEntryImm MenuEntries_Text_BattleTower_Info, 3
    AddMenuEntryImm MenuEntries_Text_BattleTower_Exit, 4
    ShowMenu
    Return

BattleTower_AskSendPreviousResults:
    Message BattleTower_Text_AskSendPreviousResults
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, BattleTower_DontSendPreviousResults
    Call BattleTower_SaveGame
    GoToIfEq VAR_RESULT, 0, BattleTower_HopeToSeeYouAgain
    Call BattleTower_CallTrySendPreviousResults
    GoToIfNe VAR_RESULT, 0, BattleTower_HopeToSeeYouAgain
    Message BattleTower_Text_ResultsWereSent
    GoTo BattleTower_HopeToSeeYouAgain
    End

BattleTower_DontSendPreviousResults:
    GoTo BattleTower_GoToWiFiChallengeMenu
    End

BattleTower_CallTrySendPreviousResults:
    CloseMessage
    SetVar VAR_MAP_LOCAL_1, 1
    Call BattleTower_TrySendPreviousResults
    Return

BattleTower_TrySendPreviousResults:
    FadeScreenOut
    WaitFadeScreen
    ScrCmd_0B3 VAR_MAP_LOCAL_0
    CallBattleTowerFunction BT_FUNC_UNK_16, VAR_MAP_LOCAL_1, VAR_MAP_LOCAL_0
    SetVar VAR_MAP_LOCAL_1, VAR_MAP_LOCAL_0
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    SetVar VAR_RESULT, VAR_MAP_LOCAL_1
    Return

BattleTower_HealAndSaveBeforeWiFiChallenge:
    HealParty
    Call BattleTower_SaveGame
    GoToIfEq VAR_RESULT, 0, BattleTower_ClearCommunicationAndEnd
    Call BattleTower_SetVarsStartChallenge
    CallBattleTowerFunction BT_FUNC_SET_COMMUNICATION_CLUB_ACCESSIBLE, 0, 0
    HealParty
    CloseMessage
    SetVar VAR_MAP_LOCAL_1, 0
    Call BattleTower_TrySendPreviousResults
    GoToIfNe VAR_RESULT, 0, BattleTower_ClearCommunicationAndEnd
    GoTo _09FB
    End

_09FB:
    Message BattleTower_Text_DirectYouToBattleRoom
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, BattleTower_EnterBattleRoom
    Message BattleTower_Text_SaveAndInterruptChallenge
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _09FB
    SetVar VAR_BATTLE_TOWER_LOBBY_LOAD_ACTION, 2
    CallBattleTowerFunction BT_FUNC_UNK_39, 0, 0
    FreeBattleTower
    Message BattleTower_Text_SavingDontTurnOffPower2
    Call BattleTower_TrySaveGame
    WaitABPressTime 30
    FadeScreenOut
    WaitFadeScreen
    CloseMessage
    CallBattleTowerFunction BT_FUNC_RESET_SYSTEM, 0, 0
    ReleaseAll
    End

BattleTower_CheckLeaders:
    Call BattleTower_SaveGame
    GoToIfEq VAR_RESULT, 0, BattleTower_HopeToSeeYouAgain
    CloseMessage
    SetVar VAR_MAP_LOCAL_1, 2
    Call BattleTower_TrySendPreviousResults
    GoToIfNe VAR_RESULT, 0, BattleTower_HopeToSeeYouAgain
    ScrCmd_1E3 VAR_0x8004, VAR_0x8005
    BufferNumber 0, VAR_0x8004
    BufferVarPaddingDigits 1, VAR_0x8005, PADDING_MODE_ZEROES, 3
    Message BattleTower_Text_ConfirmPastLeaderHistory
    WaitABPress
    GoTo BattleTower_End
    End

BattleTower_InitWiFiChallengeMode:
    InitBattleTower 0, BATTLE_TOWER_MODE_WIFI
    GoTo BattleTower_CheckEnoughEligiblePokemonSingleChallenge
    End

BattleTower_ChallengeEarlierRoom:
    InitBattleTower 0, BATTLE_TOWER_MODE_5
    GoTo BattleTower_CheckEnoughEligiblePokemonSingleChallenge
    End

BattleTower_PlayerFaceEast:
    ApplyMovement LOCALID_PLAYER, BattleTower_Movement_PlayerFaceEast
    WaitMovement
    Return

BattleTower_MultiAttendant:
    LockAll
    PlaySE SEQ_SE_CONFIRM
    SetBattleTowerNull
    Message BattleTower_Text_WelcomeToMultiBattleRooms
    GoTo BattleTower_AskTakeMultiChallenge
    End

BattleTower_AskTakeMultiChallenge:
    Message BattleTower_Text_AskTakeMultiChallenge
    Call BattleTower_InitMenuTakeChallenge
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, BattleTower_TakeMultiChallenge
    GoToIfEq VAR_0x8008, 1, BattleTower_ExplainMultiBattleRoom
    GoToIfEq VAR_0x8008, 2, BattleTower_HopeToSeeYouAgain
    GoTo BattleTower_HopeToSeeYouAgain
    End

BattleTower_ExplainMultiBattleRoom:
    Message BattleTower_Text_ExplainMultiBattleRoom
    GoTo BattleTower_AskTakeMultiChallenge
    End

BattleTower_TakeMultiChallenge:
    CallBattleTowerFunction BT_FUNC_CHECK_ENOUGH_VALID_POKEMON, 2, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, BattleTower_AskCommunicateWithFriend
    MessageSeenBanlistSpecies BattleTower_Text_Banlist, 2
    GoTo BattleTower_WaitButton
    End

BattleTower_AskCommunicateWithFriend:
    Message BattleTower_Text_AskCommunicateWithFriend
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, BattleTower_InitLinkMultiChallengeMode
    GoTo BattleTower_InitMultiChallengeMode
    End

BattleTower_InitMultiChallengeMode:
    InitBattleTower 0, BATTLE_TOWER_MODE_MULTI
    SetVar VAR_MAP_LOCAL_1, 0
    GoTo BattleTower_SelectAndValidatePokemonMultiChallenge
    End

BattleTower_InitLinkMultiChallengeMode:
    InitBattleTower 0, BATTLE_TOWER_MODE_LINK_MULTI
    SetVar VAR_MAP_LOCAL_1, 1
    GoTo BattleTower_SelectAndValidatePokemonMultiChallenge
    End

BattleTower_SelectAndValidatePokemonMultiChallenge:
    Message BattleTower_Text_SelectPokemonToEnter
    Call BattleTower_SelectPokemon
    GoToIfEq VAR_RESULT, 0, BattleTower_HopeToSeeYouAgain
    CallBattleTowerFunction BT_FUNC_CHECK_DUPLICATE_SPECIES_AND_HELD_ITEMS, 0, VAR_RESULT
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 1, BattleTower_SelectedTwoIdenticalSpecies
    GoToIfEq VAR_0x8008, 2, BattleTower_SelectedTwoIdenticalHeldItems
    CallBattleTowerFunction BT_FUNC_GET_SLOT_INDEX, 0, VAR_RESULT
    TryRevertPokemonForm VAR_RESULT, VAR_RESULT
    GoToIfEq VAR_RESULT, 0xFF, BattleTower_GriseousOrbCouldNotBeRemoved
    CallBattleTowerFunction BT_FUNC_GET_SLOT_INDEX, 1, VAR_RESULT
    TryRevertPokemonForm VAR_RESULT, VAR_RESULT
    GoToIfEq VAR_RESULT, 0xFF, BattleTower_GriseousOrbCouldNotBeRemoved
    GoToIfEq VAR_MAP_LOCAL_1, 1, BattleTower_HealAndSaveBeforeCommunicating
    Call BattleTower_SetVarsStartMultiChallenge
    CallBattleTowerFunction BT_FUNC_SET_COMMUNICATION_CLUB_ACCESSIBLE, 0, 0
    HealParty
    Call BattleTower_SaveGame
    GoToIfEq VAR_RESULT, 0, BattleTower_ClearCommunicationAndEnd
    CallBattleTowerFunction BT_FUNC_UNK_57, 0, VAR_RESULT
    CallBattleTowerFunction BT_FUNC_UNK_52, 0, 0
    Message BattleTower_Text_ShowYouToBattleSalon
    GoTo BattleTower_EnterBattleRoom
    End

BattleTower_HealAndSaveBeforeCommunicating:
    HealParty
    Call BattleTower_SaveGame
    GoToIfEq VAR_RESULT, 0, BattleTower_ClearCommunicationAndEnd
    GoTo BattleTower_BecomeLeaderOrJoinGroup
    End

BattleTower_BecomeLeaderOrJoinGroup:
    Message BattleTower_Text_BecomeLeaderOrJoinGroup
    InitGlobalTextMenu 30, 1, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm MenuEntries_Text_JoinGroup, 0
    AddMenuEntryImm MenuEntries_Text_BecomeLeader, 1
    AddMenuEntryImm MenuEntries_Text_Exit, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, BattleTower_JoinGroup
    GoToIfEq VAR_0x8008, 1, BattleTower_BecomeLeader
    GoTo BattleTower_ClearCommunicationAndEnd
    End

BattleTower_JoinGroup:
    Message BattleTower_Text_LaunchWifiComm
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, BattleTower_BecomeLeaderOrJoinGroup
    CloseMessage
    StartBattleClient 16, 0, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_CANCEL, BattleTower_CancelJoiningGroup
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_ERROR, BattleTower_ErrorJoiningGroup
    GoTo _0D5C
    End

BattleTower_CancelJoiningGroup:
    GoTo BattleTower_BecomeLeaderOrJoinGroup
    End

BattleTower_ErrorJoiningGroup:
    EndCommunication
    GoTo BattleTower_BecomeLeaderOrJoinGroup
    End

BattleTower_BecomeLeader:
    Message BattleTower_Text_LaunchWifiComm
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, BattleTower_BecomeLeaderOrJoinGroup
    CloseMessage
    StartBattleServer 16, 0, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_CANCEL, BattleTower_CancelBecomingLeader
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_ERROR, BattleTower_ErrorBecomingLeader
    GoTo _0D5C
    End

BattleTower_CancelBecomingLeader:
    GoTo BattleTower_BecomeLeaderOrJoinGroup
    End

BattleTower_ErrorBecomingLeader:
    EndCommunication
    GoTo BattleTower_BecomeLeaderOrJoinGroup
    End

_0D5C:
    ClearReceivedTempDataAllPlayers
    ScrCmd_135 1
    CallBattleTowerFunction BT_FUNC_UNK_58, 0, 0
    GoTo _0D72
    End

_0D72:
    ScrCmd_1E1 0, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _0D72
    ScrCmd_1E2 0, VAR_MAP_LOCAL_0
    SetVar VAR_0x8008, VAR_MAP_LOCAL_0
    GoToIfEq VAR_0x8008, 1, BattleTower_BothTrainerChosePokemon1
    GoToIfEq VAR_0x8008, 2, BattleTower_BothTrainerChosePokemon2
    GoToIfEq VAR_0x8008, 3, BattleTower_BothTrainerChosePokemon1And2
    ClearReceivedTempDataAllPlayers
    ScrCmd_135 2
    CallBattleTowerFunction BT_FUNC_UNK_57, 0, VAR_0x8004
    GetCurNetID VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _0E8A
    ScrCmd_1E2 1, VAR_MAP_LOCAL_0
    GoTo _0E58
    End

BattleTower_BothTrainerChosePokemon1:
    Call BattleTower_EndCommunicationSamePokemon
    CallBattleTowerFunction BT_FUNC_GET_SLOT_INDEX, 0, VAR_RESULT
    BufferPartyMonSpecies 0, VAR_RESULT
    Message BattleTower_Text_BothTrainersChoseThisPokemon
    GoTo BattleTower_ClearCommunicationAndEnd
    End

BattleTower_BothTrainerChosePokemon2:
    Call BattleTower_EndCommunicationSamePokemon
    CallBattleTowerFunction BT_FUNC_GET_SLOT_INDEX, 1, VAR_RESULT
    BufferPartyMonSpecies 0, VAR_RESULT
    Message BattleTower_Text_BothTrainersChoseThisPokemon
    GoTo BattleTower_ClearCommunicationAndEnd
    End

BattleTower_BothTrainerChosePokemon1And2:
    Call BattleTower_EndCommunicationSamePokemon
    CallBattleTowerFunction BT_FUNC_GET_SLOT_INDEX, 0, VAR_RESULT
    BufferPartyMonSpecies 0, VAR_RESULT
    CallBattleTowerFunction BT_FUNC_GET_SLOT_INDEX, 1, VAR_RESULT
    BufferPartyMonSpecies 1, VAR_RESULT
    Message BattleTower_Text_BothTrainersChoseThesePokemon
    GoTo BattleTower_ClearCommunicationAndEnd
    End

BattleTower_EndCommunicationSamePokemon:
    ClearReceivedTempDataAllPlayers
    ScrCmd_135 8
    EndCommunication
    Return

_0E58:
    Call BattleTower_SetVarsStartMultiChallenge
    CallBattleTowerFunction BT_FUNC_SET_COMMUNICATION_CLUB_ACCESSIBLE, 0, 0
    HealParty
    Message BattleTower_Text_RecordWillBeSaved
    Call BattleTower_TrySaveGame
    LogLinkInfoInWiFiHistory
    Message BattleTower_Text_DirectToMultiBattleRoom
    WaitTime 30, VAR_RESULT
    ClearReceivedTempDataAllPlayers
    ScrCmd_135 3
    GoTo BattleTower_EnterBattleRoom
    End

_0E8A:
    CallBattleTowerFunction BT_FUNC_UNK_52, 0, 0
    CallBattleTowerFunction BT_FUNC_UNK_58, 0, 0
    GoTo _0EA2
    End

_0EA2:
    ScrCmd_1E1 1, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _0EA2
    GoTo _0E58
    End

BattleTower_OnFrameChallengeEnded:
    LockAll
    FadeScreenIn
    WaitFadeScreen
    Call BattleTower_ResetVarsClearCommunication
    CallBattleTowerFunction BT_FUNC_CHECK_IS_NULL, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, BattleTower_HopeToSeeYouAgain
    CallBattleTowerFunction BT_FUNC_HAS_DEFEATED_SEVEN_TRAINERS, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0F7E
    GoTo BattleTower_ThanksForPlaying
    End

BattleTower_ThanksForPlaying:
    Message BattleTower_Text_ThanksForPlaying
    CallBattleTowerFunction BT_FUNC_GET_CHALLENGE_MODE, 0, VAR_RESULT
    SetVar VAR_MAP_LOCAL_0, VAR_RESULT
    SetVar VAR_0x8008, VAR_MAP_LOCAL_0
    GoToIfEq VAR_0x8008, BATTLE_TOWER_MODE_5, BattleTower_SaveAndEnd
    GoToIfEq VAR_0x8008, BATTLE_TOWER_MODE_WIFI, _11BA
    CallBattleTowerFunction BT_FUNC_UNK_49, 0, VAR_RESULT
    CallIfEq VAR_RESULT, 1, BattleTower_RibbonsFor50WinStreak
    GoTo BattleTower_SaveAndEnd
    End

BattleTower_SaveAndEnd:
    Message BattleTower_Text_SavingDontTurnOffPower2
    Call BattleTower_TrySaveGame
    CloseMessage
    GoToIfEq VAR_MAP_LOCAL_0, 0, _118A
    GoTo BattleTower_ClearCommunicationAndEnd
    End

BattleTower_RibbonsFor50WinStreak:
    Message BattleTower_Text_WonRibbonsFor50WinStreak
    PlayFanfare SEQ_FANFA1
    WaitFanfare
    Return

_0F7E:
    CallBattleTowerFunction BT_FUNC_GET_CHALLENGE_MODE, 0, VAR_RESULT
    SetVar VAR_MAP_LOCAL_0, VAR_RESULT
    GoToIfEq VAR_MAP_LOCAL_0, BATTLE_TOWER_MODE_5, BattleTower_BeatenAllSevenTrainersSave
    GoToIfEq VAR_MAP_LOCAL_0, BATTLE_TOWER_MODE_SINGLE, _1091
    GoToIfEq VAR_MAP_LOCAL_0, BATTLE_TOWER_MODE_WIFI, _0FEA
    CallBattleTowerFunction BT_FUNC_UNK_49, 0, VAR_RESULT
    GoToIfNe VAR_RESULT, 0, _0FD6
    Call BattleTower_BeatenAllSevenTrainers
    GoTo BattleTower_SaveGameClearCommunication
    End

_0FD6:
    Message BattleTower_Text_BeatenAllSevenTrainers
    Message BattleTower_Text_WonRibbonsFor50WinStreak
    PlayFanfare SEQ_FANFA1
    WaitFanfare
    GoTo BattleTower_SaveGameClearCommunication
    End

_0FEA:
    Message BattleTower_Text_BeatenAllSevenTrainers
    CallBattleTowerFunction BT_FUNC_UNK_54, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _105E
    GoTo _100A
    End

_100A:
    CallBattleTowerFunction BT_FUNC_UNK_10, 0, VAR_RESULT
    SetVar VAR_MAP_LOCAL_0, VAR_RESULT
    BufferPlayerName 0
    BufferNumber 1, VAR_MAP_LOCAL_0
    Message BattleTower_Text_PromotedToRank
    GoTo _102B
    End

_102B:
    CallBattleTowerFunction BT_FUNC_UNK_49, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _11F5
    GoTo _1048
    End

_1048:
    BufferNumber 0, VAR_MAP_LOCAL_0
    Message BattleTower_Text_RibbonsForAchievingRank
    PlayFanfare SEQ_FANFA1
    WaitFanfare
    GoTo _11F5
    End

_105E:
    CallBattleTowerFunction BT_FUNC_UNK_49, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _11F5
    GoTo _107B
    End

_107B:
    BufferNumber 0, VAR_MAP_LOCAL_0
    Message BattleTower_Text_AwardRibbonToParticipatingPokemon
    PlayFanfare SEQ_FANFA1
    WaitFanfare
    GoTo _11F5
    End

_1091:
    CallBattleTowerFunction BT_FUNC_GET_BEAT_PALMER, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _10AE
    GoTo _10F5
    End

_10AE:
    Call BattleTower_BeatenAllSevenTrainers
    GoTo _10BC
    End

_10BC:
    Message BattleTower_Text_SavingDontTurnOffPower
    Call BattleTower_TrySaveGame
    ScrCmd_1DF VAR_RESULT
    GoToIfEq VAR_RESULT, 0, BattleTower_ClearCommunicationAndEnd
    Message BattleTower_Text_LookForwardToNextVisit
    CloseMessage
    SetVar VAR_MAP_LOCAL_2, VAR_RESULT
    SetVar VAR_MAP_LOCAL_1, 1
    Call BattleTower_PlayerFaceEast
    GoTo BattleTower_TryGiveTrophy
    End

_10F5:
    CallIfEq VAR_BATTLE_TOWER_PRINT_STATE, 1, _1135
    CallIfEq VAR_BATTLE_TOWER_PRINT_STATE, 3, _114C
    CallBattleTowerFunction BT_FUNC_UNK_48, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _10BC
    Message BattleTower_Text_RibbonsForDefeatingTycoon
    PlayFanfare SEQ_FANFA1
    WaitFanfare
    GoTo _10BC
    End

_1135:
    Message BattleTower_Text_CommemorativePrint
    BufferPlayerName 0
    Message BattleTower_Text_SilverPrintAdded
    PlayFanfare SEQ_FANFA4
    WaitFanfare
    SetVar VAR_BATTLE_TOWER_PRINT_STATE, 2
    Return

_114C:
    Message BattleTower_Text_CommemorativePrint
    BufferPlayerName 0
    Message BattleTower_Text_GoldPrintAdded
    PlayFanfare SEQ_FANFA4
    WaitFanfare
    SetVar VAR_BATTLE_TOWER_PRINT_STATE, 4
    Common_CheckAllFrontierGoldPrintsObtained
    Return

BattleTower_BeatenAllSevenTrainers:
    Message BattleTower_Text_BeatenAllSevenTrainers
    Return

BattleTower_BeatenAllSevenTrainersSave:
    Message BattleTower_Text_BeatenAllSevenTrainers2
    GoTo BattleTower_SaveGameClearCommunication
    End

BattleTower_SaveGameClearCommunication:
    Message BattleTower_Text_SavingDontTurnOffPower
    Call BattleTower_TrySaveGame
    CloseMessage
    GoTo BattleTower_ClearCommunicationAndEnd
    End

_118A:
    ScrCmd_1DF VAR_RESULT
    GoToIfEq VAR_RESULT, 0, BattleTower_ClearCommunicationAndEnd
    Message BattleTower_Text_LookForwardToNextVisit
    CloseMessage
    SetVar VAR_MAP_LOCAL_2, VAR_RESULT
    SetVar VAR_MAP_LOCAL_1, 1
    Call BattleTower_PlayerFaceEast
    GoTo BattleTower_TryGiveTrophy
    End

_11BA:
    CallBattleTowerFunction BT_FUNC_UNK_09, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _11D7
    GoTo _11F5
    End

_11D7:
    CallBattleTowerFunction BT_FUNC_UNK_10, 0, VAR_RESULT
    SetVar VAR_0x8000, VAR_RESULT
    BufferNumber 0, VAR_0x8000
    Message BattleTower_Text_DemotedToRank
    GoTo _11F5
    End

_11F5:
    CallBattleTowerFunction BT_FUNC_UNK_11, 1, 0
    GoTo BattleTower_SaveTrySendResultsAndEnd
    End

BattleTower_SaveTrySendResultsAndEnd:
    Call BattleTower_ClearCommunication
    Message BattleTower_Text_SavingDontTurnOffPower2
    Call BattleTower_TrySaveGame
    Message BattleTower_Text_AskSendResults
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, BattleTower_HopeToSeeYouAgain
    Call BattleTower_CallTrySendPreviousResults
    GoToIfNe VAR_RESULT, 0, BattleTower_HopeToSeeYouAgain
    Message BattleTower_Text_ResultsWereSent
    GoTo BattleTower_HopeToSeeYouAgain
    End

    .balign 4, 0
BattleTower_Movement_AttendantWalkToDoor:
    Delay4
    WalkNormalNorth 2
    EndMovement

    .balign 4, 0
BattleTower_Movement_AttendantEnterBattleRoom:
    WalkNormalNorth
    SetInvisible
    EndMovement

    .balign 4, 0
BattleTower_Movement_PlayerWalkToDoor:
    Delay4
    WalkNormalNorth 2
    EndMovement

    .balign 4, 0
BattleTower_Movement_PlayerEnterBattleRoom:
    WalkNormalNorth 2
    SetInvisible
    EndMovement

    .balign 4, 0
BattleTower_Movement_PlayerFaceEast:
    FaceEast
    EndMovement

BattleTower_Unused10:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    SetVar VAR_0x8000, 0
    SetVar VAR_0x8001, 0
    Call BattleTower_ResultsMachine
    End

BattleTower_Unused11:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    SetVar VAR_0x8000, 0
    SetVar VAR_0x8001, 1
    Call BattleTower_ResultsMachine
    End

BattleTower_MachineWiFiResults:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    SetVar VAR_0x8000, 0
    SetVar VAR_0x8001, 2
    Call BattleTower_ResultsMachine
    End

BattleTower_MachineWiFiLeaders:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    ScrCmd_1E4 VAR_RESULT
    GoToIfEq VAR_RESULT, 0, BattleTower_NoDataYet
    SetVar VAR_0x8000, 1
    SetVar VAR_0x8001, 0
    Call BattleTower_ResultsMachine
    End

BattleTower_NoDataYet:
    Message BattleTower_Text_NoDataYet
    WaitButton
    CloseMessage
    ReleaseAll
    End

BattleTower_ResultsMachine:
    FadeScreenOut
    WaitFadeScreen
    ScrCmd_1D9 VAR_0x8000, VAR_0x8001
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    Return

BattleTower_ParasolLady:
    NPCMessage BattleTower_Text_UsedToLiveInHoenn
    End

BattleTower_Jogger:
    NPCMessage BattleTower_Text_FullOfSurprises
    End

BattleTower_Idol:
    NPCMessage BattleTower_Text_ProfileOnTV
    End

BattleTower_RichBoy:
    NPCMessage BattleTower_Text_TrainedLittleGuy
    End

BattleTower_Pikachu1:
    NPCMessage BattleTower_Text_PikachuDotDotDot
    End

BattleTower_Artist:
    NPCMessage BattleTower_Text_YouLookPowerful
    End

BattleTower_SchoolKidM1:
    NPCMessage BattleTower_Text_ManyToughTrainers
    End

BattleTower_Unused9:
    End

BattleTower_Pikachu2:
    PokemonCryAndMessage SPECIES_PIKACHU, BattleTower_Text_PikachuPichuu
    End

BattleTower_GriseousOrbCouldNotBeRemoved:
    Call BattleTower_FreeBattleTower
    Call BattleTower_ResetBattleTowerVars
    Common_GriseousOrbCouldNotBeRemoved
    End

BattleTower_StatsJudge:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallIfUnset FLAG_TALKED_TO_STATS_JUDGE, BattleTower_JudgeExplanation
    CallIfSet FLAG_TALKED_TO_STATS_JUDGE, BattleTower_ICouldJudgeYourPokemon
    SetFlag FLAG_TALKED_TO_STATS_JUDGE
    GoTo BattleTower_ChoosePokemonToJudge
    End

BattleTower_ChoosePokemonToJudge:
    FadeScreenOut
    WaitFadeScreen
    CloseMessage
    SelectMoveTutorPokemon
    GetSelectedPartySlot VAR_RESULT
    ReturnToField
    SetVar VAR_0x8000, VAR_RESULT
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_0x8000, PARTY_SLOT_NONE, BattleTower_CancelJudge
    GetPartyMonSpecies VAR_0x8000, VAR_0x8004
    GoToIfEq VAR_0x8004, SPECIES_NONE, BattleTower_CantJudgeAnEgg
    JudgeStats VAR_0x8000, VAR_0x8001, VAR_0x8002, VAR_0x8003
    GoToIfLe VAR_0x8001, 90, BattleTower_DecentTotalIVs
    GoToIfLe VAR_0x8001, 120, BattleTower_AboveAverageTotalIVs
    GoToIfLe VAR_0x8001, 150, BattleTower_RelativelySuperiorTotalIVs
    GoToIfGe VAR_0x8001, 151, BattleTower_OutstandingTotalIVs
    End

BattleTower_JudgeExplanation:
    Message BattleTower_Text_JudgeExplanation
    Return

BattleTower_ICouldJudgeYourPokemon:
    Message BattleTower_Text_ICouldJudgeYourPokemon
    Return

BattleTower_CantJudgeAnEgg:
    Message BattleTower_Text_CantJudgeAnEgg
    GoTo BattleTower_ChoosePokemonToJudge
    End

BattleTower_HighestTotalIVStat:
    MessageVar VAR_0x8002
    GoTo BattleTower_HighestIVValue
    End

BattleTower_HighestIVValue:
    GoToIfLe VAR_0x8003, 15, BattleTower_RatherDecentHighestIVValue
    GoToIfLe VAR_0x8003, 25, BattleTower_VeryGoodHighestIVValue
    GoToIfLe VAR_0x8003, 30, BattleTower_FantasticHighestIVValue
    GoToIfGe VAR_0x8003, 31, BattleTower_PerfectHighestIVValue
    End

BattleTower_DecentTotalIVs:
    Message BattleTower_Text_DecentPotential
    GoTo BattleTower_HighestTotalIVStat
    End

BattleTower_AboveAverageTotalIVs:
    Message BattleTower_Text_AboveAveragePotential
    GoTo BattleTower_HighestTotalIVStat
    End

BattleTower_RelativelySuperiorTotalIVs:
    Message BattleTower_Text_RelativelySuperiorPotential
    GoTo BattleTower_HighestTotalIVStat
    End

BattleTower_OutstandingTotalIVs:
    Message BattleTower_Text_OutstandingPotential
    GoTo BattleTower_HighestTotalIVStat
    End

BattleTower_RatherDecentHighestIVValue:
    Message BattleTower_Text_ItsRatherDecent
    GoTo BattleTower_JudgeEnd
    End

BattleTower_VeryGoodHighestIVValue:
    Message BattleTower_Text_ItsVeryGood
    GoTo BattleTower_JudgeEnd
    End

BattleTower_FantasticHighestIVValue:
    Message BattleTower_Text_ItsFantastic
    GoTo BattleTower_JudgeEnd
    End

BattleTower_PerfectHighestIVValue:
    Message BattleTower_Text_ItCantBeBetter
    GoTo BattleTower_JudgeEnd
    End

BattleTower_JudgeEnd:
    WaitButton
    CloseMessage
    ReleaseAll
    End

BattleTower_CancelJudge:
    Message BattleTower_Text_YouDontNeedMe
    WaitButton
    CloseMessage
    ReleaseAll
    End
