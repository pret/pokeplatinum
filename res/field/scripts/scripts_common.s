#include "macros/scrcmd.inc"
#include "generated/distribution_events.h"
#include "generated/tutor_locations.h"
#include "res/text/bank/common_strings.h"
#include "res/text/bank/menu_entries.h"

    CommonScriptEntry HandleSignpostInput
    CommonScriptEntry CheckBagPocketForItem
    CommonScriptEntry Pokecenter_SpeakWithNurse
    CommonScriptEntry _03E8
    CommonScriptEntry _043B
    CommonScriptEntry _0479
    CommonScriptEntry SaveGame
    CommonScriptEntry EmptyScript2
    CommonScriptEntry _05EA
    CommonScriptEntry ObtainPoketchApp
    CommonScriptEntry EmptyScript1
    CommonScriptEntry EmptyScript3
    CommonScriptEntry SendToUndergroundPC
    CommonScriptEntry ObtainUndergroundTrap
    CommonScriptEntry ObtainUndergroundSphere
    CommonScriptEntry ObtainAccessoryWaitForConfirm
    CommonScriptEntry AddItemQuantityNoLineFeed
    CommonScriptEntry BagIsFull
    CommonScriptEntry _0BEE
    CommonScriptEntry VendorGreetingGeneric
    CommonScriptEntry _0FCA
    CommonScriptEntry _103A
    CommonScriptEntry EmptyScript4
    CommonScriptEntry _0FA7
    CommonScriptEntry EmptyScript5
    CommonScriptEntry _1282
    CommonScriptEntry _12A8
    CommonScriptEntry _12BA
    CommonScriptEntry _12CD
    CommonScriptEntry _12E0
    CommonScriptEntry _12F3
    CommonScriptEntry _1361
    CommonScriptEntry _138C
    CommonScriptEntry _139D
    CommonScriptEntry _048B
    CommonScriptEntry _13AB
    CommonScriptEntry ObtainContestBackdropWaitForConfirm
    CommonScriptEntry EmptyScript6
    CommonScriptEntry PrintPlateObtainedMessage
    CommonScriptEntry _1477
    CommonScriptEntry SetCounterpartBGM
    CommonScriptEntry FadeToDefaultMusic
    CommonScriptEntry SetRivalBGM
    CommonScriptEntry FadeToDefaultMusic
    CommonScriptEntry AddItemQuantity
    CommonScriptEntry ObtainContestBackdrop
    CommonScriptEntry SendToUndergroundPCWithLinefeed
    CommonScriptEntry ObtainAccessory
    CommonScriptEntry UNK_15BF
    CommonScriptEntry FadeToDefaultMusic
    CommonScriptEntry _15E7
    CommonScriptEntry _1636
    CommonScriptEntry _164A
    CommonScriptEntry _165E
    CommonScriptEntry Frontier_CheckAllFrontierGoldPrintsObtained
    CommonScriptEntry SetLookerBGM
    CommonScriptEntry FadeToDefaultMusic
    CommonScriptEntry _170A
    ScriptEntryEnd

LabelCommonEntryScript EmptyScript1:
    End

LabelCommonEntryScript EmptyScript2:
    End

LabelCommonEntryScript Pokecenter_SpeakWithNurse:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetTrainerCardStars VAR_RESULT
    GoToIfGe VAR_RESULT, 4, Common_Pokecenter_4StarCard
    SetVar VAR_0x8004, 0
    GetTimeOfDay VAR_RESULT
    Dummy1F9 VAR_RESULT
    SetVar VAR_0x8004, 120
    GoToIfEq VAR_RESULT, 0, Common_Pokecenter_Greeting
    SetVar VAR_0x8004, 121
    GoToIfEq VAR_RESULT, 1, Common_Pokecenter_Greeting
    SetVar VAR_0x8004, 0
Common_Pokecenter_Greeting:
    MessageVar VAR_0x8004
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Common_Pokecenter_HealMonsSelected
    GoToIfEq VAR_RESULT, MENU_NO, Common_Pokecenter_Farewell
    End

Common_Pokecenter_Farewell:
    Message pl_msg_00000213_00003
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    ReturnCommonScript
    End

Common_Pokecenter_HealMonsSelected:
    SetPlayerState 0x100
    ChangePlayerState
    ApplyMovement LOCALID_PLAYER, _02EC
    WaitMovement
    GetTrainerCardStars VAR_RESULT
    CallIfGe VAR_RESULT, 4, Common_Pokecenter_TakeMonMessage4StarCard
    CallIfLt VAR_RESULT, 4, Common_Pokecenter_TakeMonMessageStandard
    Call Common_Pokecenter_Heal
    GoToIfUnset FLAG_POKECENTER_IDENTIFIED_POKERUS, Common_Pokecenter_CheckPokerus
    GoTo Common_Pokecenter_FarewellAfterHeal

