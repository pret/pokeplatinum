#include "macros/scrcmd.inc"
#include "res/text/bank/battle_tower.h"
#include "res/text/bank/menu_entries.h"


    ScriptEntry BattleTower_SingleDoubleGuide
    ScriptEntry _0ACF
    ScriptEntry _07E5
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
    ScriptEntry _1328
    ScriptEntry _133B
    ScriptEntry _134E
    ScriptEntry _1361
    ScriptEntry BattleTower_Pikachu1
    ScriptEntry _1387
    ScriptEntry _139A
    ScriptEntry BattleTower_Pikachu2
    ScriptEntry _0062
    ScriptEntry _00F5
    ScriptEntry BattleTower_StatsJudge
    ScriptEntryEnd

_0062:
    CallIfEq VAR_UNK_0x40D8, 1, BattleTower_ShowPoketch
    CallIfEq VAR_UNK_0x40D8, 3, BattleTower_ShowPoketch
    CallIfEq VAR_UNK_0x40D8, 0xFF, BattleTower_ShowPoketch
    ScrCmd_238 19, VAR_MAP_LOCAL_0
    CallIfEq VAR_MAP_LOCAL_0, 0, _0144
    CallIfNe VAR_MAP_LOCAL_0, 0, _014A
    ScrCmd_1E0 VAR_MAP_LOCAL_0
    GoToIfNe VAR_MAP_LOCAL_0, 0, _00DF
    SetFlag FLAG_UNK_0x01E9
    GoTo _00C6
    End

_00C6:
    ScrCmd_238 2, VAR_MAP_LOCAL_0
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
    ScrCmd_1DB 0, 1
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
    Call _079B
    GoTo _0789
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

BattleTower_SingleDoubleGuide:
    LockAll
    PlayFanfare SEQ_SE_CONFIRM
    ScrCmd_1DA
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
    GoToIfEq VAR_0x8008, 0, BattleTower_SingleBattleRoomChallenge
    GoToIfEq VAR_0x8008, 1, BattleTower_DoubleBattleRoomChallenge
    GoToIfEq VAR_0x8008, 2, BattleTower_WeHopeToSeeYouAgain
    GoTo BattleTower_WeHopeToSeeYouAgain
    End

BattleTower_SingleBattleRoomChallenge:
    ScrCmd_1DB 0, 0
    GoTo _0360
    End

_0360:
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_01, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, BattleTower_SelectPokemonForSingleDoubleBattleRoomChallenge
    ScrCmd_1FF 91, 3, 0, 0
    GoTo BattleTower_WaitABXPadPress
    End

BattleTower_DoubleBattleRoomChallenge:
    ScrCmd_1DB 0, 1
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_01, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, BattleTower_SelectPokemonForSingleDoubleBattleRoomChallenge
    ScrCmd_1FF 91, 4, 0, 0
    GoTo BattleTower_WaitABXPadPress
    End

BattleTower_SelectPokemonForSingleDoubleBattleRoomChallenge:
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
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_43, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 4, _09B3
    GoTo _045C
    End

_045C:
    Call _0158
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_SET_COMMUNICATION_CLUB_ACCESSIBLE, 0, 0
    HealParty
    Call BattleTower_SaveGame
    GoToIfEq VAR_RESULT, 0, BattleTower_ClearCommunicationAndExit
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_57, 0, VAR_RESULT
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_52, 0, 0
    Message BattleTower_Text_ShowYouToBattleRoom
    WaitABPress
    GoTo _05EC
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
    ScrCmd_1DB 1, 0xFFFF
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_43, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 2, _0548
    Call _0192
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_SET_COMMUNICATION_CLUB_ACCESSIBLE, 0, 0
    Call _0734
    Message BattleTower_Text_ShowYouToBattleRoom
    WaitABPress
    GoTo _05EC
    End

_0548:
    Call _0577
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_SET_COMMUNICATION_CLUB_ACCESSIBLE, 0, 0
    Call _0734
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_51, 0, VAR_RESULT
    SetVar VAR_MAP_LOCAL_9, VAR_RESULT
    Message BattleTower_Text_DirectToMultiBattleRoom
    WaitABPress
    GoTo _05EC
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
    GoTo BattleTower_ClearCommunicationAndExit
    End

_05B9:
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_09, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, BattleTower_ClearCommunicationAndExit
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_10, 0, VAR_RESULT
    SetVar VAR_0x8000, VAR_RESULT
    BufferNumber 0, VAR_0x8000
    Message BattleTower_Text_DemotedToRank
    GoTo BattleTower_ClearCommunicationAndExit
    End

