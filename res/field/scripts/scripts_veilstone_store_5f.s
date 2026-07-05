#include "macros/scrcmd.inc"
#include "res/text/bank/veilstone_store_5f.h"
#include "res/text/bank/menu_entries.h"


#define LOCAL_VAR_DRINK_CHOICE      VAR_0x8000
#define LOCAL_VAR_DRINK_ID          VAR_0x8001
#define LOCAL_VAR_ITEM_ID           VAR_0x8004
#define LOCAL_VAR_COUNT             VAR_0x8005
#define LOCAL_VAR_DRINK_CHOICE_COPY VAR_0x8008

    ScriptEntry VeilstoneStore5F_BugCatcher
    ScriptEntry VeilstoneStore5F_MiddleAgedWoman
    ScriptEntry VeilstoneStore5F_Collector1
    ScriptEntry VeilstoneStore5F_Collector2
    ScriptEntry VeilstoneStore5F_Directory
    ScriptEntry VeilstoneStore5F_VendingMachine
    ScriptEntryEnd

VeilstoneStore5F_BugCatcher:
    NPCMessage VeilstoneStore5F_Text_GrabADrinkAndUnwind
    End

VeilstoneStore5F_MiddleAgedWoman:
    NPCMessage VeilstoneStore5F_Text_TheyConsiderMeARegular
    End

VeilstoneStore5F_Collector1:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_VEILSTONE_STORE_5F_STICKY_BARB, VeilstoneStore5F_Collector1AfterItemGiven
    Message VeilstoneStore5F_Text_GiftThisStickyBarb
    SetVar LOCAL_VAR_ITEM_ID, ITEM_STICKY_BARB
    SetVar LOCAL_VAR_COUNT, 1
    GoToIfCannotFitItem LOCAL_VAR_ITEM_ID, LOCAL_VAR_COUNT, VAR_RESULT, VeilstoneStore5F_Collector1BagIsFull
    Common_GiveItemQuantity
    SetFlag FLAG_RECEIVED_VEILSTONE_STORE_5F_STICKY_BARB
    GoTo VeilstoneStore5F_Collector1AfterItemGiven
    End

VeilstoneStore5F_Collector1AfterItemGiven:
    Message VeilstoneStore5F_Text_SticksToFoeInflictsDamage
    WaitButton
    CloseMessage
    ReleaseAll
    End

VeilstoneStore5F_Collector1BagIsFull:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

VeilstoneStore5F_Collector2:
    NPCMessage VeilstoneStore5F_Text_TwoBuffGuysSideBySide
    End

VeilstoneStore5F_Directory:
    EventMessage VeilstoneStore5F_Text_Directory
    End

VeilstoneStore5F_VendingMachine:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    Message VeilstoneStore5F_Text_WhichDrinkWouldYouLike
    ShowMoney 20, 2
    GoTo VeilstoneStore5F_VendingMachineMenu

VeilstoneStore5F_VendingMachineMenu:
    InitGlobalTextMenu 1, 1, 0, LOCAL_VAR_DRINK_CHOICE
    AddMenuEntryImm MenuEntries_Text_FreshWater, 0
    AddMenuEntryImm MenuEntries_Text_SodaPop, 1
    AddMenuEntryImm MenuEntries_Text_Lemonade, 2
    AddMenuEntryImm MenuEntries_Text_NoThanks, 3
    ShowMenu
    SetVar LOCAL_VAR_DRINK_CHOICE_COPY, LOCAL_VAR_DRINK_CHOICE
    GoToIfEq LOCAL_VAR_DRINK_CHOICE_COPY, 0, VeilstoneStore5F_VendingMachineChooseFreshWater
    GoToIfEq LOCAL_VAR_DRINK_CHOICE_COPY, 1, VeilstoneStore5F_VendingMachineChooseSodaPop
    GoToIfEq LOCAL_VAR_DRINK_CHOICE_COPY, 2, VeilstoneStore5F_VendingMachineChooseLemonade
    Message VeilstoneStore5F_Text_DecidedNotToBuyADrink
    GoTo VeilstoneStore5F_VendingMachineClose