Common_Pokecenter_TakeMonMessageStandard:
    Message pl_msg_00000213_00001
    Return

Common_Pokecenter_TakeMonMessage4StarCard:
    Message pl_msg_00000213_00007
    Return

Common_Pokecenter_Heal:
    ApplyMovement VAR_0x8007, _1260
    WaitMovement
    CountPartyNonEggs VAR_0x8006
    ScrCmd_23B VAR_0x8006
    ApplyMovement VAR_0x8007, _1278
    WaitMovement
    HealParty
    Return

Common_Pokecenter_FarewellAfterHeal:
    GoToIfEq VAR_0x8004, 1, Common_Pokecenter_4StarCardFarewellAfterHeal
    Message pl_msg_00000213_00002
    ApplyMovement LOCALID_PLAYER, _02F4
    WaitMovement
    SetPlayerState 1
    ChangePlayerState
    ApplyMovement VAR_0x8007, Common_Pokecenter_NurseJoyBow
    WaitMovement
    Message pl_msg_00000213_00003
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    ReturnCommonScript
    End

Common_Pokecenter_4StarCardFarewellAfterHeal:
    Message pl_msg_00000213_00008
    ApplyMovement LOCALID_PLAYER, _02F4
    WaitMovement
    SetPlayerState 1
    ChangePlayerState
    ApplyMovement VAR_0x8007, Common_Pokecenter_NurseJoyBow
    WaitMovement
    Message pl_msg_00000213_00009
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    ReturnCommonScript
    End

Common_Pokecenter_CheckPokerus:
    CheckPartyPokerus VAR_0x8006
    GoToIfEq VAR_0x8006, 1, Common_Pokecenter_IdentifiedPokerus
    GoTo Common_Pokecenter_FarewellAfterHeal

Common_Pokecenter_IdentifiedPokerus:
    SetFlag FLAG_POKECENTER_IDENTIFIED_POKERUS
    ApplyMovement LOCALID_PLAYER, _02F4
    WaitMovement
    SetPlayerState 1
    ChangePlayerState
    Message pl_msg_00000213_00010
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    ReturnCommonScript
    End

Common_Pokecenter_4StarCard:
    GoToIfSet FLAG_POKECENTER_4_STAR_TRAINER_CARD, Common_Pokecenter_4StarCardService
    SetFlag FLAG_POKECENTER_4_STAR_TRAINER_CARD
    Message pl_msg_00000213_00004
    BufferPlayerName 0
    Message pl_msg_00000213_00005
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Common_Pokecenter_4StarCardHealMons
    Message pl_msg_00000213_00009
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    ReturnCommonScript
    End

Common_Pokecenter_4StarCardService:
    BufferPlayerName 0
    Message pl_msg_00000213_00006
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Common_Pokecenter_4StarCardHealMons
    Message pl_msg_00000213_00009
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    ReturnCommonScript
    End

Common_Pokecenter_4StarCardHealMons:
    SetVar VAR_0x8004, 1
    GoTo Common_Pokecenter_HealMonsSelected

    .balign 4, 0
Common_Pokecenter_NurseJoyBow:
    NurseJoyBow
    Delay4
    EndMovement

    .balign 4, 0
_02EC:
    PlayerGive
    EndMovement

    .balign 4, 0
_02F4:
    PlayerReceive
    EndMovement

LabelCommonEntryScript HandleSignpostInput:
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, Common_ScrollOutSignpost
    GoToIfEq VAR_0x8008, 1, Common_RemoveSignpostOpenStartMenu
    GetSignpostInput
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 1, Common_RemoveSignpostOpenStartMenu
    SetSignpostCommand SIGNPOST_CMD_SCROLL_OUT
    ReturnCommonScript
    End

Common_ScrollOutSignpost:
    SetSignpostCommand SIGNPOST_CMD_SCROLL_OUT
    ReturnCommonScript
    End

Common_RemoveSignpostOpenStartMenu:
    SetSignpostCommand SIGNPOST_CMD_REMOVE
    WaitForSignpostDone
    ShowStartMenu
    ReturnCommonScript
    End

LabelCommonEntryScript CheckBagPocketForItem:
    Call Common_GetBagPocketForItem
    ReturnCommonScript
    End