_05EC:
    CloseMessage
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_43, 0, VAR_RESULT
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 4, _0652
    GoToIfEq VAR_0x8008, 5, _0652
    GoToIfEq VAR_0x8008, 2, _066C
    GoToIfEq VAR_0x8008, 3, _0686
    GoTo _0638
    End

_0638:
    SetVar VAR_MAP_LOCAL_2, 0
    SetVar VAR_MAP_LOCAL_3, 15
    Call BattleTower_EnterBattleRoom
    GoTo _0746
    End

_0652:
    SetVar VAR_MAP_LOCAL_2, 2
    SetVar VAR_MAP_LOCAL_3, 19
    Call BattleTower_EnterBattleRoom
    GoTo _0746
    End

_066C:
    SetVar VAR_MAP_LOCAL_2, 1
    SetVar VAR_MAP_LOCAL_3, 11
    Call BattleTower_EnterBattleRoom
    GoTo _06EE
    End

_0686:
    SetVar VAR_MAP_LOCAL_2, 1
    SetVar VAR_MAP_LOCAL_3, 11
    Call BattleTower_EnterBattleRoom
    GoTo _06A0
    End

_06A0:
    SetVar VAR_UNK_0x40DB, 2
    GoTo _0746
    End

BattleTower_EnterBattleRoom:
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

_06EE:
    GoTo _0746
    End

_06F6:
    LockAll
    Call _0724
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_100, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, BattleTower_WeHopeToSeeYouAgain
    Message BattleTower_Text_SavingDontTurnOffPower2
    Call _0734
    GoTo BattleTower_ClearCommunicationAndExit
    End

_0724:
    Call _07B9
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_CLEAR_COMMUNICATION_CLUB_ACCESSIBLE, 0, 0
    Return

_0734:
    ShowSavingIcon
    TrySaveGame VAR_RESULT
    HideSavingIcon
    PlayFanfare SEQ_SE_DP_SAVE
    WaitFanfare SEQ_SE_DP_SAVE
    Return

_0746:
    IncrementGameRecord RECORD_UNK_058
    CreateJournalEvent LOCATION_EVENT_BATTLE_TOWER, 0, 0, 0, 0
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_BATTLE_TOWER_ELEVATOR, 0, 3, 6, 0
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

BattleTower_ClearCommunicationAndExit:
    Call _079B
BattleTower_WeHopeToSeeYouAgain:
    Message BattleTower_Text_WeHopeToSeeYouAgain
BattleTower_WaitABXPadPress:
    WaitABXPadPress
_0789:
    CloseMessage
    Call _07B5
    Call _07B9
    ReleaseAll
    End

_079B:
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_CLEAR_COMMUNICATION_CLUB_ACCESSIBLE, 0, 0
    Call _07AB
    Return

_07AB:
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_03, 0, 0
    Return

_07B5:
    ScrCmd_1DC
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

_07E5:
    LockAll
    PlayFanfare SEQ_SE_CONFIRM
    ScrCmd_1DA
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_12, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0922
    Message BattleTower_Text_GuideToWiFiBattleRooms
    GoTo _080D
    End

_080D:
    GoTo _0815
    End

_0815:
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_15, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _08A7
    GoTo _0832
    End

_0832:
    Message BattleTower_Text_AskTakeWifiBattleRoomChallenge
    Call _087D
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _0AA7
    GoToIfEq VAR_0x8008, 1, _0A5A
    GoToIfEq VAR_0x8008, 2, _089C
    GoToIfEq VAR_0x8008, 3, BattleTower_WeHopeToSeeYouAgain
    GoTo BattleTower_WeHopeToSeeYouAgain
    End

_087D:
    InitGlobalTextMenu 31, 9, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm 141, 0
    AddMenuEntryImm 151, 1
    AddMenuEntryImm 142, 2
    AddMenuEntryImm 143, 3
    ShowMenu
    Return

_089C:
    Message BattleTower_Text_ExplainWiFiBattleRoom
    GoTo _0815
    End

_08A7:
    Message BattleTower_Text_AskTakeWifiBattleRoomChallenge
    Call _08FF
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _0AA7
    GoToIfEq VAR_0x8008, 1, _0A5A
    GoToIfEq VAR_0x8008, 2, _0AB5
    GoToIfEq VAR_0x8008, 3, _089C
    GoToIfEq VAR_0x8008, 4, BattleTower_WeHopeToSeeYouAgain
    GoTo BattleTower_WeHopeToSeeYouAgain
    End

