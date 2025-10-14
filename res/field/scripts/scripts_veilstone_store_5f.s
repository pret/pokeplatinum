#include "macros/scrcmd.inc"
#include "res/text/bank/veilstone_store_5f.h"
#include "res/text/bank/menu_entries.h"


#define LOCALID_DRINK_CHOICE      VAR_0x8000
#define LOCALID_DRINK_ID          VAR_0x8001
#define LOCALID_ITEM_ID           VAR_0x8004
#define LOCALID_COUNT             VAR_0x8005
#define LOCALID_DRINK_CHOICE_COPY VAR_0x8008

    ScriptEntry VeilstoneStore5F_BugCatcher
    ScriptEntry VeilstoneStore5F_MiddleAgedWoman
    ScriptEntry VeilstoneStore5F_Collector1
    ScriptEntry VeilstoneStore5F_Collector2
    ScriptEntry VeilstoneStore5F_Directory
    ScriptEntry VeilstoneStore5F_VendingMachine
    ScriptEntryEnd

VeilstoneStore5F_BugCatcher:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message VeilstoneStore5F_Text_GrabADrinkAndUnwind
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneStore5F_MiddleAgedWoman:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message VeilstoneStore5F_Text_TheyConsiderMeARegular
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneStore5F_Collector1:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_VEILSTONE_STORE_5F_RECEIVED_STICKY_BARB, VeilstoneStore5F_Collector1AfterItemGiven
    Message VeilstoneStore5F_Text_AGiftOfThisStickyBarb
    SetVar LOCALID_ITEM_ID, ITEM_STICKY_BARB
    SetVar LOCALID_COUNT, 1
    GoToIfCannotFitItem LOCALID_ITEM_ID, LOCALID_COUNT, VAR_RESULT, VeilstoneStore5F_Collector1BagIsFull
    GiveItemQuantity
    SetFlag FLAG_VEILSTONE_STORE_5F_RECEIVED_STICKY_BARB
    GoTo VeilstoneStore5F_Collector1AfterItemGiven
    End

VeilstoneStore5F_Collector1AfterItemGiven:
    Message VeilstoneStore5F_Text_SticksToTheFoeAndInflictsDamage
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneStore5F_Collector1BagIsFull:
    MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

VeilstoneStore5F_Collector2:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message VeilstoneStore5F_Text_TwoBuffGuysSideBySide
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneStore5F_Directory:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message VeilstoneStore5F_Text_Directory
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneStore5F_VendingMachine:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message VeilstoneStore5F_Text_WhichDrinkWouldYouLike
    ShowMoney 20, 2
    GoTo VeilstoneStore5F_VendingMachineMenu

VeilstoneStore5F_VendingMachineMenu:
    InitGlobalTextMenu 1, 1, 0, LOCALID_DRINK_CHOICE
    AddMenuEntryImm MenuEntries_Text_FreshWater, 0
    AddMenuEntryImm MenuEntries_Text_SodaPop, 1
    AddMenuEntryImm MenuEntries_Text_Lemonade, 2
    AddMenuEntryImm MenuEntries_Text_NoThanks, 3
    ShowMenu
    SetVar LOCALID_DRINK_CHOICE_COPY, LOCALID_DRINK_CHOICE
    GoToIfEq LOCALID_DRINK_CHOICE_COPY, 0, VeilstoneStore5F_VendingMachineChooseFreshWater
    GoToIfEq LOCALID_DRINK_CHOICE_COPY, 1, VeilstoneStore5F_VendingMachineChooseSodaPop
    GoToIfEq LOCALID_DRINK_CHOICE_COPY, 2, VeilstoneStore5F_VendingMachineChooseLemonade
    Message VeilstoneStore5F_Text_DecidedNotToBuyADrink
    GoTo VeilstoneStore5F_VendingMachineClose

VeilstoneStore5F_VendingMachineChooseFreshWater:
    SetVar LOCALID_DRINK_ID, ITEM_FRESH_WATER
    GoTo VeilstoneStore5F_VendingMachineDispenseDrink

VeilstoneStore5F_VendingMachineChooseSodaPop:
    SetVar LOCALID_DRINK_ID, ITEM_SODA_POP
    GoTo VeilstoneStore5F_VendingMachineDispenseDrink