Common_GetBagPocketForItem:
    GetItemPocket VAR_0x8004, VAR_RESULT
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, POCKET_KEY_ITEMS, Common_PlaySound_SEQ_FANFA3
    GoToIfEq VAR_0x8008, POCKET_ITEMS, Common_PlaySound_SEQ_FANFA4
    GoToIfEq VAR_0x8008, POCKET_BERRIES, Common_PlaySound_SEQ_FANFA4
    GoToIfEq VAR_0x8008, POCKET_MEDICINE, Common_PlaySound_SEQ_FANFA4
    GoToIfEq VAR_0x8008, POCKET_BALLS, Common_PlaySound_SEQ_FANFA4
    GoToIfEq VAR_0x8008, POCKET_BATTLE_ITEMS, Common_PlaySound_SEQ_FANFA4
    GoToIfEq VAR_0x8008, POCKET_MAIL, Common_PlaySound_SEQ_FANFA2
    GoToIfEq VAR_0x8008, POCKET_TMHMS, Common_PlaySound_SEQ_WAZA
    End

Common_PlaySound_SEQ_FANFA4:
    PlaySound SEQ_FANFA4
    Return

Common_PlaySound_SEQ_WAZA:
    PlaySound SEQ_WAZA
    Return

Common_PlaySound_SEQ_FANFA3:
    PlaySound SEQ_FANFA3
    Return

Common_PlaySound_SEQ_FANFA2:
    PlaySound SEQ_FANFA2
    Return

Common_Unused:
    ReturnCommonScript
    End

LabelCommonEntryScript _03E8:
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

LabelCommonEntryScript _043B:
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
    ScrCmd_1F8
    ScrCmd_14B
    End

LabelCommonEntryScript _0479:
    ClearFlag FLAG_SAVE_EXTRA_BLOCK
    Call CommonScript_SaveGame_Dialog
    ScrCmd_18F VAR_RESULT
    CloseMessage
    End

LabelCommonEntryScript _048B:
    Message pl_msg_00000213_00020
    WaitABPress
    CloseMessage
    End

LabelCommonEntryScript SaveGame:
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
    Message pl_msg_00000213_00016
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
    Message pl_msg_00000213_00018
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
    Message pl_msg_00000213_00015
    GoTo CommonScript_SaveGame_StartSave
    End

CommonScript_QuickSave_CheckMiscFlag:
    CheckIsMiscSaveInit VAR_RESULT
    GoToIfEq VAR_RESULT, 0, CommonScript_QuickSave_DoFullSave
    GoTo CommonScript_QuickSave_Save
    End

LabelCommonEntryScript _05EA:
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

Common_Unused2:
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

LabelCommonEntryScript ObtainPoketchApp:
    Call Common_InternalObtainPoketchApp
    ReturnCommonScript
    End

Common_InternalObtainPoketchApp:
    BufferPlayerName 0
    BufferPoketchAppName 1, VAR_0x8004
    PlaySound SEQ_POCKETCH
    Message pl_msg_00000213_00024
    WaitSound
    Message pl_msg_00000213_00026
    RegisterPoketchApp VAR_0x8004
    CallIfEq VAR_0x8004, POKETCH_APPID_DIGITALWATCH, Common_ObtainedPoketchDigitalWatch
    CallIfEq VAR_0x8004, POKETCH_APPID_CALCULATOR, Common_ObtainedPoketchCalculator
    CallIfEq VAR_0x8004, POKETCH_APPID_MEMOPAD, Common_ObtainedPoketchMemopad
    CallIfEq VAR_0x8004, POKETCH_APPID_PEDOMETER, Common_ObtainedPoketchPedometer
    CallIfEq VAR_0x8004, POKETCH_APPID_PARTYSTATUS, Common_ObtainedPoketchPartyStatus
    CallIfEq VAR_0x8004, POKETCH_APPID_FRIENDSHIPCHECKER, Common_ObtainedPoketchFriendshipChecker
    CallIfEq VAR_0x8004, POKETCH_APPID_DOWSINGMACHINE, Common_ObtainedPoketchDowsingMachine
    CallIfEq VAR_0x8004, POKETCH_APPID_BERRYSEARCHER, Common_ObtainedPoketchBerrySearcher
    CallIfEq VAR_0x8004, POKETCH_APPID_DAYCARECHECKER, Common_ObtainedPoketchDayCareChecker
    CallIfEq VAR_0x8004, POKETCH_APPID_POKEMONHISTORY, Common_ObtainedPoketchPokemonHistory
    CallIfEq VAR_0x8004, POKETCH_APPID_COUNTER, Common_ObtainedPoketchCounter
    CallIfEq VAR_0x8004, POKETCH_APPID_ANALOGWATCH, Common_ObtainedPoketchAnalogWatch
    CallIfEq VAR_0x8004, POKETCH_APPID_MARKINGMAP, Common_ObtainedPoketchMarkingMap
    CallIfEq VAR_0x8004, POKETCH_APPID_LINKSEARCHER, Common_ObtainedPoketchLinkSearcher
    CallIfEq VAR_0x8004, POKETCH_APPID_COINTOSS, Common_ObtainedPoketchCoinToss
    CallIfEq VAR_0x8004, POKETCH_APPID_MOVETESTER, Common_ObtainedPoketchMoveTester
    CallIfEq VAR_0x8004, POKETCH_APPID_CALENDAR, Common_ObtainedPoketchCalendar
    CallIfEq VAR_0x8004, POKETCH_APPID_DOTART, Common_ObtainedPoketchDotArt
    CallIfEq VAR_0x8004, POKETCH_APPID_ROULETTE, Common_ObtainedPoketchRoulette
    CallIfEq VAR_0x8004, POKETCH_APPID_RADARCHAINCOUNTER, Common_ObtainedPoketchRadarChainCounter
    CallIfEq VAR_0x8004, POKETCH_APPID_KITCHENTIMER, Common_ObtainedPoketchKitchenTimer
    CallIfEq VAR_0x8004, POKETCH_APPID_COLORCHANGER, Common_ObtainedPoketchColorChanger
    CallIfEq VAR_0x8004, POKETCH_APPID_MATCHUPCHECKER, Common_ObtainedPoketchMatchupChecker
    CallIfEq VAR_0x8004, POKETCH_APPID_UNUSED_STOPWATCH, Common_ObtainedPoketchStopwatch
    CallIfEq VAR_0x8004, POKETCH_APPID_UNUSED_ALARMCLOCK, Common_ObtainedPoketchAlarmClock
    Return