_08FF:
    InitGlobalTextMenu 31, 7, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm 141, 0
    AddMenuEntryImm 151, 1
    AddMenuEntryImm 152, 2
    AddMenuEntryImm 142, 3
    AddMenuEntryImm 143, 4
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
    GoTo _080D
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
    GoToIfEq VAR_RESULT, 0, BattleTower_ClearCommunicationAndExit
    Call _0158
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_SET_COMMUNICATION_CLUB_ACCESSIBLE, 0, 0
    HealParty
    CloseMessage
    SetVar VAR_MAP_LOCAL_1, 0
    Call _097F
    GoToIfNe VAR_RESULT, 0, BattleTower_ClearCommunicationAndExit
    GoTo _09FB
    End

_09FB:
    Message BattleTower_Text_DirectYouToBattleRoom
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _05EC
    Message BattleTower_Text_AskSaveAndInterruptChallenge
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _09FB
    SetVar VAR_UNK_0x40D8, 2
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_39, 0, 0
    ScrCmd_1DC
    Message BattleTower_Text_SavingDontTurnOffPower2
    Call _0734
    WaitABPressTime 30
    FadeScreenOut
    WaitFadeScreen
    CloseMessage
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_02, 0, 0
    ReleaseAll
    End

_0A5A:
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
    GoTo _0789
    End

_0AA7:
    ScrCmd_1DB 0, 4
    GoTo _0360
    End

_0AB5:
    ScrCmd_1DB 0, 5
    GoTo _0360
    End

_0AC3:
    ApplyMovement LOCALID_PLAYER, _1278
    WaitMovement
    Return

_0ACF:
    LockAll
    PlayFanfare SEQ_SE_CONFIRM
    ScrCmd_1DA
    Message BattleTower_Text_GuideToMultiBattleRooms
    GoTo _0AE2
    End

_0AE2:
    Message BattleTower_Text_AskTakeMultiBattleRoomChallenge
    Call BattleTower_InitChoiceMenuBattleRoomChallenge
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _0B2B
    GoToIfEq VAR_0x8008, 1, _0B20
    GoToIfEq VAR_0x8008, 2, BattleTower_WeHopeToSeeYouAgain
    GoTo BattleTower_WeHopeToSeeYouAgain
    End

_0B20:
    Message BattleTower_Text_ExplainMultiBattleRoom
    GoTo _0AE2
    End

_0B2B:
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_01, 2, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0B50
    ScrCmd_1FF 91, 2, 0, 0
    GoTo BattleTower_WaitABXPadPress
    End

_0B50:
    Message BattleTower_Text_AskCommunicateWithFriend
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0B80
    GoTo _0B6C
    End

_0B6C:
    ScrCmd_1DB 0, 2
    SetVar VAR_MAP_LOCAL_1, 0
    GoTo _0B94
    End

_0B80:
    ScrCmd_1DB 0, 3
    SetVar VAR_MAP_LOCAL_1, 1
    GoTo _0B94
    End

_0B94:
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
    GoToIfEq VAR_MAP_LOCAL_1, 1, _0C53
    Call _0172
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_SET_COMMUNICATION_CLUB_ACCESSIBLE, 0, 0
    HealParty
    Call BattleTower_SaveGame
    GoToIfEq VAR_RESULT, 0, BattleTower_ClearCommunicationAndExit
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_57, 0, VAR_RESULT
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_52, 0, 0
    Message BattleTower_Text_ShowYouToBattleSalon
    GoTo _05EC
    End

_0C53:
    HealParty
    Call BattleTower_SaveGame
    GoToIfEq VAR_RESULT, 0, BattleTower_ClearCommunicationAndExit
    GoTo _0C70
    End

_0C70:
    Message BattleTower_Text_OneBecomeLeaderOtherJoinGroup
    InitGlobalTextMenu 30, 1, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm 13, 0
    AddMenuEntryImm 14, 1
    AddMenuEntryImm 5, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _0CB4
    GoToIfEq VAR_0x8008, 1, _0D08
    GoTo BattleTower_ClearCommunicationAndExit
    End

_0CB4:
    Message BattleTower_Text_DSWirelessCommunicationWillBeLaunched
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _0C70
    CloseMessage
    ScrCmd_0F2 16, 0, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0CF6
    GoToIfEq VAR_RESULT, 3, _0CFE
    GoTo _0D5C
    End

_0CF6:
    GoTo _0C70
    End

_0CFE:
    ScrCmd_150
    GoTo _0C70
    End

_0D08:
    Message BattleTower_Text_DSWirelessCommunicationWillBeLaunched
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _0C70
    CloseMessage
    ScrCmd_0F3 16, 0, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0D4A
    GoToIfEq VAR_RESULT, 3, _0D52
    GoTo _0D5C
    End

_0D4A:
    GoTo _0C70
    End

_0D52:
    ScrCmd_150
    GoTo _0C70
    End

