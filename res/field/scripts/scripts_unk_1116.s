#include "macros/scrcmd.inc"
#include "res/text/bank/unk_0621.h"

    .data

    ScriptEntry _004E
    ScriptEntry _005A
    ScriptEntry _0066
    ScriptEntry _0072
    ScriptEntry _007E
    ScriptEntry _008A
    ScriptEntry _0096
    ScriptEntry _00A2
    ScriptEntry _00AE
    ScriptEntry _00BA
    ScriptEntry _00C6
    ScriptEntry _00D2
    ScriptEntry _00DE
    ScriptEntry _00EA
    ScriptEntry _00F6
    ScriptEntry _0129
    ScriptEntry _0135
    ScriptEntry _0141
    ScriptEntry _014D
    ScriptEntryEnd

_004E:
    SetVar VAR_0x8000, 1
    GoTo _0159

_005A:
    SetVar VAR_0x8000, 2
    GoTo _0159

_0066:
    SetVar VAR_0x8000, 3
    GoTo _0159

_0072:
    SetVar VAR_0x8000, 4
    GoTo _0159

_007E:
    SetVar VAR_0x8000, 5
    GoTo _0159

_008A:
    SetVar VAR_0x8000, 6
    GoTo _0159

_0096:
    SetVar VAR_0x8000, 7
    GoTo _0159

_00A2:
    SetVar VAR_0x8000, 8
    GoTo _0159

_00AE:
    SetVar VAR_0x8000, 9
    GoTo _0159

_00BA:
    SetVar VAR_0x8000, 10
    GoTo _0159

_00C6:
    SetVar VAR_0x8000, 11
    GoTo _0159

_00D2:
    SetVar VAR_0x8000, 12
    GoTo _0159

_00DE:
    SetVar VAR_0x8000, 13
    GoTo _0159

_00EA:
    SetVar VAR_0x8000, 14
    GoTo _0159

_00F6:
    GoToIfEq VAR_UNK_0x4032, 1, _0129
    GoToIfEq VAR_UNK_0x4032, 2, _0135
    GoToIfEq VAR_UNK_0x4032, 3, _0141
    SetVar VAR_0x8000, 15
    GoTo _0159

_0129:
    SetVar VAR_0x8000, 16
    GoTo _0159

_0135:
    SetVar VAR_0x8000, 17
    GoTo _0159

_0141:
    SetVar VAR_0x8000, 18
    GoTo _0159

_014D:
    SetVar VAR_0x8000, 19
    GoTo _0159

_0159:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_238 VAR_0x8000, VAR_0x800C
    GoToIfEq VAR_0x800C, 0, _02A1
    Message 0
    ShowYesNoMenu VAR_0x800C
    GoToIfEq VAR_0x800C, MENU_YES, _0190
    GoTo _02AE
    End

_0190:
    ScrCmd_237 0, VAR_0x8000, VAR_0x8004, VAR_0x8005
    ScrCmd_1FB VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8000, 10, _01F0
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CloseMessage
    ScrCmd_243 0, VAR_0x800C, VAR_0x8004
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq VAR_0x800C, 0, _02AE
    ScrCmd_237 1, VAR_0x8000, VAR_0x8004, VAR_0x8005
    GoTo _02A1
    End

_01F0:
    InitLocalTextListMenu 1, 1, 0, VAR_0x8004
    AddListMenuEntry 22, 1
    AddListMenuEntry 23, 2
    AddListMenuEntry 24, 3
    AddListMenuEntry 25, 4
    AddListMenuEntry 26, 5
    AddListMenuEntry 27, 6
    AddListMenuEntry 28, 7
    AddListMenuEntry 29, 8
    AddListMenuEntry 30, 9
    AddListMenuEntry 31, 10
    AddListMenuEntry 32, 11
    AddListMenuEntry 33, 12
    AddListMenuEntry 34, 13
    AddListMenuEntry 35, 14
    AddListMenuEntry 36, 15
    AddListMenuEntry 37, 16
    AddListMenuEntry 38, 17
    ShowListMenu
    GoToIfEq VAR_0x8004, -2, _02AE
    ScrCmd_237 1, VAR_0x8000, VAR_0x8004, VAR_0x8005
    GoTo _02A1
    End

_02A1:
    Message 2
    WaitABXPadPress
    GoTo _02BB
    End

_02AE:
    Message 1
    WaitABXPadPress
    GoTo _02BB
    End

_02BB:
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