Common_ObtainedPoketchDigitalWatch:
    Message pl_msg_00000213_00083
    Return

Common_ObtainedPoketchCalculator:
    Message pl_msg_00000213_00084
    Return

Common_ObtainedPoketchMemopad:
    Message pl_msg_00000213_00085
    Return

Common_ObtainedPoketchPedometer:
    Message pl_msg_00000213_00086
    Return

Common_ObtainedPoketchPartyStatus:
    Message pl_msg_00000213_00087
    Return

Common_ObtainedPoketchFriendshipChecker:
    Message pl_msg_00000213_00088
    Return

Common_ObtainedPoketchDowsingMachine:
    Message pl_msg_00000213_00089
    Return

Common_ObtainedPoketchBerrySearcher:
    Message pl_msg_00000213_00090
    Return

Common_ObtainedPoketchDayCareChecker:
    Message pl_msg_00000213_00091
    Return

Common_ObtainedPoketchPokemonHistory:
    Message pl_msg_00000213_00092
    Return

Common_ObtainedPoketchCounter:
    Message pl_msg_00000213_00093
    Return

Common_ObtainedPoketchAnalogWatch:
    Message pl_msg_00000213_00094
    Return

Common_ObtainedPoketchMarkingMap:
    Message pl_msg_00000213_00095
    Return

Common_ObtainedPoketchLinkSearcher:
    Message pl_msg_00000213_00096
    Return

Common_ObtainedPoketchCoinToss:
    Message pl_msg_00000213_00097
    Return

Common_ObtainedPoketchMoveTester:
    Message pl_msg_00000213_00098
    Return

Common_ObtainedPoketchCalendar:
    Message pl_msg_00000213_00099
    Return

Common_ObtainedPoketchDotArt:
    Message pl_msg_00000213_00100
    Return

Common_ObtainedPoketchRoulette:
    Message pl_msg_00000213_00101
    Return

Common_ObtainedPoketchRadarChainCounter:
    Message pl_msg_00000213_00102
    Return

Common_ObtainedPoketchKitchenTimer:
    Message pl_msg_00000213_00103
    Return

Common_ObtainedPoketchColorChanger:
    Message pl_msg_00000213_00104
    Return

Common_ObtainedPoketchMatchupChecker:
    Message pl_msg_00000213_00105
    Return

Common_ObtainedPoketchStopwatch:
    Message pl_msg_00000213_00106
    Return

Common_ObtainedPoketchAlarmClock:
    Message pl_msg_00000213_00107
    Return

LabelCommonEntryScript EmptyScript3:
    End

LabelCommonEntryScript SendToUndergroundPC:
    Call Common_ObtainUndergroundItem
    Message pl_msg_00000213_00109
    WaitABXPadPress
    ReturnCommonScript
    End

LabelCommonEntryScript SendToUndergroundPCWithLinefeed:
    Call Common_ObtainUndergroundItem
    Message pl_msg_00000213_00128
    ReturnCommonScript
    End

Common_ObtainUndergroundItem:
    PlaySound SEQ_FANFA4
    SendGoodToPC VAR_0x8004, VAR_0x8005, VAR_RESULT
    BufferUndergroundGoodsNameWithArticle 0, VAR_0x8004
    Message pl_msg_00000213_00108
    BufferUndergroundGoodsName 0, VAR_0x8004
    WaitSound
    Return

LabelCommonEntryScript ObtainUndergroundTrap:
    Call Common_InternalObtainUndergroundTrap
    ReturnCommonScript
    End

