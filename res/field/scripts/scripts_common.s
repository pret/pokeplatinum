#include "macros/scrcmd.inc"
#include "generated/distribution_events.h"
#include "generated/player_transitions.h"
#include "generated/time_of_day.h"
#include "constants/trainer_card_levels.h"
#include "generated/tutor_locations.h"
#include "res/text/bank/common_strings.h"
#include "res/text/bank/menu_entries.h"

    ScriptEntry CommonScript_HandleSignpostInput @ 0x7D0
    ScriptEntry CommonScript_CheckBagPocketForItem @ 0x7D1
    ScriptEntry CommonScript_PokecenterNurse @ 0x7D2
    ScriptEntry _03E8 @ 0x7D3
    ScriptEntry _043B @ 0x7D4
    ScriptEntry _0479 @ 0x7D5
    ScriptEntry CommonScript_SaveGame  @ 0x7D6
    ScriptEntry CommonScript_EmptyScript2 @ 0x7D7
    ScriptEntry _05EA @ 0x7D8
    ScriptEntry CommonScript_ObtainPoketchApp @ 0x7D9
    ScriptEntry CommonScript_EmptyScript1 @ 0x7DA
    ScriptEntry CommonScript_EmptyScript3 @ 0x7DB
    ScriptEntry CommonScript_SendToUndergroundPC @ 0x7DC
    ScriptEntry CommonScript_ObtainUndergroundTrap @ 0x7DD
    ScriptEntry CommonScript_ObtainUndergroundSphere @ 0x7DE
    ScriptEntry CommonScript_ObtainAccessoryWaitForConfirm @ 0x7DF
    ScriptEntry CommonScript_AddItemQuantityNoLineFeed @ 0x7E0
    ScriptEntry CommonScript_BagIsFull @ 0x7E1
    ScriptEntry _0BEE @ 0x7E2
    ScriptEntry CommonScript_VendorGreetingGeneric @ 0x7E3
    ScriptEntry CommonScript_PlayerHouseBlackOutRecover @ 0x7E4
    ScriptEntry CommonScript_PokecenterBlackOutRecover @ 0x7E5
    ScriptEntry CommonScript_EmptyScript4 @ 0x7E6
    ScriptEntry _0FA7 @ 0x7E7
    ScriptEntry CommonScript_EmptyScript5 @ 0x7E8
    ScriptEntry _1282 @ 0x7E9
    ScriptEntry _12A8 @ 0x7EA
    ScriptEntry CommonScript_Vent @ 0x7EB
    ScriptEntry _12CD @ 0x7EC
    ScriptEntry _12E0 @ 0x7ED
    ScriptEntry _12F3 @ 0x7EE
    ScriptEntry _1361 @ 0x7EF
    ScriptEntry _138C @ 0x7F0
    ScriptEntry _139D @ 0x7F1
    ScriptEntry _048B @ 0x7F2
    ScriptEntry _13AB @ 0x7F3
    ScriptEntry CommonScript_ObtainContestBackdropWaitForConfirm @ 0x7F4
    ScriptEntry CommonScript_EmptyScript6 @ 0x7F5
    ScriptEntry CommonScript_PrintPlateObtainedMessage @ 0x7F6
    ScriptEntry _1477 @ 0x7F7
    ScriptEntry CommonScript_SetCounterpartBGM @ 0x7F8
    ScriptEntry CommonScript_FadeToDefaultMusic @ 0x7F9
    ScriptEntry CommonScript_SetRivalBGM @ 0x7FA
    ScriptEntry CommonScript_FadeToDefaultMusic @ 0x7FB
    ScriptEntry CommonScript_AddItemQuantity @ 0x7FC
    ScriptEntry CommonScript_ObtainContestBackdrop @ 0x7FD
    ScriptEntry CommonScript_SendToUndergroundPCWithLinefeed @ 0x7FE
    ScriptEntry CommonScript_ObtainAccessory @ 0x7FF
    ScriptEntry CommonScript_SetFollowMeBGM @ 0x800
    ScriptEntry CommonScript_FadeToDefaultMusic @ 0x801
    ScriptEntry _15E7 @ 0x802
    ScriptEntry _1636 @ 0x803
    ScriptEntry _164A @ 0x804
    ScriptEntry _165E @ 0x805
    ScriptEntry CommonScript_Frontier_CheckAllFrontierGoldPrintsObtained @ 0x806
    ScriptEntry CommonScript_SetLookerBGM @ 0x807
    ScriptEntry CommonScript_FadeToDefaultMusic @ 0x808
    ScriptEntry CommonScript_GriseousOrbCouldNotBeRemoved @ 0x809
    ScriptEntryEnd

CommonScript_EmptyScript1:
    End

CommonScript_EmptyScript2:
    End

CommonScript_PokecenterNurse:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetTrainerCardLevel VAR_RESULT
    GoToIfGe VAR_RESULT, TRAINER_CARD_LEVEL_GOLD, CommonScript_PokecenterNurse_GoldCard
    SetVar VAR_0x8004, CommonStrings_Text_PokecenterGreeting_Day
    GetTimeOfDay VAR_RESULT
    Dummy1F9 VAR_RESULT
    SetVar VAR_0x8004, CommonStrings_Text_PokecenterGreeting_Morning
    GoToIfEq VAR_RESULT, TIMEOFDAY_MORNING, CommonScript_PokecenterNurse_Greeting
    SetVar VAR_0x8004, CommonStrings_Text_PokecenterGreeting_Night
    GoToIfEq VAR_RESULT, TIMEOFDAY_DAY, CommonScript_PokecenterNurse_Greeting
    SetVar VAR_0x8004, CommonStrings_Text_PokecenterGreeting_Day
CommonScript_PokecenterNurse_Greeting:
    MessageVar VAR_0x8004
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, CommonScript_PokecenterNurse_AcceptHealPokemon
    GoToIfEq VAR_RESULT, MENU_NO, CommonScript_PokecenterNurse_DeclineHealPokemon
    End

CommonScript_PokecenterNurse_DeclineHealPokemon:
    Message CommonStrings_Text_PokecenterHopeToSeeYouAgain1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    ReturnCommonScript
    End

CommonScript_PokecenterNurse_AcceptHealPokemon:
    SetPlayerState PLAYER_TRANSITION_HEALING
    ChangePlayerState
    ApplyMovement LOCALID_PLAYER, CommonScript_PokecenterNurse_PlayerGivePokemonMovement
    WaitMovement
    GetTrainerCardLevel VAR_RESULT
    CallIfGe VAR_RESULT, TRAINER_CARD_LEVEL_GOLD, CommonScript_PokecenterNurse_TakePokemonMessage_GoldCard
    CallIfLt VAR_RESULT, TRAINER_CARD_LEVEL_GOLD, CommonScript_PokecenterNurse_TakePokemonMessage
    Call CommonScript_PokecenterNurse_HealPokemon
    GoToIfUnset FLAG_POKECENTER_IDENTIFIED_POKERUS, CommonScript_PokecenterNurse_CheckPokerus
    GoTo CommonScript_PokecenterNurse_FarewellAfterHeal

CommonScript_PokecenterNurse_TakePokemonMessage:
    Message CommonStrings_Text_PokecenterTakeYourPokemon
    Return

CommonScript_PokecenterNurse_TakePokemonMessage_GoldCard:
    Message CommonStrings_Text_PokecenterTakeYourPokemon_GoldCard
    Return

CommonScript_PokecenterNurse_HealPokemon:
    ApplyMovement VAR_0x8007, CommonScript_PokecenterNurse_TurnToMachineMovement
    WaitMovement
    CountPartyNonEggs VAR_0x8006
    PlayPokecenterHealingAnimation VAR_0x8006
    ApplyMovement VAR_0x8007, CommonScript_PokecenterNurse_TurnToPlayerMovement
    WaitMovement
    HealParty
    Return