VeilstoneStore5F_VendingMachineChooseLemonade:
    SetVar LOCALID_DRINK_ID, ITEM_LEMONADE
    GoTo VeilstoneStore5F_VendingMachineDispenseDrink

VeilstoneStore5F_VendingMachineCheckFreshWaterMoney:
    CheckMoney VAR_RESULT, 200
    Return

VeilstoneStore5F_VendingMachineCheckSodaPopMoney:
    CheckMoney VAR_RESULT, 300
    Return

VeilstoneStore5F_VendingMachineCheckLemonadeMoney:
    CheckMoney VAR_RESULT, 350
    Return

VeilstoneStore5F_VendingMachineBuyFreshWater:
    AddToGameRecord RECORD_MONEY_SPENT, 200
    RemoveMoney 200
    Return

VeilstoneStore5F_VendingMachineBuySodaPop:
    AddToGameRecord RECORD_MONEY_SPENT, 300
    RemoveMoney 300
    Return

VeilstoneStore5F_VendingMachineBuyLemonade:
    AddToGameRecord RECORD_MONEY_SPENT, 350
    RemoveMoney 350
    Return

VeilstoneStore5F_VendingMachineDispenseDrink:
    CallIfEq LOCALID_DRINK_CHOICE, 0, VeilstoneStore5F_VendingMachineCheckFreshWaterMoney
    CallIfEq LOCALID_DRINK_CHOICE, 1, VeilstoneStore5F_VendingMachineCheckSodaPopMoney
    CallIfEq LOCALID_DRINK_CHOICE, 2, VeilstoneStore5F_VendingMachineCheckLemonadeMoney
    GoToIfEq VAR_RESULT, 0, VeilstoneStore5F_VendingMachineNotEnoughMoney
    GoToIfCannotFitItem LOCALID_DRINK_ID, 1, VAR_RESULT, VeilstoneStore5F_VendingMachineBagIsFull
    CallIfEq LOCALID_DRINK_CHOICE, 0, VeilstoneStore5F_VendingMachineBuyFreshWater
    CallIfEq LOCALID_DRINK_CHOICE, 1, VeilstoneStore5F_VendingMachineBuySodaPop
    CallIfEq LOCALID_DRINK_CHOICE, 2, VeilstoneStore5F_VendingMachineBuyLemonade
    UpdateMoneyDisplay
    BufferItemName 0, LOCALID_DRINK_ID
    PlayFanfare SEQ_SE_DP_JIHANKI
    BufferItemName 0, LOCALID_DRINK_ID
    Message VeilstoneStore5F_Text_ACanDroppedDown
    SetVar LOCALID_ITEM_ID, LOCALID_DRINK_ID
    SetVar LOCALID_COUNT, 1
    GiveItemQuantity
    // 1 in 64 chance for a bonus can
    GetRandom VAR_RESULT, 64
    GoToIfNe VAR_RESULT, 0, VeilstoneStore5F_VendingMachineBuyAnotherDrink
    GoToIfCannotFitItem LOCALID_DRINK_ID, 1, VAR_RESULT, VeilstoneStore5F_VendingMachineBagIsFull
    PlayFanfare SEQ_SE_DP_JIHANKI
    BufferItemName 0, LOCALID_DRINK_ID
    Message VeilstoneStore5F_Text_ABonusCanDroppedDown
    SetVar LOCALID_ITEM_ID, LOCALID_DRINK_ID
    SetVar LOCALID_COUNT, 1
    GiveItemQuantity
    GoTo VeilstoneStore5F_VendingMachineBuyAnotherDrink

VeilstoneStore5F_VendingMachineBuyAnotherDrink:
    Message VeilstoneStore5F_Text_WhichDrinkWouldYouLike
    GoTo VeilstoneStore5F_VendingMachineMenu

VeilstoneStore5F_VendingMachineNotEnoughMoney:
    Message VeilstoneStore5F_Text_NotEnoughMoney
    GoTo VeilstoneStore5F_VendingMachineClose

VeilstoneStore5F_VendingMachineBagIsFull:
    MessageBagIsFull
    CloseMessage
    HideMoney
    ReleaseAll
    End

VeilstoneStore5F_VendingMachineClose:
    WaitABXPadPress
    CloseMessage
    HideMoney
    ReleaseAll
    End

    .balign 4, 0