Common_InternalObtainUndergroundTrap:
    PlaySound SEQ_FANFA4
    GiveTrap VAR_0x8004, VAR_0x8005, VAR_RESULT
    BufferUndergroundTrapName 0, VAR_0x8004
    Message pl_msg_00000213_00080
    WaitSound
    Return

LabelCommonEntryScript ObtainUndergroundSphere:
    Call Common_InternalObtainUndergroundSphere
    ReturnCommonScript
    End

Common_InternalObtainUndergroundSphere:
    PlaySound SEQ_FANFA4
    GiveSphere VAR_0x8004, VAR_0x8005, VAR_RESULT
    BufferUndergroundItemName 0, VAR_0x8004
    BufferNumber 1, VAR_0x8005
    Message pl_msg_00000213_00081
    WaitSound
    Return

LabelCommonEntryScript ObtainAccessoryWaitForConfirm:
    Call Common_InternalObtainAccessory
    Message pl_msg_00000213_00031
    WaitABXPadPress
    ReturnCommonScript
    End

LabelCommonEntryScript ObtainAccessory:
    Call Common_InternalObtainAccessory
    Message pl_msg_00000213_00127
    ReturnCommonScript
    End

Common_InternalObtainAccessory:
    PlaySound SEQ_ACCE
    AddAccessory VAR_0x8004, VAR_0x8005
    BufferAccessoryName 0, VAR_0x8004
    Message pl_msg_00000213_00025
    WaitSound
    BufferPlayerName 0
    BufferAccessoryName 1, VAR_0x8004
    Return

LabelCommonEntryScript ObtainContestBackdropWaitForConfirm:
    Call Common_InternalObtainContestBackdrop
    Message pl_msg_00000213_00031
    WaitABXPadPress
    ReturnCommonScript
    End

LabelCommonEntryScript ObtainContestBackdrop:
    Call Common_InternalObtainContestBackdrop
    Message pl_msg_00000213_00127
    ReturnCommonScript
    End

Common_InternalObtainContestBackdrop:
    PlaySound SEQ_FANFA4
    AddContestBackdrop VAR_0x8004
    BufferContestBackdropName 0, VAR_0x8004
    Message pl_msg_00000213_00025
    WaitSound
    BufferPlayerName 0
    BufferContestBackdropName 1, VAR_0x8004
    Return

LabelCommonEntryScript AddItemQuantityNoLineFeed:
    Call Common_InternalAddItemQuantityNoLineFeed
    ReturnCommonScript
    End

Common_InternalAddItemQuantityNoLineFeed:
    Call Common_GetBagPocketForItem
    AddItem VAR_0x8004, VAR_0x8005, VAR_RESULT
    GetItemPocket VAR_0x8004, VAR_RESULT
    CallIfEq VAR_RESULT, POCKET_KEY_ITEMS, Common_PrintMessageObtainedKeyItem
    CallIfNe VAR_RESULT, POCKET_KEY_ITEMS, Common_PrepareMessageObtainedItem
    Message pl_msg_00000213_00030
    WaitABXPadPress
    Return

LabelCommonEntryScript AddItemQuantity:
    Call Common_InternalAddItemQuantity
    ReturnCommonScript
    End

Common_InternalAddItemQuantity:
    Call Common_GetBagPocketForItem
    AddItem VAR_0x8004, VAR_0x8005, VAR_RESULT
    GetItemPocket VAR_0x8004, VAR_RESULT
    CallIfEq VAR_RESULT, POCKET_KEY_ITEMS, Common_PrintMessageObtainedKeyItem
    CallIfNe VAR_RESULT, POCKET_KEY_ITEMS, Common_PrepareMessageObtainedItem
    Message pl_msg_00000213_00126
    Return

Common_PrintMessageObtainedKeyItem:
    BufferPlayerName 0
    BufferItemName 1, VAR_0x8004
    Message pl_msg_00000213_00028
    GoTo Common_AfterObtainedItem

Common_PrepareMessageObtainedItem:
    GoToIfGt VAR_0x8005, 1, Common_PrintMessageObtainedItemsPlural
    BufferItemName 0, VAR_0x8004
    GoTo Common_PrintMessageObtainedItem

Common_PrintMessageObtainedItemsPlural:
    BufferItemNamePlural 0, VAR_0x8004
Common_PrintMessageObtainedItem:
    Message pl_msg_00000213_00025
    GoTo Common_AfterObtainedItem

Common_AfterObtainedItem:
    WaitSound
    CheckItemIsPlate VAR_0x8004, VAR_RESULT
    CallIfEq VAR_RESULT, TRUE, Common_DeterminePlateMessage
    BufferPlayerName 0
    GoToIfGt VAR_0x8005, 1, Common_BufferPocketNameItemsPlural
    BufferItemName 1, VAR_0x8004
    GoTo Common_BufferPocketName