CommonScript_PokecenterNurse_FarewellAfterHeal:
    GoToIfEq VAR_0x8004, TRUE, CommonScript_PokecenterNurse_FarewellAfterHeal_GoldCard
    Message CommonStrings_Text_PokecenterRestoredYourPokemon
    ApplyMovement LOCALID_PLAYER, CommonScript_PokecenterNurse_PlayerRetrievePokemonMovement
    WaitMovement
    SetPlayerState PLAYER_TRANSITION_WALKING
    ChangePlayerState
    ApplyMovement VAR_0x8007, CommonScript_PokecenterNurse_NurseBowMovement
    WaitMovement
    Message CommonStrings_Text_PokecenterHopeToSeeYouAgain1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    ReturnCommonScript
    End

CommonScript_PokecenterNurse_FarewellAfterHeal_GoldCard:
    Message CommonStrings_Text_PokecenterThankYouForWaiting
    ApplyMovement LOCALID_PLAYER, CommonScript_PokecenterNurse_PlayerRetrievePokemonMovement
    WaitMovement
    SetPlayerState PLAYER_TRANSITION_WALKING
    ChangePlayerState
    ApplyMovement VAR_0x8007, CommonScript_PokecenterNurse_NurseBowMovement
    WaitMovement
    Message CommonStrings_Text_PokecenterHopeToSeeYouAgain2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    ReturnCommonScript
    End

CommonScript_PokecenterNurse_CheckPokerus:
    CheckPartyPokerus VAR_0x8006
    GoToIfEq VAR_0x8006, TRUE, CommonScript_PokecenterNurse_IdentifiedPokerus
    GoTo CommonScript_PokecenterNurse_FarewellAfterHeal

CommonScript_PokecenterNurse_IdentifiedPokerus:
    SetFlag FLAG_POKECENTER_IDENTIFIED_POKERUS
    ApplyMovement LOCALID_PLAYER, CommonScript_PokecenterNurse_PlayerRetrievePokemonMovement
    WaitMovement
    SetPlayerState PLAYER_TRANSITION_WALKING
    ChangePlayerState
    Message CommonStrings_Text_PokecenterYourPokemonMayBeInfected
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    ReturnCommonScript
    End

CommonScript_PokecenterNurse_GoldCard:
    GoToIfSet FLAG_POKECENTER_GOLD_TRAINER_CARD_SEEN, CommonScript_PokecenterNurse_GoldCard_PreviouslySeen
    SetFlag FLAG_POKECENTER_GOLD_TRAINER_CARD_SEEN
    Message CommonStrings_Text_PokecenterGreeting_Interrupted
    BufferPlayerName 0
    Message CommonStrings_Text_PokecenterThatTrainerCard
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, CommonScript_PokecenterNurse_AcceptHealPokemon_GoldCard
    Message CommonStrings_Text_PokecenterHopeToSeeYouAgain2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    ReturnCommonScript
    End

CommonScript_PokecenterNurse_GoldCard_PreviouslySeen:
    BufferPlayerName 0
    Message CommonStrings_Text_PokecenterGreatToSeeYou
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, CommonScript_PokecenterNurse_AcceptHealPokemon_GoldCard
    Message CommonStrings_Text_PokecenterHopeToSeeYouAgain2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    ReturnCommonScript
    End

CommonScript_PokecenterNurse_AcceptHealPokemon_GoldCard:
    SetVar VAR_0x8004, TRUE
    GoTo CommonScript_PokecenterNurse_AcceptHealPokemon

    .balign 4, 0
CommonScript_PokecenterNurse_NurseBowMovement:
    PokecenterNurseBow
    Delay4
    EndMovement

    .balign 4, 0
CommonScript_PokecenterNurse_PlayerGivePokemonMovement:
    PlayerGive
    EndMovement

    .balign 4, 0
CommonScript_PokecenterNurse_PlayerRetrievePokemonMovement:
    PlayerReceive
    EndMovement

CommonScript_HandleSignpostInput:
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, CommonScript_ScrollOutSignpost
    GoToIfEq VAR_0x8008, 1, CommonScript_RemoveSignpostOpenStartMenu
    GetSignpostInput
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 1, CommonScript_RemoveSignpostOpenStartMenu
    SetSignpostCommand SIGNPOST_CMD_SCROLL_OUT
    ReturnCommonScript
    End

CommonScript_ScrollOutSignpost:
    SetSignpostCommand SIGNPOST_CMD_SCROLL_OUT
    ReturnCommonScript
    End

CommonScript_RemoveSignpostOpenStartMenu:
    SetSignpostCommand SIGNPOST_CMD_REMOVE
    WaitForSignpostDone
    ShowStartMenu
    ReturnCommonScript
    End

CommonScript_CheckBagPocketForItem:
    Call CommonScript_GetBagPocketForItem
    ReturnCommonScript
    End

CommonScript_GetBagPocketForItem:
    GetItemPocket VAR_0x8004, VAR_RESULT
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, POCKET_KEY_ITEMS, CommonScript_PlaySound_SEQ_FANFA3
    GoToIfEq VAR_0x8008, POCKET_ITEMS, CommonScript_PlaySound_SEQ_FANFA4
    GoToIfEq VAR_0x8008, POCKET_BERRIES, CommonScript_PlaySound_SEQ_FANFA4
    GoToIfEq VAR_0x8008, POCKET_MEDICINE, CommonScript_PlaySound_SEQ_FANFA4
    GoToIfEq VAR_0x8008, POCKET_BALLS, CommonScript_PlaySound_SEQ_FANFA4
    GoToIfEq VAR_0x8008, POCKET_BATTLE_ITEMS, CommonScript_PlaySound_SEQ_FANFA4
    GoToIfEq VAR_0x8008, POCKET_MAIL, CommonScript_PlaySound_SEQ_FANFA2
    GoToIfEq VAR_0x8008, POCKET_TMHMS, CommonScript_PlaySound_SEQ_WAZA
    End

CommonScript_PlaySound_SEQ_FANFA4:
    PlaySound SEQ_FANFA4
    Return

CommonScript_PlaySound_SEQ_WAZA:
    PlaySound SEQ_WAZA
    Return

CommonScript_PlaySound_SEQ_FANFA3:
    PlaySound SEQ_FANFA3
    Return

CommonScript_PlaySound_SEQ_FANFA2:
    PlaySound SEQ_FANFA2
    Return

CommonScript_Unused:
    ReturnCommonScript
    End

_03E8:
    LockAll
    GetPartyCount VAR_0x8004
    SetVar VAR_0x8005, 0
_03F4:
    SurvivePoison VAR_RESULT, VAR_0x8005
    GoToIfEq VAR_RESULT, 0, _040F
    BufferPartyMonNickname 0, VAR_0x8005
    Message pl_msg_00000213_00066
_040F:
    AddVar VAR_0x8005, 1
    GoToIfNe VAR_0x8004, VAR_0x8005, _03F4
    CountAliveMonsExcept VAR_RESULT, 6
    GoToIfEq VAR_RESULT, 0, _0457
    CloseMessage
    ReleaseAll
    End

_043B:
    FadeScreenIn
    WaitFadeScreen
    WaitABPress
    FadeScreenOut
    WaitFadeScreen
    End

_0457:
    BufferPlayerName 0
    Message pl_msg_00000213_00011
    WaitABPress
    CloseMessage
    FadeOutBGM 0, 10
    FadeScreenOut
    WaitFadeScreen
    WaitForTransition
    BlackOutFromBattle2
    End

_0479:
    ClearFlag FLAG_SAVE_EXTRA_BLOCK
    Call CommonScript_SaveGame_Dialog
    ScrCmd_18F VAR_RESULT
    CloseMessage
    End

_048B:
    Message pl_msg_00000213_00020
    WaitABPress
    CloseMessage
    End

CommonScript_SaveGame:
    SetFlag FLAG_SAVE_EXTRA_BLOCK
    Call CommonScript_SaveGame_Dialog
    SetVar VAR_MAP_LOCAL_0, VAR_RESULT
    ReturnCommonScript
    End