VeilstoneStore5F_VendingMachineChooseFreshWater:
    SetVar LOCAL_VAR_DRINK_ID, ITEM_FRESH_WATER
    GoTo VeilstoneStore5F_VendingMachineDispenseDrink

VeilstoneStore5F_VendingMachineChooseSodaPop:
    SetVar LOCAL_VAR_DRINK_ID, ITEM_SODA_POP
    GoTo VeilstoneStore5F_VendingMachineDispenseDrink

VeilstoneStore5F_VendingMachineChooseLemonade:
    SetVar LOCAL_VAR_DRINK_ID, ITEM_LEMONADE
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
    CallIfEq LOCAL_VAR_DRINK_CHOICE, 0, VeilstoneStore5F_VendingMachineCheckFreshWaterMoney
    CallIfEq LOCAL_VAR_DRINK_CHOICE, 1, VeilstoneStore5F_VendingMachineCheckSodaPopMoney
    CallIfEq LOCAL_VAR_DRINK_CHOICE, 2, VeilstoneStore5F_VendingMachineCheckLemonadeMoney
    GoToIfEq VAR_RESULT, 0, VeilstoneStore5F_VendingMachineNotEnoughMoney
    GoToIfCannotFitItem LOCAL_VAR_DRINK_ID, 1, VAR_RESULT, VeilstoneStore5F_VendingMachineBagIsFull
    CallIfEq LOCAL_VAR_DRINK_CHOICE, 0, VeilstoneStore5F_VendingMachineBuyFreshWater
    CallIfEq LOCAL_VAR_DRINK_CHOICE, 1, VeilstoneStore5F_VendingMachineBuySodaPop
    CallIfEq LOCAL_VAR_DRINK_CHOICE, 2, VeilstoneStore5F_VendingMachineBuyLemonade
    UpdateMoneyDisplay
    BufferItemName 0, LOCAL_VAR_DRINK_ID
    PlaySE SEQ_SE_DP_JIHANKI
    BufferItemName 0, LOCAL_VAR_DRINK_ID
    Message VeilstoneStore5F_Text_ACanDroppedDown
    SetVar LOCAL_VAR_ITEM_ID, LOCAL_VAR_DRINK_ID
    SetVar LOCAL_VAR_COUNT, 1
    Common_GiveItemQuantity
    // 1 in 64 chance for a bonus can
    GetRandom VAR_RESULT, 64
    GoToIfNe VAR_RESULT, 0, VeilstoneStore5F_VendingMachineBuyAnotherDrink
    GoToIfCannotFitItem LOCAL_VAR_DRINK_ID, 1, VAR_RESULT, VeilstoneStore5F_VendingMachineBagIsFull
    PlaySE SEQ_SE_DP_JIHANKI
    BufferItemName 0, LOCAL_VAR_DRINK_ID
    Message VeilstoneStore5F_Text_ABonusCanDroppedDown
    SetVar LOCAL_VAR_ITEM_ID, LOCAL_VAR_DRINK_ID
    SetVar LOCAL_VAR_COUNT, 1
    Common_GiveItemQuantity
    GoTo VeilstoneStore5F_VendingMachineBuyAnotherDrink

VeilstoneStore5F_VendingMachineBuyAnotherDrink:
    Message VeilstoneStore5F_Text_WhichDrinkWouldYouLike
    GoTo VeilstoneStore5F_VendingMachineMenu

VeilstoneStore5F_VendingMachineNotEnoughMoney:
    Message VeilstoneStore5F_Text_NotEnoughMoney
    GoTo VeilstoneStore5F_VendingMachineClose

VeilstoneStore5F_VendingMachineBagIsFull:
    Common_MessageBagIsFull
    CloseMessage
    HideMoney
    ReleaseAll
    End

VeilstoneStore5F_VendingMachineClose:
    WaitButton
    CloseMessage
    HideMoney
    ReleaseAll
    End

    .balign 4, 0