Common_BufferPocketNameItemsPlural:
    BufferItemNamePlural 1, VAR_0x8004
Common_BufferPocketName:
    GetItemPocket VAR_0x8004, VAR_RESULT
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, POCKET_KEY_ITEMS, Common_BufferPocketNameKeyItems
    GoToIfEq VAR_0x8008, POCKET_ITEMS, Common_BufferPocketNameItems
    GoToIfEq VAR_0x8008, POCKET_BERRIES, Common_BufferPocketNameBerries
    GoToIfEq VAR_0x8008, POCKET_MEDICINE, Common_BufferPocketNameMedicine
    GoToIfEq VAR_0x8008, POCKET_BALLS, Common_BufferPocketNameBalls
    GoToIfEq VAR_0x8008, POCKET_BATTLE_ITEMS, Common_BufferPocketNameBattleItems
    GoToIfEq VAR_0x8008, POCKET_MAIL, Common_BufferPocketNameMail
    GoToIfEq VAR_0x8008, POCKET_TMHMS, Common_BufferPocketNameTMHMs
    End

Common_BufferPocketNameItems:
    GetItemPocket VAR_0x8004, VAR_RESULT
    BufferPocketName 2, VAR_RESULT
    GoTo Common_BufferPocketNameReturn

Common_BufferPocketNameKeyItems:
    GetItemPocket VAR_0x8004, VAR_RESULT
    BufferPocketName 2, VAR_RESULT
    GoTo Common_BufferPocketNameReturn

Common_BufferPocketNameBattleItems:
    GetItemPocket VAR_0x8004, VAR_RESULT
    BufferPocketName 2, VAR_RESULT
    GoTo Common_BufferPocketNameReturn

Common_BufferPocketNameMail:
    GetItemPocket VAR_0x8004, VAR_RESULT
    BufferPocketName 2, VAR_RESULT
    GoTo Common_BufferPocketNameReturn

Common_BufferPocketNameMedicine:
    GetItemPocket VAR_0x8004, VAR_RESULT
    BufferPocketName 2, VAR_RESULT
    GoTo Common_BufferPocketNameReturn

Common_BufferPocketNameBerries:
    GetItemPocket VAR_0x8004, VAR_RESULT
    BufferPocketName 2, VAR_RESULT
    GoTo Common_BufferPocketNameReturn

Common_BufferPocketNameBalls:
    GetItemPocket VAR_0x8004, VAR_RESULT
    BufferPocketName 2, VAR_RESULT
    GoTo Common_BufferPocketNameReturn

Common_BufferPocketNameTMHMs:
    GetItemPocket VAR_0x8004, VAR_RESULT
    BufferPocketName 2, VAR_RESULT
    GoTo Common_BufferPocketNameReturn

Common_BufferPocketNameReturn:
    Return

LabelCommonEntryScript BagIsFull:
    Call Common_InternalBagIsFull
    ReturnCommonScript
    End

Common_InternalBagIsFull:
    Message pl_msg_00000213_00027
    WaitABXPadPress
    Return

LabelCommonEntryScript _0BEE:
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

LabelCommonEntryScript EmptyScript4:
    End

LabelCommonEntryScript _0FA7:
    FadeScreenOut
    WaitFadeScreen
    OpenSealCapsuleEditor
    FadeScreenIn
    WaitFadeScreen
    End

LabelCommonEntryScript VendorGreetingGeneric:
    Message pl_msg_00000213_00037
    ReturnCommonScript
    End

LabelCommonEntryScript _0FCA:
    LockAll
    ApplyMovement LOCALID_PLAYER, _1250
    ApplyMovement 0, _1258
    WaitMovement
    FadeScreenIn
    WaitFadeScreen
    BufferPlayerName 0
    Message pl_msg_00000213_00040
    FadeScreenOut
    WaitFadeScreen
    CloseMessage
    PlaySound SEQ_ASA
    WaitSound
    HealParty
    FadeScreenIn
    WaitFadeScreen
    CallIfSet FLAG_UNK_0x0090, _1030
    CallIfUnset FLAG_UNK_0x0090, _1035
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_1030:
    Message pl_msg_00000213_00041
    Return

_1035:
    Message pl_msg_00000213_00042
    Return

