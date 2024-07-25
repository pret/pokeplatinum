#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0022
    ScriptEntry _00F2
    ScriptEntry _0105
    ScriptEntry _0118
    ScriptEntry _012B
    ScriptEntry _0198
    ScriptEntry _01AE
    ScriptEntry _01C4
    .short 0xFD13

_0022:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_27E 0x800C
    GoToIfEq 0x800C, 1, _0063
    Message 0
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 229, 1
    ScrCmd_042 228, 0
    ScrCmd_043
    GoToIfEq 0x800C, 1, _00C6
    GoTo _00BB

_0063:
    BufferPlayerName 0
    Message 1
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 229, 0
    ScrCmd_042 228, 1
    ScrCmd_043
    GoToIfNe 0x800C, 0, _00BB
    ScrCmd_1B7 0x800C, 4
    GoToIfEq 0x800C, 0, _00C6
    GoToIfEq 0x800C, 1, _00D1
    GoToIfEq 0x800C, 2, _00DC
    GoTo _00E7

_00BB:
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00C6:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00D1:
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00DC:
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00E7:
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00F2:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0105:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0118:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_012B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_134 10, 0x800C
    GoToIfEq 0x800C, 1, _016F
    Message 10
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _017A
    Message 11
    SetVar 0x8004, 10
    CallCommonScript 0x7D9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_016F:
    Message 12
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_017A:
    Message 13
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 73
    .byte 0
    .byte 220
    .byte 5
    .byte 96
    .byte 0
    .byte 104
    .byte 0
    .byte 44
    .byte 0
    .byte 10
    .byte 49
    .byte 0
    .byte 52
    .byte 0
    .byte 97
    .byte 0
    .byte 2
    .byte 0

_0198:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallCommonScript 0x7E3
    ScrCmd_035
    ScrCmd_148 10
    ReleaseAll
    End

_01AE:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallCommonScript 0x7E3
    ScrCmd_035
    ScrCmd_148 11
    ReleaseAll
    End

_01C4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 14
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
