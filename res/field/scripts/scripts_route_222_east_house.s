#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _0010
    .short 0xFD13

_000A:
    SetFlag 0x9F0
    End

_0010:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_1C0 0x800C, 223
    GoToIfEq 0x800C, 0, _00CF
    Message 1
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_191
    ScrCmd_193 0x8002
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x8002, 0xFF, _011E
    ScrCmd_198 0x8002, 0x8001
    GoToIfNe 0x8001, 223, _0108
    ScrCmd_1C1 0x800C, 0x8002
    GoToIfEq 0x800C, 0, _00ED
    GoToIfEq 0x800C, 1, _00DA
    ScrCmd_1C3 0, 1, 0x8002
    Message 2
    SetVar 0x8004, 6
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _0113
    CallCommonScript 0x7FC
    ScrCmd_1C2 0x8002
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00CF:
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00DA:
    ScrCmd_1C4 0, 1, 223
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00ED:
    ScrCmd_1C3 0, 1, 0x8002
    ScrCmd_1C4 2, 3, 223
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0108:
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0113:
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_011E:
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