CommonScript_SaveGame_Dialog:
    CheckSaveType VAR_RESULT
    GoToIfEq VAR_RESULT, SAVE_TYPE_OVERWRITE, CommonScript_SaveGame_ImpossibleToSave
    OpenSaveInfo
    Message pl_msg_00000213_00013
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, CommonScript_SaveGame_Cancel
    CheckSaveType VAR_RESULT
    GoToIfEq VAR_RESULT, SAVE_TYPE_NO_DATA_EXISTS, CommonScript_SaveGame_SavingALotOfData
    GoToIfEq VAR_RESULT, SAVE_TYPE_FULL_SAVE, CommonScript_SaveGame_FullSave_OverwriteCheck
    GoToIfEq VAR_RESULT, SAVE_TYPE_QUICK_SAVE, CommonScript_SaveGame_QuickSave_OverwriteCheck
    End

CommonScript_SaveGame_ImpossibleToSave:
    Message pl_msg_00000213_00020
    WaitABPress
    SetVar VAR_RESULT, 0
    Return

CommonScript_SaveGame_FullSave_OverwriteCheck:
    Message pl_msg_00000213_00014
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, CommonScript_SaveGame_Cancel
CommonScript_SaveGame_SavingALotOfData:
    Message pl_msg_00000213_00021
    GoTo CommonScript_SaveGame_StartSave

CommonScript_SaveGame_QuickSave_OverwriteCheck:
    Message pl_msg_00000213_00014
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, CommonScript_SaveGame_Cancel
    GoToIfUnset FLAG_SAVE_EXTRA_BLOCK, CommonScript_QuickSave_Save
    GoToIfSet FLAG_SAVE_EXTRA_BLOCK, CommonScript_QuickSave_CheckMiscFlag
    End

CommonScript_SaveGame_StartSave:
    ScrCmd_258
    WaitTime 2, VAR_RESULT
    Call CommonScript_SaveGame_DoSave
    ScrCmd_259
    GoTo CommonScript_SaveGame_SaveComplete

CommonScript_SaveGame_DoSave:
    ShowSavingIcon
    CallIfSet FLAG_SAVE_EXTRA_BLOCK, CommonScript_SaveGame_SaveExtraBlock
    TrySaveGame VAR_RESULT
    HideSavingIcon
    Return

CommonScript_SaveGame_SaveComplete:
    GoToIfEq VAR_RESULT, 0, CommonScript_SaveGame_SaveError
    BufferPlayerName 0
    Message CommonStrings_Text_PlayerSavedTheGame
    PlayFanfare SEQ_SE_DP_SAVE
    WaitFanfare SEQ_SE_DP_SAVE
    WaitABPressTime 30
    CloseSaveInfo
    Return

CommonScript_SaveGame_Cancel:
    CloseSaveInfo
    SetVar VAR_RESULT, 0
    Return

CommonScript_SaveGame_SaveError:
    Message CommonStrings_Text_SaveError
    WaitABPress
    CloseSaveInfo
    Return

CommonScript_QuickSave_DoFullSave:
    Message pl_msg_00000213_00021
    GoTo CommonScript_SaveGame_StartSave
    End

CommonScript_SaveGame_SaveExtraBlock:
    SaveExtraData
    ClearFlag FLAG_SAVE_EXTRA_BLOCK
    Return

CommonScript_QuickSave_Save:
    Message CommonStrings_Text_SavingDontTurnOffThePower
    GoTo CommonScript_SaveGame_StartSave
    End

CommonScript_QuickSave_CheckMiscFlag:
    CheckIsMiscSaveInit VAR_RESULT
    GoToIfEq VAR_RESULT, 0, CommonScript_QuickSave_DoFullSave
    GoTo CommonScript_QuickSave_Save
    End

_05EA:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    CheckItem ITEM_HONEY, 1, VAR_RESULT
    GoToIfNe VAR_RESULT, 0, _0632
    GetHoneyTreeStatus VAR_RESULT
    GoToIfEq VAR_RESULT, TREE_STATUS_BARE, _065F
    GoToIfEq VAR_RESULT, TREE_STATUS_SLATHERED, _066A
    GoToIfEq VAR_RESULT, TREE_STATUS_ENCOUNTER, _06F4
    End

_0632:
    GetHoneyTreeStatus VAR_RESULT
    GoToIfEq VAR_RESULT, TREE_STATUS_BARE, _0675
    GoToIfEq VAR_RESULT, TREE_STATUS_SLATHERED, _067E
    GoToIfEq VAR_RESULT, TREE_STATUS_ENCOUNTER, _06F4
    End

_065F:
    Message pl_msg_00000213_00046
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_066A:
    Message pl_msg_00000213_00048
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0675:
    Message pl_msg_00000213_00047
    GoTo _06BB

_067E:
    Message pl_msg_00000213_00049
    GoTo _06BB

CommonScript_Unused2:
    CheckItem ITEM_HONEY, 1, VAR_RESULT
    GoToIfNe VAR_RESULT, 0, _06BB
    CloseMessage
    ReleaseAll
    End

_06A2:
    CheckItem ITEM_HONEY, 1, VAR_RESULT
    GoToIfNe VAR_RESULT, 0, _06BB
    ReleaseAll
    End

_06BB:
    Message pl_msg_00000213_00050
    ShowYesNoMenu VAR_RESULT
    CloseMessage
    GoToIfEq VAR_RESULT, MENU_YES, _06D5
    ReleaseAll
    End

_06D5:
    RemoveItem ITEM_HONEY, 1, VAR_RESULT
    IncrementTrainerScore2 TRAINER_SCORE_EVENT_HONEY_USED
    SlatherHoneyTree
    WaitTime 10, VAR_RESULT
    Message pl_msg_00000213_00051
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_06F4:
    IncrementGameRecord RECORD_UNK_117
    StartHoneyTreeBattle
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, _0713
    ScrCmd_12A
    GoTo _06A2

_0713:
    BlackOutFromBattle
    ReleaseAll
    End

CommonScript_ObtainPoketchApp:
    Call CommonScript_InternalObtainPoketchApp
    ReturnCommonScript
    End

CommonScript_InternalObtainPoketchApp:
    BufferPlayerName 0
    BufferPoketchAppName 1, VAR_0x8004
    PlaySound SEQ_POCKETCH
    Message CommonStrings_Text_ObtainedPoketchApp
    WaitSound
    Message CommonStrings_Text_InstalledPoketchApp
    RegisterPoketchApp VAR_0x8004
    CallIfEq VAR_0x8004, POKETCH_APPID_DIGITALWATCH, CommonScript_ObtainedPoketchDigitalWatch
    CallIfEq VAR_0x8004, POKETCH_APPID_CALCULATOR, CommonScript_ObtainedPoketchCalculator
    CallIfEq VAR_0x8004, POKETCH_APPID_MEMOPAD, CommonScript_ObtainedPoketchMemopad
    CallIfEq VAR_0x8004, POKETCH_APPID_PEDOMETER, CommonScript_ObtainedPoketchPedometer
    CallIfEq VAR_0x8004, POKETCH_APPID_PARTYSTATUS, CommonScript_ObtainedPoketchPartyStatus
    CallIfEq VAR_0x8004, POKETCH_APPID_FRIENDSHIPCHECKER, CommonScript_ObtainedPoketchFriendshipChecker
    CallIfEq VAR_0x8004, POKETCH_APPID_DOWSINGMACHINE, CommonScript_ObtainedPoketchDowsingMachine
    CallIfEq VAR_0x8004, POKETCH_APPID_BERRYSEARCHER, CommonScript_ObtainedPoketchBerrySearcher
    CallIfEq VAR_0x8004, POKETCH_APPID_DAYCARECHECKER, CommonScript_ObtainedPoketchDayCareChecker
    CallIfEq VAR_0x8004, POKETCH_APPID_POKEMONHISTORY, CommonScript_ObtainedPoketchPokemonHistory
    CallIfEq VAR_0x8004, POKETCH_APPID_COUNTER, CommonScript_ObtainedPoketchCounter
    CallIfEq VAR_0x8004, POKETCH_APPID_ANALOGWATCH, CommonScript_ObtainedPoketchAnalogWatch
    CallIfEq VAR_0x8004, POKETCH_APPID_MARKINGMAP, CommonScript_ObtainedPoketchMarkingMap
    CallIfEq VAR_0x8004, POKETCH_APPID_LINKSEARCHER, CommonScript_ObtainedPoketchLinkSearcher
    CallIfEq VAR_0x8004, POKETCH_APPID_COINTOSS, CommonScript_ObtainedPoketchCoinToss
    CallIfEq VAR_0x8004, POKETCH_APPID_MOVETESTER, CommonScript_ObtainedPoketchMoveTester
    CallIfEq VAR_0x8004, POKETCH_APPID_CALENDAR, CommonScript_ObtainedPoketchCalendar
    CallIfEq VAR_0x8004, POKETCH_APPID_DOTART, CommonScript_ObtainedPoketchDotArt
    CallIfEq VAR_0x8004, POKETCH_APPID_ROULETTE, CommonScript_ObtainedPoketchRoulette
    CallIfEq VAR_0x8004, POKETCH_APPID_TRAINERCOUNTER, CommonScript_ObtainedPoketchRadarChainCounter
    CallIfEq VAR_0x8004, POKETCH_APPID_KITCHENTIMER, CommonScript_ObtainedPoketchKitchenTimer
    CallIfEq VAR_0x8004, POKETCH_APPID_COLORCHANGER, CommonScript_ObtainedPoketchColorChanger
    CallIfEq VAR_0x8004, POKETCH_APPID_MATCHUPCHECKER, CommonScript_ObtainedPoketchMatchupChecker
    CallIfEq VAR_0x8004, POKETCH_APPID_STOPWATCH, CommonScript_ObtainedPoketchStopwatch
    CallIfEq VAR_0x8004, POKETCH_APPID_ALARMCLOCK, CommonScript_ObtainedPoketchAlarmClock
    Return

