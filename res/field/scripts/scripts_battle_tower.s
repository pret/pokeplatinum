#include "macros/scrcmd.inc"
#include "res/text/bank/battle_tower.h"
#include "res/text/bank/menu_entries.h"


    ScriptEntry BattleTower_SingleDoubleBattleRoomAttendant
    ScriptEntry BattleTower_MultiBattleRoomAttendant
    ScriptEntry BattleTower_WiFiBattleRoomAttendant
    ScriptEntry _0EBF
    ScriptEntry _04EC
    ScriptEntry _0597
    ScriptEntry _01AC
    ScriptEntry _06F6
    ScriptEntry _13AD
    ScriptEntry _1280
    ScriptEntry _129A
    ScriptEntry _12B4
    ScriptEntry _12CE
    ScriptEntry BattleTower_ParasolLady
    ScriptEntry BattleTower_Jogger
    ScriptEntry BattleTower_Idol
    ScriptEntry BattleTower_RichBoy
    ScriptEntry BattleTower_Pikachu1
    ScriptEntry BattleTower_Artist
    ScriptEntry BattleTower_SchoolKid
    ScriptEntry BattleTower_Pikachu2
    ScriptEntry _0062
    ScriptEntry _00F5
    ScriptEntry BattleTower_StatsJudge
    ScriptEntryEnd

_0062:
    CallIfEq VAR_UNK_0x40D8, 1, BattleTower_ShowPoketch
    CallIfEq VAR_UNK_0x40D8, 3, BattleTower_ShowPoketch
    CallIfEq VAR_UNK_0x40D8, 0xFF, BattleTower_ShowPoketch
    CheckTVInterviewEligible TV_PROGRAM_SEGMENT_BATTLE_FRONTIER_FRONTLINE_NEWS_MULTI, VAR_MAP_LOCAL_0
    CallIfEq VAR_MAP_LOCAL_0, 0, _0144
    CallIfNe VAR_MAP_LOCAL_0, 0, _014A
    ScrCmd_1E0 VAR_MAP_LOCAL_0
    GoToIfNe VAR_MAP_LOCAL_0, 0, _00DF
    SetFlag FLAG_UNK_0x01E9
    GoTo _00C6
    End

_00C6:
    CheckTVInterviewEligible TV_PROGRAM_SEGMENT_BATTLE_TOWER_CORNER, VAR_MAP_LOCAL_0
    GoToIfNe VAR_MAP_LOCAL_0, 0, _00EB
    SetFlag FLAG_UNK_0x020E
    End

_00DF:
    ClearFlag FLAG_UNK_0x01E9
    GoTo _00C6
    End

_00EB:
    ClearFlag FLAG_UNK_0x020E
    End

BattleTower_ShowPoketch:
    ShowPoketch
    Return

_00F5:
    GoToIfNe VAR_UNK_0x40D8, 1, _013A
    ScrCmd_1E0 VAR_MAP_LOCAL_0
    GoToIfNe VAR_MAP_LOCAL_0, 0, _013C
    GoToIfEq VAR_MAP_LOCAL_0, 1, _013C
    GoToIfEq VAR_MAP_LOCAL_0, 2, _013C
    GoToIfEq VAR_MAP_LOCAL_0, 3, _013C
_013A:
    End

_013C:
    ScrCmd_18C 3, 2
    End

_0144:
    SetFlag FLAG_UNK_0x02C3
    Return

_014A:
    ClearFlag FLAG_UNK_0x02C3
    Return

BattleTower_Unused:
    InitBattleTower 0, BATTLE_TOWER_MODE_DOUBLE
    Return

_0158:
    SetVar VAR_UNK_0x40D8, 0xFF
    SetVar VAR_UNK_0x40DB, 1
    SetVar VAR_UNK_0x40DC, 1
    SetVar VAR_UNK_0x40D9, 1
    Return

_0172:
    SetVar VAR_UNK_0x40D8, 0xFF
    SetVar VAR_UNK_0x40DB, 3
    SetVar VAR_UNK_0x40DD, 1
    SetVar VAR_UNK_0x40DE, 1
    SetVar VAR_UNK_0x40DF, 1
    Return

_0192:
    SetVar VAR_UNK_0x40D8, 0xFF
    SetVar VAR_UNK_0x40DB, 1
    SetVar VAR_UNK_0x40DC, 1
    SetVar VAR_UNK_0x40D9, 2
    Return

_01AC:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar VAR_MAP_LOCAL_1, 0
    ScrCmd_1DF VAR_MAP_LOCAL_2
    GoTo _01C6
    End

_01C6:
    SetVar VAR_0x8008, VAR_MAP_LOCAL_2
    GoToIfEq VAR_0x8008, 1, _0239
    GoToIfEq VAR_0x8008, 2, _024C
    GoToIfEq VAR_0x8008, 3, _025F
    GoToIfEq VAR_0x8008, 4, _022E
    Message BattleTower_Text_WeHopeToSeeYouAgain2
    GoTo _020B
    End

_020B:
    WaitABPress
    GoToIfEq VAR_MAP_LOCAL_1, 1, _0220
    CloseMessage
    ReleaseAll
    End

_0220:
    Call BattleTower_ClearCommunication
    GoTo BattleTower_Close
    End

_022E:
    Message BattleTower_Text_RunOutOfRoomForDecorationGoods
    GoTo _020B
    End