LabelCommonEntryScript _103A:
    LockAll
    FadeScreenIn
    WaitFadeScreen
    SetPlayerState 0x100
    ChangePlayerState
    ApplyMovement LOCALID_PLAYER, _02EC
    WaitMovement
    Message pl_msg_00000213_00043
    Call _10C7
    Call Common_Pokecenter_Heal
    CheckBadgeAcquired BADGE_ID_COAL, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _10A2
    Message pl_msg_00000213_00044
    ApplyMovement LOCALID_PLAYER, _02F4
    WaitMovement
    SetPlayerState 1
    ChangePlayerState
    ApplyMovement VAR_0x8007, Common_Pokecenter_NurseJoyBow
    WaitMovement
    Message pl_msg_00000213_00045
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_10A2:
    ApplyMovement LOCALID_PLAYER, _02F4
    WaitMovement
    SetPlayerState 1
    ChangePlayerState
    ApplyMovement VAR_0x8007, Common_Pokecenter_NurseJoyBow
    WaitMovement
    Message pl_msg_00000213_00039
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_10C7:
    GetCurrentMapID VAR_0x8004
    GoToIfEq VAR_0x8004, 6, _11BD
    GoToIfEq VAR_0x8004, 36, _11C5
    GoToIfEq VAR_0x8004, 48, _11CD
    GoToIfEq VAR_0x8004, 69, _11D5
    GoToIfEq VAR_0x8004, 101, _11DD
    GoToIfEq VAR_0x8004, 123, _11E5
    GoToIfEq VAR_0x8004, 134, _11ED
    GoToIfEq VAR_0x8004, 151, _11F5
    GoToIfEq VAR_0x8004, 168, _11FD
    GoToIfEq VAR_0x8004, 173, _1205
    GoToIfEq VAR_0x8004, 189, _120D
    GoToIfEq VAR_0x8004, 0x1A4, _1215
    GoToIfEq VAR_0x8004, 0x1AC, _121D
    GoToIfEq VAR_0x8004, 0x1B3, _1225
    GoToIfEq VAR_0x8004, 0x1BB, _122D
    GoToIfEq VAR_0x8004, 0x1C4, _1235
    GoToIfEq VAR_0x8004, 0x1CB, _123D
    GoToIfEq VAR_0x8004, 175, _1245
    SetVar VAR_0x8007, 0
    Return

_11BD:
    SetVar VAR_0x8007, 3
    Return

_11C5:
    SetVar VAR_0x8007, 1
    Return

_11CD:
    SetVar VAR_0x8007, 3
    Return

_11D5:
    SetVar VAR_0x8007, 3
    Return

_11DD:
    SetVar VAR_0x8007, 0
    Return

_11E5:
    SetVar VAR_0x8007, 0
    Return

_11ED:
    SetVar VAR_0x8007, 0
    Return

_11F5:
    SetVar VAR_0x8007, 0
    Return

_11FD:
    SetVar VAR_0x8007, 0
    Return

_1205:
    SetVar VAR_0x8007, 0
    Return

_120D:
    SetVar VAR_0x8007, 0
    Return

_1215:
    SetVar VAR_0x8007, 3
    Return

_121D:
    SetVar VAR_0x8007, 2
    Return

_1225:
    SetVar VAR_0x8007, 0
    Return

_122D:
    SetVar VAR_0x8007, 0
    Return

_1235:
    SetVar VAR_0x8007, 0
    Return

_123D:
    SetVar VAR_0x8007, 0
    Return

_1245:
    SetVar VAR_0x8007, 3
    Return

    .balign 4, 0
_1250:
    FaceWest
    EndMovement

    .balign 4, 0
_1258:
    FaceEast
    EndMovement

    .balign 4, 0
_1260:
    FaceWest
    EndMovement

Common_UnusedMovement:
    FaceNorth
    EndMovement

Common_UnusedMovement2:
    FaceEast
    EndMovement

    .balign 4, 0
_1278:
    FaceSouth
    EndMovement

LabelCommonEntryScript EmptyScript5:
    End

LabelCommonEntryScript _1282:
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

LabelCommonEntryScript _12A8:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_20C
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

LabelCommonEntryScript _12BA:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message pl_msg_00000213_00067
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

LabelCommonEntryScript _12CD:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message pl_msg_00000213_00070
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

LabelCommonEntryScript _12E0:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message pl_msg_00000213_00071
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

LabelCommonEntryScript _12F3:
    CheckItem ITEM_BICYCLE, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, Common_End
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

Common_End:
    End

LabelCommonEntryScript _1361:
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

LabelCommonEntryScript _138C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message pl_msg_00000213_00079
    WaitABPress
    CloseMessage
    ReleaseAll
    End

LabelCommonEntryScript _139D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_0A5
    ReleaseAll
    End

LabelCommonEntryScript _13AB:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message pl_msg_00000213_00082
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

LabelCommonEntryScript PrintPlateObtainedMessage:
    Call Common_DeterminePlateMessage
    ReturnCommonScript
    End