CommonScript_ObtainedPoketchDigitalWatch:
    Message pl_msg_00000213_00083
    Return

CommonScript_ObtainedPoketchCalculator:
    Message pl_msg_00000213_00084
    Return

CommonScript_ObtainedPoketchMemopad:
    Message pl_msg_00000213_00085
    Return

CommonScript_ObtainedPoketchPedometer:
    Message pl_msg_00000213_00086
    Return

CommonScript_ObtainedPoketchPartyStatus:
    Message pl_msg_00000213_00087
    Return

CommonScript_ObtainedPoketchFriendshipChecker:
    Message pl_msg_00000213_00088
    Return

CommonScript_ObtainedPoketchDowsingMachine:
    Message pl_msg_00000213_00089
    Return

CommonScript_ObtainedPoketchBerrySearcher:
    Message pl_msg_00000213_00090
    Return

CommonScript_ObtainedPoketchDayCareChecker:
    Message pl_msg_00000213_00091
    Return

CommonScript_ObtainedPoketchPokemonHistory:
    Message pl_msg_00000213_00092
    Return

CommonScript_ObtainedPoketchCounter:
    Message CommonStrings_Text_ObtainedPoketchCounter
    Return

CommonScript_ObtainedPoketchAnalogWatch:
    Message pl_msg_00000213_00094
    Return

CommonScript_ObtainedPoketchMarkingMap:
    Message pl_msg_00000213_00095
    Return

CommonScript_ObtainedPoketchLinkSearcher:
    Message pl_msg_00000213_00096
    Return

CommonScript_ObtainedPoketchCoinToss:
    Message pl_msg_00000213_00097
    Return

CommonScript_ObtainedPoketchMoveTester:
    Message pl_msg_00000213_00098
    Return

CommonScript_ObtainedPoketchCalendar:
    Message pl_msg_00000213_00099
    Return

CommonScript_ObtainedPoketchDotArt:
    Message pl_msg_00000213_00100
    Return

CommonScript_ObtainedPoketchRoulette:
    Message pl_msg_00000213_00101
    Return

CommonScript_ObtainedPoketchRadarChainCounter:
    Message pl_msg_00000213_00102
    Return

CommonScript_ObtainedPoketchKitchenTimer:
    Message pl_msg_00000213_00103
    Return

CommonScript_ObtainedPoketchColorChanger:
    Message pl_msg_00000213_00104
    Return

CommonScript_ObtainedPoketchMatchupChecker:
    Message pl_msg_00000213_00105
    Return

CommonScript_ObtainedPoketchStopwatch:
    Message pl_msg_00000213_00106
    Return

CommonScript_ObtainedPoketchAlarmClock:
    Message pl_msg_00000213_00107
    Return

CommonScript_EmptyScript3:
    End

CommonScript_SendToUndergroundPC:
    Call CommonScript_ObtainUndergroundItem
    Message pl_msg_00000213_00109
    WaitABXPadPress
    ReturnCommonScript
    End

CommonScript_SendToUndergroundPCWithLinefeed:
    Call CommonScript_ObtainUndergroundItem
    Message pl_msg_00000213_00128
    ReturnCommonScript
    End

CommonScript_ObtainUndergroundItem:
    PlaySound SEQ_FANFA4
    SendGoodToPC VAR_0x8004, VAR_0x8005, VAR_RESULT
    BufferUndergroundGoodsNameWithArticle 0, VAR_0x8004
    Message pl_msg_00000213_00108
    BufferUndergroundGoodsName 0, VAR_0x8004
    WaitSound
    Return

CommonScript_ObtainUndergroundTrap:
    Call CommonScript_InternalObtainUndergroundTrap
    ReturnCommonScript
    End

CommonScript_InternalObtainUndergroundTrap:
    PlaySound SEQ_FANFA4
    GiveTrap VAR_0x8004, VAR_0x8005, VAR_RESULT
    BufferUndergroundTrapName 0, VAR_0x8004
    Message pl_msg_00000213_00080
    WaitSound
    Return

CommonScript_ObtainUndergroundSphere:
    Call CommonScript_InternalObtainUndergroundSphere
    ReturnCommonScript
    End

CommonScript_InternalObtainUndergroundSphere:
    PlaySound SEQ_FANFA4
    GiveSphere VAR_0x8004, VAR_0x8005, VAR_RESULT
    BufferUndergroundItemName 0, VAR_0x8004
    BufferNumber 1, VAR_0x8005
    Message pl_msg_00000213_00081
    WaitSound
    Return

CommonScript_ObtainAccessoryWaitForConfirm:
    Call CommonScript_InternalObtainAccessory
    Message CommonStrings_Text_PutAwayItemInTheFashionCaseNoLineFeed
    WaitABXPadPress
    ReturnCommonScript
    End

CommonScript_ObtainAccessory:
    Call CommonScript_InternalObtainAccessory
    Message CommonStrings_Text_PutAwayItemInTheFashionCase
    ReturnCommonScript
    End

CommonScript_InternalObtainAccessory:
    PlaySound SEQ_ACCE
    AddAccessory VAR_0x8004, VAR_0x8005
    BufferAccessoryName 0, VAR_0x8004
    Message CommonStrings_Text_ObtainedItem
    WaitSound
    BufferPlayerName 0
    BufferAccessoryName 1, VAR_0x8004
    Return

CommonScript_ObtainContestBackdropWaitForConfirm:
    Call CommonScript_InternalObtainContestBackdrop
    Message CommonStrings_Text_PutAwayItemInTheFashionCaseNoLineFeed
    WaitABXPadPress
    ReturnCommonScript
    End

CommonScript_ObtainContestBackdrop:
    Call CommonScript_InternalObtainContestBackdrop
    Message CommonStrings_Text_PutAwayItemInTheFashionCase
    ReturnCommonScript
    End

CommonScript_InternalObtainContestBackdrop:
    PlaySound SEQ_FANFA4
    AddContestBackdrop VAR_0x8004
    BufferContestBackdropName 0, VAR_0x8004
    Message CommonStrings_Text_ObtainedItem
    WaitSound
    BufferPlayerName 0
    BufferContestBackdropName 1, VAR_0x8004
    Return

CommonScript_AddItemQuantityNoLineFeed:
    Call CommonScript_InternalAddItemQuantityNoLineFeed
    ReturnCommonScript
    End

