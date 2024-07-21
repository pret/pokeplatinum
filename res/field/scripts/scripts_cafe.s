#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0012
    ScriptEntry _0018
    ScriptEntry _002B
    ScriptEntry _016A
    .short 0xFD13

_0012:
    SetFlag 0x9E9
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
    ScrCmd_072 20, 2
    Message 1
    GoTo _0044
    End

_0044:
    ScrCmd_041 30, 11, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 7, 0
    ScrCmd_042 8, 1
    ScrCmd_042 9, 2
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _0092
    GoToIfEq 0x8008, 1, _00BB
    GoToIfEq 0x8008, 2, _015D
    GoTo _015D
    End

_0092:
    ScrCmd_071 0x800C, 0x1F4
    GoToIfEq 0x800C, 0, _0150
    SetVar 0x8005, 1
    SetVar 0x8006, 0x1F4
    GoTo _00E4
    End

_00BB:
    ScrCmd_071 0x800C, 0x1770
    GoToIfEq 0x800C, 0, _0150
    SetVar 0x8005, 12
    SetVar 0x8006, 0x1770
    GoTo _00E4
    End

_00E4:
    SetVar 0x8004, 33
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _0143
    ScrCmd_334 35, 0x8006
    ScrCmd_1A3 0x8006
    ScrCmd_074
    PlayFanfare SEQ_SE_DP_REGI
    WaitFanfare SEQ_SE_DP_REGI
    CallIfEq 0x8006, 0x1F4, _0139
    CallIfEq 0x8006, 0x1770, _013E
    CallCommonScript 0x7E0
    CloseMessage
    ScrCmd_073
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
    ScrCmd_073
    ReleaseAll
    End

_0150:
    Message 4
    WaitABXPadPress
    CloseMessage
    ScrCmd_073
    ReleaseAll
    End

_015D:
    Message 5
    WaitABXPadPress
    CloseMessage
    ScrCmd_073
    ReleaseAll
    End

_016A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 0x107, _0188
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