_0239:
    BufferNumber 0, 20
    SetVar VAR_0x8004, 85
    GoTo _0272
    End

_024C:
    BufferNumber 0, 50
    SetVar VAR_0x8004, 86
    GoTo _0272
    End

_025F:
    BufferNumber 0, 100
    SetVar VAR_0x8004, 87
    GoTo _0272
    End

_0272:
    Message BattleTower_Text_CongratulationsOnAchievingWinStreak
    SetVar VAR_0x8005, 1
    CallCommonScript 0x7FE
    Message BattleTower_Text_WeHopeToSeeYouAgain2
    GoTo _020B
    End

BattleTower_SingleDoubleBattleRoomAttendant:
    LockAll
    PlayFanfare SEQ_SE_CONFIRM
    SetBattleTowerNull
    Message BattleTower_Text_GuideToSingleDoubleBattleRooms
    GoTo BattleTower_AskTakeBattleRoomChallenge
    End

BattleTower_AskTakeBattleRoomChallenge:
    Message BattleTower_Text_AskTakeBattleRoomChallenge
    Call BattleTower_InitChoiceMenuBattleRoomChallenge
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, BattleTower_TakeBattleRoomChallenge
    GoToIfEq VAR_0x8008, 1, BattleTower_ExplainSingleDoubleBattleRoom
    GoToIfEq VAR_0x8008, 2, BattleTower_WeHopeToSeeYouAgain
    GoTo BattleTower_WeHopeToSeeYouAgain
    End

BattleTower_ExplainSingleDoubleBattleRoom:
    Message BattleTower_Text_ExplainSingleDoubleBattleRoom
    GoTo BattleTower_AskTakeBattleRoomChallenge
    End

BattleTower_InitChoiceMenuBattleRoomChallenge:
    InitGlobalTextMenu 31, 11, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm MenuEntries_Text_BattleTower_Challenge, 0
    AddMenuEntryImm MenuEntries_Text_BattleTower_Info, 1
    AddMenuEntryImm MenuEntries_Text_BattleTower_Exit, 2
    ShowMenu
    Return

BattleTower_TakeBattleRoomChallenge:
    Message BattleTower_Text_AskSingleOrDoubleBattleRoom
    InitGlobalTextMenu 31, 11, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm MenuEntries_Text_SingleBattle, 0
    AddMenuEntryImm MenuEntries_Text_DoubleBattle, 1
    AddMenuEntryImm MenuEntries_Text_BattleTower_Cancel, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, BattleTower_InitSingleBattleRoomChallenge
    GoToIfEq VAR_0x8008, 1, BattleTower_InitDoubleBattleRoomChallenge
    GoToIfEq VAR_0x8008, 2, BattleTower_WeHopeToSeeYouAgain
    GoTo BattleTower_WeHopeToSeeYouAgain
    End

BattleTower_InitSingleBattleRoomChallenge:
    InitBattleTower 0, BATTLE_TOWER_MODE_SINGLE
    GoTo _0360
    End

_0360:
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_CHECK_ENOUGH_VALID_POKEMON, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, BattleTower_SelectAndValidatePokemon
    MessageSeenBanlistSpecies BattleTower_Text_NotEnoughEligiblePokemon, 3
    GoTo BattleTower_WaitABXPadPress
    End

BattleTower_InitDoubleBattleRoomChallenge:
    InitBattleTower 0, BATTLE_TOWER_MODE_DOUBLE
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_CHECK_ENOUGH_VALID_POKEMON, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, BattleTower_SelectAndValidatePokemon
    MessageSeenBanlistSpecies BattleTower_Text_NotEnoughEligiblePokemon, 4
    GoTo BattleTower_WaitABXPadPress
    End

BattleTower_SelectAndValidatePokemon:
    Message BattleTower_Text_SelectPokemonToEnter
    Call BattleTower_SelectPokemon
    GoToIfEq VAR_RESULT, 0, BattleTower_WeHopeToSeeYouAgain
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_CHECK_DUPLICATE_SPECIES_AND_HELD_ITEMS, 0, VAR_RESULT
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 1, BattleTower_SelectedTwoIdenticalSpecies
    GoToIfEq VAR_0x8008, 2, BattleTower_SelectedTwoIdenticalHeldItems
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_GET_SLOT_INDEX, 0, VAR_RESULT
    TryRevertPokemonForm VAR_RESULT, VAR_RESULT
    GoToIfEq VAR_RESULT, 0xFF, _13CE
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_GET_SLOT_INDEX, 1, VAR_RESULT
    TryRevertPokemonForm VAR_RESULT, VAR_RESULT
    GoToIfEq VAR_RESULT, 0xFF, _13CE
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_GET_SLOT_INDEX, 2, VAR_RESULT
    TryRevertPokemonForm VAR_RESULT, VAR_RESULT
    GoToIfEq VAR_RESULT, 0xFF, _13CE
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_GET_CHALLENGE_MODE, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, BATTLE_TOWER_MODE_WIFI, _09B3
    GoTo BattleTower_HealAndSaveBeforeEnteringBattleRoom
    End