CommonScript_InternalAddItemQuantityNoLineFeed:
    Call CommonScript_GetBagPocketForItem
    AddItem VAR_0x8004, VAR_0x8005, VAR_RESULT
    GetItemPocket VAR_0x8004, VAR_RESULT
    CallIfEq VAR_RESULT, POCKET_KEY_ITEMS, CommonScript_PrintMessageObtainedKeyItem
    CallIfNe VAR_RESULT, POCKET_KEY_ITEMS, CommonScript_PrepareMessageObtainedItem
    Message CommonStrings_Text_PutItemInThePocketNoLineFeed
    WaitABXPadPress
    Return

CommonScript_AddItemQuantity:
    Call CommonScript_InternalAddItemQuantity
    ReturnCommonScript
    End

CommonScript_InternalAddItemQuantity:
    Call CommonScript_GetBagPocketForItem
    AddItem VAR_0x8004, VAR_0x8005, VAR_RESULT
    GetItemPocket VAR_0x8004, VAR_RESULT
    CallIfEq VAR_RESULT, POCKET_KEY_ITEMS, CommonScript_PrintMessageObtainedKeyItem
    CallIfNe VAR_RESULT, POCKET_KEY_ITEMS, CommonScript_PrepareMessageObtainedItem
    Message CommonStrings_Text_PutItemInThePocket
    Return

CommonScript_PrintMessageObtainedKeyItem:
    BufferPlayerName 0
    BufferItemName 1, VAR_0x8004
    Message CommonStrings_Text_ObtainedKeyItem
    GoTo CommonScript_AfterObtainedItem

CommonScript_PrepareMessageObtainedItem:
    GoToIfGt VAR_0x8005, 1, CommonScript_PrintMessageObtainedItemsPlural
    BufferItemName 0, VAR_0x8004
    GoTo CommonScript_PrintMessageObtainedItem

CommonScript_PrintMessageObtainedItemsPlural:
    BufferItemNamePlural 0, VAR_0x8004
CommonScript_PrintMessageObtainedItem:
    Message CommonStrings_Text_ObtainedItem
    GoTo CommonScript_AfterObtainedItem

CommonScript_AfterObtainedItem:
    WaitSound
    CheckItemIsPlate VAR_0x8004, VAR_RESULT
    CallIfEq VAR_RESULT, TRUE, CommonScript_DeterminePlateMessage
    BufferPlayerName 0
    GoToIfGt VAR_0x8005, 1, CommonScript_BufferPocketNameItemsPlural
    BufferItemName 1, VAR_0x8004
    GoTo CommonScript_BufferPocketName

CommonScript_BufferPocketNameItemsPlural:
    BufferItemNamePlural 1, VAR_0x8004
CommonScript_BufferPocketName:
    GetItemPocket VAR_0x8004, VAR_RESULT
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, POCKET_KEY_ITEMS, CommonScript_BufferPocketNameKeyItems
    GoToIfEq VAR_0x8008, POCKET_ITEMS, CommonScript_BufferPocketNameItems
    GoToIfEq VAR_0x8008, POCKET_BERRIES, CommonScript_BufferPocketNameBerries
    GoToIfEq VAR_0x8008, POCKET_MEDICINE, CommonScript_BufferPocketNameMedicine
    GoToIfEq VAR_0x8008, POCKET_BALLS, CommonScript_BufferPocketNameBalls
    GoToIfEq VAR_0x8008, POCKET_BATTLE_ITEMS, CommonScript_BufferPocketNameBattleItems
    GoToIfEq VAR_0x8008, POCKET_MAIL, CommonScript_BufferPocketNameMail
    GoToIfEq VAR_0x8008, POCKET_TMHMS, CommonScript_BufferPocketNameTMHMs
    End

CommonScript_BufferPocketNameItems:
    GetItemPocket VAR_0x8004, VAR_RESULT
    BufferPocketName 2, VAR_RESULT
    GoTo CommonScript_BufferPocketNameReturn

CommonScript_BufferPocketNameKeyItems:
    GetItemPocket VAR_0x8004, VAR_RESULT
    BufferPocketName 2, VAR_RESULT
    GoTo CommonScript_BufferPocketNameReturn

CommonScript_BufferPocketNameBattleItems:
    GetItemPocket VAR_0x8004, VAR_RESULT
    BufferPocketName 2, VAR_RESULT
    GoTo CommonScript_BufferPocketNameReturn

CommonScript_BufferPocketNameMail:
    GetItemPocket VAR_0x8004, VAR_RESULT
    BufferPocketName 2, VAR_RESULT
    GoTo CommonScript_BufferPocketNameReturn

CommonScript_BufferPocketNameMedicine:
    GetItemPocket VAR_0x8004, VAR_RESULT
    BufferPocketName 2, VAR_RESULT
    GoTo CommonScript_BufferPocketNameReturn

CommonScript_BufferPocketNameBerries:
    GetItemPocket VAR_0x8004, VAR_RESULT
    BufferPocketName 2, VAR_RESULT
    GoTo CommonScript_BufferPocketNameReturn

CommonScript_BufferPocketNameBalls:
    GetItemPocket VAR_0x8004, VAR_RESULT
    BufferPocketName 2, VAR_RESULT
    GoTo CommonScript_BufferPocketNameReturn

CommonScript_BufferPocketNameTMHMs:
    GetItemPocket VAR_0x8004, VAR_RESULT
    BufferPocketName 2, VAR_RESULT
    GoTo CommonScript_BufferPocketNameReturn

CommonScript_BufferPocketNameReturn:
    Return

CommonScript_BagIsFull:
    Call CommonScript_InternalBagIsFull
    ReturnCommonScript
    End

CommonScript_InternalBagIsFull:
    Message CommonStrings_Text_BagIsFull
    WaitABXPadPress
    Return

_0BEE:
    LockAll
    PlayFanfare SEQ_SE_DP_PC_ON
    Call _0C06
    BufferPlayerName 0
    Message pl_msg_00000213_00032
    GoTo _0C1C

_0C06:
    LoadPCAnimation ANIMATION_TAG_PC
    PlayPCBootUpAnimation ANIMATION_TAG_PC
    WaitForAnimation ANIMATION_TAG_PC
    Return

_0C11:
    PlayPCShutDownAnimation ANIMATION_TAG_PC
    WaitForAnimation ANIMATION_TAG_PC
    UnloadAnimation ANIMATION_TAG_PC
    Return

_0C1C:
    BufferPlayerName 0
    Message pl_msg_00000213_00033
    InitGlobalTextMenu 1, 1, 0, VAR_0x8006
    CallIfUnset FLAG_MET_BEBE, _0C7B
    CallIfSet FLAG_MET_BEBE, _0C81
    AddMenuEntryImm 60, 1
    GetNationalDexEnabled VAR_RESULT
    CallIfEq VAR_RESULT, 0, _0C87
    CallIfEq VAR_RESULT, 1, _0C8D
    GoToIfSet FLAG_GAME_COMPLETED, _0C93
    GoToIfUnset FLAG_GAME_COMPLETED, _0CDD
    End

_0C7B:
    AddMenuEntryImm 58, 0
    Return

_0C81:
    AddMenuEntryImm 59, 0
    Return

_0C87:
    AddMenuEntryImm 63, 2
    Return

_0C8D:
    AddMenuEntryImm 62, 2
    Return

_0C93:
    AddMenuEntryImm 61, 3
    AddMenuEntryImm 64, 4
    ShowMenu
    SetVar VAR_0x8008, VAR_0x8006
    GoToIfEq VAR_0x8008, 0, _0D16
    GoToIfEq VAR_0x8008, 1, _0E45
    GoToIfEq VAR_0x8008, 2, _0F62
    GoToIfEq VAR_0x8008, 3, _0F2C
    GoTo _0F70

_0CDD:
    AddMenuEntryImm 64, 3
    ShowMenu
    SetVar VAR_0x8008, VAR_0x8006
    GoToIfEq VAR_0x8008, 0, _0D16
    GoToIfEq VAR_0x8008, 1, _0E45
    GoToIfEq VAR_0x8008, 2, _0F62
    GoTo _0F70

