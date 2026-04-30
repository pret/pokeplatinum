#include "macros/scrcmd.inc"
#include "res/text/bank/unused_battle_park_exchange_service_corner.h"
#include "res/text/bank/menu_entries.h"


    ScriptEntry BattleParkExchangeServiceCorner_MaidNorth
    ScriptEntry BattleParkExchangeServiceCorner_MaidSouth
    ScriptEntry BattleParkExchangeServiceCorner_Gentleman
    ScriptEntry BattleParkExchangeServiceCorner_Socialite
    ScriptEntry BattleParkExchangeServiceCorner_Roughneck
    ScriptEntry BattleParkExchangeServiceCorner_Cowgirl
    ScriptEntry BattleParkExchangeServiceCorner_Clown
    ScriptEntry BattleParkExchangeServiceCorner_TwinAndExpertF
    ScriptEntry BattleParkExchangeServiceCorner_TwinAndExpertF

BattleParkExchangeServiceCorner_MaidNorth:
    GoTo BattleParkExchangeServiceCorner_PokeMartFrontierLeft

BattleParkExchangeServiceCorner_MaidSouth:
    GoTo BattleParkExchangeServiceCorner_PokeMartFrontierRight

BattleParkExchangeServiceCorner_PokeMartFrontierRight:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message BattleParkExchangeServiceCorner_Text_TradeBPForPrizes
    CloseMessageWithoutErasing
    PokeMartFrontier MART_FRONTIER_ID_EXCHANGE_SERVICE_CORNER_RIGHT
    ReleaseAll
    End

BattleParkExchangeServiceCorner_PokeMartFrontierLeft:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message BattleParkExchangeServiceCorner_Text_TradeBPForPrizes
    CloseMessageWithoutErasing
    PokeMartFrontier MART_FRONTIER_ID_EXCHANGE_SERVICE_CORNER_LEFT
    ReleaseAll
    End

BattleParkExchangeServiceCorner_Unused:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ShowBattlePoints 21, 1
    Message BattleParkExchangeServiceCorner_Text_ExchangeBPForItems
BattleParkExchangeServiceCorner_UnusedWhichPrize:
    Message BattleParkExchangeServiceCorner_Text_ExchangeBPForWhichPrize
    Call BattleParkExchangeServiceCorner_UnusedInitPrizeMenu
    GoToIfEq VAR_RESULT, -2, BattleParkExchangeServiceCorner_UnusedThanksForVisiting
    GoToIfEq VAR_RESULT, VAR_MAP_LOCAL_1, BattleParkExchangeServiceCorner_UnusedThanksForVisiting
    SetVar VAR_MAP_LOCAL_3, VAR_RESULT
    GetExchangeServiceCornerItemAndCost VAR_MAP_LOCAL_0, VAR_MAP_LOCAL_3, VAR_0x8000, VAR_0x8001
    CallIfEq VAR_MAP_LOCAL_0, 0, BattleParkExchangeServiceCorner_UnusedYouveChosenThisItem
    CallIfEq VAR_MAP_LOCAL_0, 1, BattleParkExchangeServiceCorner_UnusedYouveChosenThisTM
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, BattleParkExchangeServiceCorner_UnusedWhichPrize
    CheckBattlePoints VAR_0x8001, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, BattleParkExchangeServiceCorner_UnusedNotEnoughBP
    CanFitItem VAR_0x8000, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, BattleParkExchangeServiceCorner_UnusedNoRoomForItem
    Message BattleParkExchangeServiceCorner_Text_HereIsYourPrize
    AddItem VAR_0x8000, 1, VAR_RESULT
    RemoveBattlePoints VAR_0x8001
    UpdateBPDisplay
    GoTo BattleParkExchangeServiceCorner_UnusedWhichPrize

BattleParkExchangeServiceCorner_UnusedThanksForVisiting:
    Message BattleParkExchangeServiceCorner_Text_ThanksForVisiting
    WaitButton
    CloseMessage
    HideBattlePoints
    ReleaseAll
    End

BattleParkExchangeServiceCorner_UnusedYouveChosenThisItem:
    BufferItemName 0, VAR_0x8000
    Message BattleParkExchangeServiceCorner_Text_YouveChosenThisItem
    Return

BattleParkExchangeServiceCorner_UnusedYouveChosenThisTM:
    BufferItemName 0, VAR_0x8000
    BufferTMHMMoveName 1, VAR_0x8000
    Message BattleParkExchangeServiceCorner_Text_YouveChosenThisTM
    Return

BattleParkExchangeServiceCorner_UnusedNotEnoughBP:
    Message BattleParkExchangeServiceCorner_Text_NotEnoughBP
    GoTo BattleParkExchangeServiceCorner_UnusedWhichPrize

BattleParkExchangeServiceCorner_UnusedNoRoomForItem:
    BufferItemName 0, VAR_0x8000
    Message BattleParkExchangeServiceCorner_Text_NoRoomForItem
    GoTo BattleParkExchangeServiceCorner_UnusedWhichPrize

BattleParkExchangeServiceCorner_UnusedInitPrizeMenu:
    SetVar VAR_0x8008, 0
    SetVar VAR_0x8009, 0
    InitGlobalTextListMenu 1, 1, 0, VAR_RESULT
BattleParkExchangeServiceCorner_UnusedAddPrizeMenuEntries:
    GetExchangeServiceCornerItemAndCost VAR_MAP_LOCAL_0, VAR_0x8008, VAR_0x8000, VAR_0x8001
    BufferItemName 0, VAR_0x8000
    BufferVarPaddingDigits 1, VAR_0x8001, PADDING_MODE_SPACES, 3
    AddListMenuEntry MenuEntries_Text_UnusedPrizeExchange_Prize, VAR_0x8008
    AddVar VAR_0x8008, 1
    GoToIfLt VAR_0x8008, VAR_MAP_LOCAL_1, BattleParkExchangeServiceCorner_UnusedAddPrizeMenuEntries
    AddListMenuEntry MenuEntries_Text_UnusedPrizeExchange_NoThanks, VAR_0x8008
    ShowListMenu
    Return

BattleParkExchangeServiceCorner_Gentleman:
    NPCMessage BattleParkExchangeServiceCorner_Text_WhatToGetToday
    End

BattleParkExchangeServiceCorner_Socialite:
    NPCMessage BattleParkExchangeServiceCorner_Text_IMostCareAboutPower
    End

BattleParkExchangeServiceCorner_Roughneck:
    NPCMessage BattleParkExchangeServiceCorner_Text_GrabPrizesHere
    End

BattleParkExchangeServiceCorner_Cowgirl:
    NPCMessage BattleParkExchangeServiceCorner_Text_GirlIsLittleTerror
    End

BattleParkExchangeServiceCorner_Clown:
    NPCMessage BattleParkExchangeServiceCorner_Text_BuildingIsSoGrand
    End

BattleParkExchangeServiceCorner_TwinAndExpertF:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    Message BattleParkExchangeServiceCorner_Text_HaveThisGrandma
    Message BattleParkExchangeServiceCorner_Text_ThankYouDear
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