BattleTower_HealAndSaveBeforeEnteringBattleRoom:
    Call _0158
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_SET_COMMUNICATION_CLUB_ACCESSIBLE, 0, 0
    HealParty
    Call BattleTower_SaveGame
    GoToIfEq VAR_RESULT, 0, BattleTower_ClearCommunicationAndClose
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_57, 0, VAR_RESULT
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_52, 0, 0
    Message BattleTower_Text_ShowYouToBattleRoom
    WaitABPress
    GoTo BattleTower_EnterRespectiveBattleRoom
    End

BattleTower_SaveGame:
    CallCommonScript 0x7D6 @ CommonScript_SaveGame
    SetVar VAR_RESULT, VAR_MAP_LOCAL_0
    Return

BattleTower_SelectedTwoIdenticalSpecies:
    Message BattleTower_Text_PokemonMustAllBeDifferent
    GoTo BattleTower_WeHopeToSeeYouAgain
    End

BattleTower_SelectedTwoIdenticalHeldItems:
    Message BattleTower_Text_ItemsMustAllBeDifferent
    GoTo BattleTower_WeHopeToSeeYouAgain
    End

BattleTower_SelectPokemon:
    FadeScreenOut
    WaitFadeScreen
    CloseMessage
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_30, 0, 0
    ReturnToField
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_31, 0, VAR_RESULT
    FadeScreenIn
    WaitFadeScreen
    Return

_04EC:
    LockAll
    SetVar VAR_UNK_0x40D8, 0
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_04, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _0597
    Message BattleTower_Text_SaveBeforeEntering
    InitBattleTower 1, 0xFFFF
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_GET_CHALLENGE_MODE, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, BATTLE_TOWER_MODE_MULTI, BattleTower_HealAndSaveBeforeEnteringMultiBattleRoom
    Call _0192
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_SET_COMMUNICATION_CLUB_ACCESSIBLE, 0, 0
    Call BattleTower_TrySaveGame
    Message BattleTower_Text_ShowYouToBattleRoom
    WaitABPress
    GoTo BattleTower_EnterRespectiveBattleRoom
    End

BattleTower_HealAndSaveBeforeEnteringMultiBattleRoom:
    Call _0577
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_SET_COMMUNICATION_CLUB_ACCESSIBLE, 0, 0
    Call BattleTower_TrySaveGame
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_GET_PARTNER_ID, 0, VAR_RESULT
    SetVar VAR_MAP_LOCAL_9, VAR_RESULT
    Message BattleTower_Text_DirectToMultiBattleRoom
    WaitABPress
    GoTo BattleTower_EnterRespectiveBattleRoom
    End

_0577:
    SetVar VAR_UNK_0x40D8, 0xFF
    SetVar VAR_UNK_0x40DB, 2
    SetVar VAR_UNK_0x40DD, 1
    SetVar VAR_UNK_0x40DE, 2
    SetVar VAR_UNK_0x40DF, 0
    Return

_0597:
    LockAll
    Message BattleTower_Text_DidntSaveBeforeQuitting
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_14, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 4, _05B9
    GoTo BattleTower_ClearCommunicationAndClose
    End

_05B9:
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_09, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, BattleTower_ClearCommunicationAndClose
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_10, 0, VAR_RESULT
    SetVar VAR_0x8000, VAR_RESULT
    BufferNumber 0, VAR_0x8000
    Message BattleTower_Text_DemotedToRank
    GoTo BattleTower_ClearCommunicationAndClose
    End

BattleTower_EnterRespectiveBattleRoom:
    CloseMessage
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_GET_CHALLENGE_MODE, 0, VAR_RESULT
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
    Call BattleTower_DoBattleRoomEntranceAnimation
    GoTo BattleTower_WarpToElevator
    End

BattleTower_EnterWiFiBattleRoom:
    SetVar VAR_MAP_LOCAL_2, 2
    SetVar VAR_MAP_LOCAL_3, 19
    Call BattleTower_DoBattleRoomEntranceAnimation
    GoTo BattleTower_WarpToElevator
    End

BattleTower_EnterMultiBattleRoom:
    SetVar VAR_MAP_LOCAL_2, 1
    SetVar VAR_MAP_LOCAL_3, 11
    Call BattleTower_DoBattleRoomEntranceAnimation
    GoTo BattleTower_GoToWarpToElevator
    End

BattleTower_EnterLinkMultiBattleRoom:
    SetVar VAR_MAP_LOCAL_2, 1
    SetVar VAR_MAP_LOCAL_3, 11
    Call BattleTower_DoBattleRoomEntranceAnimation
    GoTo _06A0
    End

_06A0:
    SetVar VAR_UNK_0x40DB, 2
    GoTo BattleTower_WarpToElevator
    End

BattleTower_DoBattleRoomEntranceAnimation:
    ApplyMovement VAR_MAP_LOCAL_2, _1248
    ApplyMovement LOCALID_PLAYER, _1260
    WaitMovement
    LoadDoorAnimation 0, 0, VAR_MAP_LOCAL_3, 2, ANIMATION_TAG_DOOR_1
    PlayDoorOpenAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    ApplyMovement VAR_MAP_LOCAL_2, _1254
    ApplyMovement LOCALID_PLAYER, _126C
    WaitMovement
    PlayDoorCloseAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    UnloadAnimation ANIMATION_TAG_DOOR_1
    Return

BattleTower_GoToWarpToElevator:
    GoTo BattleTower_WarpToElevator
    End