_0D16:
    PlayFanfare SEQ_SE_DP_PC_LOGIN
    BufferPlayerName 0
    Message pl_msg_00000213_00034
    Call _0D2C
    GoTo _0D73

_0D2C:
    InitGlobalTextListMenu 1, 1, 0, VAR_RESULT
    AddListMenuEntry MenuEntries_Text_PokemonStorageDepositPokemon, 0, MenuEntries_Text_PokemonStorageDepositPokemonDescription
    AddListMenuEntry MenuEntries_Text_PokemonStorageWithdrawPokemon, 1, MenuEntries_Text_PokemonStorageWithdrawPokemonDescription
    AddListMenuEntry MenuEntries_Text_PokemonStorageMovePokemon, 2, MenuEntries_Text_PokemonStorageMovePokemonDescription
    AddListMenuEntry MenuEntries_Text_PokemonStorageMoveItems, 3, MenuEntries_Text_PokemonStorageMoveItemsDescription
    CallIfSet FLAG_CONTEST_HALL_VISITED, _0D69
    AddListMenuEntry MenuEntries_Text_PokemonStorageSeeYa, 5, MenuEntries_Text_PokemonStorageSeeYaDescription
    Return

_0D69:
    AddListMenuEntry MenuEntries_Text_PokemonStorageComparePokemon, 4, MenuEntries_Text_PokemonStorageComparePokemonDescription
    Return

_0D73:
    ShowListMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _0DC2
    GoToIfEq VAR_0x8008, 1, _0DD5
    GoToIfEq VAR_0x8008, 2, _0DE8
    GoToIfEq VAR_0x8008, 3, _0DFB
    GoToIfEq VAR_0x8008, 4, _0E0E
    GoTo _0C1C

_0DC2:
    CloseMessage
    Call _0F94
    OpenPokemonStorage 0
    ReturnToField
    GoTo _0E21

_0DD5:
    CloseMessage
    Call _0F94
    OpenPokemonStorage 1
    ReturnToField
    GoTo _0E21

_0DE8:
    CloseMessage
    Call _0F94
    OpenPokemonStorage 2
    ReturnToField
    GoTo _0E21

_0DFB:
    CloseMessage
    Call _0F94
    OpenPokemonStorage 3
    ReturnToField
    GoTo _0E21

_0E0E:
    CloseMessage
    Call _0F94
    OpenPokemonStorage 4
    ReturnToField
    GoTo _0E21

_0E21:
    ScrCmd_30B
    BufferPlayerName 0
    MessageInstant 33
    Call _0D2C
    Call _0C06
    FadeScreenIn
    GoTo _0D73

_0E45:
    PlayFanfare SEQ_SE_DP_PC_LOGIN
    BufferPlayerName 0
    Message pl_msg_00000213_00035
    GoTo _0E55

_0E55:
    Call _0E61
    GoTo _0E83

_0E61:
    InitGlobalTextListMenu 1, 1, 0, VAR_RESULT
    AddListMenuEntry 71, 0, 80
    AddListMenuEntry 72, 1, 81
    AddListMenuEntry 73, 3, 82
    Return

_0E83:
    ShowListMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _0EAB
    GoToIfEq VAR_0x8008, 1, _0EE0
    GoTo _0C1C

_0EAB:
    CloseMessage
    ScrCmd_1B4 VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _0EC6
    ScrCmd_1B3
    GoTo _0ECF

_0EC6:
    Message pl_msg_00000213_00052
    GoTo _0E55

_0ECF:
    BufferPlayerName 0
    OpenMessage
    Call _0E61
    GoTo _0E83

_0EE0:
    ScrCmd_2AB VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _0F01
    CloseMessage
    Call _0F94
    OpenSealCapsuleEditor
    GoTo _0F0A

_0F01:
    Message pl_msg_00000213_00118
    GoTo _0E55

_0F0A:
    BufferPlayerName 0
    MessageInstant 33
    Call _0E61
    Call _0C06
    FadeScreenIn
    GoTo _0E83

_0F2C:
    PlayFanfare SEQ_SE_DP_PC_LOGIN
    CloseMessage
    ScrCmd_336 VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0F59
    Call _0F94
    ScrCmd_0B1
    ReturnToField
    Call _0F80
    GoTo _0C1C

_0F59:
    Message pl_msg_00000213_00131
    GoTo _0C1C

_0F62:
    PlayFanfare SEQ_SE_DP_PC_LOGIN
    CallCommonScript 0x26DF
    GoTo _0C1C

_0F70:
    CloseMessage
    PlayFanfare SEQ_SE_DP_PC_LOGOFF
    Call _0C11
    ReleaseAll
    End

_0F80:
    Call _0C06
    FadeScreenIn
    WaitFadeScreen
    Return

_0F94:
    FadeScreenOut
    WaitFadeScreen
    UnloadAnimation ANIMATION_TAG_PC
    Return

CommonScript_EmptyScript4:
    End

_0FA7:
    FadeScreenOut
    WaitFadeScreen
    OpenSealCapsuleEditor
    FadeScreenIn
    WaitFadeScreen
    End

CommonScript_VendorGreetingGeneric:
    Message CommonStrings_Text_VendorGreetingGeneric
    ReturnCommonScript
    End

CommonScript_PlayerHouseBlackOutRecover:
    LockAll
    ApplyMovement LOCALID_PLAYER, CommonScript_PlayerHouseBlackOutRecover_PlayerTurnToMomMovement
    ApplyMovement 0, CommonScript_PlayerHouseBlackOutRecover_MomTurnToPlayerMovement
    WaitMovement
    FadeScreenIn
    WaitFadeScreen
    BufferPlayerName 0
    Message CommonStrings_Text_YouHadQuiteTheExperienceOutThere
    FadeScreenOut
    WaitFadeScreen
    CloseMessage
    PlaySound SEQ_ASA
    WaitSound
    HealParty
    FadeScreenIn
    WaitFadeScreen
    CallIfSet FLAG_HAS_POKEDEX, CommonScript_PlayerHouseBlackOutRecover_BeforePokedexMessage
    CallIfUnset FLAG_HAS_POKEDEX, CommonScript_PlayerHouseBlackOutRecover_AfterPokedexMessage
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

CommonScript_PlayerHouseBlackOutRecover_BeforePokedexMessage:
    Message CommonStrings_Text_YourPokemonAreLookingGreat_BeforePokedex
    Return

CommonScript_PlayerHouseBlackOutRecover_AfterPokedexMessage:
    Message CommonStrings_Text_YourPokemonAreLookingGreat_AfterPokedex
    Return

CommonScript_PokecenterBlackOutRecover:
    LockAll
    FadeScreenIn
    WaitFadeScreen
    SetPlayerState PLAYER_TRANSITION_HEALING
    ChangePlayerState
    ApplyMovement LOCALID_PLAYER, CommonScript_PokecenterNurse_PlayerGivePokemonMovement
    WaitMovement
    Message CommonStrings_Text_PokecenterFirstLetsRestoreYourPokemon
    Call CommonScript_PokecenterNurse_FindNurseObject
    Call CommonScript_PokecenterNurse_HealPokemon
    GoToIfBadgeAcquired BADGE_ID_COAL, CommonScript_PokecenterBlackOutRecover_HasCoalBadge
    Message CommonStrings_Text_PokecenterHealedToPerfectHealth
    ApplyMovement LOCALID_PLAYER, CommonScript_PokecenterNurse_PlayerRetrievePokemonMovement
    WaitMovement
    SetPlayerState PLAYER_TRANSITION_WALKING
    ChangePlayerState
    ApplyMovement VAR_0x8007, CommonScript_PokecenterNurse_NurseBowMovement
    WaitMovement
    Message CommonStrings_Text_PokecenterGoodLuckTrainer
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

