#include "macros/scrcmd.inc"
#include "res/text/bank/cafe.h"


    ScriptEntry Cafe_OnTransition
    ScriptEntry Cafe_Rancher
    ScriptEntry Cafe_Waitress
    ScriptEntry Cafe_OldMan
    ScriptEntryEnd

Cafe_OnTransition:
    SetFlag FLAG_FIRST_ARRIVAL_ROUTE_210_COFFEE_SHOP
    End

Cafe_Rancher:
    NPCMessage Cafe_Text_CustomersWantToBattle
    End

Cafe_Waitress:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ShowMoney 20, 2
    Message Cafe_Text_MoomooMilk500ABottle
    GoTo Cafe_MoomooMilkMenu
    End

Cafe_MoomooMilkMenu:
    InitLocalTextMenu 30, 11, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm Cafe_Text_1Bottle, 0
    AddMenuEntryImm Cafe_Text_1Dozen, 1
    AddMenuEntryImm Cafe_Text_NoThanks, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, Cafe_TryBuyBottle
    GoToIfEq VAR_0x8008, 1, Cafe_TryBuyDozen
    GoToIfEq VAR_0x8008, 2, Cafe_AllRightThen
    GoTo Cafe_AllRightThen
    End

Cafe_TryBuyBottle:
    GoToIfNotEnoughMoney 500, Cafe_YouDontHaveTheMoney
    SetVar VAR_0x8005, 1
    SetVar VAR_0x8006, 500
    GoTo Cafe_GiveMoomooMilk
    End

Cafe_TryBuyDozen:
    GoToIfNotEnoughMoney 6000, Cafe_YouDontHaveTheMoney
    SetVar VAR_0x8005, 12
    SetVar VAR_0x8006, 6000
    GoTo Cafe_GiveMoomooMilk
    End

Cafe_GiveMoomooMilk:
    SetVar VAR_0x8004, ITEM_MOOMOO_MILK
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, Cafe_YourBagsFull
    AddToGameRecord RECORD_MONEY_SPENT, VAR_0x8006
    RemoveMoney2 VAR_0x8006
    UpdateMoneyDisplay
    PlaySE SEQ_SE_DP_REGI
    WaitSE SEQ_SE_DP_REGI
    CallIfEq VAR_0x8006, 500, Cafe_HeresYourMoomooMilk
    CallIfEq VAR_0x8006, 6000, Cafe_GetMoomooMilkByDozen
    Common_GiveItemQuantityNoLineFeed
    CloseMessage
    HideMoney
    ReleaseAll
    End

Cafe_HeresYourMoomooMilk:
    Message Cafe_Text_HeresYourMoomooMilk
    Return

Cafe_GetMoomooMilkByDozen:
    Message Cafe_Text_GetMoomooMilkByDozen
    Return

Cafe_YourBagsFull:
    Message Cafe_Text_YourBagsFull
    WaitButton
    CloseMessage
    HideMoney
    ReleaseAll
    End

Cafe_YouDontHaveTheMoney:
    Message Cafe_Text_YouDontHaveTheMoney
    WaitButton
    CloseMessage
    HideMoney
    ReleaseAll
    End

Cafe_AllRightThen:
    Message Cafe_Text_AllRightThen
    WaitButton
    CloseMessage
    HideMoney
    ReleaseAll
    End

Cafe_OldMan:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_USED_SECRETPOTION, Cafe_RelievedPsyduckOfHeadaches
    Message Cafe_Text_SeenPsyduckHuddledOutside
    WaitButton
    CloseMessage
    ReleaseAll
    End

Cafe_RelievedPsyduckOfHeadaches:
    Message Cafe_Text_RelievedPsyduckOfHeadaches
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