_06F6:
    LockAll
    Call _0724
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_CHECK_IS_NULL, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, BattleTower_WeHopeToSeeYouAgain
    Message BattleTower_Text_SavingDontTurnOffPower2
    Call BattleTower_TrySaveGame
    GoTo BattleTower_ClearCommunicationAndClose
    End

_0724:
    Call _07B9
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_CLEAR_COMMUNICATION_CLUB_ACCESSIBLE, 0, 0
    Return

BattleTower_TrySaveGame:
    ShowSavingIcon
    TrySaveGame VAR_RESULT
    HideSavingIcon
    PlayFanfare SEQ_SE_DP_SAVE
    WaitFanfare SEQ_SE_DP_SAVE
    Return

BattleTower_WarpToElevator:
    IncrementGameRecord RECORD_UNK_058
    CreateJournalEvent LOCATION_EVENT_BATTLE_TOWER, 0, 0, 0, 0
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_BATTLE_TOWER_ELEVATOR, 0, 3, 6, 0
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

BattleTower_ClearCommunicationAndClose:
    Call BattleTower_ClearCommunication
BattleTower_WeHopeToSeeYouAgain:
    Message BattleTower_Text_WeHopeToSeeYouAgain
BattleTower_WaitABXPadPress:
    WaitABXPadPress
BattleTower_Close:
    CloseMessage
    Call _07B5
    Call _07B9
    ReleaseAll
    End

BattleTower_ClearCommunication:
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_CLEAR_COMMUNICATION_CLUB_ACCESSIBLE, 0, 0
    Call _07AB
    Return

_07AB:
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_03, 0, 0
    Return

_07B5:
    FreeBattleTower
    Return

_07B9:
    SetVar VAR_UNK_0x40D8, 0
    SetVar VAR_UNK_0x40DB, 0
    SetVar VAR_UNK_0x40DC, 0
    SetVar VAR_UNK_0x40DD, 0
    SetVar VAR_UNK_0x40D9, 0
    SetVar VAR_UNK_0x40DE, 0
    SetVar VAR_UNK_0x40DF, 0
    Return

BattleTower_WiFiBattleRoomAttendant:
    LockAll
    PlayFanfare SEQ_SE_CONFIRM
    SetBattleTowerNull
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_12, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0922
    Message BattleTower_Text_GuideToWiFiBattleRooms
    GoTo BattleTower_GoToWiFiChoiceMenu
    End

BattleTower_GoToWiFiChoiceMenu:
    GoTo BattleTower_GoToRegularOrExpandedWiFiChoiceMenu
    End

BattleTower_GoToRegularOrExpandedWiFiChoiceMenu:
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_15, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, BattleTower_AskTakeWiFiBattleRoomOrEarlierChallenge
    GoTo BattleTower_AskTakeWiFiBattleRoomChallenge
    End

BattleTower_AskTakeWiFiBattleRoomChallenge:
    Message BattleTower_Text_AskTakeWifiBattleRoomChallenge
    Call BattleTower_InitChoiceMenuWiFiBattleRoomChallenge
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, BattleTower_InitWiFiChallengeMode
    GoToIfEq VAR_0x8008, 1, BattleTower_CheckLeaders
    GoToIfEq VAR_0x8008, 2, BattleTower_ExplainWiFiBattleRoom
    GoToIfEq VAR_0x8008, 3, BattleTower_WeHopeToSeeYouAgain
    GoTo BattleTower_WeHopeToSeeYouAgain
    End

BattleTower_InitChoiceMenuWiFiBattleRoomChallenge:
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
    GoTo BattleTower_GoToRegularOrExpandedWiFiChoiceMenu
    End

BattleTower_AskTakeWiFiBattleRoomOrEarlierChallenge:
    Message BattleTower_Text_AskTakeWifiBattleRoomChallenge
    Call BattleTower_InitChoiceMenuWiFiBattleRoomOrEarlierChallenge
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, BattleTower_InitWiFiChallengeMode
    GoToIfEq VAR_0x8008, 1, BattleTower_CheckLeaders
    GoToIfEq VAR_0x8008, 2, BattleTower_ChallengeEarlierRoom
    GoToIfEq VAR_0x8008, 3, BattleTower_ExplainWiFiBattleRoom
    GoToIfEq VAR_0x8008, 4, BattleTower_WeHopeToSeeYouAgain
    GoTo BattleTower_WeHopeToSeeYouAgain
    End

BattleTower_InitChoiceMenuWiFiBattleRoomOrEarlierChallenge:
    InitGlobalTextMenu 31, 7, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm MenuEntries_Text_BattleTower_Challenge, 0
    AddMenuEntryImm MenuEntries_Text_BattleTower_CheckLeaders, 1
    AddMenuEntryImm MenuEntries_Text_BattleTower_ChallengeEarlierRoom, 2
    AddMenuEntryImm MenuEntries_Text_BattleTower_Info, 3
    AddMenuEntryImm MenuEntries_Text_BattleTower_Exit, 4
    ShowMenu
    Return

_0922:
    Message BattleTower_Text_AskSendPreviousResults
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _0967
    Call BattleTower_SaveGame
    GoToIfEq VAR_RESULT, 0, BattleTower_WeHopeToSeeYouAgain
    Call _096F
    GoToIfNe VAR_RESULT, 0, BattleTower_WeHopeToSeeYouAgain
    Message BattleTower_Text_ResultsWereSent
    GoTo BattleTower_WeHopeToSeeYouAgain
    End

