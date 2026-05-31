#include "macros/scrcmd.inc"
#include "res/text/bank/hidden_items.h"
#include "res/items/hidden_item_scripts.h"


HiddenItems_Item:
    WaitSE SEQ_SE_CONFIRM
    SetVar VAR_0x8004, VAR_0x8000
    SetVar VAR_0x8005, VAR_0x8001
    SetVar VAR_0x8006, VAR_0x8002
    CanFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, HiddenItems_AddItem
    GoToIfEq VAR_RESULT, FALSE, HiddenItems_BagIsFull
    End

HiddenItems_End:
    CloseMessage
    End

HiddenItems_AddItem:
    Common_CheckBagPocketForItem
    SaveTVSegmentHiddenItem VAR_0x8004
    AddItem VAR_0x8004, VAR_0x8005, VAR_RESULT
    IsItemTMHM VAR_0x8004, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, HiddenItems_PlayerFoundTMHM
    GoToIfEq VAR_RESULT, FALSE, HiddenItems_PlayerFoundItem
    End

HiddenItems_CheckPlateAndPocket:
    WaitFanfare
    CheckItemIsPlate VAR_0x8004, VAR_RESULT
    CallIfEq VAR_RESULT, TRUE, HiddenItems_PrintPlateObtainedMessage
    BufferPlayerName 0
    BufferItemName 1, VAR_0x8004
    GetItemPocket VAR_0x8004, VAR_RESULT
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, POCKET_KEY_ITEMS, HiddenItems_PutItemInKeyItemsPocket
    GoToIfEq VAR_0x8008, POCKET_ITEMS, HiddenItems_PutItemInItemsPocket
    GoToIfEq VAR_0x8008, POCKET_BERRIES, HiddenItems_PutItemInBerriesPocket
    GoToIfEq VAR_0x8008, POCKET_MEDICINE, HiddenItems_PutItemInMedicinePocket
    GoToIfEq VAR_0x8008, POCKET_BALLS, HiddenItems_PutItemInBallsPocket
    GoToIfEq VAR_0x8008, POCKET_BATTLE_ITEMS, HiddenItems_PutItemInBattleItemsPocket
    GoToIfEq VAR_0x8008, POCKET_MAIL, HiddenItems_PutItemInBattleMailPocket
    GoToIfEq VAR_0x8008, POCKET_TMHMS, HiddenItems_PutItemInBattleTMHMsPocket
    End

HiddenItems_PutItemInItemsPocket:
    GetItemPocket VAR_0x8004, VAR_RESULT
    BufferPocketName 2, VAR_RESULT
    GoTo HiddenItems_PlayerPutItemInPocket
    End

HiddenItems_PutItemInKeyItemsPocket:
    GetItemPocket VAR_0x8004, VAR_RESULT
    BufferPocketName 2, VAR_RESULT
    GoTo HiddenItems_PlayerPutItemInPocket
    End

HiddenItems_PutItemInBattleTMHMsPocket:
    GetItemPocket VAR_0x8004, VAR_RESULT
    BufferPocketName 2, VAR_RESULT
    GoTo HiddenItems_PlayerPutItemInPocket
    End

HiddenItems_PutItemInBattleMailPocket:
    GetItemPocket VAR_0x8004, VAR_RESULT
    BufferPocketName 2, VAR_RESULT
    GoTo HiddenItems_PlayerPutItemInPocket
    End

HiddenItems_PutItemInMedicinePocket:
    GetItemPocket VAR_0x8004, VAR_RESULT
    BufferPocketName 2, VAR_RESULT
    GoTo HiddenItems_PlayerPutItemInPocket
    End

HiddenItems_PutItemInBerriesPocket:
    GetItemPocket VAR_0x8004, VAR_RESULT
    BufferPocketName 2, VAR_RESULT
    GoTo HiddenItems_PlayerPutItemInPocket
    End

HiddenItems_PutItemInBallsPocket:
    GetItemPocket VAR_0x8004, VAR_RESULT
    BufferPocketName 2, VAR_RESULT
    GoTo HiddenItems_PlayerPutItemInPocket
    End

HiddenItems_PutItemInBattleItemsPocket:
    GetItemPocket VAR_0x8004, VAR_RESULT
    BufferPocketName 2, VAR_RESULT
    GoTo HiddenItems_PlayerPutItemInPocket
    End

HiddenItems_PlayerPutItemInPocket:
    SetFlagFromVar VAR_0x8006
    Message HiddenItems_Text_PlayerPutItemInPocket
    WaitButton
    SetVar VAR_RESULT, 1
    GoTo HiddenItems_End
    End

HiddenItems_PlayerFoundTMHM:
    BufferPlayerName 0
    BufferItemNameWithArticle 1, VAR_0x8004
    BufferTMHMMoveName 2, VAR_0x8004
    Message HiddenItems_Text_PlayerFoundTMHMMove
    GoTo HiddenItems_CheckPlateAndPocket
    End

HiddenItems_PlayerFoundItem:
    BufferPlayerName 0
    BufferItemNameWithArticle 1, VAR_0x8004
    Message HiddenItems_Text_PlayerFoundItem
    GoTo HiddenItems_CheckPlateAndPocket
    End

HiddenItems_BagIsFull:
    BufferItemName 0, VAR_0x8004
    Message HiddenItems_Text_ObtainedItemBagIsFull
    WaitButton
    SetVar VAR_RESULT, 0
    GoTo HiddenItems_End
    End

HiddenItems_PrintPlateObtainedMessage:
    Common_PrintPlateObtainedMessage
    Return

    .balign 4, 0