_0D5C:
    ScrCmd_136
    ScrCmd_135 1
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_58, 0, 0
    GoTo _0D72
    End

_0D72:
    ScrCmd_1E1 0, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _0D72
    ScrCmd_1E2 0, VAR_MAP_LOCAL_0
    SetVar VAR_0x8008, VAR_MAP_LOCAL_0
    GoToIfEq VAR_0x8008, 1, _0DE7
    GoToIfEq VAR_0x8008, 2, _0E05
    GoToIfEq VAR_0x8008, 3, _0E23
    ScrCmd_136
    ScrCmd_135 2
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_57, 0, VAR_0x8004
    ScrCmd_207 VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _0E8A
    ScrCmd_1E2 1, VAR_MAP_LOCAL_0
    GoTo _0E58
    End

_0DE7:
    Call _0E4E
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_GET_SLOT_INDEX, 0, VAR_RESULT
    BufferPartyMonSpecies 0, VAR_RESULT
    Message BattleTower_Text_BothTrainersChoseThisPokemon
    GoTo BattleTower_ClearCommunicationAndExit
    End

_0E05:
    Call _0E4E
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_GET_SLOT_INDEX, 1, VAR_RESULT
    BufferPartyMonSpecies 0, VAR_RESULT
    Message BattleTower_Text_BothTrainersChoseThisPokemon
    GoTo BattleTower_ClearCommunicationAndExit
    End

_0E23:
    Call _0E4E
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_GET_SLOT_INDEX, 0, VAR_RESULT
    BufferPartyMonSpecies 0, VAR_RESULT
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_GET_SLOT_INDEX, 1, VAR_RESULT
    BufferPartyMonSpecies 1, VAR_RESULT
    Message BattleTower_Text_BothTrainersChoseThesePokemon
    GoTo BattleTower_ClearCommunicationAndExit
    End

_0E4E:
    ScrCmd_136
    ScrCmd_135 8
    ScrCmd_150
    Return

_0E58:
    Call _0172
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_SET_COMMUNICATION_CLUB_ACCESSIBLE, 0, 0
    HealParty
    Message BattleTower_Text_RecordWillBeSaved
    Call _0734
    ScrCmd_330
    Message BattleTower_Text_DirectToMultiBattleRoom
    WaitTime 30, VAR_RESULT
    ScrCmd_136
    ScrCmd_135 3
    GoTo _05EC
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
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_100, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, BattleTower_WeHopeToSeeYouAgain
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_35, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0F7E
    GoTo _0F05
    End

_0F05:
    Message BattleTower_Text_ThankYouForPlaying
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_43, 0, VAR_RESULT
    SetVar VAR_MAP_LOCAL_0, VAR_RESULT
    SetVar VAR_0x8008, VAR_MAP_LOCAL_0
    GoToIfEq VAR_0x8008, 5, _0F53
    GoToIfEq VAR_0x8008, 4, _11BA
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_49, 0, VAR_RESULT
    CallIfEq VAR_RESULT, 1, _0F73
    GoTo _0F53
    End

_0F53:
    Message BattleTower_Text_SavingDontTurnOffPower2
    Call _0734
    CloseMessage
    GoToIfEq VAR_MAP_LOCAL_0, 0, _118A
    GoTo BattleTower_ClearCommunicationAndExit
    End

_0F73:
    Message BattleTower_Text_CongratulationsOnAchievingYour50WinStreak
    PlaySound SEQ_FANFA1
    WaitSound
    Return

_0F7E:
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_43, 0, VAR_RESULT
    SetVar VAR_MAP_LOCAL_0, VAR_RESULT
    GoToIfEq VAR_MAP_LOCAL_0, 5, _116C
    GoToIfEq VAR_MAP_LOCAL_0, 0, _1091
    GoToIfEq VAR_MAP_LOCAL_0, 4, _0FEA
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
    Call _0734
    ScrCmd_1DF VAR_RESULT
    GoToIfEq VAR_RESULT, 0, BattleTower_ClearCommunicationAndExit
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
    Call _0734
    CloseMessage
    GoTo BattleTower_ClearCommunicationAndExit
    End

_118A:
    ScrCmd_1DF VAR_RESULT
    GoToIfEq VAR_RESULT, 0, BattleTower_ClearCommunicationAndExit
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
    Call _079B
    Message BattleTower_Text_SavingDontTurnOffPower2
    Call _0734
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

_1328:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message BattleTower_Text_UsedToLiveInHoenn
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_133B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message BattleTower_Text_WiFiBattleRoomsAreFullOfSurprises
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_134E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message BattleTower_Text_TheyProfileYouOnTV
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1361:
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

_1387:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message BattleTower_Text_YouLookPowerful
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_139A:
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
