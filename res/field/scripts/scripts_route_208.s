#include "macros/scrcmd.inc"
#include "res/text/bank/route_208.h"


    ScriptEntry Route208_ArrowSignpostMtCoronet
    ScriptEntry Route208_ArrowSignpostHearthomeCity
    ScriptEntry Route208_SignBerryMastersHouse
    ScriptEntry Route208_BlackBelt
    ScriptEntry Route208_TrainerTips
    ScriptEntryEnd

Route208_ArrowSignpostMtCoronet:
    ShowArrowSign Route208_Text_SignRt208MtCoronet
    End

Route208_ArrowSignpostHearthomeCity:
    ShowArrowSign Route208_Text_SignRt208HearthomeCity
    End

Route208_SignBerryMastersHouse:
    ShowLandmarkSign Route208_Text_SignBerryMastersHouse
    End

Route208_TrainerTips:
    ShowScrollingSign Route208_Text_TrainerTipsWatchBerrySoilColor
    End

Route208_BlackBelt:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_ROUTE_208_ODD_KEYSTONE, Route208_GoToRoute209
    Message Route208_Text_JustTakeIt
    SetVar VAR_0x8004, ITEM_ODD_KEYSTONE
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, Route208_BagIsFull
    SetFlag FLAG_RECEIVED_ROUTE_208_ODD_KEYSTONE
    Common_GiveItemQuantityNoLineFeed
    CloseMessage
    ReleaseAll
    End

Route208_GoToRoute209:
    Message Route208_Text_GoToRoute209
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route208_BagIsFull:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