CommonScript_PokecenterBlackOutRecover_HasCoalBadge:
    ApplyMovement LOCALID_PLAYER, CommonScript_PokecenterNurse_PlayerRetrievePokemonMovement
    WaitMovement
    SetPlayerState PLAYER_TRANSITION_WALKING
    ChangePlayerState
    ApplyMovement VAR_0x8007, CommonScript_PokecenterNurse_NurseBowMovement
    WaitMovement
    Message CommonStrings_Text_PokecenterAllHappyAndHealthy
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

CommonScript_PokecenterNurse_FindNurseObject:
    GetCurrentMapID VAR_0x8004
    GoToIfEq VAR_0x8004, MAP_HEADER_JUBILIFE_CITY_POKECENTER_1F, CommonScript_PokecenterNurse_FindNurseObject_Jubilife
    GoToIfEq VAR_0x8004, MAP_HEADER_CANALAVE_CITY_POKECENTER_1F, CommonScript_PokecenterNurse_FindNurseObject_Canalave
    GoToIfEq VAR_0x8004, MAP_HEADER_OREBURGH_CITY_POKECENTER_1F, CommonScript_PokecenterNurse_FindNurseObject_Oreburgh
    GoToIfEq VAR_0x8004, MAP_HEADER_ETERNA_CITY_POKECENTER_1F, CommonScript_PokecenterNurse_FindNurseObject_Eterna
    GoToIfEq VAR_0x8004, MAP_HEADER_HEARTHOME_CITY_POKECENTER_1F, CommonScript_PokecenterNurse_FindNurseObject_Hearthome
    GoToIfEq VAR_0x8004, MAP_HEADER_PASTORIA_CITY_POKECENTER_1F, CommonScript_PokecenterNurse_FindNurseObject_Pastoria
    GoToIfEq VAR_0x8004, MAP_HEADER_VEILSTONE_CITY_POKECENTER_1F, CommonScript_PokecenterNurse_FindNurseObject_Veilstone
    GoToIfEq VAR_0x8004, MAP_HEADER_SUNYSHORE_CITY_POKECENTER_1F, CommonScript_PokecenterNurse_FindNurseObject_Sunyshore
    GoToIfEq VAR_0x8004, MAP_HEADER_SNOWPOINT_CITY_POKECENTER_1F, CommonScript_PokecenterNurse_FindNurseObject_Snowpoint
    GoToIfEq VAR_0x8004, MAP_HEADER_POKEMON_LEAGUE_SOUTH_POKECENTER_1F, CommonScript_PokecenterNurse_FindNurseObject_PokemonLeagueSouth
    GoToIfEq VAR_0x8004, MAP_HEADER_FIGHT_AREA_POKECENTER_1F, CommonScript_PokecenterNurse_FindNurseObject_FightArea
    GoToIfEq VAR_0x8004, MAP_HEADER_SANDGEM_TOWN_POKECENTER_1F, CommonScript_PokecenterNurse_FindNurseObject_Sandgem
    GoToIfEq VAR_0x8004, MAP_HEADER_FLOAROMA_TOWN_POKECENTER_1F, CommonScript_PokecenterNurse_FindNurseObject_Floaroma
    GoToIfEq VAR_0x8004, MAP_HEADER_SOLACEON_TOWN_POKECENTER_1F, CommonScript_PokecenterNurse_FindNurseObject_Solaceon
    GoToIfEq VAR_0x8004, MAP_HEADER_CELESTIC_TOWN_POKECENTER_1F, CommonScript_PokecenterNurse_FindNurseObject_Celestic
    GoToIfEq VAR_0x8004, MAP_HEADER_SURVIVAL_AREA_POKECENTER_1F, CommonScript_PokecenterNurse_FindNurseObject_SurvivalArea
    GoToIfEq VAR_0x8004, MAP_HEADER_RESORT_AREA_POKECENTER_1F, CommonScript_PokecenterNurse_FindNurseObject_ResortArea
    GoToIfEq VAR_0x8004, MAP_HEADER_POKEMON_LEAGUE_NORTH_POKECENTER_1F, CommonScript_PokecenterNurse_FindNurseObject_PokemonLeagueNorth
    SetVar VAR_0x8007, 0
    Return

CommonScript_PokecenterNurse_FindNurseObject_Jubilife:
    SetVar VAR_0x8007, 3
    Return

CommonScript_PokecenterNurse_FindNurseObject_Canalave:
    SetVar VAR_0x8007, 1
    Return

CommonScript_PokecenterNurse_FindNurseObject_Oreburgh:
    SetVar VAR_0x8007, 3
    Return

CommonScript_PokecenterNurse_FindNurseObject_Eterna:
    SetVar VAR_0x8007, 3
    Return

CommonScript_PokecenterNurse_FindNurseObject_Hearthome:
    SetVar VAR_0x8007, 0
    Return

CommonScript_PokecenterNurse_FindNurseObject_Pastoria:
    SetVar VAR_0x8007, 0
    Return

CommonScript_PokecenterNurse_FindNurseObject_Veilstone:
    SetVar VAR_0x8007, 0
    Return

CommonScript_PokecenterNurse_FindNurseObject_Sunyshore:
    SetVar VAR_0x8007, 0
    Return

CommonScript_PokecenterNurse_FindNurseObject_Snowpoint:
    SetVar VAR_0x8007, 0
    Return

CommonScript_PokecenterNurse_FindNurseObject_PokemonLeagueSouth:
    SetVar VAR_0x8007, 0
    Return

CommonScript_PokecenterNurse_FindNurseObject_FightArea:
    SetVar VAR_0x8007, 0
    Return

CommonScript_PokecenterNurse_FindNurseObject_Sandgem:
    SetVar VAR_0x8007, 3
    Return

CommonScript_PokecenterNurse_FindNurseObject_Floaroma:
    SetVar VAR_0x8007, 2
    Return

CommonScript_PokecenterNurse_FindNurseObject_Solaceon:
    SetVar VAR_0x8007, 0
    Return

CommonScript_PokecenterNurse_FindNurseObject_Celestic:
    SetVar VAR_0x8007, 0
    Return

CommonScript_PokecenterNurse_FindNurseObject_SurvivalArea:
    SetVar VAR_0x8007, 0
    Return

CommonScript_PokecenterNurse_FindNurseObject_ResortArea:
    SetVar VAR_0x8007, 0
    Return

CommonScript_PokecenterNurse_FindNurseObject_PokemonLeagueNorth:
    SetVar VAR_0x8007, 3
    Return

    .balign 4, 0
CommonScript_PlayerHouseBlackOutRecover_PlayerTurnToMomMovement:
    FaceWest
    EndMovement

    .balign 4, 0
CommonScript_PlayerHouseBlackOutRecover_MomTurnToPlayerMovement:
    FaceEast
    EndMovement

    .balign 4, 0
CommonScript_PokecenterNurse_TurnToMachineMovement:
    FaceWest
    EndMovement

CommonScript_UnusedMovement:
    FaceNorth
    EndMovement

CommonScript_UnusedMovement2:
    FaceEast
    EndMovement

    .balign 4, 0
CommonScript_PokecenterNurse_TurnToPlayerMovement:
    FaceSouth
    EndMovement

CommonScript_EmptyScript5:
    End

_1282:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FadeScreenOut
    WaitFadeScreen
    ScrCmd_205
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

_12A8:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    MessageFromTrainerType
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

CommonScript_Vent:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message CommonStrings_Text_ItsAnAirVentThatExchangesTheUndergroundTunnelsAir
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_12CD:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message pl_msg_00000213_00070
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_12E0:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message pl_msg_00000213_00071
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_12F3:
    CheckItem ITEM_BICYCLE, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, CommonScript_End
    LockAll
    PlayFanfare SEQ_SE_CONFIRM
    CheckPlayerOnBike VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, _133C
    Message pl_msg_00000213_00073
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _1359
    SetPlayerBike TRUE
    CloseMessage
    ReleaseAll
    End

_133C:
    Message pl_msg_00000213_00074
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _1359
    SetPlayerBike FALSE
    CloseMessage
    ReleaseAll
    End

_1359:
    CloseMessage
    ReleaseAll
    End

CommonScript_End:
    End