_0967:
    GoTo BattleTower_GoToWiFiChoiceMenu
    End

_096F:
    CloseMessage
    SetVar VAR_MAP_LOCAL_1, 1
    Call _097F
    Return

_097F:
    FadeScreenOut
    WaitFadeScreen
    ScrCmd_0B3 VAR_MAP_LOCAL_0
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_16, VAR_MAP_LOCAL_1, VAR_MAP_LOCAL_0
    SetVar VAR_MAP_LOCAL_1, VAR_MAP_LOCAL_0
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    SetVar VAR_RESULT, VAR_MAP_LOCAL_1
    Return

_09B3:
    HealParty
    Call BattleTower_SaveGame
    GoToIfEq VAR_RESULT, 0, BattleTower_ClearCommunicationAndClose
    Call _0158
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_SET_COMMUNICATION_CLUB_ACCESSIBLE, 0, 0
    HealParty
    CloseMessage
    SetVar VAR_MAP_LOCAL_1, 0
    Call _097F
    GoToIfNe VAR_RESULT, 0, BattleTower_ClearCommunicationAndClose
    GoTo _09FB
    End

_09FB:
    Message BattleTower_Text_DirectYouToBattleRoom
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, BattleTower_EnterRespectiveBattleRoom
    Message BattleTower_Text_AskSaveAndInterruptChallenge
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _09FB
    SetVar VAR_UNK_0x40D8, 2
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_39, 0, 0
    FreeBattleTower
    Message BattleTower_Text_SavingDontTurnOffPower2
    Call BattleTower_TrySaveGame
    WaitABPressTime 30
    FadeScreenOut
    WaitFadeScreen
    CloseMessage
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_RESET_SYSTEM, 0, 0
    ReleaseAll
    End

BattleTower_CheckLeaders:
    Call BattleTower_SaveGame
    GoToIfEq VAR_RESULT, 0, BattleTower_WeHopeToSeeYouAgain
    CloseMessage
    SetVar VAR_MAP_LOCAL_1, 2
    Call _097F
    GoToIfNe VAR_RESULT, 0, BattleTower_WeHopeToSeeYouAgain
    ScrCmd_1E3 VAR_0x8004, VAR_0x8005
    BufferNumber 0, VAR_0x8004
    BufferVarPaddingDigits 1, VAR_0x8005, PADDING_MODE_ZEROES, 3
    Message BattleTower_Text_PleaseConfirmPastLeaderHistory
    WaitABPress
    GoTo BattleTower_Close
    End

BattleTower_InitWiFiChallengeMode:
    InitBattleTower 0, BATTLE_TOWER_MODE_WIFI
    GoTo _0360
    End

BattleTower_ChallengeEarlierRoom:
    InitBattleTower 0, BATTLE_TOWER_MODE_5
    GoTo _0360
    End

_0AC3:
    ApplyMovement LOCALID_PLAYER, _1278
    WaitMovement
    Return

BattleTower_MultiBattleRoomAttendant:
    LockAll
    PlayFanfare SEQ_SE_CONFIRM
    SetBattleTowerNull
    Message BattleTower_Text_GuideToMultiBattleRooms
    GoTo BattleTower_AskTakeMultiBattleRoomChallenge
    End

BattleTower_AskTakeMultiBattleRoomChallenge:
    Message BattleTower_Text_AskTakeMultiBattleRoomChallenge
    Call BattleTower_InitChoiceMenuBattleRoomChallenge
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, BattleTower_StartMultiBattleRoomChallenge
    GoToIfEq VAR_0x8008, 1, BattleTower_ExplainMultiBattleRoom
    GoToIfEq VAR_0x8008, 2, BattleTower_WeHopeToSeeYouAgain
    GoTo BattleTower_WeHopeToSeeYouAgain
    End

BattleTower_ExplainMultiBattleRoom:
    Message BattleTower_Text_ExplainMultiBattleRoom
    GoTo BattleTower_AskTakeMultiBattleRoomChallenge
    End

BattleTower_StartMultiBattleRoomChallenge:
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_CHECK_ENOUGH_VALID_POKEMON, 2, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, BattleTower_AskCommunicateWithFriend
    MessageSeenBanlistSpecies BattleTower_Text_NotEnoughEligiblePokemon, 2
    GoTo BattleTower_WaitABXPadPress
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
    GoTo BattleTower_SelectAndValidatePokemonForMultiBattleRoom
    End

BattleTower_InitLinkMultiChallengeMode:
    InitBattleTower 0, BATTLE_TOWER_MODE_LINK_MULTI
    SetVar VAR_MAP_LOCAL_1, 1
    GoTo BattleTower_SelectAndValidatePokemonForMultiBattleRoom
    End