Common_DeterminePlateMessage:
    AddVar VAR_NUM_PLATES_OBTAINED, 1
    CallIfGe VAR_NUM_PLATES_OBTAINED, 9, Common_ResetPlateCount
    CallIfEq VAR_NUM_PLATES_OBTAINED, 1, Common_Print1PlateObtainedMessage
    CallIfEq VAR_NUM_PLATES_OBTAINED, 2, Common_Print2PlatesObtainedMessage
    CallIfEq VAR_NUM_PLATES_OBTAINED, 3, Common_Print3PlatesObtainedMessage
    CallIfEq VAR_NUM_PLATES_OBTAINED, 4, Common_Print4PlatesObtainedMessage
    CallIfEq VAR_NUM_PLATES_OBTAINED, 5, Common_Print5PlatesObtainedMessage
    CallIfEq VAR_NUM_PLATES_OBTAINED, 6, Common_Print6PlatesObtainedMessage
    CallIfEq VAR_NUM_PLATES_OBTAINED, 7, Common_Print7PlatesObtainedMessage
    CallIfEq VAR_NUM_PLATES_OBTAINED, 8, Common_Print8PlatesObtainedMessage
    Return

Common_ResetPlateCount:
    SetVar VAR_NUM_PLATES_OBTAINED, 1
    Return

Common_Print1PlateObtainedMessage:
    Message pl_msg_00000213_00110
    Return

Common_Print2PlatesObtainedMessage:
    Message pl_msg_00000213_00111
    Return

Common_Print3PlatesObtainedMessage:
    Message pl_msg_00000213_00112
    Return

Common_Print4PlatesObtainedMessage:
    Message pl_msg_00000213_00113
    Return

Common_Print5PlatesObtainedMessage:
    Message pl_msg_00000213_00114
    Return

Common_Print6PlatesObtainedMessage:
    Message pl_msg_00000213_00115
    Return

Common_Print7PlatesObtainedMessage:
    Message pl_msg_00000213_00116
    Return

Common_Print8PlatesObtainedMessage:
    Message pl_msg_00000213_00117
    Return

LabelCommonEntryScript EmptyScript6:
    End

LabelCommonEntryScript _1477:
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

LabelCommonEntryScript SetCounterpartBGM:
    StopMusic 0
    GetPlayerGender VAR_RESULT
    CallIfEq VAR_RESULT, GENDER_MALE, Common_SetTheGirlBGM
    CallIfEq VAR_RESULT, GENDER_FEMALE, Common_SetTheBoyBGM
    ReturnCommonScript
    End

Common_SetTheGirlBGM:
    SetBGM SEQ_THE_GIRL
    Return

Common_SetTheBoyBGM:
    SetBGM SEQ_THE_BOY
    Return

LabelCommonEntryScript SetRivalBGM:
    StopMusic 0
    SetBGM SEQ_THE_RIV
    ReturnCommonScript
    End

LabelCommonEntryScript UNK_15BF:
    StopMusic 0
    SetBGM SEQ_TSURETEKE
    ReturnCommonScript
    End

LabelCommonEntryScript SetLookerBGM:
    StopMusic 0
    SetBGM SEQ_PL_HANDSOME
    ReturnCommonScript
    End

LabelCommonEntryScript FadeToDefaultMusic:
    FadeOutBGM 0, 30
    StopMusic 0
    PlayDefaultMusic
    ReturnCommonScript
    End

LabelCommonEntryScript _15E7:
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

LabelCommonEntryScript _1636:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar VAR_0x8004, TUTOR_LOCATION_ROUTE_212
    GoTo _1672
    End

LabelCommonEntryScript _164A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar VAR_0x8004, TUTOR_LOCATION_SURVIVAL_AREA
    GoTo _1672
    End

LabelCommonEntryScript _165E:
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

LabelCommonEntryScript Frontier_CheckAllFrontierGoldPrintsObtained:
    GoToIfSet FLAG_OBTAINED_ALL_BATTLE_FRONTIER_GOLD_PRINTS, Common_Frontier_End
    GoToIfNe VAR_BATTLE_FACTORY_PRINT_STATE, 4, Common_Frontier_End
    GoToIfNe VAR_BATTLE_HALL_PRINT_STATE, 4, Common_Frontier_End
    GoToIfNe VAR_BATTLE_CASTLE_PRINT_STATE, 4, Common_Frontier_End
    GoToIfNe VAR_BATTLE_ARCADE_PRINT_STATE, 4, Common_Frontier_End
    GoToIfNe VAR_BATTLE_TOWER_PRINT_STATE, 4, Common_Frontier_End
    SetFlag FLAG_OBTAINED_ALL_BATTLE_FRONTIER_GOLD_PRINTS
    IncrementTrainerScore TRAINER_SCORE_EVENT_ALL_BATTLE_FRONTIER_GOLD_PRINTS
    GoTo Common_Frontier_End
    End

Common_Frontier_End:
    ReturnCommonScript
    End

LabelCommonEntryScript _170A:
    Message pl_msg_00000213_00130
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    ReturnCommonScript
    End

    .balign 4, 0
