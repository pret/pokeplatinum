#include "macros/scrcmd.inc"
#include "res/text/bank/fight_area_mart.h"


    ScriptEntry FightAreaMart_CommonVendor
    ScriptEntry FightAreaMart_Unused
    ScriptEntry FightAreaMart_Socialite
    ScriptEntry FightAreaMart_Clown
    ScriptEntryEnd

FightAreaMart_CommonVendor:
    PokeMartCommonWithGreeting
    End

FightAreaMart_Unused:
    End

FightAreaMart_Socialite:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_FIGHT_AREA_MART_SCOPE_LENS, FightAreaMart_DilemmaEveryTime
    Message FightAreaMart_Text_HoldWhatItems
    SetVar VAR_0x8004, ITEM_SCOPE_LENS
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, FightAreaMart_BagIsFull
    Common_GiveItemQuantity
    SetFlag FLAG_RECEIVED_FIGHT_AREA_MART_SCOPE_LENS
    GoTo FightAreaMart_DilemmaEveryTime
    End

FightAreaMart_DilemmaEveryTime:
    Message FightAreaMart_Text_DilemmaEveryTime
    WaitButton
    CloseMessage
    ReleaseAll
    End

FightAreaMart_BagIsFull:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

FightAreaMart_Clown:
    NPCMessage FightAreaMart_Text_TheyDontSellThat
    End

    .balign 4, 0