BattleTower_SelectAndValidatePokemonForMultiBattleRoom:
    Message BattleTower_Text_SelectPokemonToEnter
    Call BattleTower_SelectPokemon
    GoToIfEq VAR_RESULT, 0, BattleTower_WeHopeToSeeYouAgain
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_CHECK_DUPLICATE_SPECIES_AND_HELD_ITEMS, 0, VAR_RESULT
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 1, BattleTower_SelectedTwoIdenticalSpecies
    GoToIfEq VAR_0x8008, 2, BattleTower_SelectedTwoIdenticalHeldItems
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_GET_SLOT_INDEX, 0, VAR_RESULT
    TryRevertPokemonForm VAR_RESULT, VAR_RESULT
    GoToIfEq VAR_RESULT, 0xFF, _13CE
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_GET_SLOT_INDEX, 1, VAR_RESULT
    TryRevertPokemonForm VAR_RESULT, VAR_RESULT
    GoToIfEq VAR_RESULT, 0xFF, _13CE
    GoToIfEq VAR_MAP_LOCAL_1, 1, BattleTower_HealAndSaveBeforeCommunicating
    Call _0172
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_SET_COMMUNICATION_CLUB_ACCESSIBLE, 0, 0
    HealParty
    Call BattleTower_SaveGame
    GoToIfEq VAR_RESULT, 0, BattleTower_ClearCommunicationAndClose
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_57, 0, VAR_RESULT
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_52, 0, 0
    Message BattleTower_Text_ShowYouToBattleSalon
    GoTo BattleTower_EnterRespectiveBattleRoom
    End

BattleTower_HealAndSaveBeforeCommunicating:
    HealParty
    Call BattleTower_SaveGame
    GoToIfEq VAR_RESULT, 0, BattleTower_ClearCommunicationAndClose
    GoTo BattleTower_AskJoinGroupOrBecomeLeader
    End

BattleTower_AskJoinGroupOrBecomeLeader:
    Message BattleTower_Text_OneBecomeLeaderOtherJoinGroup
    InitGlobalTextMenu 30, 1, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm MenuEntries_Text_BattleTower_JoinGroup, 0
    AddMenuEntryImm MenuEntries_Text_BattleTower_BecomeLeader, 1
    AddMenuEntryImm MenuEntries_Text_Exit, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, BattleTower_JoinGroup
    GoToIfEq VAR_0x8008, 1, BattleTower_BecomeLeader
    GoTo BattleTower_ClearCommunicationAndClose
    End

BattleTower_JoinGroup:
    Message BattleTower_Text_DSWirelessCommunicationWillBeLaunched
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, BattleTower_AskJoinGroupOrBecomeLeader
    CloseMessage
    StartBattleClient 16, 0, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_CANCEL, BattleTower_CancelJoiningGroup
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_ERROR, BattleTower_EndCommunicationAfterErrorJoiningGroup
    GoTo _0D5C
    End

BattleTower_CancelJoiningGroup:
    GoTo BattleTower_AskJoinGroupOrBecomeLeader
    End

BattleTower_EndCommunicationAfterErrorJoiningGroup:
    EndCommunication
    GoTo BattleTower_AskJoinGroupOrBecomeLeader
    End

BattleTower_BecomeLeader:
    Message BattleTower_Text_DSWirelessCommunicationWillBeLaunched
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, BattleTower_AskJoinGroupOrBecomeLeader
    CloseMessage
    StartBattleServer 16, 0, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_CANCEL, BattleTower_CancelBecomingLeader
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_ERROR, BattleTower_EndCommunicationAfterErrorBecomingLeader
    GoTo _0D5C
    End

BattleTower_CancelBecomingLeader:
    GoTo BattleTower_AskJoinGroupOrBecomeLeader
    End

BattleTower_EndCommunicationAfterErrorBecomingLeader:
    EndCommunication
    GoTo BattleTower_AskJoinGroupOrBecomeLeader
    End

_0D5C:
    ClearReceivedTempDataAllPlayers
    ScrCmd_135 1
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_58, 0, 0
    GoTo _0D72
    End

_0D72:
    ScrCmd_1E1 0, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _0D72
    ScrCmd_1E2 0, VAR_MAP_LOCAL_0
    SetVar VAR_0x8008, VAR_MAP_LOCAL_0
    GoToIfEq VAR_0x8008, 1, BattleTower_OtherPlayerAlsoChosePokemon1
    GoToIfEq VAR_0x8008, 2, BattleTower_OtherPlayerAlsoChosePokemon2
    GoToIfEq VAR_0x8008, 3, BattleTower_OtherPlayerChoseTheSame2Pokemon
    ClearReceivedTempDataAllPlayers
    ScrCmd_135 2
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_57, 0, VAR_0x8004
    GetCurNetID VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _0E8A
    ScrCmd_1E2 1, VAR_MAP_LOCAL_0
    GoTo _0E58
    End

BattleTower_OtherPlayerAlsoChosePokemon1:
    Call _0E4E
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_GET_SLOT_INDEX, 0, VAR_RESULT
    BufferPartyMonSpecies 0, VAR_RESULT
    Message BattleTower_Text_BothTrainersChoseThisPokemon
    GoTo BattleTower_ClearCommunicationAndClose
    End

BattleTower_OtherPlayerAlsoChosePokemon2:
    Call _0E4E
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_GET_SLOT_INDEX, 1, VAR_RESULT
    BufferPartyMonSpecies 0, VAR_RESULT
    Message BattleTower_Text_BothTrainersChoseThisPokemon
    GoTo BattleTower_ClearCommunicationAndClose
    End

