#include "macros/scrcmd.inc"
#include "res/text/bank/cafe.h"

    .data

    ScriptEntry _0012
    ScriptEntry _0018
    ScriptEntry _002B
    ScriptEntry _016A
    ScriptEntryEnd

_0012:
    SetFlag FLAG_UNK_0x09E9
    End

_0018:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_002B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ShowMoney 20, 2
    Message 1
    GoTo _0044
    End

_0044:
    InitLocalTextMenu 30, 11, 0, 0x800C
    SetMenuXOriginToRight
    AddMenuEntryImm 7, 0
    AddMenuEntryImm 8, 1
    AddMenuEntryImm 9, 2
    ShowMenu
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _0092
    GoToIfEq 0x8008, 1, _00BB
    GoToIfEq 0x8008, 2, _015D
    GoTo _015D
    End

_0092:
    GoToIfNotEnoughMoney 500, _0150
    SetVar 0x8005, 1
    SetVar 0x8006, 500
    GoTo _00E4
    End

_00BB:
    GoToIfNotEnoughMoney 6000, _0150
    SetVar 0x8005, 12
    SetVar 0x8006, 6000
    GoTo _00E4
    End

_00E4:
    SetVar 0x8004, ITEM_MOOMOO_MILK
    GoToIfCannotFitItem 0x8004, 0x8005, 0x800C, _0143
    AddToGameRecord RECORD_MONEY_SPENT, 0x8006
    RemoveMoney2 0x8006
    UpdateMoneyDisplay
    PlayFanfare SEQ_SE_DP_REGI
    WaitFanfare SEQ_SE_DP_REGI
    CallIfEq 0x8006, 500, _0139
    CallIfEq 0x8006, 6000, _013E
    CallCommonScript 0x7E0
    CloseMessage
    HideMoney
    ReleaseAll
    End

_0139:
    Message 2
    Return

_013E:
    Message 6
    Return

_0143:
    Message 3
    WaitABXPadPress
    CloseMessage
    HideMoney
    ReleaseAll
    End

_0150:
    Message 4
    WaitABXPadPress
    CloseMessage
    HideMoney
    ReleaseAll
    End

_015D:
    Message 5
    WaitABXPadPress
    CloseMessage
    HideMoney
    ReleaseAll
    End

_016A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0107, _0188
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0188:
    Message 11
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
