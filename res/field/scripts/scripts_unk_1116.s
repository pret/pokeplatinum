#include "macros/scrcmd.inc"

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
    .short 0xFD13

_004E:
    SetVar 0x8000, 1
    GoTo _0159

_005A:
    SetVar 0x8000, 2
    GoTo _0159

_0066:
    SetVar 0x8000, 3
    GoTo _0159

_0072:
    SetVar 0x8000, 4
    GoTo _0159

_007E:
    SetVar 0x8000, 5
    GoTo _0159

_008A:
    SetVar 0x8000, 6
    GoTo _0159

_0096:
    SetVar 0x8000, 7
    GoTo _0159

_00A2:
    SetVar 0x8000, 8
    GoTo _0159

_00AE:
    SetVar 0x8000, 9
    GoTo _0159

_00BA:
    SetVar 0x8000, 10
    GoTo _0159

_00C6:
    SetVar 0x8000, 11
    GoTo _0159

_00D2:
    SetVar 0x8000, 12
    GoTo _0159

_00DE:
    SetVar 0x8000, 13
    GoTo _0159

_00EA:
    SetVar 0x8000, 14
    GoTo _0159

_00F6:
    GoToIfEq 0x4032, 1, _0129
    GoToIfEq 0x4032, 2, _0135
    GoToIfEq 0x4032, 3, _0141
    SetVar 0x8000, 15
    GoTo _0159

_0129:
    SetVar 0x8000, 16
    GoTo _0159

_0135:
    SetVar 0x8000, 17
    GoTo _0159

_0141:
    SetVar 0x8000, 18
    GoTo _0159

_014D:
    SetVar 0x8000, 19
    GoTo _0159

_0159:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_238 0x8000, 0x800C
    GoToIfEq 0x800C, 0, _02A1
    Message 0
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0190
    GoTo _02AE
    End

_0190:
    ScrCmd_237 0, 0x8000, 0x8004, 0x8005
    ScrCmd_1FB 0x8004, 0x8005
    GoToIfEq 0x8000, 10, _01F0
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CloseMessage
    ScrCmd_243 0, 0x800C, 0x8004
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x800C, 0, _02AE
    ScrCmd_237 1, 0x8000, 0x8004, 0x8005
    GoTo _02A1
    End

_01F0:
    ScrCmd_045 1, 1, 0, 1, 0x8004
    ScrCmd_046 22, 0xFF, 1
    ScrCmd_046 23, 0xFF, 2
    ScrCmd_046 24, 0xFF, 3
    ScrCmd_046 25, 0xFF, 4
    ScrCmd_046 26, 0xFF, 5
    ScrCmd_046 27, 0xFF, 6
    ScrCmd_046 28, 0xFF, 7
    ScrCmd_046 29, 0xFF, 8
    ScrCmd_046 30, 0xFF, 9
    ScrCmd_046 31, 0xFF, 10
    ScrCmd_046 32, 0xFF, 11
    ScrCmd_046 33, 0xFF, 12
    ScrCmd_046 34, 0xFF, 13
    ScrCmd_046 35, 0xFF, 14
    ScrCmd_046 36, 0xFF, 15
    ScrCmd_046 37, 0xFF, 16
    ScrCmd_046 38, 0xFF, 17
    ScrCmd_047
    GoToIfEq 0x8004, -2, _02AE
    ScrCmd_237 1, 0x8000, 0x8004, 0x8005
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