BattleTower_OtherPlayerChoseTheSame2Pokemon:
    Call _0E4E
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_GET_SLOT_INDEX, 0, VAR_RESULT
    BufferPartyMonSpecies 0, VAR_RESULT
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_GET_SLOT_INDEX, 1, VAR_RESULT
    BufferPartyMonSpecies 1, VAR_RESULT
    Message BattleTower_Text_BothTrainersChoseThesePokemon
    GoTo BattleTower_ClearCommunicationAndClose
    End

_0E4E:
    ClearReceivedTempDataAllPlayers
    ScrCmd_135 8
    EndCommunication
    Return

_0E58:
    Call _0172
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_SET_COMMUNICATION_CLUB_ACCESSIBLE, 0, 0
    HealParty
    Message BattleTower_Text_RecordWillBeSaved
    Call BattleTower_TrySaveGame
    LogLinkInfoInWiFiHistory
    Message BattleTower_Text_DirectToMultiBattleRoom
    WaitTime 30, VAR_RESULT
    ClearReceivedTempDataAllPlayers
    ScrCmd_135 3
    GoTo BattleTower_EnterRespectiveBattleRoom
    End

_0E8A:
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_52, 0, 0
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_58, 0, 0
    GoTo _0EA2
    End

_0EA2:
    ScrCmd_1E1 1, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _0EA2
    GoTo _0E58
    End

_0EBF:
    LockAll
    FadeScreenIn
    WaitFadeScreen
    Call _0724
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_CHECK_IS_NULL, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, BattleTower_WeHopeToSeeYouAgain
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_HAS_DEFEATED_SEVEN_TRAINERS, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0F7E
    GoTo _0F05
    End

_0F05:
    Message BattleTower_Text_ThankYouForPlaying
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_GET_CHALLENGE_MODE, 0, VAR_RESULT
    SetVar VAR_MAP_LOCAL_0, VAR_RESULT
    SetVar VAR_0x8008, VAR_MAP_LOCAL_0
    GoToIfEq VAR_0x8008, BATTLE_TOWER_MODE_5, _0F53
    GoToIfEq VAR_0x8008, BATTLE_TOWER_MODE_WIFI, _11BA
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_49, 0, VAR_RESULT
    CallIfEq VAR_RESULT, 1, _0F73
    GoTo _0F53
    End

_0F53:
    Message BattleTower_Text_SavingDontTurnOffPower2
    Call BattleTower_TrySaveGame
    CloseMessage
    GoToIfEq VAR_MAP_LOCAL_0, 0, _118A
    GoTo BattleTower_ClearCommunicationAndClose
    End

_0F73:
    Message BattleTower_Text_CongratulationsOnAchievingYour50WinStreak
    PlaySound SEQ_FANFA1
    WaitSound
    Return

_0F7E:
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_GET_CHALLENGE_MODE, 0, VAR_RESULT
    SetVar VAR_MAP_LOCAL_0, VAR_RESULT
    GoToIfEq VAR_MAP_LOCAL_0, BATTLE_TOWER_MODE_5, _116C
    GoToIfEq VAR_MAP_LOCAL_0, BATTLE_TOWER_MODE_SINGLE, _1091
    GoToIfEq VAR_MAP_LOCAL_0, BATTLE_TOWER_MODE_WIFI, _0FEA
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_49, 0, VAR_RESULT
    GoToIfNe VAR_RESULT, 0, _0FD6
    Call _1167
    GoTo _1177
    End

_0FD6:
    Message BattleTower_Text_BeatenAllSevenTrainers
    Message BattleTower_Text_CongratulationsOnAchievingYour50WinStreak
    PlaySound SEQ_FANFA1
    WaitSound
    GoTo _1177
    End

_0FEA:
    Message BattleTower_Text_BeatenAllSevenTrainers
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_54, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _105E
    GoTo _100A
    End

_100A:
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_10, 0, VAR_RESULT
    SetVar VAR_MAP_LOCAL_0, VAR_RESULT
    BufferPlayerName 0
    BufferNumber 1, VAR_MAP_LOCAL_0
    Message BattleTower_Text_PromotedToRank
    GoTo _102B
    End

_102B:
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_49, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _11F5
    GoTo _1048
    End

_1048:
    BufferNumber 0, VAR_MAP_LOCAL_0
    Message BattleTower_Text_CongratulationsOnAchievingRank
    PlaySound SEQ_FANFA1
    WaitSound
    GoTo _11F5
    End

_105E:
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_49, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _11F5
    GoTo _107B
    End

_107B:
    BufferNumber 0, VAR_MAP_LOCAL_0
    Message BattleTower_Text_AwardRibbonToParticipatingPokemon
    PlaySound SEQ_FANFA1
    WaitSound
    GoTo _11F5
    End

_1091:
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_45, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _10AE
    GoTo _10F5
    End

_10AE:
    Call _1167
    GoTo _10BC
    End

_10BC:
    Message BattleTower_Text_SavingDontTurnOffPower
    Call BattleTower_TrySaveGame
    ScrCmd_1DF VAR_RESULT
    GoToIfEq VAR_RESULT, 0, BattleTower_ClearCommunicationAndClose
    Message BattleTower_Text_WeLookForwardToYourNextVisit
    CloseMessage
    SetVar VAR_MAP_LOCAL_2, VAR_RESULT
    SetVar VAR_MAP_LOCAL_1, 1
    Call _0AC3
    GoTo _01C6
    End

