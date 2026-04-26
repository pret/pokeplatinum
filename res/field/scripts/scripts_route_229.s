#include "macros/scrcmd.inc"
#include "res/text/bank/route_229.h"


    ScriptEntry Route229_PokefanM
    ScriptEntry Route229_ArrowSignpostResortArea
    ScriptEntryEnd

Route229_PokefanM:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_ROUTE_229_NUGGET, Route229_ThoseAreMyNuggets
    Message Route229_Text_MakeItUpWithThis
    SetVar VAR_0x8004, ITEM_NUGGET
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, Route229_BagIsFull
    Common_GiveItemQuantity
    SetFlag FLAG_RECEIVED_ROUTE_229_NUGGET
    SetVar VAR_0x8004, ITEM_NUGGET
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, Route229_ThoseAreMyNuggets
    Message Route229_Text_TakeAnother
    Common_GiveItemQuantity
    GoTo Route229_ThoseAreMyNuggets
    End

Route229_ThoseAreMyNuggets:
    Message Route229_Text_ThoseAreMyNuggets
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route229_BagIsFull:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

Route229_ArrowSignpostResortArea:
    ShowArrowSign Route229_Text_SignRt229ResortArea
    End

    .balign 4, 0
