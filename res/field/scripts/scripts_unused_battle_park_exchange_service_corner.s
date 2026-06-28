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

BattleParkExchangeServiceCorner_PrizeExchange_Unused:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ShowBattlePoints 21, 1
    Message BattleParkExchangeServiceCorner_Text_ExchangeBPForItems
BattleParkExchangeServiceCorner_WhichPrize_Unused:
    Message BattleParkExchangeServiceCorner_Text_ExchangeBPForWhichPrize
    Call BattleParkExchangeServiceCorner_InitPrizeMenu_Unused
    GoToIfEq VAR_RESULT, -2, BattleParkExchangeServiceCorner_ThanksForVisiting_Unused
    GoToIfEq VAR_RESULT, VAR_MAP_LOCAL_0x01, BattleParkExchangeServiceCorner_ThanksForVisiting_Unused
    SetVar VAR_MAP_LOCAL_0x03, VAR_RESULT
    GetExchangeServiceCornerItemAndCost VAR_MAP_LOCAL_0x00, VAR_MAP_LOCAL_0x03, VAR_0x8000, VAR_0x8001
    CallIfEq VAR_MAP_LOCAL_0x00, 0, BattleParkExchangeServiceCorner_YouveChosenThisItem_Unused
    CallIfEq VAR_MAP_LOCAL_0x00, 1, BattleParkExchangeServiceCorner_YouveChosenThisTM_Unused
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, BattleParkExchangeServiceCorner_WhichPrize_Unused
    CheckBattlePoints VAR_0x8001, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, BattleParkExchangeServiceCorner_NotEnoughBP_Unused
    CanFitItem VAR_0x8000, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, BattleParkExchangeServiceCorner_NoRoomForItem_Unused
    Message BattleParkExchangeServiceCorner_Text_HereIsYourPrize
    AddItem VAR_0x8000, 1, VAR_RESULT
    RemoveBattlePoints VAR_0x8001
    UpdateBPDisplay
    GoTo BattleParkExchangeServiceCorner_WhichPrize_Unused

BattleParkExchangeServiceCorner_ThanksForVisiting_Unused:
    Message BattleParkExchangeServiceCorner_Text_ThanksForVisiting
    WaitButton
    CloseMessage
    HideBattlePoints
    ReleaseAll
    End

BattleParkExchangeServiceCorner_YouveChosenThisItem_Unused:
    BufferItemName 0, VAR_0x8000
    Message BattleParkExchangeServiceCorner_Text_YouveChosenThisItem
    Return

BattleParkExchangeServiceCorner_YouveChosenThisTM_Unused:
    BufferItemName 0, VAR_0x8000
    BufferTMHMMoveName 1, VAR_0x8000
    Message BattleParkExchangeServiceCorner_Text_YouveChosenThisTM
    Return

BattleParkExchangeServiceCorner_NotEnoughBP_Unused:
    Message BattleParkExchangeServiceCorner_Text_NotEnoughBP
    GoTo BattleParkExchangeServiceCorner_WhichPrize_Unused

BattleParkExchangeServiceCorner_NoRoomForItem_Unused:
    BufferItemName 0, VAR_0x8000
    Message BattleParkExchangeServiceCorner_Text_NoRoomForItem
    GoTo BattleParkExchangeServiceCorner_WhichPrize_Unused

BattleParkExchangeServiceCorner_InitPrizeMenu_Unused:
    SetVar VAR_0x8008, 0
    SetVar VAR_0x8009, 0
    InitGlobalTextListMenu 1, 1, 0, VAR_RESULT
BattleParkExchangeServiceCorner_AddPrizeMenuEntries_Unused:
    GetExchangeServiceCornerItemAndCost VAR_MAP_LOCAL_0x00, VAR_0x8008, VAR_0x8000, VAR_0x8001
    BufferItemName 0, VAR_0x8000
    BufferVarPaddingDigits 1, VAR_0x8001, PADDING_MODE_SPACES, 3
    AddListMenuEntry MenuEntries_Text_UnusedPrizeExchange_Prize, VAR_0x8008
    AddVar VAR_0x8008, 1
    GoToIfLt VAR_0x8008, VAR_MAP_LOCAL_0x01, BattleParkExchangeServiceCorner_AddPrizeMenuEntries_Unused
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