_10F5:
    CallIfEq VAR_BATTLE_TOWER_PRINT_STATE, 1, _1135
    CallIfEq VAR_BATTLE_TOWER_PRINT_STATE, 3, _114C
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_48, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _10BC
    Message BattleTower_Text_CongratulationsOnDefeatingTowerTycoon
    PlaySound SEQ_FANFA1
    WaitSound
    GoTo _10BC
    End

_1135:
    Message BattleTower_Text_CommemorativePrint
    BufferPlayerName 0
    Message BattleTower_Text_SilverPrintWasAddedToVsRecorder
    PlaySound SEQ_FANFA4
    WaitSound
    SetVar VAR_BATTLE_TOWER_PRINT_STATE, 2
    Return

_114C:
    Message BattleTower_Text_CommemorativePrint
    BufferPlayerName 0
    Message BattleTower_Text_GoldPrintWasAddedToVsRecorder
    PlaySound SEQ_FANFA4
    WaitSound
    SetVar VAR_BATTLE_TOWER_PRINT_STATE, 4
    CallCommonScript 0x806
    Return

_1167:
    Message BattleTower_Text_BeatenAllSevenTrainers
    Return

_116C:
    Message BattleTower_Text_BeatenAllSevenTrainers2
    GoTo _1177
    End

_1177:
    Message BattleTower_Text_SavingDontTurnOffPower
    Call BattleTower_TrySaveGame
    CloseMessage
    GoTo BattleTower_ClearCommunicationAndClose
    End

_118A:
    ScrCmd_1DF VAR_RESULT
    GoToIfEq VAR_RESULT, 0, BattleTower_ClearCommunicationAndClose
    Message BattleTower_Text_WeLookForwardToYourNextVisit
    CloseMessage
    SetVar VAR_MAP_LOCAL_2, VAR_RESULT
    SetVar VAR_MAP_LOCAL_1, 1
    Call _0AC3
    GoTo _01C6
    End

_11BA:
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_09, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _11D7
    GoTo _11F5
    End

_11D7:
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_10, 0, VAR_RESULT
    SetVar VAR_0x8000, VAR_RESULT
    BufferNumber 0, VAR_0x8000
    Message BattleTower_Text_DemotedToRank
    GoTo _11F5
    End

_11F5:
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_11, 1, 0
    GoTo _1205
    End

_1205:
    Call BattleTower_ClearCommunication
    Message BattleTower_Text_SavingDontTurnOffPower2
    Call BattleTower_TrySaveGame
    Message BattleTower_Text_AskSendResults
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, BattleTower_WeHopeToSeeYouAgain
    Call _096F
    GoToIfNe VAR_RESULT, 0, BattleTower_WeHopeToSeeYouAgain
    Message BattleTower_Text_ResultsWereSent
    GoTo BattleTower_WeHopeToSeeYouAgain
    End
    
    .balign 4, 0
_1248:
    Delay4
    WalkNormalNorth 2
    EndMovement

    .balign 4, 0
_1254:
    WalkNormalNorth
    SetInvisible
    EndMovement

    .balign 4, 0
_1260:
    Delay4
    WalkNormalNorth 2
    EndMovement

    .balign 4, 0
_126C:
    WalkNormalNorth 2
    SetInvisible
    EndMovement

    .balign 4, 0
_1278:
    FaceEast
    EndMovement

_1280:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar VAR_0x8000, 0
    SetVar VAR_0x8001, 0
    Call _1304
    End

_129A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar VAR_0x8000, 0
    SetVar VAR_0x8001, 1
    Call _1304
    End

_12B4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar VAR_0x8000, 0
    SetVar VAR_0x8001, 2
    Call _1304
    End

_12CE:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_1E4 VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _12F9
    SetVar VAR_0x8000, 1
    SetVar VAR_0x8001, 0
    Call _1304
    End

_12F9:
    Message BattleTower_Text_NoDataYet
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1304:
    FadeScreenOut
    WaitFadeScreen
    ScrCmd_1D9 VAR_0x8000, VAR_0x8001
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    Return

BattleTower_ParasolLady:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message BattleTower_Text_UsedToLiveInHoenn
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

BattleTower_Jogger:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message BattleTower_Text_WiFiBattleRoomsAreFullOfSurprises
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

BattleTower_Idol:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message BattleTower_Text_TheyProfileYouOnTV
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

BattleTower_RichBoy:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message BattleTower_Text_ITrainedMyLittleGuy
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

BattleTower_Pikachu1:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message BattleTower_Text_PikachuDotDotDot
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

BattleTower_Artist:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message BattleTower_Text_YouLookPowerful
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

BattleTower_SchoolKid:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message BattleTower_Text_ThereAreManyToughTrainers
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_13AD:
    End

BattleTower_Pikachu2:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_PIKACHU
    Message BattleTower_Text_PikachuPichuu
    WaitCry
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_13CE:
    Call _07B5
    Call _07B9
    CallCommonScript 0x809
    End

BattleTower_StatsJudge:
    PlayFanfare SEQ_SE_CONFIRM
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
    GoToIfEq VAR_0x8000, 0xFF, BattleTower_CancelJudge
    GetPartyMonSpecies VAR_0x8000, VAR_0x8004
    GoToIfEq VAR_0x8004, 0, BattleTower_CantJudgeAnEgg
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
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

BattleTower_CancelJudge:
    Message BattleTower_Text_OhYouDontNeedMeToJudge
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