_1361:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message pl_msg_00000213_00076
    WaitABPress
    FadeScreenOut
    WaitFadeScreen
    CloseMessage
    ScrCmd_1AC
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

_138C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message pl_msg_00000213_00079
    WaitABPress
    CloseMessage
    ReleaseAll
    End

_139D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_0A5
    ReleaseAll
    End

_13AB:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message pl_msg_00000213_00082
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

CommonScript_PrintPlateObtainedMessage:
    Call CommonScript_DeterminePlateMessage
    ReturnCommonScript
    End

CommonScript_DeterminePlateMessage:
    AddVar VAR_NUM_PLATES_OBTAINED, 1
    CallIfGe VAR_NUM_PLATES_OBTAINED, 9, CommonScript_ResetPlateCount
    CallIfEq VAR_NUM_PLATES_OBTAINED, 1, CommonScript_Print1PlateObtainedMessage
    CallIfEq VAR_NUM_PLATES_OBTAINED, 2, CommonScript_Print2PlatesObtainedMessage
    CallIfEq VAR_NUM_PLATES_OBTAINED, 3, CommonScript_Print3PlatesObtainedMessage
    CallIfEq VAR_NUM_PLATES_OBTAINED, 4, CommonScript_Print4PlatesObtainedMessage
    CallIfEq VAR_NUM_PLATES_OBTAINED, 5, CommonScript_Print5PlatesObtainedMessage
    CallIfEq VAR_NUM_PLATES_OBTAINED, 6, CommonScript_Print6PlatesObtainedMessage
    CallIfEq VAR_NUM_PLATES_OBTAINED, 7, CommonScript_Print7PlatesObtainedMessage
    CallIfEq VAR_NUM_PLATES_OBTAINED, 8, CommonScript_Print8PlatesObtainedMessage
    Return

CommonScript_ResetPlateCount:
    SetVar VAR_NUM_PLATES_OBTAINED, 1
    Return

CommonScript_Print1PlateObtainedMessage:
    Message pl_msg_00000213_00110
    Return

CommonScript_Print2PlatesObtainedMessage:
    Message pl_msg_00000213_00111
    Return

CommonScript_Print3PlatesObtainedMessage:
    Message pl_msg_00000213_00112
    Return

CommonScript_Print4PlatesObtainedMessage:
    Message pl_msg_00000213_00113
    Return

CommonScript_Print5PlatesObtainedMessage:
    Message pl_msg_00000213_00114
    Return

CommonScript_Print6PlatesObtainedMessage:
    Message pl_msg_00000213_00115
    Return

CommonScript_Print7PlatesObtainedMessage:
    Message pl_msg_00000213_00116
    Return

CommonScript_Print8PlatesObtainedMessage:
    Message pl_msg_00000213_00117
    Return

CommonScript_EmptyScript6:
    End

_1477:
    LockAll
    GetCurrentMapID VAR_0x8004
    GoToIfEq VAR_0x8004, 220, _14AC
    GoToIfEq VAR_0x8004, 0x248, _14AC
    GoToIfEq VAR_0x8004, 0x249, _14AC
    GoTo _1570
    End

_14AC:
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfNe VAR_0x8004, 31, _1570
    GoToIfNe VAR_0x8005, 52, _1570
    CheckGameCompleted VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, _1570
    GetNationalDexEnabled VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 0, _1570
    CheckDistributionEvent DISTRIBUTION_EVENT_ARCEUS, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, _1570
    GoToIfSet FLAG_UNK_0x011E, _1570
    BufferPlayerName 0
    Message pl_msg_00000213_00122
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _157B
    BufferPlayerName 0
    Message pl_msg_00000213_00123
    CloseMessage
    WaitTime 30, VAR_RESULT
    PlayMusic SEQ_FUE
    WaitTime 0x21C, VAR_RESULT
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    FadeScreenOut FADE_SCREEN_SPEED_SLOW, COLOR_WHITE
    WaitFadeScreen
    Warp MAP_HEADER_HALL_OF_ORIGIN, 0, VAR_0x8004, VAR_0x8005, 0
    FadeScreenIn FADE_SCREEN_SPEED_SLOW, COLOR_WHITE
    WaitFadeScreen
    Message pl_msg_00000213_00124
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1570:
    Message pl_msg_00000213_00125
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_157B:
    CloseMessage
    ReleaseAll
    End

CommonScript_SetCounterpartBGM:
    StopMusic 0
    GetPlayerGender VAR_RESULT
    CallIfEq VAR_RESULT, GENDER_MALE, CommonScript_SetTheGirlBGM
    CallIfEq VAR_RESULT, GENDER_FEMALE, CommonScript_SetTheBoyBGM
    ReturnCommonScript
    End

CommonScript_SetTheGirlBGM:
    SetBGM SEQ_THE_GIRL
    Return

CommonScript_SetTheBoyBGM:
    SetBGM SEQ_THE_BOY
    Return

CommonScript_SetRivalBGM:
    StopMusic 0
    SetBGM SEQ_THE_RIV
    ReturnCommonScript
    End

CommonScript_SetFollowMeBGM:
    StopMusic 0
    SetBGM SEQ_TSURETEKE
    ReturnCommonScript
    End

CommonScript_SetLookerBGM:
    StopMusic 0
    SetBGM SEQ_PL_HANDSOME
    ReturnCommonScript
    End

CommonScript_FadeToDefaultMusic:
    FadeOutBGM 0, 30
    StopMusic 0
    PlayDefaultMusic
    ReturnCommonScript
    End

_15E7:
    FadeScreenOut
    WaitFadeScreen
    ScrCmd_0B3 VAR_RESULT
    SetVar VAR_0x8004, VAR_RESULT
    ScrCmd_2F6 VAR_0x8005, VAR_0x8004, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _1624
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    ReturnCommonScript
    End

_1624:
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    ReturnCommonScript
    End

_1636:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar VAR_0x8004, TUTOR_LOCATION_ROUTE_212
    GoTo _1672
    End

_164A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar VAR_0x8004, TUTOR_LOCATION_SURVIVAL_AREA
    GoTo _1672
    End

_165E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar VAR_0x8004, TUTOR_LOCATION_SNOWPOINT_CITY
    GoTo _1672
    End

_1672:
    Message pl_msg_00000213_00129
    ShowMoveTutorMoveSelectionMenu 0xFF, VAR_0x8004, VAR_RESULT
    SetVar VAR_0x8003, VAR_RESULT
    GoToIfEq VAR_0x8003, -2, _16A4
    ShowShardsCost 21, 1, VAR_0x8003, VAR_RESULT
    WaitABPress
    CloseShardsCostWindow
    GoTo _16A4
    End

_16A4:
    CloseMessage
    ReleaseAll
    End

CommonScript_Frontier_CheckAllFrontierGoldPrintsObtained:
    GoToIfSet FLAG_OBTAINED_ALL_BATTLE_FRONTIER_GOLD_PRINTS, CommonScript_Frontier_End
    GoToIfNe VAR_BATTLE_FACTORY_PRINT_STATE, 4, CommonScript_Frontier_End
    GoToIfNe VAR_BATTLE_HALL_PRINT_STATE, 4, CommonScript_Frontier_End
    GoToIfNe VAR_BATTLE_CASTLE_PRINT_STATE, 4, CommonScript_Frontier_End
    GoToIfNe VAR_BATTLE_ARCADE_PRINT_STATE, 4, CommonScript_Frontier_End
    GoToIfNe VAR_BATTLE_TOWER_PRINT_STATE, 4, CommonScript_Frontier_End
    SetFlag FLAG_OBTAINED_ALL_BATTLE_FRONTIER_GOLD_PRINTS
    IncrementTrainerScore TRAINER_SCORE_EVENT_ALL_BATTLE_FRONTIER_GOLD_PRINTS
    GoTo CommonScript_Frontier_End
    End

CommonScript_Frontier_End:
    ReturnCommonScript
    End

CommonScript_GriseousOrbCouldNotBeRemoved:
    Message CommonStrings_Text_GriseousOrbCouldNotBeRemoved
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    ReturnCommonScript
    End

    .balign 4, 0
