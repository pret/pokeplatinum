#include "macros/scrcmd.inc"
#include "res/text/bank/unk_0432.h"

    .data

    ScriptEntry _0008
    ScriptEntryEnd
    End

_0008:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    GoTo _001B
    End

_001B:
    Message 1
    InitLocalTextBankMenuBuilder 1, 1, 0, TRUE, 0x800C
    AddMenuEntrySmallStringID 9, 0
    AddMenuEntrySmallStringID 10, 1
    AddMenuEntrySmallStringID 11, 2
    AddMenuEntrySmallStringID 12, 3
    FinishAndShowMenu
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _00D0
    GoToIfEq 0x8008, 1, _0121
    GoToIfEq 0x8008, 2, _0078
    GoTo _006D
    End

_006D:
    Message 33
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0078:
    Message 32
    WaitABXPadPress
    GoTo _001B
    End

_0085:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CloseMessage
    ReleaseAll
    Return

_0097:
    ReturnToField
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    Return

_00AF:
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00BA:
    Message 6
    GoTo _006D
    End

_00C5:
    Message 7
    GoTo _006D
    End

_00D0:
    CheckItem ITEM_POFFIN_CASE, 1, 0x800C
    GoToIfEq 0x800C, 0, _00AF
    ScrCmd_1D8 0x800C
    GoToIfEq 0x800C, 1, _00BA
    GoToIfEq 0x800C, 2, _00C5
    WaitTime 30, 0x800C
    Call _0085
    ScrCmd_1D7 0
    Call _0097
    GoTo _006D
    End

_0121:
    CheckItem ITEM_POFFIN_CASE, 1, 0x800C
    GoToIfEq 0x800C, 0, _00AF
    ScrCmd_1D8 0x800C
    GoToIfEq 0x800C, 1, _00BA
    GoToIfEq 0x800C, 2, _00C5
    CallCommonScript 0x7D6
    SetVar 0x800C, 0x4000
    GoToIfEq 0x800C, 1, _0173
    GoTo _006D
    End

_0173:
    Message 13
    InitCommonStrings2MenuBuilder 30, 1, 0, TRUE, 0x800C
    SetMenuHorizontalAnchor FIELD_MENU_ANCHOR_RIGHT
    AddMenuEntrySmallStringID 13, 0
    AddMenuEntrySmallStringID 14, 1
    AddMenuEntrySmallStringID 5, 2
    FinishAndShowMenu
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _01B7
    GoToIfEq 0x8008, 1, _020D
    GoTo _006D
    End

_01B7:
    Message 2
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_NO, _0173
    CloseMessage
    ScrCmd_0F2 6, 0, 0, 0x800C
    GoToIfEq 0x800C, 1, _01F9
    GoToIfEq 0x800C, 3, _0203
    GoTo _0263
    End

_01F9:
    ScrCmd_150
    GoTo _0173
    End

_0203:
    ScrCmd_150
    GoTo _0173
    End

_020D:
    Message 2
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_NO, _0173
    CloseMessage
    ScrCmd_0F3 6, 0, 0, 0x800C
    GoToIfEq 0x800C, 1, _024F
    GoToIfEq 0x800C, 3, _0259
    GoTo _0263
    End

_024F:
    ScrCmd_150
    GoTo _0173
    End

_0259:
    ScrCmd_150
    GoTo _0173
    End

_0263:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ReleaseAll
    ScrCmd_1D7 1
    ScrCmd_150
    Call _0097
    GoTo _006D

    .byte 2
    .byte 0
    .byte 0
    .byte 0
    .byte 0
